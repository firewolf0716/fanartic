<?php

namespace App\Console\Commands;

use App\Components\CurrencyComponent;
use Illuminate\Console\Command;

class SetCurrency extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'set:currency';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Set currency rates from openexchanges.org';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        // PriceService::setRate();
        CurrencyComponent::setRate();
    }
}
