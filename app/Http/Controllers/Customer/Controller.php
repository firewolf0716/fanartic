<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

use Session;
use App\Models\Categorys;
use App\Models\Brands;
use App\Models\Customers;
use App\Models\Products;
use App\Models\CustomerUser;
use App\Services\CategoryService;
use App\Services\RecentItemService;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

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
        $mencategories = CategoryService::getChildCategorys($topcategorys[0]->category_id);
        $womencategories = CategoryService::getChildCategorys($topcategorys[1]->category_id);
        $maincategorys = CategoryService::getChildCategorys($topcategorys[0]->category_id);
        $tcategory = $topcategorys[0];
        if ($gender == 2) {
            $tcategory = $topcategorys[1];
            $maincategorys = CategoryService::getChildCategorys($topcategorys[1]->category_id);
        }

        $brands = Brands::get();

        $customerid = null;
        $recent = null;
        $images = null;
        $email = null;
        if (Auth::check()) {
            // $recent = Customers::get_recent(Auth::id());
            $recent = RecentItemService::getRecentItems(Auth::id());
            $images = array();
            foreach ($recent as $product) {
                $imagerec = Products::get_master_images($product->product_id);
                // dd($imagerec);
                $images[$product->product_id] = $imagerec;
            }
            $email = CustomerUser::find(Auth::id())->email;
            // dd($email);
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
            ->with('email', $email);
    }

    public function setMainCategory($view)
    {

    }
}
