@extends('layouts.settings.default')
@push('css_lib')
  <link rel="stylesheet" href="{{asset('vendor/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/select2/css/select2.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/summernote/summernote-bs4.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/dropzone/min/dropzone.min.css')}}">
  <link rel="stylesheet" href="{{asset('vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
@endpush
@section('settings_title',trans('lang.currency'))
@section('settings_content')
  @include('flash::message')
  @include('adminlte-templates::common.errors')
  <div class="clearfix"></div>
  <div class="card">
    <div class="card-header">
      <ul class="nav nav-tabs align-items-end card-header-tabs w-100">
        @can('currencies.index')
          <li class="nav-item">
            <a class="nav-link" href="{!! route('currencies.index') !!}"><i class="fa fa-list mr-2"></i>{{trans('lang.currency_table')}}</a>
          </li>
        @endcan
        @can('currencies.create')
          <li class="nav-item">
            <a class="nav-link" href="{!! route('currencies.create') !!}"><i class="fa fa-plus mr-2"></i>{{trans('lang.currency_create')}}</a>
          </li>
        @endcan
        <li class="nav-item">
          <a class="nav-link active" href="{!! url()->current() !!}"><i class="fa fa-pencil mr-2"></i>{{trans('lang.currency_edit')}}</a>
        </li>
      </ul>
    </div>
    <div class="card-body">
      {!! Form::model($currency, ['route' => ['currencies.update', $currency->id], 'method' => 'patch']) !!}
      <div class="row">
        @include('settings.currencies.fields')
      </div>
      {!! Form::close() !!}
      <div class="clearfix"></div>
    </div>
  </div>
  @include('layouts.media_modal',['collection'=>null])
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
