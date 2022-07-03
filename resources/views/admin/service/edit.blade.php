@extends('admin.layout')
@section('pageTitle', 'edit')
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
                        <form method="POST" action="{{ route('service.update',$rows->id) }}" class="" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <h3 class="card-title">Tiêu đề</h3>
                                <hr></div>
                                <div class="form-group col-4">
                                    <label class="control-label">Tiêu đề tiếng Việt</label>
                                    <input type="text" class="form-control" name="title_vi" placeholder="Nhập tiêu đề tiếng Việt" value="{{$rows->title_vi}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Anh</label>
                                    <input type="text" class="form-control" name="title_en" placeholder="Nhập tiêu đề tiếng Anh" value="{{$rows->title_en}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Nga</label>
                                    <input type="text" class="form-control" name="title_ru" placeholder="Nhập tiêu đề tiếng Nga" value="{{$rows->title_ru}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Nhật</label>
                                    <input type="text" class="form-control" name="title_jp" placeholder="Nhập tiêu đề tiếng Nhật" value="{{$rows->title_jp}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Trung</label>
                                    <input type="text" class="form-control" name="title_cn" placeholder="Nhập tiêu đề tiếng Trung" value="{{$rows->title_cn}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Hàn</label>
                                    <input type="text" class="form-control" name="title_kr" placeholder="Nhập tiêu đề tiếng Hàn" value="{{$rows->title_kr}}">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            
                        </div>
                        <div class="row">
                            <h3 class="card-title">Nội dung</h3>
                            <hr>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Việt</label>
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_vi">{{$rows->content_vi}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Anh</label>
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_en">{{$rows->content_en}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Nga</label>
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_ru">{{$rows->content_ru}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Nhật</label>
                                    <textarea style="height: 150px" type="text" class="ckeditor form-control" placeholder="Nhập Nội dung" name="content_jp">{{$rows->content_jp}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Trung</label>
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_cn">{{$rows->content_cn}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label class="control-label">Nội dung tiếng Hàn</label>
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_kr">{{$rows->content_kr}}</textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Chọn Lại hình (Có thể chọn nhiều hình) </label>
                            <input type="file" class="form-control" name="photo[]"  multiple  data-default-file="{{ $rows->photo }}" >
                            Hình cũ : {{ $rows->photo }}
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
