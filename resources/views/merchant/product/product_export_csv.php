<?php
    header("Content-Type: application/csv");
    header("Content-Disposition: attach; filename=" . 'shoppingmall' . '.csv');
    header("Connection: close");
    ob_end_clean();
    echo(WWW_ROOT.DS.'product_csv/shoppingmall.csv');
    readfile(WWW_ROOT.DS.'product_csv/shoppingmall.csv');
    exit();
    