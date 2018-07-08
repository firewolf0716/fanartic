@extends('layouts.customer_layout')

@section('content')
    <ul class="c-breadcrumbs">
        <li><a href="/">HOME</a></li>
        <li>Widget</li>
    </ul>
    <!--/.c-breadcrumbs-->

    <div class="l-content-sm">
        <h1 class="c-pagetitle">新規登録</h1>
        <div class="login">
            <div class="login__column">
                <div class="login__column__content">
                    <section class="c-box">
                        <h3 class="c-box__hd">新規登録</h3>
                        <div class="c-box__content">
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">お名前</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                            <!--/.c-form__row-->
                                        </div>
                                        <!--/.l-column--half__col-->
                                    </div>
                                    <!--/.l-column l-column--half-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード（確認）</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                            <!--/.c-form__row-->
                                        </div>
                                        <!--/.l-column--half__col-->
                                    </div>
                                    <!--/.l-column l-column--half-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="address" value="check_rule"><i></i>登録することで以下に同意したものとみなされます。
                                        <a href="">利用規約</a>&emsp;<a href="">プライバシー＆クッキーポリシー</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="c-form__row c-form__row--min">
                                <div class="c-form__checkswitch">
                                    <label class="c-form__checkbox">
                                        <input type="checkbox" name="address" value="check_rule"><i></i>セールへの先行アクセスや、お客様にぴったりの新着アイテム、トレンド情報や特別オファーをメールでお届けいたします。
                                        <a href="">詳細を見る</a>
                                    </label>
                                </div>
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button class="c-button c-button--submit">新規登録する</button>
                            </div>

                            <hr class="c-hr">

                            <div class="l-button">
                                <button class="c-button c-button--submit">Facebookで登録する</button>
                            </div>

                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
            </div>
            <!--/.cart__column-->
        </div>
        <!--/.cart-->
    </div>
    <!--/.l-content-->

    <hr>

    <div class="l-content-sm">
        <h1 class="c-pagetitle">ログイン</h1>
        <div class="login">
            <div class="login__column">
                <div class="login__column__content">
                    <section class="c-box">
                        <h3 class="c-box__hd">ログイン</h3>
                        <div class="c-box__content">
                            <div class="c-form__row c-form__row--min">
                                <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">メールアドレス</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                    <div class="l-column--half__col">
                                        <div class="c-form__label">パスワード</div>
                                        <div class="c-form__row">
                                            <div class="c-form__row__input">
                                                <div class="c-form__colum"><input type="text" class="c-form__input"
                                                                                  name="" value=""></div>
                                            </div>
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/.l-column--half__col-->
                                </div>
                                <!--/.l-column-->
                            </div>
                            <!--/.c-form__row-->

                            <div class="l-button">
                                <button class="c-button c-button--submit">ログインする</button>
                            </div>

                            <p>パスワードを忘れた方</p>
                            <p>新規登録の方</p>

                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
            </div>
            <!--/.cart__column-->
        </div>
        <!--/.cart-->
    </div>
    <!--/.l-content-->

    <hr>

    <div class="l-content">
        <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> 配送方法・お支払い方法</h1>
        <div class="cart">
            <div class="cart__column">
                <div class="cart__column__content">
                    <ol class="cart__checkout__flow">
                        <li class="cart__checkout__flow__step--01 is-curent"><i class="c-icon"></i>情報入力</li>
                        <li class="cart__checkout__flow__step--02"><i class="c-icon"></i>注文確認</li>
                        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>注文完了</li>
                    </ol>
                    <!--/.cart__checkout__flow-->
                    <section class="c-box">
                        <h3 class="c-box__hd">配送先住所を選択</h3>
                        <div class="c-box__content">
                            <div data-checkopen="address">
                                <div class="c-form__row">
                                    <div class="l-column l-column--list l-column--top" data-checkopen__list="address">
                                        <div class="l-column--list__name">
                                            <div class="c-form__checkswitch"><label
                                                        class="c-form__radio c-form__checkswitch__label"
                                                        data-checkopen__list__radio="address"><input type="radio"
                                                                                                     name="address"
                                                                                                     value="address01"
                                                                                                     checked=""><i></i>山田
                                                    太郎</label></div>
                                        </div>
                                        <!--/.l-column--list__name-->
                                        <div class="l-column--list__data">〒1001000<br>東京都渋谷区円山町1-1-1<br>080-0000-0000
                                        </div>
                                        <!--/.l-column--list__data-->
                                        <div class="l-column--list__button"><a href="#" class="c-button c-button--sub">配送先情報を編集</a>
                                        </div>
                                        <!--/.l-column--list__button-->
                                    </div>
                                    <!--/.l-column l-column--list-->
                                </div>
                                <!--/.c-form__row-->
                                <div class="c-form__row">
                                    <div class="l-column l-column--list l-column--top" data-checkopen__list="address">
                                        <div class="l-column--list__name">
                                            <div class="c-form__checkswitch"><label
                                                        class="c-form__radio c-form__checkswitch__label"
                                                        data-checkopen__list__radio="address"><input type="radio"
                                                                                                     name="address"
                                                                                                     value="address02"><i></i>山田
                                                    太郎</label></div>
                                        </div>
                                        <!--/.l-column--list__name-->
                                        <div class="l-column--list__data">〒1001000<br>東京都渋谷区円山町1-1-1<br>080-0000-0000
                                        </div>
                                        <!--/.l-column--list__data-->
                                        <div class="l-column--list__button"><a href="#" class="c-button c-button--sub">配送先情報を編集</a>
                                        </div>
                                        <!--/.l-column--list__button-->
                                    </div>
                                    <!--/.l-column l-column--list-->
                                </div>
                                <!--/.c-form__row-->
                                <div data-checkopen__list="address">
                                    <div class="c-form__row">
                                        <div class="c-form__checkswitch"><label
                                                    class="c-form__radio c-form__checkswitch__label"
                                                    data-checkopen__list__radio="address"><input type="radio"
                                                                                                 name="address"
                                                                                                 value="addressNew"><i></i>別の住所を登録</label>
                                        </div>
                                    </div>
                                    <!--/.c-form__row-->
                                    <div data-checkopen__list__content="address">
                                        <div class="c-form__row c-form__row--min">
                                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">お名前</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input">
                                                            <div class="c-form__colum"><input type="text"
                                                                                              class="c-form__input"
                                                                                              name="" value=""></div>
                                                        </div>
                                                    </div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column--half__col-->
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">お名前（カナ）</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input">
                                                            <div class="c-form__colum"><input type="text"
                                                                                              class="c-form__input"
                                                                                              name="" value=""></div>
                                                        </div>
                                                        <!--/.c-form__row-->
                                                    </div>
                                                    <!--/.l-column--half__col-->
                                                </div>
                                                <!--/.l-column l-column--half-->
                                            </div>
                                            <!--/.l-column-->
                                        </div>
                                        <!--/.c-form__row-->
                                        <div class="c-form__row c-form__row--min">
                                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">郵便番号</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input"><input type="text"
                                                                                               class="c-form__input c-form__input--address"
                                                                                               name="" value="">
                                                            <button class="c-button c-button--sub">住所自動入力</button>
                                                        </div>
                                                    </div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column--half__col-->
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">都道府県</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input"><input type="text"
                                                                                               class="c-form__input"
                                                                                               name="" value=""></div>
                                                    </div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column--half__col-->
                                            </div>
                                            <!--/.l-column l-column--half-->
                                        </div>
                                        <!--/.c-form__row-->
                                        <div class="c-form__row">
                                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">市町区村</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input"><input type="text"
                                                                                               class="c-form__input"
                                                                                               name="" value=""></div>
                                                    </div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column--half__col-->
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">番地</div>
                                                    <div class="c-form__row">
                                                        <div class="c-form__row__input"><input type="text"
                                                                                               class="c-form__input"
                                                                                               name="" value=""></div>
                                                    </div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column--half__col-->
                                            </div>
                                            <!--/.l-column l-column--half-->
                                        </div>
                                        <!--/.c-form__row-->
                                        <div class="c-form__row c-form__row--min">
                                            <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                <div class="l-column--half__col">
                                                    <div class="c-form__label">電話番号</div>
                                                    <div class="c-form__row"><input type="tel"
                                                                                    class="c-form__input c-form__input--tel"
                                                                                    name="" value=""> <input type="tel"
                                                                                                             class="c-form__input c-form__input--tel"
                                                                                                             name=""
                                                                                                             value="">
                                                        <input type="tel" class="c-form__input c-form__input--tel"
                                                               name="" value=""></div>
                                                    <!--/.c-form__row-->
                                                </div>
                                                <!--/.l-column l-column--half-->
                                            </div>
                                            <!--/.l-column-->
                                        </div>
                                        <!--/.c-form__row-->
                                    </div>
                                    <!--/data-checkopen__list__content-->
                                </div>
                                <!--/data-checkopen__list-->
                            </div>
                            <!--/data-checkopen-->
                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                    <section class="c-box">
                        <h3 class="c-box__hd">お支払い方法を選択</h3>
                        <div class="c-box__content" data-checkopen="payment">
                            <div class="c-form__row" data-checkopen__list="payment">
                                <div class="c-form__checkswitch"><label class="c-form__radio c-form__checkswitch__label"
                                                                        data-checkopen__list__radio="payment"><input
                                                type="radio" name="payment" value="credit"
                                                checked=""><i></i>クレジットカード</label>
                                    <div class="c-form__checkswitch__inner" data-checkopen__list__content="payment"
                                         data-checkopen="credit">
                                        <div class="c-form__row" data-checkopen__list="credit">
                                            <div class="l-column l-column--list-left">
                                                <div class="l-column--list-left__col">
                                                    <div class="c-form__checkswitch"><label
                                                                class="c-form__radio c-form__checkswitch__label"
                                                                data-checkopen__list__radio="credit"><input type="radio"
                                                                                                            name="paymentCredit"
                                                                                                            value="credit1"
                                                                                                            checked=""><i></i>カード番号</label>
                                                    </div>
                                                </div>
                                                <div class="l-column--list-left__col">2810</div>
                                                <div class="l-column--list-left__col">2018/07</div>
                                            </div>
                                            <!--/.l-column l-column--list-left-->
                                        </div>
                                        <!--/.c-form__row-->
                                        <div class="c-form__row" data-checkopen__list="credit">
                                            <div class="l-column l-column--list-left">
                                                <div class="l-column--list-left__col">
                                                    <div class="c-form__checkswitch"><label
                                                                class="c-form__radio c-form__checkswitch__label"
                                                                data-checkopen__list__radio="credit"><input type="radio"
                                                                                                            name="paymentCredit"
                                                                                                            value="credit2"><i></i>カード番号</label>
                                                    </div>
                                                </div>
                                                <div class="l-column--list-left__col">2810</div>
                                                <div class="l-column--list-left__col">2018/07</div>
                                            </div>
                                            <!--/.l-column l-column--list-left-->
                                        </div>
                                        <!--/.c-form__row-->
                                        <div data-checkopen__list="credit">
                                            <div class="c-form__row">
                                                <div class="c-form__checkswitch"><label
                                                            class="c-form__radio c-form__checkswitch__label"
                                                            data-checkopen__list__radio="credit"><input type="radio"
                                                                                                        name="paymentCredit"
                                                                                                        value="credit"><i></i>別のカードを追加</label>
                                                </div>
                                            </div>
                                            <!--/.c-form__row-->
                                            <div data-checkopen__list__content="credit">
                                                <div class="c-form__row">
                                                    <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                        <div class="l-column--half__col">
                                                            <div class="c-form__label">カード番号</div>
                                                            <div class="c-form__row"><input type="text"
                                                                                            class="c-form__input"
                                                                                            name="" value=""></div>
                                                            <!--/.c-form__row-->
                                                        </div>
                                                        <div class="l-column--half__col">
                                                            <div class="c-form__label">カード名義</div>
                                                            <div class="c-form__row"><input type="text"
                                                                                            class="c-form__input"
                                                                                            name="" value=""></div>
                                                            <!--/.c-form__row-->
                                                        </div>
                                                    </div>
                                                    <!--/.l-column l-column--half-->
                                                </div>
                                                <!--/.c-form__row-->
                                                <div class="c-form__row">
                                                    <div class="l-column l-column--half l-column--half--wide u-sp__l-column--full">
                                                        <div class="l-column--half__col">
                                                            <div class="c-form__label">有効期限</div>
                                                            <div class="c-form__row">
                                                                <div class="c-form__row__input"><label
                                                                            class="c-form__select c-form__select--birthday--year"><span
                                                                                class="c-form__select__box"><select
                                                                                    name="" id=""><option
                                                                                        value="">----</option></select></span><span
                                                                                class="u-pc">年</span></label> <label
                                                                            class="c-form__select c-form__select--birthday--month02"><span
                                                                                class="c-form__select__box"><select
                                                                                    name="" id=""><option
                                                                                        value="">----</option></select></span><span
                                                                                class="u-pc">月</span></label></div>
                                                            </div>
                                                            <!--/.c-form__row-->
                                                        </div>
                                                        <div class="l-column--half__col">
                                                            <div class="c-form__label">セキュリティ番号</div>
                                                            <div class="c-form__row"><input type="text"
                                                                                            class="c-form__input c-form__input--tel"
                                                                                            name="" value=""></div>
                                                            <!--/.c-form__row-->
                                                        </div>
                                                    </div>
                                                    <!--/.l-column l-column--half-->
                                                </div>
                                                <!--/.c-form__row-->
                                            </div>
                                            <!--/data-checkopen__list-->
                                        </div>
                                        <!--/data-checkopen-->
                                    </div>
                                    <!--/.c-form__checkswitch__inner-->
                                </div>
                            </div>
                            <!--/.c-form__row-->
                            <div class="c-form__row" data-checkopen__list="payment">
                                <div class="c-form__checkswitch"><label class="c-form__radio c-form__checkswitch__label"
                                                                        data-checkopen__list__radio="payment"><input
                                                type="radio" name="payment" value="paypal"><i></i><img
                                                src="/images/checkout__payment--paypal.png" alt="PayPal"
                                                width="135"></label></div>
                            </div>
                            <!--/.c-form__row-->
                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
                <!--/.cart__column__content-->
                <div class="cart__column__shipping" data-js-sticky="">
                    <div class="cart__shipping">
                        <table class="cart__shipping__data">
                            <tr>
                                <td>商品合計</td>
                                <td class="cart__shipping__data__price">￥12,960</td>
                            </tr>
                            <tr>
                                <td>送料</td>
                                <td class="cart__shipping__data__price">￥400</td>
                            </tr>
                            <tr>
                                <td>支払い手数料</td>
                                <td class="cart__shipping__data__price">￥0</td>
                            </tr>
                        </table>
                        <table class="cart__shipping__data cart__shipping__data--total">
                            <tr>
                                <td>合計</td>
                                <td class="cart__shipping__data__price cart__shipping__price"><strong>¥13,360</strong>
                                </td>
                            </tr>
                        </table>
                        <div class="cart__shipping__button"><a href="#"
                                                               class="c-button c-button--submit c-button--full">次へ進む</a>
                        </div>
                    </div>
                    <!--/.cart__shipping-->
                </div>
                <!--/.cart__column__shipping-->
            </div>
            <!--/.cart__column-->
        </div>
        <!--/.cart-->
    </div>
    <!--/.l-content-->

    <hr>


    <div class="l-content">
        <h1 class="c-pagetitle"><i class="c-icon c-pagetitle__icon c-pagetitle__icon--checkout"></i> 注文内容の確認</h1>
        <div class="cart">
            <div class="cart__column">
                <div class="cart__column__content">
                    <ol class="cart__checkout__flow">
                        <li class="cart__checkout__flow__step--01"><i class="c-icon"></i>情報入力</li>
                        <li class="cart__checkout__flow__step--02 is-curent"><i class="c-icon"></i>注文確認</li>
                        <li class="cart__checkout__flow__step--03"><i class="c-icon"></i>注文完了</li>
                    </ol>
                    <!--/.cart__checkout__flow-->
                    <hr class="c-hr">
                    <div class="l-column l-column--cart">
                        <div class="l-column--cart__item">
                            <div class="c-item c-item--01">
                                <div class="c-item__column">
                                    <div class="c-item__column__figure">
                                        <figure class="c-item__figure"><a href="#"><img
                                                        src="http://placehold.jp/340x440.png" alt=""></a></figure>
                                    </div>
                                    <!--/.c-item__column__figure-->
                                    <div class="c-item__column__data">
                                        <h3 class="c-item__name">BRUNELLO CUCINELLI</h3>
                                        <ul class="c-item__data">
                                            <li>graphic print sweatshirt</li>
                                            <li>カラー：ライトグリーン</li>
                                            <li>サイズ：L</li>
                                        </ul>
                                        <div class="c-item__price u-sp"><strong>&yen;11,000</strong></div>
                                    </div>
                                    <!--/.c-item__column__data-->
                                </div>
                                <!--/.c-item__column-->
                            </div>
                            <!--/.c-item-->
                        </div>
                        <div class="l-column--cart__price u-pc">&yen;11,000</div>
                        <div class="l-column--cart__button"><a href="#" class="c-button c-button--secondary">変更</a>
                        </div>
                    </div>
                    <!--/.l-column l-column--cart-->
                    <hr class="c-hr">
                    <div class="l-column l-column--cart">
                        <div class="l-column--cart__item">
                            <div class="c-item c-item--01">
                                <div class="c-item__column">
                                    <div class="c-item__column__figure">
                                        <figure class="c-item__figure"><a href="#"><img
                                                        src="http://placehold.jp/340x440.png" alt=""></a></figure>
                                    </div>
                                    <!--/.c-item__column__figure-->
                                    <div class="c-item__column__data">
                                        <h3 class="c-item__name">BRUNELLO CUCINELLI</h3>
                                        <ul class="c-item__data">
                                            <li>graphic print sweatshirt</li>
                                            <li>カラー：ライトグリーン</li>
                                            <li>サイズ：L</li>
                                        </ul>
                                        <div class="c-item__price u-sp"><strong>&yen;11,000</strong></div>
                                    </div>
                                    <!--/.c-item__column__data-->
                                </div>
                                <!--/.c-item__column-->
                            </div>
                            <!--/.c-item-->
                        </div>
                        <div class="l-column--cart__price u-pc">&yen;11,000</div>
                        <div class="l-column--cart__button"><a href="#" class="c-button c-button--secondary">変更</a>
                        </div>
                    </div>
                    <!--/.l-column l-column--cart-->
                    <hr class="c-hr">
                    <div class="l-column l-column--cart">
                        <div class="l-column--cart__item">
                            <div class="c-item c-item--01">
                                <div class="c-item__column">
                                    <div class="c-item__column__figure">
                                        <figure class="c-item__figure"><a href="#"><img
                                                        src="http://placehold.jp/340x440.png" alt=""></a></figure>
                                    </div>
                                    <!--/.c-item__column__figure-->
                                    <div class="c-item__column__data">
                                        <h3 class="c-item__name">BRUNELLO CUCINELLI</h3>
                                        <ul class="c-item__data">
                                            <li>graphic print sweatshirt</li>
                                            <li>カラー：ライトグリーン</li>
                                            <li>サイズ：L</li>
                                        </ul>
                                        <div class="c-item__price u-sp"><strong>&yen;11,000</strong></div>
                                    </div>
                                    <!--/.c-item__column__data-->
                                </div>
                                <!--/.c-item__column-->
                            </div>
                            <!--/.c-item-->
                        </div>
                        <div class="l-column--cart__price u-pc">&yen;11,000</div>
                        <div class="l-column--cart__button"><a href="#" class="c-button c-button--secondary">変更</a>
                        </div>
                    </div>
                    <!--/.l-column l-column--cart-->
                    <hr class="c-hr">
                    <section class="c-box">
                        <h3 class="c-box__hd">配送先住所</h3>
                        <div class="c-box__content">
                            <div class="l-column l-column--list l-column--top">
                                <div class="l-column--list__name">山田 太郎</div>
                                <!--/.l-column--list__name-->
                                <div class="l-column--list__data">〒1001000<br>東京都渋谷区円山町1-1-1<br>080-0000-0000</div>
                                <!--/.l-column--list__data-->
                                <div class="l-column--list__button"><a href="#"
                                                                       class="c-button c-button--sub">配送先情報を編集</a></div>
                                <!--/.l-column--list__button-->
                            </div>
                            <!--/.l-column l-column--list-->
                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                    <section class="c-box">
                        <h3 class="c-box__hd">お支払い方法</h3>
                        <div class="c-box__content">
                            <div class="l-column l-column--list l-column--top">
                                <div class="l-column--list__data">カード番号：************2810<br>有効期限：2018/07</div>
                                <!--/.l-column--list__data-->
                                <div class="l-column--list__button"><a href="#"
                                                                       class="c-button c-button--sub">支払い方法を編集</a></div>
                                <!--/.l-column--list__button-->
                            </div>
                            <!--/.l-column l-column--list-->
                        </div>
                        <!--/.c-box__content-->
                    </section>
                    <!--/.c-box-->
                </div>
                <!--/.cart__column__content-->
                <div class="cart__column__shipping" data-js-sticky="">
                    <div class="cart__shipping">
                        <table class="cart__shipping__data">
                            <tr>
                                <td>商品合計</td>
                                <td class="cart__shipping__data__price">￥12,960</td>
                            </tr>
                            <tr>
                                <td>送料</td>
                                <td class="cart__shipping__data__price">￥400</td>
                            </tr>
                            <tr>
                                <td>支払い手数料</td>
                                <td class="cart__shipping__data__price">￥0</td>
                            </tr>
                        </table>
                        <table class="cart__shipping__data cart__shipping__data--total">
                            <tr>
                                <td>合計</td>
                                <td class="cart__shipping__data__price cart__shipping__price"><strong>¥13,360</strong>
                                </td>
                            </tr>
                        </table>
                        <div class="cart__shipping__button"><a href="#"
                                                               class="c-button c-button--submit c-button--full">注文を確定する</a>
                        </div>
                    </div>
                    <!--/.cart__shipping-->
                </div>
                <!--/.cart__column__shipping-->
            </div>
            <!--/.cart__column-->
        </div>
        <!--/.cart-->
    </div>
    <!--/.l-content-->
@endsection