<?php

namespace App\Services;

use Session;
use Hash;

use App\Models\MallBrands;
use App\Models\MallCategorys;
use App\Models\MerchantBrands;
use App\Models\Duty;
use App\Models\DutyCountry;

class MatchService
{
    public static function get_brands($mall){
        return MallBrands::where('mall_id', $mall)
            ->leftJoin('master_brand', 'mall_brand_match.brand_id', '=', 'master_brand.brand_id')
            ->get();
    }
    public static function get_brands_gender($mall, $gender){
        return MallBrands::where('mall_id', $mall)
            ->where($gender, 1)
            ->leftJoin('master_brand', 'mall_brand_match.brand_id', '=', 'master_brand.brand_id')
            ->get();
    }

    public static function get_country_duties(){
        return Duty::Join('country_duties', 'duties.id', '=', 'country_duties.duty_id')
            ->get();
    }

    public static function get_malls($brand){
        return MallBrands::where('brand_id', $brand)->get();
    }
    public static function remove_brands($mall){
        return MallBrands::where('mall_id', $mall)->delete();
    }
    public static function remove_duty($duty){
        return Duty::where('id', $duty)->delete();
    }
    public static function remove_countryduty($duty){
        return DutyCountry::where('c_id', $duty)->delete();
    }
    public static function remove_malls($brand){
        return MallBrands::where('brand_id', $brand)->delete();
    }

    public static function get_categorys($mall){
        return MallCategorys::where('mall_id', $mall)->get();
    }
    public static function get_malls_bycategory($category){
        return MallCategorys::where('category_id', $category)->get();
    }
    public static function remove_categorys($mall){
        return MallCategorys::where('mall_id', $mall)->delete();
    }
    public static function remove_malls_bycategory($category){
        return MallCategorys::where('category_id', $category)->delete();
    }

    public static function get_brands_merchant($merchant){
        return MerchantBrands::where('merchant_id', $merchant)
            ->leftJoin('master_brand', 'merchant_brand_match.brand_id', '=', 'master_brand.brand_id')
            ->get();
    }
    public static function get_malls_merchant($brand){
        return MerchantBrands::where('brand_id', $brand)->get();
    }
    public static function remove_brands_merchant($merchant){
        return MerchantBrands::where('merchant_id', $merchant)->delete();
    }
    public static function remove_malls_merchant($brand){
        return MerchantBrands::where('brand_id', $brand)->delete();
    }
}
