@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Tổng quan</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Tổng quan</li>
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
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table color-table info-table">
                            <thead> 
                                <tr>
                                    <th>#</th>
                                    <th>Tiêu đề</th>
                                    <th>Nội dung</th>
                                    <th>Hình ảnh </th>
                                    <th>Tiêu đề</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($rows as $row )
                                    <div class=" container-card-neo ">
                                <div class="card-neo-device">  
                                    <tr>
                                        <td>{{$row->id}}</td>
                                        <td>{{$row->title}}</td>
                                        <td>{{$row->content_vi}}</td>
                                        <td><img style="width: 100px" src="{{asset('img/' . $row->photo)}}" alt=""></td>
                                        <td><a href="/admin/tong-quan/{{$row->id}}">Sửa</a></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End PAge Content -->
    <!-- ============================================================== -->
</div>
@endsection
