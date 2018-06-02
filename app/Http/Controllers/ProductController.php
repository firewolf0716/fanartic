<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    //
    public function mer_product_getmaincategory() //for merchant add product
    {
        $categoryid = $_GET['id'];
        $main_category = Products::load_maincategory_ajax($categoryid);
        if ($main_category) {
            $maincategoryresult = "";
            $maincategoryresult .= "<option value='0'>--Select Main Category--</option>";
            
            foreach ($main_category as $main_category_ajax) {
                $maincategoryresult .= "<option value='" . $main_category_ajax->smc_id . "'> " . $main_category_ajax->smc_name;                
                $maincategoryresult .= "</option>";      
            }            
            echo $maincategoryresult;
        }
        else {
            echo $maincategoryresult = "<option value='0'>--No categories available--</option>";
        }
    }
}
