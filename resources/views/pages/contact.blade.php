<!DOCTYPE html>
<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ __('contact.pagetitle') }} | Poseidon Nha Trang hotel</title>
    <meta name="description" />
    <meta name="keywords" content=",poseidon, nha trang, vietnam, hotel,resort" />
    <meta name="robots" content="index, follow" />
    <meta name="generator" content="Khach san Poseidon Nha Trang" />
    <link rel="shortcut icon" href="favicon.ico" />

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
    <div class="background-home" style="background:url(Upload/images/Background/view1.jpg) no-repeat 50% 50%;">
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

<div class="visible-xs visible-sm">
    <input type="hidden" id="Lat" value="8.677575" />
    <input type="hidden" id="Lng" value="106.601062" />
</div>
<div class="container-fluid">
    <div class="row">
        <div class="container h-container-mt">
            <a class="btn-cus-close" href="/{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}"></a>
            <div class="container contents" style="margin-top:25px">
                <div class="row">

                    <div class="col-sm-8 map" id="map-canvas">
                    </div>
                    <div class="col-sm-4">
                        <h4 style="color:#3EACD2" class="text-center">{!!html_entity_decode(__('contact.title'))!!}</h4>
                        <p>{!!html_entity_decode(__('contact.label.address'))!!} </p>
                        <p>{!!html_entity_decode(__('contact.label.phone'))!!} : (+84) 0258 3826789 - 0258 3736868</p>
                        <p>Email : info@poseidonnhatranghotel.com</p>
                        <form class="form form-horizontal">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Name" id="Name" required>

                            </div>
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Email" id="Email" required>
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Title" id="Title" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="5" placeholder="Content" id="Content" required></textarea>
                            </div>
                            <div class="form-group">
                                <button type="button" class="btn btn-primary" onclick="return submitSendMail()">Send</button>
                                <button type="reset" class="btn btn-warning btn-reset">Clear</button>
                            </div>
                        </form>
                    </div>

                </div>

            </div>
        </div>
    </div>

</div>
<div class="loading-contact " tabindex="-1"></div>
<style>
    #map-canvas {
        height: calc(100vh - 280px);
    }

    .form-group {
        margin-left: 0 !important;
        margin-right: 0 !important;
    }

    .contents {
        overflow: hidden;
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
