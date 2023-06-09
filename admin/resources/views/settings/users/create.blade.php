@extends('layouts.settings.default')
@push('css_lib')
  <!-- iCheck -->
  <link rel="stylesheet" href="{{asset('vendor/iCheck/flat/blue.css')}}">
  <!-- select2 -->
  <link rel="stylesheet" href="{{asset('vendor/select2/select2.min.css')}}">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.css')}}">
  {{--dropzone--}}
  <link rel="stylesheet" href="{{asset('vendor/dropzone/bootstrap.min.css')}}">
@endpush
@section('settings_title',trans('lang.user_table'))
@section('settings_content')
  @include('flash::message')
  @include('adminlte-templates::common.errors')
  <div class="clearfix"></div>
  <div class="card">
    <div class="card-header">
      <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
        <li class="nav-item">
          <a class="nav-link" href="{!! route('users.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.user_table')}}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-plus mr-2"></i>{{trans('lang.user_create')}}</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
      {!! Form::open(['route' => 'users.store']) !!}
      <div class="row">
        @include('settings.users.fields')
      </div>
      {!! Form::close() !!}
      <div class="clearfix"></div>
    </div>
  </div>
</div>
@include('layouts.media_modal',['collection'=>null])
@endsection
@push('scripts_lib')
<!-- iCheck -->
<script src="{{asset('vendor/iCheck/icheck.min.js')}}"></script>
<!-- select2 -->
<script src="{{asset('vendor/select2/select2.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{asset('vendor/summernote/summernote-bs4.min.js')}}"></script>
{{--dropzone--}}
<script src="{{asset('vendor/dropzone/dropzone.js')}}"></script>
<script type="text/javascript">
    Dropzone.autoDiscover = false;
    var dropzoneFields = [];
</script>
@endpush