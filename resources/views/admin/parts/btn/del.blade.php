<a href="#" data-id="{{ $id }}" onclick="deletePost(this);" class="fs12">削除</a>
<form method="post" action="{{ url('/admin/'. $table, $id) }}" id="form_{{ $id }}">
    @csrf
    {{ method_field('delete') }}
</form>
<script>
    function deletePost(e) {
        'use strict';

        if (confirm('本当に削除しますか？')) {
            document.getElementById('form_' + e.dataset.id).submit();
        }
    }
</script>
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
