<?php

namespace App\Components\Zaiko;

use App\Models\Currency;
use App\Models\Products;
use App\Services\ProductService;
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

    public $max = 3;

    public $stockHeader = [
        "商品コード", // test-loop
        "想定在庫数",
        "保留在庫数",
        "倉庫コード",
        "良品在庫数",
        "不良在庫数",
        "更新モード", // 1 => 上書き, 2 => 追加
        "更新対象" // 1 => 想定在庫数のみ更新, 2 => 実在庫数(想定在庫数も更新), 3 => 実在庫のみを更新(想定在庫は そのまま)
    ];

    public function __construct($infomation)
    {
        $this->ftp = new Filesystem(new Adapter([
            'host' => $infomation[0],
            'username' => $infomation[1],
            'password' => $infomation[2],
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
    }

    /**
     * get Stock Information via FTP
     *
     */
    public function getStock()
    {
        $path = "/stock/update/";
        $connection = $this->ftp->getAdapter()->getConnection();

        $files = ftp_nlist($connection, $path);

        foreach ($files as $file) {
            if (!preg_match("/\.csv/i", $file)) {
                continue;
            }

            // ファイル内容の読み込み
            $content = mb_convert_encoding($this->ftp->read($path . $file), 'UTF-8', 'SJIS');

            // CSVファイルの読み込み
            $csv = Reader::createFromString($content);

            // レコードを読み
            $records = $csv->getRecords();
            $line = 0;
            $head = [];
            foreach ($records as $index => $dataRow) {
                // dataRow
                // 0 商品コード, 1想定在庫数, 2更新モード, 3更新対象
                if ($line == 0) {
                    $head = $dataRow;
                    $line++;
                    continue;
                }
                for ($i = 0; $i < count($dataRow); ++$i) {
                    switch ($head[$i]) {
                        case '商品コード':
                            $product_code = $dataRow[$i];
                            break;
                        case '想定在庫数':
                            $product_stock = $dataRow[$i];
                            break;
                        case '保留在庫数':
                            break;
                        case '倉庫コード':
                            break;
                        case '良品在庫数':
                            break;
                        case '不良在庫数':
                            break;
                        case '更新モード':
                            $update_mode = $dataRow[$i];
                            break;
                        case '更新対象':
                            //1: 想定在庫数のみ更新
                            //2: 実在庫数(想定在庫数も更新)
                            //3: 実在庫のみを更新(想定在庫はそのまま)
                            $update_scope = $dataRow[$i];
                            break;
                    }
                }

                dd($product_code);

                $product = ProductService::getByCode($product_code);
                if (!empty($product->id)) {
                    // 在庫数更新
                }

            }

        }
    }

    /**
     *
     * set Stock Information via FTP (在庫更新)
     * @param $code
     * @param $stock
     * @throws
     *
     * 追加：売上が上がったタイミングで呼ぶ(決済完了時)
     * 減算：キャンセルが上がったタイミングで呼ぶ(キャンセル時)
     *
     */
    public function setStock($code, $stock)
    {
        $data = [
            $code,
            $stock,
            "",
            "",
            "",
            "",
            "1",
            "1",
        ];

        $response = $this->uploadCsv($data, 'stock/stock' . time() . 'utf8.csv');

        dd($response);
    }

    /**
     * set Sales Information via FTP
     *
     */
    public function getOrder()
    {
        // 受注を取得
        // loopで回す
        // 商品があったら、在庫をゼロに

    }

    /**
     * set Sales Information via FTP
     * @param $code
     * @param $order_id
     *
     * 追加：売上が上がったタイミングで呼ぶ(決済完了時)
     * 減算：キャンセルが上がったタイミングで呼ぶ(キャンセル時)
     *
     */
    public function setOrder($code, $order_id)
    {
        // 受注があった商品の受注を取得

        // csv化
        $data = [];

        // csvアップロード
        $response = $this->uploadCsv($data, 'stock/stock' . time() . 'utf8.csv');
    }

    public function uploadCsv($csvFile, $path)
    {
        // 空のCSVオブジェクトを作成
        $csv = Writer::createFromFileObject(new \SplTempFileObject());

        $csv->setEnclosure('"');

        // レコード追加
        $csv->insertOne($this->stockHeader);
        $csv->insertOne($csvFile);

        // CSVで保存（時間でファイルを作っています）
        $response = $this->ftp->write($path, $csv->__toString());

        return $response;
    }
}