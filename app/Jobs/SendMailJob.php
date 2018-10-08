<?php

namespace App\Jobs;

use App\Mail\SendMail;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Queue;

class SendMailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $sendto;
    public $options;
    public $data;

    // For Multi Language
    public $lang;

    /**
     * Create a new job instance.
     *
     * @param $to
     * @param $options
     * @param $data
     * @param $lang
     * @return void
     */
    public function __construct($to, $options, $data, $lang = null)
    {
        $languages = Config::get('languages');
        $this->sendto = $to;
        $this->options = $options;
        $this->data = $data;
        // For Multi Language
        if (array_key_exists($lang, $languages)) {
            $this->lang = $lang;
        } else {
            $this->lang = 'en';
        }
        $this->lang = 'ja';
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //
//        echo "SQSにプッシュしました";

        // メール送信
        Mail::to($this->sendto)->send(new SendMail($this->sendto, $this->options, $this->data, $this->lang));
    }
}
