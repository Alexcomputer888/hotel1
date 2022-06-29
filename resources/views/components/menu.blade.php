<ul class="ul-supporter list-unstyled">
    <li class="li-inl-block li-supporter-dt hidden-xs">
        <span class="supporter-title">{{ __('messages.SUPPORT ONLINE') }}<span class="caret"></span></span>
        <ul class="supporter-body">
                    <li class="li-supporter-children">
                        <span class="li-inl-block h_span_sup">
                            Ms. Hồng Ngọc
                                <br />0903 079 293                           </span>
                            <span class="li-inl-block h_span_sup"><a href="mailto:gm@poseidonnhatranghotel.com" target="_blank"><img src="{{asset('Content/images/icons/mail.png')}}" width="20" /></a></span>
                                                        <!-- <span class="li-inl-block h_span_sup"><a href="Skype:msdophuc?chat" target="_blank"><img src="{{asset('Content/images/icons/skype.png')}}" /></a></span> -->


                    </li>
                    <li class="li-supporter-children">
                        <span class="li-inl-block h_span_sup">
                            Ms. Hà Luyến
                                <br />0905 493 075                         </span>
                            <span class="li-inl-block h_span_sup"><a href="mailto:sales3@poseidonnhatranghotel.com" target="_blank"><img src="{{asset('Content/images/icons/mail.png')}}" width="20" /></a></span>
                                                        <!-- <span class="li-inl-block h_span_sup"><a href="Skype:thachthao04?chat" target="_blank"><img src="{{asset('Content/images/icons/skype.png')}}" /></a></span> -->


                    </li>
        </ul>

    </li>
    <li class="li-inl-block li-supporter-dt ">
        <a class="supporter-title btn-title-lang">
                <span >
                    @switch(session()->get('locale'))
                        @case('vi')
                            TIẾNG VIỆT
                            @break
                        @case('ru')
                            Русский Язык
                            @break
                        @case('ja')
                            日本語
                            @break
                        @case('zh')
                            简体中文
                            @break
                        @case('ko')
                            한국어
                            @break
                        @default
                            ENGLISH
                            @break
                    @endswitch
                </span>
            <span class="caret"></span>
        </a>
        <ul class="supporter-body ">
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=vi">TIẾNG VIỆT</a></li>
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=en">ENGLISH</a></li>
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=ru">Русский Язык</a></li>
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=ja">日本語</a></li>
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=zh">简体中文</a></li>
            <li class="li-supporter-children"><a href="{{url()->current()}}?lang=ko">한국어</a></li>
        </ul>
    </li>
</ul>

<script type="text/javascript">
    // $(".supporter-body li a").click(function(){
    // var selText = $(this).text();
    // console.log( selText);
    // $(this).parents('.li-supporter-dt').find('.dropdown-toggle').val(selText);
    // });
</script>
