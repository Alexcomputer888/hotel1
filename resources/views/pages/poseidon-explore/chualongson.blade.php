<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('explore1.pagetitle') }} | Poseidon Nha Trang hotel</title>
    <meta name="description" />
    <meta name="keywords" content=",poseidon, nha trang, vietnam, hotel,resort" />
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
    <div class="background-home" style="">
        <div id="slides">
                <div class="slides-container">
                        <img src="../Upload/images/Background/1.jpg">
                        <img src="../Upload/images/Background/2.jpg">
                        <img src="../Upload/images/Background/3.jpg">
                        <img src="../Upload/images/Background/4.jpg">
                        <img src="../Upload/images/Background/5.jpg">
                        <img src="../Upload/images/images/8_View020053.jpg">
                        <img src="../Upload/images/images/8_View010053.jpg">
                        <img src="../Upload/files/1A.jpg">
                        <img src="../Upload/files/8_View04.jpg">
                        <img src="../Upload/files/1.jpg">
                        <img src="../Upload/files/2.jpg">
                        <img src="../Upload/files/3.jpg">
                        <img src="../Upload/files/4.jpg">
                        <img src="../Upload/files/5.jpg">
                        <img src="../Upload/files/6.jpg">
                        <img src="../Upload/files/7.jpg">
                        <img src="../Upload/files/8.jpg">
                        <img src="../Upload/files/_ND_1930-HDR.jpg">
                        <img src="../Upload/files/_ND_1914-HDR.jpg">
                        <img src="../Upload/files/_ND_1940-HDR.jpg">
                </div>
        </div>
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


<script>
    $(document).ready(function () {
        var w = $(window).width();
        if (w > 768)
        {
            var h1 = $('.contents').height();
            var h2 = $('.detail-content').height();
            if (h2 > h1) {
                $(".room-detail").hide();
                $(".block-continue").html("<a> <i class='fa fa-chevron-right'></i><i class='fa fa-chevron-right'></i><i class='fa fa-chevron-right'></i> </a>")
            }
            $(".block-continue").click(function () {
                $(".room-detail").show(500);
                $(".block-continue").hide();
            });
        }
    });
</script>
<div class="container-fluid">
    <div class="row">
        <div class="container h-container-mt">
        <a class="btn-cus-close" href="../{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}"></a>
            <div class="container contents">

                <div class="row">
                    <div class="room-title col-sm-12 mb20">
                        <h3>{!!html_entity_decode(__('explore1.title'))!!}</h3>
                    </div>
                    <div class="col-sm-4">
                            <ul id="image-gallery" class="gallery list-unstyled cS-hidden">

                            </ul>

                    </div>
                    <div class="col-sm-8 meeting-content">
                        {!!html_entity_decode(__('explore1.content'))!!}
                    </div>
                    <div class="clearfix mb20"></div>
                </div>

            </div>
        </div>
    </div>
</div>

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
