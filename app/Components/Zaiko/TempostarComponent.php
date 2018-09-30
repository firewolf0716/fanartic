<?php

namespace App\Components;

use App\Models\Currency;
use Illuminate\Support\Facades\Storage;
use League\Csv\Reader;
use League\Csv\Writer;
use League\Flysystem\Filesystem;
use League\Flysystem\Adapter\Ftp as Adapter;

/**
 * @property \Illuminate\Database\Eloquent\Collection|static[] currencies
 */
class TempostarComponent
{
    // 在庫管理　　在庫一括更新　　stock　　/stock　　***.csv
    // 受注管理　　受注情報CSVインポート※　　/order/update/　　orderupdate***.csv
    // 受注管理　　受注情報CSVエクスポート　　/order/export/***/***/　　order***.[id].csv
    // 受注管理　　出荷指示エクスポート(確定)　　/order/export/***/***/　　order***.[id].csv
    // 受注管理　　出荷確定インポート(配送)　　/order/import/　　ordership***.csv

    public function __construct()
    {
        $this->ftp = new Filesystem(new Adapter([
            'host' => 'ftp.tempostar.net',
            'username' => '4792_0',
            'password' => 'fcAAq47920',

            /** optional config settings */
            'port' => 21,
            'root' => '/',
            'passive' => true,
            'ssl' => true,
            'timeout' => 30,
        ]));

        $this->storageDirectory = 'stockorder';

        $this->downloadFiles = [
            'stockorder/stockorder.20180425102557.csv',
        ];

        $this->max = 3;
    }

    /**
     * import Product Information
     *
     * About Tempostar
     * Merchant should import by uploading CSV file
     *
     */
    public function setProduct()
    {
        // not do anything in here

        // connection test
        foreach ($this->downloadFiles as $downloadFile) {

            // ファイル内容の読み込み
            $content = mb_convert_encoding($this->ftp->read($downloadFile), 'UTF-8', 'SJIS');

            // 前回ファイルをアーカイブ
            if ($this->ftp->has($downloadFile) === true) {
                // $this->ftp->rename($downloadFile, $downloadFile);
            }

            // ローカルファイルに書き込み（ファイルがない場合は新規で作られる）
            $result = Storage::disk('local')->put($downloadFile, $content);
            // $result = $this->ftp->write($downloadFile, $content);

        }

        dd($result);
    }

    /**
     * get Stock Information via FTP
     *
     */
    public function getStock()
    {

    }

    /**
     * set Stock Information via FTP (在庫更新)
     *
     */
    public function setStock()
    {
        $header = [
            '商品コード', // test-loop
            '想定在庫数',
            '保留在庫数',
            '倉庫コード',
            '良品在庫数',
            '不良在庫数',
            '更新モード', // 1 => 上書き, 2 => 追加
            '更新対象' // 1 => 想定在庫数のみ更新, 2 => 実在庫数(想定在庫数も更新), 3 => 実在庫のみを更新(想定在庫は そのまま)
        ];

        $data = [
            'test-loop',
            '10',
            '',
            '',
            '',
            '',
            '1',
            '1',
        ];

        // 空のCSVオブジェクトを作成
        $csv = Writer::createFromFileObject(new \SplTempFileObject());

        // レコード追加
        $csv->insertOne($header);
        $csv->insertOne($data);

        // CSVで保存（時間でファイルを作っています）
        $response = $this->ftp->write('stock/'.time().rand().'.csv', $csv->__toString());

        dd($response);

    }

    /**
     * set Sales Information via FTP
     *
     */
    public function setSale()
    {

    }

    public function getCsv()
    {

    }
}