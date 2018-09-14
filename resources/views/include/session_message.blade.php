@if (session('success'))
    <div class="c-notice c-notice--blue" data-notice="">
        <div class="c-notice__inner">
            <?php echo session('success') ?>
            <span class="c-notice__close" data-notice__close="">
                <i class="icon icon--modal__close__button"></i>
            </span>
        </div>
    </div>
@endif

@if (session('error'))
    <div class="c-notice c-notice--red" data-notice="">
        <div class="c-notice__inner">
            <?php echo session('error') ?>
            <span class="c-notice__close" data-notice__close="">
                <i class="icon icon--modal__close__button"></i>
            </span>
        </div>
    </div>
@endif