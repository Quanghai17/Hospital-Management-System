@extends('layouts.app') 
@section('title') Add Patient | HMS @endsection 
@section('content')
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Add Patient</h3>
            </div>
            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <a href="{{route('patient.index')}}">
                        <button class="btn btn-round btn-primary btn-sm pull-right">Patient List</button>
                    </a>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Add Patient </h2>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <form action="{{route('patient.store')}}" method="post" enctype="multipart/form-data">
                            @csrf

                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Patient Name<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control" data-validate-length-range="6" data-validate-words="2" name="p_name" placeholder="Name" required="required" />
                                    <p class="text-danger">{{$errors->first('p_name')}}</p>
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Patient Age<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control" data-validate-length-range="6" data-validate-words="2" name="p_age" placeholder="Age" required="required" />
                                    <p class="text-danger">{{$errors->first('p_age')}}</p>
                                </div>
                            </div>
                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Patient Address<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control" placeholder="Address" name="p_address" type="text" required="required" />
                                    <p class="text-danger">{{$errors->first('p_address')}}</p>
                                </div>
                            </div>

                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Patient Phone<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <input class="form-control" name="p_phone" type="text" placeholder="Phone" required="required" />
                                    <p class="text-danger">{{$errors->first('p_phone')}}</p>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Gender*</label>
                                <div class="col-md-9 col-sm-9 ">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" class="radio" name="p_sex" value="1" required="required"> Male
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" class="radio" name="p_sex" value="2" required="required"> Female
                                        </label>
                                    </div>
                                    <p class="text-danger">{{$errors->first('p_sex')}}</p>
                                </div>

                            </div>

                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Blood Group<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <select class="form-control" name="p_blood" required="required">
                                        <option selected hidden>-----Choose Blood Group-----</option>
                                        <option value="A+"> A+ </option>
                                        <option value="A-"> A- </option>
                                        <option value="B+"> B+ </option>
                                        <option value="B-"> B- </option>
                                        <option value="AB+"> AB+ </option>
                                        <option value="AB-"> AB- </option>
                                        <option value="O+"> O+ </option>
                                        <option value="O-"> O- </option>
                                    </select>
                                    <p class="text-danger">{{$errors->first('p_blood')}}</p>
                                </div>
                            </div>

                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3  label-align">Doctor<span class="required">*</span></label>
                                <div class="col-md-6 col-sm-6">
                                    <select class="form-control" name="p_doc_id" required="required">
                                        <option selected hidden>-----Choose Doctor-----</option>
                                        @foreach($d_data as $values)
                                        <option value="{{$values->doc_id}}">{{$values->doc_name}}</option>
                                        @endforeach
                                    </select>
                                    <p class="text-danger">{{$errors->first('p_doc_id')}}</p>
                                </div>
                            </div>

                            <div class="field item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align">Image</label>
                                <div class="col-md-6 col-sm-6">
                                    <img id='previmage' style="height:140px;" src="/images/avatar.jpg" alt="your image" class='img-responsive img-circle'>
                                    <br>
                                    <input type="file" name="p_img" onchange="readURL(this);" value="{{ old('p_img') }}" />
                                    <p class="text-danger">{{$errors->first('p_img')}}</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6 offset-md-3">
                                    <button type='submit' class="btn btn-primary submit">Submit</button>
                                    <button type='reset' class="btn btn-success">Reset</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

@endsection @section('script')
<script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#previmage')
                    .attr('src', e.target.result)
                    .width(140)
                    .height(140);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    function myFunction() {
        window.print();
    }
</script>
@endsection