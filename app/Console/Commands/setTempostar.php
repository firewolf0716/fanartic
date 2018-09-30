<?php

namespace App\Console\Commands;

use App\Components\CurrencyComponent;
use App\Models\Merchants;
use App\Models\Tempostar;
use Illuminate\Console\Command;
use League\Flysystem\Config;

class setTempostar extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'set:zaiko';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Set zaiko of each merchant';

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
        // get Merchant who has 在庫
        $merchants = Tempostar::all();
    }
}
