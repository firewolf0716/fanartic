<?php

namespace App\Mail;

use App\Services\MailService;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    public $sendto;
    public $options;
    public $data;

    public $lang;
    /**
     * Create a new message instance.
     *
     * @param $to
     * @param $options
     * @param $data
     * @param $lang
     *
     * @return void
     */
    public function __construct($to, $options, $data, $lang)
    {
        $this->sendto = $to;
        $this->options = $options;
        $this->data = $data;

        $this->lang = $lang;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $subject = MailService::getSubject($this->options, $this->lang);
        $template = MailService::getTemplate($this->options, $this->lang);

        return $this->from(env('MAIL_FROM_ADDRESS'), env('MAIL_FROM_NAME'))
            ->to($this->sendto)
            ->subject($subject)
            ->view($template);

    }
}