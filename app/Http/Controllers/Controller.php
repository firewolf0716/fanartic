<?php

namespace App\Http\Controllers;

use App\Models\Currency;
use Illuminate\Http\Request;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

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

    public function switch(Request $request)
    {
        $this->switchLang($request->input('language'));
        $this->switchCurrency($request->input('currency'));
        return Redirect::back();
    }

    public function switchLang($lang)
    {
        if (array_key_exists($lang, Config::get('languages'))) {
            Session::put('applocale', $lang);
            if (Auth::check()) {
                $user = Auth::user();
                if ($user->locale !== null && $user->locale != $lang) {
                    $user->locale = $lang;
                    $user->save();
                }
            }
        }
        return true;
    }

    public function switchCurrency($currency)
    {
        $currencies = Currency::getCurrencies();
        if (array_key_exists($currency, $currencies)) {
            Session::put('cur_currency', $currency);
            if (Auth::check()) {
                $user = Auth::user();
                if ($user->currency !== null && $user->currency != $currency) {
                    $user->currency = $currency;
                    $user->save();
                }
            }
        }
        return true;
    }

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
        return $view->with('customerid', $customerid)
            ->with('recent', $recent)
            ->with('recentimages', $images)
            ->with('listtype', "malls")
            ->with('email', $email)
            ->with('brands', $brands);
    }

    public function setMainCategory($view)
    {
        $topcategorys = CategoryService::getTopCategorys();
        $mencategories = CategoryService::getMainCategorys($topcategorys[0]->category_id);
        $womencategories = CategoryService::getMainCategorys($topcategorys[1]->category_id);
        // return $view->with()
    }
}
