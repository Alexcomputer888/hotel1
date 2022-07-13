@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h3 class="text-themecolor">Hỗ trợ </h3>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                    <li class="breadcrumb-item active">Hỗ trợ </li>
                </ol>
            </div>

        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <!-- column -->
            <div class="col-12 ">
                <div class="card">
                    <div class="card-body">
                        @if ($errors->any())

                            @foreach ($errors->all() as $error)
                                <div class="alert alert-danger" role="alert">
                                    {{ $error }}
                                </div>
                            @endforeach
                            </ul>
                        @endif

                        <form method="POST" action="{{ route('support.add') }}" class=""
                            enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="row p-t-20">
                                <div class="col-md-12">
                                    <h3 class="card-title">Người hỗ trợ</h3>
                                    <hr>
                                    <div class="form-group ">
                                        <label class="control-label">Tên người hỗ trợ</label>
                                        <input type="text" class="form-control" name="name"
                                            placeholder="Nhập tên người hỗ trợ">
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label">Số điện thoại</label>
                                        <input type="text" class="form-control" name="sdt"
                                            placeholder="Nhập số điện thoại">
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label class="control-label">Email</label>
                                        <input type="text" class="form-control" name="email"
                                            placeholder="Nhập Email">
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                            <button type="submit" class="btn btn-success m-t-20">
                                <i class="fa fa-envelope-o"></i> Thêm mới
                            </button>
                            <a href="/admin/room" class="btn btn-inverse m-t-20">
                                <i class="fa fa-times"></i>Hủy
                            </a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    </div>
    <script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.ckeditor').ckeditor();
        });
    </script>
@endsection
