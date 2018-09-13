<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Str;

use Session;
use App\Models\Categorys;
use App\Models\Brands;
use App\Models\Customers;
use App\Models\Products;
use App\Models\CustomerUser;
use App\Services\CategoryService;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function check_admin_session()
    {
        if (Session::has('adminid')) {
            return true;
        } else {
            return false;
        }
    }

    public function get_merchant_session_id()
    {
        if (Session::has('merchantid')) {
            return Session::get('merchantid');
        } else {
            return 0;
        }
    }

    public function get_special_number($level)
    {
        if ($level >= 10) {
            return "⓪①②③④⑤⑥⑦⑧⑨";
        }
        $numbers = "⓿➊➋➌➍➎➏➐➑➒";
        return Str::substr($numbers, $level, 1);
    }

    public function get_level_split_string($level)
    {
        return "🅛🅔🅥🅔🅛➊" . $this->get_special_number($level);
    }

    public function layout_init($view, $gender)
    {
        $topcategorys = CategoryService::getTopCategorys();
        $mencategories = CategoryService::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = CategoryService::getMainCategorys($topcategorys[1]->category_id);
        $maincategorys = CategoryService::getMainCategorys($topcategorys[0]->category_id);
        $tcategory = $topcategorys[0];
        if ($gender == 2) {
            $tcategory = $topcategorys[1];
            $maincategorys = CategoryService::getMainCategorys($topcategorys[1]->category_id);
        }

        $brands = Brands::get();

        $customerid = null;
        $recent = null;
        $images = null;
        $customer_email = null;
        if (Session::has('customerid')) {
            $customerid = Session::get('customerid');
            $recent = Customers::get_recent($customerid);
            $images = array();
            foreach ($recent as $product) {
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }
            $customer_email = CustomerUser::find($customerid)->customer_email;
            // dd($customer_email);
        }
        return $view->with('mencategories', $mencategories)
            ->with('womencategories', $womencategories)
            ->with('brands', $brands)
            ->with('tcategory', $tcategory)
            ->with('maincategorys', $maincategorys)
            ->with('customerid', $customerid)
            ->with('recent', $recent)
            ->with('recentimages', $images)
            ->with('listtype', "malls")
            ->with('email', $customer_email);
    }

    public function setMainCategory($view)
    {

    }
}
