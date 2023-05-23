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
        <h1 class="m-0 text-dark">{{trans('lang.drivers_payout_plural')}} <small>{{trans('lang.drivers_payout_desc')}}</small></h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{url('/dashboard')}}"><i class="fa fa-dashboard"></i> {{trans('lang.dashboard')}}</a></li>
          <li class="breadcrumb-item"><a href="{!! route('driversPayouts.index') !!}">{{trans('lang.drivers_payout_plural')}}</a>
          </li>
          <li class="breadcrumb-item active">{{trans('lang.drivers_payout_create')}}</li>
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
        @can('driversPayouts.index')
        <li class="nav-item">
          <a class="nav-link" href="{!! route('driversPayouts.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.drivers_payout_table')}}</a>
        </li>
        @endcan
        <li class="nav-item">
          <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-plus mr-2"></i>{{trans('lang.drivers_payout_create')}}</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
      {!! Form::open(['route' => 'driversPayouts.store']) !!}
      <div class="row">
        @include('drivers_payouts.fields')
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