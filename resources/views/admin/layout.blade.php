<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Admin Poseidon</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/adminwrap-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="{{asset('favicon.ico')}}">
    <!-- Bootstrap Core CSS -->
    <link href="{{ asset('quantri/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('quantri/css/perfect-scrollbar.css') }}" rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="{{ asset('quantri/css/morris.css') }}" rel="stylesheet">
    <link href="{{ asset('quantri/css/c3.min.css') }}" rel="stylesheet">
    <link href="{{ asset('quantri/css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('quantri/css/colors/default.css') }}" id="theme" rel="stylesheet">
    

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    {{-- <link href="{{ asset('quantri/css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('quantri/css/icon.css') }}" rel="stylesheet"> --}}
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')}}"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')}}"></script>
</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Admin Wrap</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header text-center">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                            <img src="{{ asset('Upload/images/Logo/logo-poseidon.png') }}" alt="homepage"
                                class="dark-logo w-50" />
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark"
                                href="javascript:void(0)"><i class="fa fa-bars"></i></a> </li>
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item hidden-xs-down search-box"> <a
                                class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i
                                    class="fa fa-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a
                                    class="srh-btn"><i class="fa fa-times"></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <!-- ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown u-pro">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="#"
                                id="navbarDropdown" data-bs-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">{{Auth::User()->name}}</a>
                                <div class="dropdown-menu dropdown-menu-right animated flipInY">
                                    <ul class="dropdown-user">
                                      <li>
                                        <div class="dw-user-box">
                                          <div class="u-text">
                                            <h4>{{Auth::User()->name}}</h4>
                                            <p class="text-muted">varun@gmail.com</p>
                                          </div>
                                        </div>
                                      </li>
                                      <li role="separator" class="divider"></li>
                                      <li>
                                        <a href="#"><i class="ti-user"></i> My Profile</a>
                                      </li>
                                      <li>
                                        <a href="#"><i class="ti-wallet"></i> My Balance</a>
                                      </li>
                                      <li>
                                        <a href="#"><i class="ti-email"></i> Inbox</a>
                                      </li>
                                      <li role="separator" class="divider"></li>
                                      <li>
                                        <a href="#"><i class="ti-settings"></i> Account Setting</a>
                                      </li>
                                      <li role="separator" class="divider"></li>
                                      <li>
                                        <a href="#"><i class="fa fa-power-off"></i> Logout</a>
                                      </li>
                                    </ul>
                                  </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">

                        <li> <a class="waves-effect waves-dark" href="/admin/tong-quan" aria-expanded="false"><i
                                    class="fa fa-user-circle-o"></i><span class="hide-menu">Tổng quan</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="/admin/room" aria-expanded="false"><i
                                    class="fa fa-table"></i><span class="hide-menu">Loại Phòng</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="/admin/service" aria-expanded="false"><i
                                    class="fa fa-smile-o"></i><span class="hide-menu">Dịch Vụ</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="map-google.html" aria-expanded="false"><i
                                    class="fa fa-globe"></i><span class="hide-menu">Ẩm thực</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="pages-blank.html" aria-expanded="false"><i
                                    class="fa fa-bookmark-o"></i><span class="hide-menu">Khám phá</span></a>
                        </li>
                     
                    </ul>
                
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            @yield('main')
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer"> © 2021 Adminwrap by <a href="https://www.wrappixel.com/">wrappixel.com</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="{{ asset('quantri/js/jquery.min.js') }}"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="{{ asset('quantri/js/bootstrap.bundle.min.js') }}"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="{{ asset('quantri/js/perfect-scrollbar.jquery.min.js') }}"></script>
    <!--Wave Effects -->
    <script src="{{ asset('quantri/js/waves.js') }}"></script>
    <!--Menu sidebar -->
    <script src="{{ asset('quantri/js/sidebarmenu.js') }}"></script>
    <!--Custom JavaScript -->
    <script src="{{ asset('quantri/js/custom.min.js') }}"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!--morris JavaScript -->
    <script src="{{ asset('quantri/js/raphael-min.js') }}"></script>
    <script src="{{ asset('quantri/js/morris.min.js') }}"></script>
    <!--c3 JavaScript -->
    <script src="{{ asset('quantri/js/d3.min.js') }}"></script>
    <script src="{{ asset('quantri/js/c3.min.js') }}"></script>

</body>

</html>
