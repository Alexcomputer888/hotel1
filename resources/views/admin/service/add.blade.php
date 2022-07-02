@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
<div class="container-fluid">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h3 class="text-themecolor">Dịch vụ </h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Dịch vụ</li>
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

                    <form method="POST" action="{{ route('service.add') }}" class="" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="row p-t-20">
                            <div class="col-md-12">
                                <h3 class="card-title">Tiêu đề</h3>
                                <hr></div>
                                <div class="form-group col-4">
                                    <label class="control-label">Tiêu đề tiếng Việt</label>
                                    <input type="text" class="form-control" name="title_vi" placeholder="Nhập tiêu đề tiếng Việt">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Anh</label>
                                    <input type="text" class="form-control" name="title_en" placeholder="Nhập tiêu đề tiếng Anh">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Nga</label>
                                    <input type="text" class="form-control" name="title_ru" placeholder="Nhập tiêu đề tiếng Nga">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Nhật</label>
                                    <input type="text" class="form-control" name="title_jp" placeholder="Nhập tiêu đề tiếng Nhật">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Trung</label>
                                    <input type="text" class="form-control" name="title_cn" placeholder="Nhập tiêu đề tiếng Trung">
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                                <div class="form-group  col-4">
                                    <label class="control-label">Tiêu đề tiếng Hàn</label>
                                    <input type="text" class="form-control" name="title_kr" placeholder="Nhập tiêu đề tiếng Hàn">
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
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_vi"></textarea>
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
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_en"></textarea>
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
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_ru"></textarea>
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
                                    <textarea style="height: 150px" type="text" class="ckeditor form-control" placeholder="Nhập Nội dung" name="content_jp"></textarea>
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
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_cn"></textarea>
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
                                    <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung" name="content_kr"></textarea>
                                    <div class="has-danger">
                                        <small class="form-control-feedback ">
                                            Không để trống.
                                        </small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Chọn hình (Có thể chọn nhiều hình) </label>
                            <input type="file" class="form-control" name="photo[]" multiple>
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