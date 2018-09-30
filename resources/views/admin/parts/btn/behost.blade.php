@if($list->is_host == 1)
    <a href="#" data-id="{{ $list->id }}" onclick="behostPost(this);" class="fs12">ホスト権限を付与する</a>
    <form method="post" action="{{ route('admin.user.behost.post') }}" id="form_behost_{{ $list->id }}">
        @csrf
        <input type="hidden" name="user_id" value="{{ $list->id }}">
    </form>
    <script>
        function behostPost(e) {
            'use strict';

            if (confirm('ホスト権限が付与され、ユーザーにメールが飛びます')) {
                document.getElementById('form_behost_' + e.dataset.id).submit();
            }
        }
    </script>
@endif
{{--
<script>
    (function () {
        'use strict';

        var cmds = document.getElementsByClassName('del');
        var i;

        for (i = 0; i < cmds.length; i++) {
            cmds[i].addEventListener('click', function (e) {
                e.preventDefault();
                if (confirm('本当に削除しますか？')) {
                    document.getElementById('form_' + this.dataset.id).submit();
                }
            });
        }

    })();
</script>--}}
