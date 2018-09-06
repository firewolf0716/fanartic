<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Models\Malls;
use App\Models\Brands;
use App\Models\Genres;
use App\Models\MallBrands;
use App\Models\ProductSKU;
use App\Models\ProductStock;
use App\Models\Categorys;
use App\Models\Products;

class ImportController extends Controller
{
    public function importFromCsv() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }

        return view('admin.import.csv');
    }
    public function updateFromCsv() {
        if ($this->check_admin_session() == false) {
            return Redirect::to('admin/login');
        }
        $csv_file = Input::file('csv_file');
        if ($csv_file == null || $csv_file == "") {
            return Redirect::to('admin/brand/list');
        }

        $filename_new = "admin_brand_category_csv_" . time() . "." . strtolower($csv_file->getClientOriginalExtension());
        $newdestinationPath = './csv/';
        $uploadSuccess_new = $csv_file->move($newdestinationPath, $filename_new);

        $create_date = Input::get('create_date');
        $update_date = Input::get('update_date');

        if (Input::get('import_brand') == "on") {
            if (Input::get('optionValid') == "0") {
                Brands::removeAll();
            }
            if (($handle = fopen($uploadSuccess_new, 'r')) !== FALSE) {
                $isBrandStarted = false;
                $brandParendId = 0;
                
                while (($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                    if ($isBrandStarted == false) {
                        if ($data[2] == "ブランド別") {
                            $isBrandStarted = true;
                            $brandParendId = $data[0];
                            continue;
                        } else {
                            continue;
                        }
                    }
                    
                    if ($isBrandStarted == true) {
                        $brand_name = $data[2];
                        $tempostar_brand_id = $data[0];
                        $tempostar_brand_parent_id = $data[1];
                        if ($tempostar_brand_parent_id == $brandParendId) {
                            $tempostar_brand_parent_id = 0;
                        }
    
                        $entry =  array (
                            'brand_name' => $brand_name,
                            'brand_name_en' => $brand_name,
                            'brand_design' => '0',
                            'brand_status' => '0',
                            'created_at' => $create_date,
                            'updated_at' => $update_date,
                            'brand_image' => '',
                            'brand_description' => 'Tempostarブランド',
                            'tempostar_brand_id' => $tempostar_brand_id,
                            'tempostar_brand_parent_id' => $tempostar_brand_parent_id,
                            'tempostar_sort_by' => $data[4]
                        );
                        $id = Brands::insert_brand($entry);
                    }
                }

                fclose ($handle);
            }
        }
        
         return Redirect::to('admin/brand/list');
    }
}
