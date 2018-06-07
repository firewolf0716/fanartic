<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

use App\Products;

class MerchantproductController extends Controller
{
    //
    public function __construct(){
        // parent::__construct();
    }
    public function merchant_product_add(){
        $productcategory      = Products::get_product_category();
        $productcolor         = Products::get_product_color();
        $productsize          = Products::get_product_size();
        $productspecification = Products::get_product_specification();
        return view('merchant.product.product_add')->with('productcategory', $productcategory)
                                                   ->with('productcolor', $productcolor)
                                                   ->with('productsize', $productsize)
                                                   ->with('productspecification', $productspecification);
    }
    public function merchant_product_addpost(){
        $inputs = Input::all();
        Log::debug($inputs);

        $datenow = date('Y/m/d');

        $filename_new_get = '';
        $imgct = Input::get('proimg_ct');
        for ($i = 0; $i < $imgct; $i++) {
            $file_more = Input::file('product_img_' . $i);
            $file_more_name = $file_more->getClientOriginalName();
            $move_more_img = explode('.', $file_more_name);
            $filename_new = $move_more_img[0] . str_random(8) . "." . strtolower($file_more->getClientOriginalExtension());
            $newdestinationPath = './public/assets/product/';
            $uploadSuccess_new = Input::file('product_img_' . $i)->move($newdestinationPath, $filename_new);
            $filename_new_get .= $filename_new . "/**/";
        }
        //category
        // $sub_category = '';
        // if(Input::get('sub_category') != null){
        //     $sub_category = Input::get('sub_category');
        // }
        // $secondsub_category = '';
        // if(Input::get('secondsub_category') != null){
        //     $secondsub_category = Input::get('secondsub_category');
        // }
        //price
        $original_price = Input::get('original_price');
        $discounted_price = Input::get('discounted_price');
        $product_saving_price = Input::get('original_price') - Input::get('discounted_price');
        $product_discount_percentage = (($product_saving_price / Input::get('original_price')) * 100);
        $product_discount_percentage = round($product_discount_percentage);
        //shipping
        $shipping_amount = 0;
        if(Input::get('optionsShippingAmount') == '1' && Input::get('shipping_amount') != null){
            $shipping_amount = Input::get('shipping_amount');
        }
        //policy
        $cancel_days = 0;
        if(Input::get('optionsPolicyCancel') == '1' && Input::get('cancel_days') != null){
            $cancel_days = Input::get('cancel_days');
        }
        $replace_days = 0;
        if(Input::get('optionsPolicyReplace') == '1' && Input::get('replace_days') != null){
            $replace_days = Input::get('replace_days');
        }
        $return_days = 0;
        if(Input::get('optionsPolicyReturn') == '1' && Input::get('return_days') != null){
            $return_days = Input::get('return_days');
        }
        //set spec option
        $add_spec = Input::get('optionsSpec');
        $spec_ct = Input::get('spec_ct');
        for ($i = 0; $i < $spec_ct; $i++) {
            if (Input::get('spec_detail_'.$i) == 0 || Input::get('spec_text_'.$i == "")) {
                $add_spec = 2;
            }
        }
        $entry = array(
            'pro_title' => Input::get('product_title'),
            'pro_mc_id' => Input::get('top_category'),
            'pro_smc_id' => Input::get('main_category'),
            'pro_sb_id' => Input::get('sub_category'),
            'pro_ssb_id' => Input::get('secondsub_category'),
            'pro_price' => $original_price,
            'pro_disprice' => $discounted_price,
            'pro_discount_percentage' => $product_discount_percentage,
            'pro_inctax' => Input::get('tax_percentage_input'),
            'pro_shippamt' => $shipping_amount,
            'pro_desc' => Input::get('description'),
            'pro_isspec' => $add_spec,
            'pro_delivery' => Input::get('delivery_input'),
            'pro_mr_id' => '41',
            'pro_sh_id' => Input::get('store'),
            'pro_mkeywords' => Input::get('meta_keywords'),
            'pro_mdesc' => Input::get('meta_description'),
            'pro_is_size' => Input::get('optionsProsize'),
            'pro_is_color' => Input::get('optionsColor'),
            'pro_Img' => $filename_new_get,
            'pro_image_count' => $imgct,
            'pro_qty' => Input::get('product_quantity'),
            'cash_pack'=> Input::get('cash_back'),
            'allow_cancel' => Input::get('optionsPolicyCancel'),
            'allow_return' => Input::get('optionsPolicyReturn'),
            'allow_replace' => Input::get('optionsPolicyReplacement'),
            'cancel_policy' => Input::get('cacelpolicy'),
            'return_policy' => Input::get('returnpolicy'),
            'replace_policy' => Input::get('replacepolicy'),
            'cancel_days' => $cancel_days,
            'return_days' => $return_days,
            'replace_days' => $replace_days,
            'pro_status' => '0',
            'created_date' => $datenow
        );
        $productid = Products::insert_product($entry);
// $productid = 1;
        if($productid > 0){
            //insert color
            $colorarray = explode(",", trim(Input::get('co'), ","));
            $colorcount = count($colorarray) - 1;
            for ($i = 0; $i < $colorcount; $i++) {
                $val = Input::get('colorcheckbox' . $colorarray[$i]);
                if ($val == 1) {
                    $colorentry = array(
                        'pc_pro_id' => $productid,
                        'pc_co_id' => $colorarray[$i]
                    );
                    Products::insert_product_color_details($colorentry);
                }
                else {
                    
                }
            }
            //insert product spec
            if ($add_spec == 1) {
                for ($i = 0; $i <= $spec_ct; $i++) {
                    if (Input::get('spec_detail_' . $i) == 0 || Input::get('spec_text_' . $i == "")) {
                        
                    }
                    else {
                        Log::debug('spec'.$i);
                        $specificationentry = array(
                            'spc_pro_id' => $productid,
                            'spc_spg_id' => Input::get('spec_group_' . $i),
                            'spc_sp_id' => Input::get('spec_detail_' . $i),
                            'spc_value' => Input::get('spec_text_' . $i)
                        );
                        Products::insert_product_specification_details($specificationentry);
                    }
                }
            }
            //insert product sizes
            if(Input::get('product_size') != null){
                $productsize = Input::get('product_size');
                $sizect = count($productsize);
                if ($sizect > 0) {
                    foreach($productsize as $eachsize){
                        $productsizeentry = array(
                                        'ps_pro_id' => $productid,
                                        'ps_si_id'  => $eachsize,
                                        'ps_volume' => 1
                    );
                    Products::insert_product_size_details($productsizeentry);
                    }
                }                
            }
            return Redirect::to('merchant_dashboard');
        }
    }
    public function merchant_product_manage(){
        return view('merchant.product.product_manage');
    }
    public function merchant_product_sold(){
        return view('merchant.product.product_sold');
    }
    public function merchant_product_csvupload(){
        return view('merchant.product.product_csvupload');
    }
    public function get_spec_related_to_cat(){
        $sec_main_cat = Input::get('sec_main_cat');
        $main_cat = Input::get('main_cat');
        
        $specification_group = Products::get_specification_group_product($main_cat,$sec_main_cat);
        $res = '';
        if(count($specification_group)>0)
        {
            $res .= '<option value="0">--Select--</option>';
            foreach($specification_group as $sp_group)
            {
                $res .= '<option value="'.$sp_group->spg_id.'">'.$sp_group->spg_name.'</option>';
            }
        }
        else{
            $res = "1";
        }
        return $res;
    }
}
