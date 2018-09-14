<?php

namespace App\Http\Controllers\Customer;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Stripe\Stripe;
use Stripe\Customer;
use Stripe\Charge;
use Stripe\Account;
use Stripe\Token;
use Stripe\Error\Card;

use Session;

use App\Models\States;
use App\Models\CustomerUser;
use App\Models\CustomerCard;

class CardController extends Controller
{
    public function credit()
    {
        $customer = CustomerUser::find(Auth::id());
        $customer_email = $customer->customer_email;
        $cards = $customer->card;

        return $this->layout_init(view('customer.user.credit'), 1)
            ->with('cards', $cards)
            ->with('email', $customer_email);
    }

    public function add_card_post(Request $request)
    {
        Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
        $customer = Customer::create(array(
            'email' => $request->stripeEmail,
            'source' => $request->stripeToken
        ));
        $cus_token = $customer->id;
        $last4 = $customer->sources->data['0']->last4;
        $expiredt = $customer->sources->data['0']->exp_year . '/' . $customer->sources->data['0']->exp_month;
        $name = $customer->sources->data['0']->name;

        $card = new CustomerCard();
        $card->customer_id = Auth::id();
        $card->card_no = $last4;
        $card->card_token = $cus_token;
        $card->card_owner = $name;
        $card->card_validdate = $expiredt;
        $card->save();

        return Redirect::to('user/credit');
    }

    public function edit_card_post(Request $request)
    {
        Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
        if (isset($request->stripeToken)) {
            try {
                $cu = Customer::retrieve($request->customer_token);
                $cu->source = $request->stripeToken;
                $cu->save();
                $last4 = $cu->sources->data['0']->last4;
                $expiredt = $cu->sources->data['0']->exp_year . '/' . $cu->sources->data['0']->exp_month;
                $name = $cu->sources->data['0']->name;
                $cus_token = $cu->id;

                $card = CustomerCard::where('card_token', $cus_token)->first();
                $card->customer_id = Auth::id();
                $card->card_no = $last4;
                $card->card_token = $cus_token;
                $card->card_owner = $name;
                $card->card_validdate = $expiredt;
                $card->save();
            } catch (Card $e) {
                $body = $e->getJsonBody();
                $err = $body['error'];
                $error = $err['message'];
            }
        }
        return Redirect::to('user/credit');
    }

    public function delete_card(Request $request)
    {
        $token = $request->token;
        Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
        $cu = Customer::retrieve($token);
        $cu->delete();

        CustomerCard::where('card_token', $token)->delete();
        return Redirect::to('user/credit');
    }
}
