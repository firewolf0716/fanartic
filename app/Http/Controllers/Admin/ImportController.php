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
use App\Services\CategoryService;

class ImportController extends Controller
{
    const FILE_PATH = './csv/';

    public function importFromCsv() {
        return view('admin.import.csv');
    }

    public function updateFromCsv() {
        $csv_file = Input::file('csv_file');
        if ($csv_file == null || $csv_file == "") {
            return Redirect::to('admin/brand/list');
        }

        $filename_new = "admin_brand_category_csv_" . time() . "." . strtolower($csv_file->getClientOriginalExtension());
        $uploadSuccess_new = $csv_file->move(self::FILE_PATH, $filename_new);

        if (Input::get('import_brand') == "on") {
            if (($handle = fopen($uploadSuccess_new, 'r')) !== FALSE) {
                $isBrandStarted = false;
                $brandParentId = 0;
                
                while (($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                    if ($isBrandStarted == false) {
                        if ($data[2] == "ブランド別") {
                            $isBrandStarted = true;
                            $brandParentId = $data[0];
                            continue;
                        } else {
                            continue;
                        }
                    }
                    
                    if ($isBrandStarted == true) {
                        $brand_name = $data[2];
                        $tempostar_brand_id = $data[0];
                        $tempostar_brand_parent_id = $data[1];
                        if ($tempostar_brand_parent_id == $brandParentId) {
                            $tempostar_brand_parent_id = 0;
                        }

                        if (Input::get('is_update') == 1) {
                            // ToDo: 更新の場合の処理
                        }

                        $brand = new Brands();
                        $brand->brand_name = $brand_name;
                        $brand->brand_name_en = $brand_name;
                        $brand->brand_design = '0';
                        $brand->brand_image = '';
                        $brand->brand_description = 'Tempostarブランド';
                        $brand->tempostar_brand_id = $tempostar_brand_id;
                        $brand->tempostar_brand_parent_id = $tempostar_brand_parent_id;
                        $brand->tempostar_sort_by = $data[4];
                        $brand->save();
                    }
                }

                fclose ($handle);
            }
        }

        // ToDo: カテゴリの処理

        return Redirect::to('admin/brand/list');
    }
}
