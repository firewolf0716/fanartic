<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;

class ProductController extends Controller
{
    //
    public function mer_product_getmaincategory() //for merchant add product
    {
        $categoryid = $_GET['id'];
        $main_category = Products::load_maincategory_ajax($categoryid);
        if ($main_category) {
            $maincategoryresult = "";
            $maincategoryresult .= "<option value=''>--Select Main Category--</option>";
            
            foreach ($main_category as $main_category_ajax) {
                $maincategoryresult .= "<option value='" . $main_category_ajax->smc_id . "'> " . $main_category_ajax->smc_name;                
                $maincategoryresult .= "</option>";      
            }            
            echo $maincategoryresult;
        }
        else {
            echo $maincategoryresult = "<option value=''>--No categories available--</option>";
        }
    }
    public function mer_product_getsubcategory()
    {
        $categoryid = $_GET['id'];
        $sub_category = Products::load_subcategory_ajax($categoryid);
        if (count($sub_category) > 0) {
            $subcategoryresult = "";
            $subcategoryresult = "<option value='0'>--Select Sub Category--</option>";
            foreach ($sub_category as $sub_category_ajax) {
                $subcategoryresult .= "<option value='" . $sub_category_ajax->sb_id . "'> " . $sub_category_ajax->sb_name;
                $subcategoryresult .= "</option>";   
            }
            echo $subcategoryresult;   
        }
        else {
            echo $subcategoryresult = "<option value='0'>No data available in this category</option>";   
        }
    }
    public function mer_product_getsecondsubcategory(){
        $categoryid = $_GET['id'];
        $secondsub_category = Products::get_second_sub_category_ajax($categoryid);
        if (count($secondsub_category) > 0) {
            $secondsubcategoryresult = "";
            $secondsubcategoryresult = "<option value='0'>--Select Second Sub Category--</option>";
            foreach ($secondsub_category as $second_sub_category_ajax) {
                $secondsubcategoryresult .= "<option value='0'" . $second_sub_category_ajax->ssb_id . "'> " . $second_sub_category_ajax->ssb_name ;
                $secondsubcategoryresult .= "</option>";
            }
            echo $secondsubcategoryresult;
        }
        else {
            echo $secondsubcategoryresult = "<option value='0'>No datas available in this category</option>";
        }
    }
    public function product_getcolor()
    {
        $colorid = $_GET['id'];
        if ($_GET['co_text_box'] == "") {
            $get_text_array = 0;
        }
        else {
            $get_text_array = trim($_GET['co_text_box'], ',');
            $result_array = explode(',', $get_text_array);
            $countval = count($result_array);
        }
        
        $array_push_values = array();
        for ($i = 0; $i < $countval; $i++) {
            array_push($array_push_values, $result_array[$i]);
        }
       
        $result_colorname = Products::get_colorname_ajax($colorid);
        foreach ($result_colorname as $result_colorname_ajax) {
            $returnvalue = $result_colorname_ajax->co_name . "," . $result_colorname_ajax->co_id . "," . $result_colorname_ajax->co_code;
        }
        
        if (in_array($colorid, $array_push_values)) {
            return $returnvalue . ",failed";
        }
        
        else {
            return $returnvalue . ",success";
        }
    }
    public function mer_product_getmerchantshop()
    {
        $id = $_GET['id'];
        $shop_det = Products::get_product_details_formerchant($id);
        if ($shop_det) {
            $return = "<option value=''>--Select Store--</option>";
            foreach ($shop_det as $shop_det_ajax) {
                $return .= "<option value='" . $shop_det_ajax->stor_id . "' > " . $shop_det_ajax->stor_name;
                $return .= "</option>";
            }
            echo $return;
        }
        else {
            if(Lang::has(Session::get('admin_lang_file').'.BACK_NO_DATAS_FOUND')!= '') 
			{
				// $session_message = trans(Session::get('admin_lang_file').'.BACK_NO_DATAS_FOUND');
			}
			else 
			{
				// $session_message =  trans($this->ADMIN_OUR_LANGUAGE.'.BACK_NO_DATAS_FOUND');
			}
            // echo $return = "<option value='0'> ".$session_message." </option>";
        }
    }
    public function product_get_spec(){
        $spc_group_id = $_GET['spc_group_id'];
        $product_specification = '';
        
        $specification = Products::product_get_spec($spc_group_id);

        if(count($specification)!=0){
            foreach ($specification as $pro_specification) {
            
                $product_specification .= "<option value='" . $pro_specification->sp_id . "'> " . $pro_specification->sp_name . " </option>";
            }
        }else{
            $product_specification .= "<option value='0'>No datas found in this group </option>";
        }
        echo $product_specification;
    }
}
