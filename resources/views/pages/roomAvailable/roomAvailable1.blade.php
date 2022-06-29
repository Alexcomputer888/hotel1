<!DOCTYPE html>
<html>

<!-- Mirrored from poseidonnhatranghotel.com/room/superior-room by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 13 Feb 2022 02:30:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

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
    <link rel="stylesheet" href="{{ asset('Content/booking-menu.css') }}">
    <link rel="stylesheet" href="{{ asset('Content/style.css') }}">
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
    <div class="background-home" style="background:url(Upload/images/Background/kw_p%20dien%20hinh%20khach%20san%204-1.jpg) no-repeat 50% 50%;">
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
                              <!--Silder-->
            <!--End Booking box-->
            <!--Slogan-->
            <div id="content">

   
        <div class="container">
            <div class="text-center" id="slogant">
                <h1>@lang('reservations.Booking')</h1>
            </div>
            <div id="crumbs">
                <ul>

                    <li><a href="/RoomAvailable" class="active">@lang('reservations.Booking')</a></li>
                </ul>
            </div>


            <div class="m-t-10">
                <div class="col-sm-12 col-xs-12  m-b-10 p-l-0">

   
                    <form id="contact-frm" name="contact-frm" class="contact100-form validate-form">
                    <div class="booking-form">
                        <div class="header">
                            @lang('reservations.ReservationForm')
                        </div>
                        <div class="a-success">
                            
                        </div>
                        @if(session()->has('message'))
                        <div class="alert alert-success">
                            {{ session()->get('message') }}
                        </div>
                        @endif
                        <div class="form-group col-sm-3 col-xs-12">
                            <label> @lang('reservations.Check In') </label>

                            <div class="input-group" id="Scheck_in">

                                <input type="text" class="form-control " name="checkin" id="checkin">
                                <div class="input-group-addon "><i class="fa fa-calendar"></i></div>
                            </div>
                            @error('name')
                            <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        <div class="form-group col-sm-3 col-xs-12">
                            <label> @lang('reservations.Check Out') </label>

                            <div class="input-group" id="Scheck_out">

                                <input type="text" class="form-control " name="checkout" id="checkout">
                                <div class="input-group-addon "><i class="fa fa-calendar"></i></div>
                            </div>
                            @error('name')
                            <span class="text-danger"> {{ $message }} </span>
                            @enderror
                        </div>
                        <div class="form-group col-sm-3 col-xs-12">
                            <label class="control-label">@lang('reservations.Adult(s)')</label>
                            <input class="form-control" min="1" name="Adult" id="Adult" type="number" value="1">
                        </div>
                        <div class="form-group col-sm-3 col-xs-12">
                            <label class="control-label">@lang('reservations.Children')</label>
                            <input class="form-control" min="0" name="Children" id="Children" type="number" value="0">
                        </div>

                        <div class="form-group col-sm-6 col-xs-12">
                            <label class="control-label">Mail</label>
                            <input class="form-control" type="email" name="email" id="email" placeholder="Email">
                        </div>
                        <div class="form-group col-sm-3 col-xs-12">
                            <label class="control-label">@lang('reservations.Name')</label>
                            <input class="form-control" type="text" name="name" id="name" placeholder="@lang('reservations.Name')">
                        </div>
                        <div class="form-group col-sm-3 col-xs-12">
                            <label class="control-label">@lang('reservations.Phone')</label>
                            <input class="form-control" type="number" name="phone" id="phone" placeholder="@lang('reservations.Phone')">
                        </div>
                        <div class="form-group col-sm-12 col-xs-12 " style="text-align: right;">
                            <button  id="btn-submit-mail" type="button" class="btn-success btn btn-submit-mail">
                                Đặt phòng
                            </button>

                            
                                                    </div>
                            <p>
                            &nbsp;
                            </p>
                      <!-- <button id="btn-submit-mail" class="btn btn-success m-l-15 btn-checkbooking mb15" type="button">Tiếp tục</button> -->
                    </div>

                    </form>
                    <div class="clearfix mb30"></div>

                    <style>
                        table.booking-info {
                            width: 100%;
                            /*margin:20px auto;*/
                        }

                        table.booking-info tr td {
                            padding: 25px 10px 0px 10px;
                            vertical-align: bottom;
                        }

                        table.booking-info tr td:nth-child(odd) {
                            width: 60%;
                        }

                        table.booking-info tr td:nth-child(even) {
                            text-align: right;
                        }

                        table.booking-info tr {
                            border-bottom: 1px solid #dadada;
                        }
                    </style>
                </div>

            </div>
        </div>



    </div>
    <script>
      $("#btn-submit-mail").click(function() {
        
        let x = document.forms["contact-frm"]["name","email","phone"].value;
        if (x == "") {
            alert("@lang('reservations.Entercompleteinformation')");
            return false;
        }
    

const data = {
    "user_id": "nyaRh-XSXofdD5B4Q",
    "service_id": "service_8dkaf2x",
    "template_id": "template_kpgqnlf",
    "template_params": {
        from_name: $('#name').val(),
        checkin: $('#checkin').val(),
        checkout: $('#checkout').val(),
        Adult: $('#Adult').val(),
        Children: $('#Children').val(),
        email: $('#email').val(),
        phone: $('#phone').val(),
    }
}
$.ajax('https://api.emailjs.com/api/v1.0/email/send', {
    type: 'POST',
    data: JSON.stringify(data),
    contentType: 'application/json',
}).done(function() {
  
    $('#name').val('')
    $('#email').val('')
    $('#phone').val('')
})

event.preventDefault()
event.stopPropagation()
$(".a-success").append("@lang('reservations.Email sent successfully')");
$(".a-success").addClass("alert alert-success");
})

    </script>
<div class="clearfix"></div>
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
