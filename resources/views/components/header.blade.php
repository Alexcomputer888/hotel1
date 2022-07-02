<input type="hidden" value="ko-KR" id="Culture">
<div class="my-menu">

    <a class="" href="/{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">
        <div class="logo">
            <img src="{{asset('upload/images/Logo/logo-poseidon.png')}}" class="img-responsive">
        </div>
    </a>
    <!--<a class="btn-booking">RESERVATIONS</a>-->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="row">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <div class="row">
                        <ul class="nav navbar-nav">
                            <li  class="active">
                                <a>{{ __('messages.EXPERIENCE') }}</a>
                                <ul class="nav-child">
                                            <li><a href="/poseidon-experience/about-us{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('expaboutus.title') }}</a></li>
                                            <li><a href="/poseidon-experience/location{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explocation.title') }}</a></li>
                                </ul>
                            </li>
                            <li  class="">
                                <a>{{ __('messages.ACCOMMODATION') }}</a>

                                <ul class="nav-child">
                                           
                                        @foreach($menu as $row)
                                            <li><a href="/room/{{$row->slug}}{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{$row->title}}</a></li>
                                        @endforeach
            
                                </ul>

                            </li>
                            <li  class="">
                                <a>{{ __('messages.SERVICES AND FACILITIES') }}</a>
                                <ul class="nav-child">
                                            <li><a href="/poseidon-service/quay-dich-vu-van-phong{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('sevice5.title') }}</a></li>
                                            <li><a href="/poseidon-service/gym{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('sevice2.title') }}</a></li>
                                            <li><a href="/poseidon-service/dich-vu-cho-thue-xe{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('sevice1.title') }}</a></li>
                                            <li><a href="/poseidon-service/ho-boi-ngoai-troi{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('sevice3.title') }}</a></li>
                                            <li><a href="/poseidon-service/hoi-nghi{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('sevice4.title') }}</a></li>
                                </ul>
                            </li>
                            <li>
                                <a>{{ __('messages.DINING') }}</a>
                                <ul class="nav-child">
                                            <li><a href="/poseidon-dinning/poseidon-lobby-lounge-lobby{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('dinning3.title') }}</a></li>
                                            <li><a href="/poseidon-dinning/Medusa-restaurant-03rd-floor{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('dinning2.title') }}</a></li>
                                            <li><a href="/poseidon-dinning/Hades-bar-18th-floor{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('dinning1.title') }}</a></li>
                                </ul>
                            </li>
                            <li  class="">
                                <a>{{ __('messages.SPECIAL OFFERS') }}</a>
                                <ul class="nav-child">
                                            <li><a href="/poseidon-promotion/family{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('family1.title') }}</a></li>
                                            <li><a href="/poseidon-promotion/longstay{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('family3.title') }}</a></li>
                                            <li><a href="/poseidon-promotion/honeymoon{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('family2.title') }}</a></li>
                                </ul>
                            </li>
                            <li  class="">
                                <a>{{ __('messages.EXPLORE NHA TRANG') }}</a>
                                <ul class="nav-child" >
                                            <li><a href="/poseidon-explore/haiduonghoc{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore3.title') }}</a></li>
                                            <li><a href="/poseidon-explore/honchong{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore4.title') }}</a></li>
                                            <li><a href="/poseidon-explore/thapba{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore6.title') }}</a></li>
                                            <li><a href="/poseidon-explore/chualongson{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore1.title') }}</a></li>
                                            <li><a href="/poseidon-explore/khuphotay{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore5.title') }}</a></li>
                                            <li><a href="/poseidon-explore/dammarket{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('explore2.title') }}</a></li>
                                </ul>
                            </li>
                            <li  class=""><a class="" href="/gallery{{ session()->get('locale') == '' ? '' : '?lang='.session()->get('locale') }}">{{ __('messages.GALLERY') }}</a></li>
                            <li style="padding:10px"><a class="btn btn-reser" onclick="return booking('en-US')">{{ __('messages.RESERVATIONS') }}</a></li>

                        </ul>


                    </div>

                </div>
            </div>
        </div>
    </nav>

</div>
