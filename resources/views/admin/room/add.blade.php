@extends('admin.layout')
@section('pageTitle', 'Tổng quan')
@section('main')
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h3 class="text-themecolor">Loại phòng </h3>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                    <li class="breadcrumb-item active">Loại phòng</li>
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

                        <form method="POST" action="{{ route('room.add') }}" class=""
                            enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="row p-t-20">
                                <div class="col-md-12">
                                    <h3 class="card-title">Tiêu đề</h3>
                                    <hr>
                                    <div class="form-group ">
                                        <label class="control-label">Tiêu đề</label>
                                        <input type="text" class="form-control" name="title"
                                            placeholder="Nhập tiêu đề">
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <h3 class="card-title">Đặc điểm</h3>
                                <hr>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Việt</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_vi">
<p>Số phòng : </p>
<p>Diện tích:  m2</p>
  <p>Đặc điểm: </p>
    <p>Loại giường: </p>
                                     </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Anh</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_en">
<p>No. of rooms : </p>
<p>Area:  m2</p>
<p>Description: </p>
<p>Type bed: </p>
                                        </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Nga</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_ru">
<p>Число номеров:</p>
<p>Площадь:  m2</p>
<p>Особенности: </p>
<p>Тип кровати:   </p>                        
                                        </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Nhật</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_jp">
<p>ルーム数:</p>
<p>面積:  m2</p>
<p>特徴: </p>
<p>ベッドタイプ:</p>                                                
                                              </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Trung</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_cn">
<p>房数 :</p>
<p>面积:  m2</p>
<p>特点:</p>
<p>床类:</p>
                                            </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">Đặc điểm tiếng Hàn</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập đặc điểm"
                                            name="detail_kr">
<p>객실 수 : </p>
<p>면적:  m2</p>
<p>특징:</p>
<p>침대 타입:</p>
                                          </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <h3 class="card-title">Nội dung</h3>
                                <hr>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">Nội dung tiếng Việt</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung"
                                            name="content_vi"></textarea>
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
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung"
                                            name="content_en"></textarea>
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
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung"
                                            name="content_ru"></textarea>
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
                                        <textarea style="height: 150px" type="text" class="ckeditor form-control" placeholder="Nhập Nội dung"
                                            name="content_jp"></textarea>
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
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung"
                                            name="content_cn"></textarea>
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
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nhập Nội dung"
                                            name="content_kr"></textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Không để trống.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Default file input example</label>
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
