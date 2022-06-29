@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Table Basic</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Table Basic</li>
            </ol>
        </div>
        <div class="col-md-7 align-self-center">
            <a href="https://www.wrappixel.com/templates/adminwrap/" class="btn waves-effect waves-light btn btn-info pull-right hidden-sm-down text-white"> Upgrade to
                Pro</a>
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
                    <h4 class="card-title">Basic Table</h4>
                    <h6 class="card-subtitle">Add class <code>.table</code></h6>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>content-vi</th>
                                    <th>content-en</th>
                                    <th>content-ru</th>
                                    <th>content-kr</th>
                                    <th>content-cn</th>
                                    <th>content-jp</th>
                                    <th>Image</th>
                                    <th>Action</th>
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
                                        <td>{{$row->content_en}}</td>
                                        <td>{{$row->content_ru}}</td>
                                        <td>{{$row->content_kr}}</td>
                                        <td>{{$row->content_cn}}</td>
                                        <td>{{$row->content_jp}}</td>
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
