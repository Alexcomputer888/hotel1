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
                <a href="https://www.wrappixel.com/templates/adminwrap/"
                    class="btn waves-effect waves-light btn btn-info pull-right hidden-sm-down text-white"> Upgrade to
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
                        <h3 class="card-title">{{$rows->title }}</h3>

                        <form method="POST" action="{{ route('tq.update',$rows->id) }}" class="" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group">
                                <input type="text" value="{{$rows->title }}" name="title" hidden>
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_vi" required>{{ $rows->content_vi }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_en">{{ $rows->content_en }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_ru">{{ $rows->content_ru }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_kr">{{ $rows->content_kr }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_cn">{{ $rows->content_cn }}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="basic-url" class="form-label">Your vanity URL</label>
                                <textarea class="form-control" name="content_jp">{{ $rows->content_jp }}</textarea>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Default file input example</label>
                                {{-- <input class="form-control"  type="file" name="photo" data-default-file="{{ $rows->photo }}"> --}}
                                <input type="file" class="form-control" name="photo" data-default-file="{{ $rows->photo }}">
                              </div>
                            <button type="submit" class="btn btn-success m-t-20">
                                <i class="fa fa-envelope-o"></i> Cập nhật
                            </button>
                            <button class="btn btn-inverse m-t-20">
                                <i class="fa fa-times"></i>Hủy
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
    </div>
@endsection