<?php
namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use App\Models\Brands;
use App\Models\Designer;
use App\Services\BrandService;
class BrandController extends Controller
{
    const IMAGE_PATH = './images/brands/';
    public function add()
    {
        $designers = Designer::get();
        return view('admin.brand.add')
                ->with('designers', $designers);
    }
    public function addpost()
    {
        $figure = Input::file('figure');
        if ($figure == null || $figure == "") {
            return Redirect::to('admin/brand/list');
        }
        $filename_new = "brand_" . uniqid() . "." . strtolower($figure->getClientOriginalExtension());
        $uploadSuccess = $figure->move(self::IMAGE_PATH, $filename_new);
        if (!$uploadSuccess) return false;
        $brand = new Brands();
        $brand->brand_name = Input::get('brand_name');
        $brand->brand_name_en = Input::get('brand_name_en');
        $brand->figure = $figure;
        $brand->founder = Input::get('founder');
        $brand->foundyear = Input::get('foundyear');
        $brand->foundplace = Input::get('foundplace');
        $brand->overview = Input::get('overview');
        $brand->save();
        $designers = Input::get('designers');
        foreach ($designers as $designer) {
            $brand->designers()->attach((int)$designer);
        }
        return Redirect::to('admin/brand/list');
    }
    public function list()
    {
        $brands = Brands::get();
        return view('admin.brand.list')->with('brands', $brands);
    }
    public function edit($id)
    {
        $brand = Brands::find($id);        
        $multi_val = array();
        foreach ($brand->designers as $brand_designner):
            array_push($multi_val, $brand_designner->designer_id);
        endforeach;
        $designers = Designer::get();
        return view('admin.brand.edit')
            ->with('brand', $brand)
            ->with('designers', $designers)
            ->with('multi_val', $multi_val);
    }
    public function delete($id)
    {
        $brand = Brands::find($id);
        $imgPath = "./images/brands/" . $brand->figure;
        if ($brand->figure && file_exists($imgPath)) {
            unlink($imgPath);   
        }
        Brands::find($id)->delete();
        return Redirect::to('admin/brand/list');
    }
    public function editpost()
    {
        $id = Input::get('brand_id');
        $figure = Input::file('figure');
        $brand = Brands::find($id);
        if (!is_null($figure)) {
            $imgPath = "./images/brands/" . $brand->figure;
            if ($brand->figure && file_exists($imgPath)) {
                unlink($imgPath);   
            }
            $figure_name = "brand_" . uniqid() . "." . strtolower($figure->getClientOriginalExtension());
            $uploadSuccess = $figure->move(self::IMAGE_PATH, $figure_name);
            if (!$uploadSuccess) return false;
        }
        
        /** @var Brands $brand */
        $brand->brand_name = Input::get('brand_name');
        $brand->brand_name_en = Input::get('brand_name_en');
        $brand->figure = $figure_name;
        $brand->founder = Input::get('founder');
        $brand->foundyear = Input::get('foundyear');
        $brand->foundplace = Input::get('foundplace');
        $brand->overview = Input::get('overview');
        $brand->save();
        $old_designers = $brand->designers;
        $new_designers = Input::get('designers');
        foreach ($old_designers as $old_designer) {
            foreach ($new_designers as $new_designer) {
                if (!in_array($old_designer->designer_id, $new_designers)) {
                    $brand->designers()->detach( $old_designer->designer_id);
                }
            }
        }
        foreach ($new_designers as $designer) {
            $brand->designers()->attach((int)$designer);
        }
        return Redirect::to('admin/brand/list');
    }
    
}