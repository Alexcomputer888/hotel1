@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Hỗ trợ</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Hỗ trợ</li>
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
                                    <th>Tên người hỗ trợ</th>
                                    <th>Sdt</th>
                                    <th>Email</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($rows as $row )
                                    <div class=" container-card-neo ">
                                <div class="card-neo-device">  
                                    <tr>
                                        <td>{{$row->name}}</td>
                                        <td>{{$row->sdt}}</td>
                                        <td>{{$row->email}}</td>
                                        <td><a href="/admin/support/{{$row->id}}">Sửa</a><a href="/admin/support/del/{{$row->id}}">Xóa</a></td>
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
