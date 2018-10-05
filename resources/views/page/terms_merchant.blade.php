@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>or Not出店規約</li>
    </ul>
    <!--/.c-breadcrumbs-->
    <h1 class="c-pagetitle">or Not出店規約</h1>
    <div class="pages">
        <div class="pages__column">
            <div class="pages__column__content">
                <p>
                    ［サービス名］出店規約（以下「本規約」といいます。）は、株式会社LOOP（以下「当社」といいます。）が「［サービス名］」という名称で運営するファッション通販サービスを利用する出店者と当社との契約関係を定めたものです。本サービスを利用する出店者は、本サービス上で行われるアイテムの売買は、出店者とユーザーの直接取引によるものであり、当社は取引の場を提供するのみであること理解し、本規約［および別紙1決済サービス利用規約］にご同意いただいた上で、当社に対しお申込みいただく必要があります。出店者が本サイトへの出店をお申込みいただいた場合、本規約［および決済サービス利用規約］に同意したものとみなされます。
                </p>

                <p class="text-right">
                    以上<br>
                    （2018年●月●日制定）
                </p>

            </div>
            <!--/.pages__column__content-->
            @include('include.page_sidebar')
        </div>
        <!--/.pages__column-->
    </div>
    <!--/.pages-->
@endsection