@extends('admin.layout')
@section('pageTitle', 'Room')
@section('main')
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Danh sách loại phòng</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">loại phòng</li>
            </ol>
        </div>
        <div class="col-md-7 align-self-center">
            <a href="/admin/room/add" class="btn waves-effect waves-light btn btn-info pull-right hidden-sm-down text-white">Thêm loại phòng</a>
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
                                    <th>Name</th>
                                    <th>content-vi</th>
                                    <th>detail-vi</th>
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
                                            <td>{!!$row->content_vi!!}</td>
                                            <td>{!!$row->detail_vi!!}</td>
                                            <td>
                                                <?php
                                                $photos = $row->photo;
                                                $photos_arrs = json_decode($photos);
                                                if ($photos_arrs == FALSE) {
                                                    echo '<img style="width:100px;padding:0 5px" src="' . asset('img/' . $photos) . '"/>';
                                                } else {
                                                    foreach ($photos_arrs as $value) {
                                                        echo '<img style="width:100px;padding:0 5px" src="' . asset('img/' . $value) . '"/>';
                                                    }
                                                }
                                                ?>
                                            </td>
                                            <td><span class="label label-table label-success">
                                                    <a class="text-white" href="/admin/room/edit/{{$row->id}}">Sửa</a>
                                                </span><span class="label label-danger"><a class="text-white" href="/admin/room/del/{{$row->id}}" onclick="return confirm('Bạn có chắc chắn để xóa mục này?')">Xóa</a></span></td>

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