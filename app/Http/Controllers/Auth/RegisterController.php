<?php

namespace App\Http\Controllers\Auth;

use App\Jobs\SendMailJob;
use App\Mail\EmailVerification;
use App\Models\CustomerUser;
use App\Http\Controllers\Customer\Controller;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Queue;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showRegistrationForm()
    {
        return $this->layout_init(view('auth.register'), 1);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'checkagree1' => 'required',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  $request
     * @return \App\Models\CustomerUser
     */
    protected function register(Request $request)
    {
        $user = CustomerUser::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'password' => Hash::make($request->input('password')),
            'token' => base64_encode($request->input('email')),
        ]);

        $options = [
            'subject' => '仮登録が完了しました',
            'template' => 'emails.auth.verify'
        ];
        $body = ['token' => $user->token];
        Queue::push(new SendMailJob($user->email, $options, $body), null, env('SQS_QUEUE'));

        // $email = new EmailVerification($user);
        // Mail::to($user->email)->send($email);
        // Queue::push(new EmailVerification($user), $email, env('SQS_QUEUE'));

        $this->guard()->logout();
        return redirect('/login')->withSuccess('メールドアレスを認証して登録を完了させてください');
    }

}
