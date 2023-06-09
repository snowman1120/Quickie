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
                    <a class="nav-link" href="{!! url('settings/mail/smtp') !!}"><i class="fa fa-envelope mr-2"></i>{{trans('lang.app_setting_smtp')}}@if(setting('mail_driver') === 'smtp')<span class="badge ml-2 badge-success">{{trans('lang.active')}}</span>@endif</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{!! url('settings/mail/mailgun') !!}"><i class="fa fa-envelope-o mr-2"></i>{{trans('lang.app_setting_mailgun')}}@if(setting('mail_driver') === 'mailgun')<span class="badge ml-2 badge-success">{{trans('lang.active')}}</span>@endif
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="{!! url('settings/mail/sparkpost') !!}"><i class="fa fa-envelope-o mr-2"></i>{{trans('lang.app_setting_sparkpost')}}@if(setting('mail_driver') === 'sparkpost')<span class="badge ml-2 badge-success">{{trans('lang.active')}}</span>@endif
                    </a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            {!! Form::open(['url' => ['settings/update'], 'method' => 'patch']) !!}
            <div class="row">
                <div style="flex: 70%;max-width: 70%;padding: 0 4px;" class="column">
                {!! Form::hidden('mail_driver','sparkpost') !!}
                <!-- sparkpost_secret Field -->
                    <div class="form-group row ">
                        {!! Form::label('sparkpost_secret', trans("lang.app_setting_sparkpost_secret"), ['class' => 'col-4 control-label text-right']) !!}
                        <div class="col-8">
                            {!! Form::text('sparkpost_secret', setting('sparkpost_secret'),  ['class' => 'form-control','placeholder'=>  trans("lang.app_setting_sparkpost_secret_placeholder")]) !!}
                            <div class="form-text text-muted">
                                {!! trans("lang.app_setting_sparkpost_secret_help") !!}
                            </div>
                        </div>
                    </div>
                    <!-- sparkpost_options_endpoint Field -->
                    <div class="form-group row ">
                        {!! Form::label('sparkpost_options_endpoint', trans("lang.app_setting_sparkpost_options_endpoint"), ['class' => 'col-4 control-label text-right']) !!}
                        <div class="col-8">
                            {!! Form::text('sparkpost_options_endpoint', setting('sparkpost_options_endpoint'),  ['class' => 'form-control','placeholder'=>  trans("lang.app_setting_sparkpost_options_endpoint_placeholder")]) !!}
                            <div class="form-text text-muted">
                                {!! trans("lang.app_setting_sparkpost_options_endpoint_help") !!}
                            </div>
                        </div>
                    </div>
                </div>
                <div style="flex: 30%;max-width: 30%;padding: 0 4px;" class="column">
                    <!-- TODO explain mailgun here-->
                </div>
                <!-- Submit Field -->
                <div class="form-group mt-4 col-12 text-right">
                    <button type="submit" class="btn btn-{{setting('theme_color')}}"><i class="fa fa-save"></i> {{trans('lang.save')}} {{trans('lang.app_setting_sparkpost')}}</button>
                    <a href="{!! route('users.index') !!}" class="btn btn-default"><i class="fa fa-undo"></i> {{trans('lang.cancel')}}</a>
                </div>

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
