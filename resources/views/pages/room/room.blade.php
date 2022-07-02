<!DOCTYPE html>
<html>

<!-- Mirrored from poseidonnhatranghotel.com/room/superior-room by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Feb 2022 02:30:33 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('room6.title') }} | Poseidon Nha Trang hotel</title>
    <meta name="description" content="Superior room" />
    <meta name="keywords" content="Superior room,poseidon, nha trang, vietnam, hotel,resort" />
    <meta name="robots" content="index, follow" />
    <meta name="generator" content="Khach san Poseidon Nha Trang" />
    <link rel="shortcut icon" href="../favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ asset('Content/superslides.css') }}">
    <link rel="stylesheet" href="{{ asset('Content/digital.css') }}">
    <link rel="stylesheet" href="{{ asset('Content/jquery.mCustomScrollbar.min.css') }}">
    <link rel="stylesheet" href="{{ asset('Content/lightslider.css') }}">
    <link rel="stylesheet" href="{{ asset('Content/flexslider.css') }}">
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/css/bootstrap-datetimepicker.min.css'>
    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700&amp;subset=latin,vietnamese" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="{{ asset('Content/myCSS.style01.css') }}">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;signed_in=true"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="{{ asset('Scripts/jquery.superslides.min.js') }}"></script>
    <script src="{{ asset('Scripts/jquery.clock.js') }}"></script>
    <script src="{{ asset('Scripts/jquery.zweatherfeed.js') }}"></script>
    <script src="{{ asset('Scripts/jquery.mCustomScrollbar.concat.min.js') }}"></script>
    <script src="{{ asset('Scripts/lightslider.js') }}"></script>
    <script src="{{ asset('Scripts/jquery.flexslider-min.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.15.35/js/bootstrap-datetimepicker.min.js"></script>
    <script src="{{ asset('Scripts/myJS.js') }}"></script>
    <script src="{{ asset('Scripts/Reservation.js') }}"></script>
    <script src="{{ asset('Scripts/main.js') }}"></script>
</head>
    <body>


<div class="dropdown block-lang">
    <x-menu />
</div>
<div class="social">
    <ul>
        <li class="phone"><a></a></li>
        <li class="email"><a></a></li>
        <li class="twitter"><a></a></li>
        <li class="facebook"><a></a></li>
    </ul>
</div>
    <div class="background-home" style="background:url(../Upload/files/6.jpg) no-repeat 50% 50%;">
    </div>



        <div id="wrap">
            <div class="col-sm-2 layer-menu">
                <div class="row">

<header>
    <x-header />
</header>
                </div>

            </div>
            <!--Menu top-->

            <div class="col-sm-10 layer-content">
                <div class="row">
                    <section>
                        <div id="content">


    <div class="container-fluid">
        <div class="row">
            <div class="container h-container-mt">
                <a class="btn-cus-close" href="../{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}"></a>
                <div class="container contents">
                    <div class="row">
                        <div class="room-title col-sm-12 mb20">
                            <h3>{{ $rows->title }}</h3>
                        </div>
                            <div class="col-sm-5 mb20">
                                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                       
                                       <?php
                                 $photos = $rows->photo;
                                 $photos_arrs = json_decode($photos);
                                 if ($photos_arrs == FALSE) {
                                    echo ' <li data-thumb="'.asset('img/'. $photos).'">
                                    <img src="'.asset('img/'. $photos).'" class="img-responsive">
                                </li>';
                                 } else {
                                     foreach ($photos_arrs as $value) {
                                        echo ' <li data-thumb="'.asset('img/'. $value).'">
                                        <img src="'.asset('img/'. $value).'" class="img-responsive">
                                    </li>';
                                     }
                                 }
                                 ?>
                                </ul>
                            </div>

                        <div class="col-sm-7">
                            @switch(session()->get('locale'))
                        @case('vi')
                        {!! $rows->detail_vi !!}
                            @break
                        @case('ru')
                        {!! $rows->detail_ru !!}
                            @break
                        @case('ja')
                        {!! $rows->detail_jp !!}
                            @break
                        @case('zh')
                        {!! $rows->detail_cn !!}
                            @break
                        @case('ko')
                        {!! $rows->detail_kr !!}
                            @break
                        @default
                        {!! $rows->detail_en !!}
                            @break
                    @endswitch
                        </div>

                        <div class="clearfix mb20"></div>
                        <div class="col-sm-12 room-detail">
                            @switch(session()->get('locale'))
                            @case('vi')
                            {!! $rows->content_vi !!}
                                @break
                            @case('ru')
                            {!! $rows->content_ru !!}
                                @break
                            @case('ja')
                            {!! $rows->content_jp !!}
                                @break
                            @case('zh')
                            {!! $rows->content_cn !!}
                                @break
                            @case('ko')
                            {!! $rows->content_kr !!}
                                @break
                            @default
                            {!! $rows->content_en !!}
                                @break
                        @endswitch
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>

        <style>
            .room-detail ul {
                -webkit-padding-start: 40px;
            }
        </style>

                        </div>
                    </section>
                </div>
            </div>
            <!-- End Menu top-->

            <footer class="container-fluid define">
                <x-footer />

</footer>






        </div>
    </body>

</html>
