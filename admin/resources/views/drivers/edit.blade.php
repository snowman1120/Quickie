@extends('layouts.app')
@push('css_lib')
  <link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/dropzone/min/dropzone.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
@endpush
@section('content')
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">{{trans('lang.driver_plural')}} <small>{{trans('lang.driver_desc')}}</small></h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fa fa-dashboard"></i> {{trans('lang.dashboard')}}</a></li>
          <li class="breadcrumb-item"><a href="{!! route('drivers.index') !!}">{{trans('lang.driver_plural')}}</a>
          </li>
          <li class="breadcrumb-item active">{{trans('lang.driver_edit')}}</li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->
<div class="content">
  <div class="clearfix"></div>
  @include('flash::message')
  @include('adminlte-templates::common.errors')
  <div class="clearfix"></div>
  <div class="card">
    <div class="card-header">
      <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
        @can('drivers.index')
        <li class="nav-item">
          <a class="nav-link" href="{!! route('drivers.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.driver_table')}}</a>
        </li>
        @endcan
        @can('drivers.create')
        <li class="nav-item">
          <a class="nav-link" href="{!! route('drivers.create') !!}"><i class="fa fa-plus mr-2"></i>{{trans('lang.driver_create')}}</a>
        </li>
        @endcan
        <li class="nav-item">
          <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-pencil mr-2"></i>{{trans('lang.driver_edit')}}</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
      {!! Form::model($driver, ['route' => ['drivers.update', $driver->id], 'method' => 'patch']) !!}
      <div class="row">
        @include('drivers.fields')
      </div>
      {!! Form::close() !!}
      <div class="clearfix"></div>
    </div>
  </div>
</div>
@include('layouts.media_modal')
@endsection
@push('scripts_lib')
  <script src="{{asset('vendor/select2/js/select2.full.min.js')}}"></script>
  <script src="{{asset('vendor/summernote/summernote.min.js')}}"></script>
  <script src="{{asset('vendor/dropzone/min/dropzone.min.js')}}"></script>
  <script src="{{asset('vendor/moment/moment.min.js')}}"></script>
  <script src="{{asset('vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
  <script type="text/javascript">
    Dropzone.autoDiscover = false;
    var dropzoneFields = [];
  </script>
@endpush