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

                        <form method="POST" action="{{ route('room.update',$rows->id) }}" class="" enctype="multipart/form-data">
                          {{-- <form method="POST" action="{{ route('room.update') }}" class="" enctype="multipart/form-data"> --}}
                            {{ csrf_field() }}
                            <div class="row p-t-20">
                                <div class="col-md-12">
                                    <h3 class="card-title">Ti??u ?????</h3>
                                    <hr>
                                    <div class="form-group ">
                                        <label class="control-label">Ti??u ?????</label>
                                        <input type="text" class="form-control ckeditor" name="title" placeholder="Nh???p ti??u ?????"
                                            value="{{ $rows->title }}">
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <h3 class="card-title">?????c ??i???m</h3>
                                <hr>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">?????c ??i???m ti???ng Vi???t</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_vi">
                                        {{ $rows->detail_vi }}
                                     </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">?????c ??i???m ti???ng Anh</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_en">
                                          {{ $rows->detail_en }}
                                        </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">?????c ??i???m ti???ng Nga</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_ru">
                                          {{ $rows->detail_ru }}                     
                                        </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                  <div class="form-group ">
                                      <label class="control-label">?????c ??i???m ti???ng Nh???t</label>
                                      <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_jp">
                                        {{ $rows->detail_jp }}                                         
                                              </textarea>
                                      <div class="has-danger">
                                          <small class="form-control-feedback ">
                                              Kh??ng ????? tr???ng.
                                          </small>
                                      </div>
                                  </div>
                              </div>
                                
                                <div class="col-md-4">
                                    <div class="form-group ">
                                        <label class="control-label">?????c ??i???m ti???ng Trung</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_cn">
                                          {{ $rows->detail_cn }}
                                            </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                  <div class="form-group ">
                                      <label class="control-label">?????c ??i???m ti???ng H??n</label>
                                      <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p ?????c ??i???m" name="detail_kr">
                                        {{ $rows->detail_kr }}
                                          </textarea>
                                      <div class="has-danger">
                                          <small class="form-control-feedback ">
                                              Kh??ng ????? tr???ng.
                                          </small>
                                      </div>
                                  </div>
                              </div>
                            </div>
                            <div class="row">
                                <h3 class="card-title">N???i dung</h3>
                                <hr>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">N???i dung ti???ng Vi???t</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_vi"> {{ $rows->content_vi }}  </textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">N???i dung ti???ng Anh</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_en">{{ $rows->content_en }}</textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">N???i dung ti???ng Nga</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_ru">{{ $rows->content_ru }}</textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group ">
                                      <label class="control-label">N???i dung ti???ng Nh???t</label>
                                      <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_jp">{{ $rows->content_jp }}</textarea>
                                      <div class="has-danger">
                                          <small class="form-control-feedback ">
                                              Kh??ng ????? tr???ng.
                                          </small>
                                      </div>
                                  </div>
                              </div>
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">N???i dung ti???ng Trung</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_cn">{{ $rows->content_cn }}</textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                               
                                <div class="col-md-6">
                                    <div class="form-group ">
                                        <label class="control-label">N???i dung ti???ng H??n</label>
                                        <textarea style="height: 150px" type="text" class="form-control ckeditor" placeholder="Nh???p N???i dung" name="content_kr">{{ $rows->content_kr }}</textarea>
                                        <div class="has-danger">
                                            <small class="form-control-feedback ">
                                                Kh??ng ????? tr???ng.
                                            </small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label">Ch???n h??nh (C?? th??? ch???n nhi???u h??nh)</label>
                                <input type="file" class="form-control ckeditor" name="photo[]" multiple  data-default-file="{{ $rows->photo }}">
                            </div>
                            <button type="submit" class="btn btn-success m-t-20">
                                <i class="fa fa-envelope-o"></i> Th??m m???i
                            </button>
                            <button class="btn btn-inverse m-t-20">
                                <i class="fa fa-times"></i>H???y
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
    <script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('.ckeditor').ckeditor();
        });
    </script>
@endsection
