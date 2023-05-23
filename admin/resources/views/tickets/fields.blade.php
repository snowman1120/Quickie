@if($customFields)
<h5 class="col-12 pb-4">{!! trans('lang.main_fields') !!}</h5>
@endif
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">
    <!-- Name Field -->
    <div class="form-group row ">
        {!! Form::label('name', trans("lang.ticket_name"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::text('name', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_name_placeholder")]) !!}
            <div class="form-text text-muted">
            {{ trans("lang.ticket_name_help") }}
            </div>
        </div>
    </div>

    <!-- Group or Artist Field -->
    <div class="form-group row ">
        {!! Form::label('group_artist', trans("lang.ticket_group_artist"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::text('group_artist', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_group_artist_placeholder")]) !!}
            <div class="form-text text-muted">
            {{ trans("lang.ticket_group_artist_help") }}
            </div>
        </div>
    </div>

    <!-- Start Date Field -->
    <div class="form-group row ">
        {!! Form::label('start_date', trans("lang.ticket_start_date"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::date('start_date', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_start_date_placeholder")]) !!}
            <div class="form-text text-muted">
            {{ trans("lang.ticket_start_date_help") }}
            </div>
        </div>
    </div>

    <!-- End Date Field -->
    <div class="form-group row ">
        {!! Form::label('end_date', trans("lang.ticket_end_date"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::date('end_date', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_end_date_placeholder")]) !!}
            <div class="form-text text-muted">
            {{ trans("lang.ticket_end_date_help") }}
            </div>
        </div>
    </div>

    <!-- Gender Field -->
    <div class="form-group row ">
        {!! Form::label('gender', trans("lang.ticket_gender"),['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::select('gender', ['Male' => 'Male', 'Female' => 'Female'], null, ['class' => 'select2 form-control']) !!}
            <div class="form-text text-muted">{{ trans("lang.ticket_gender_help") }}</div>
        </div>
    </div>

    <!-- Capacity Field -->
    <div class="form-group row ">
        {!! Form::label('capacity', trans("lang.ticket_capacity"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('capacity', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_capacity_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.ticket_capacity_help") }}
            </div>
        </div>
    </div>

    <!-- Price Field -->
    <div class="form-group row ">
        {!! Form::label('price', trans("lang.ticket_price"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('price', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_price_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.ticket_price_help") }}
            </div>
        </div>
    </div>

    <!-- Discount Price Field -->
    <div class="form-group row ">
        {!! Form::label('discount_price', trans("lang.ticket_discount_price"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('discount_price', null,  ['class' => 'form-control','placeholder'=>  trans("lang.ticket_discount_price_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.ticket_discount_price_help") }}
            </div>
        </div>
    </div>

    <!-- Venue Field -->
    <div class="form-group row ">
        {!! Form::label('venue', trans("lang.ticket_venue"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::text('venue', null,  ['id' => 'address-input', 'class' => 'form-control map-input','placeholder'=>  trans("lang.ticket_venue_placeholder")]) !!}
            <div class="form-text text-muted">
            {{ trans("lang.ticket_venue_help") }}
            </div>
            <input type="hidden" name="address_latitude" id="address-latitude" value="0" />
            <input type="hidden" name="address_longitude" id="address-longitude" value="0" />
            <input type="hidden" name="map_zoom" id="map-zoom" value="13" />
        </div>
    </div>
    
    <!-- Google Map -->
    <div class="form-group row ">
        <div class="col-1"></div>
        <div class="col-11" id="address-map-container" style="width:100%;height:400px; ">
            <div style="width: 100%; height: 100%" id="address-map"></div>
        </div>
    </div>
    
    @prepend('scripts')
        @parent
        <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAP_KEY') }}&libraries=places&callback=initialize" async defer></script>
        <script src="/public/js/mapInput.js"></script>
    @endprepend('scripts')
</div>

<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">
    <!-- Description Field -->
    <div class="form-group row ">
        {!! Form::label('description', trans("lang.ticket_description"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::textarea('description', null, ['class' => 'form-control','placeholder'=>
            trans("lang.ticket_description_placeholder")  ]) !!}
            <div class="form-text text-muted">{{ trans("lang.ticket_description_help") }}</div>
        </div>
    </div>

    <!-- Image Field -->
    <div class="form-group row">
        {!! Form::label('image', trans("lang.ticket_image"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            <div style="width: 100%" class="dropzone image" id="image" data-field="image">
                <input type="hidden" name="image">
            </div>
            <a href="#loadMediaModal" data-dropzone="image" data-toggle="modal" data-target="#mediaModal" class="btn btn-outline-{{setting('theme_color','primary')}} btn-sm float-right mt-1">{{ trans('lang.media_select')}}</a>
            <div class="form-text text-muted w-50">
                {{ trans("lang.ticket_image_help") }}
            </div>
        </div>
    </div>
    @prepend('scripts')
    <script type="text/javascript">
        var var15866134771240834480ble = '';
        @if(isset($ticket) && $ticket->hasMedia('image'))
        var15866134771240834480ble = {
            name: "{!! $ticket->getFirstMedia('image')->name !!}",
            size: "{!! $ticket->getFirstMedia('image')->size !!}",
            type: "{!! $ticket->getFirstMedia('image')->mime_type !!}",
            collection_name: "{!! $ticket->getFirstMedia('image')->collection_name !!}"};
        @endif
        var dz_var15866134771240834480ble = $(".dropzone.image").dropzone({
            url: "{!!url('uploads/store')!!}",
            addRemoveLinks: true,
            maxFiles: 3,
            init: function () {
            @if(isset($ticket) && $ticket->hasMedia('image'))
                dzInit(this,var15866134771240834480ble,'{!! url($ticket->getFirstMediaUrl('image','thumb')) !!}')
            @endif
            },
            accept: function(file, done) {
                dzAccept(file,done,this.element,"{!!config('medialibrary.icons_folder')!!}");
            },
            sending: function (file, xhr, formData) {
                dzSending(this,file,formData,'{!! csrf_token() !!}');
            },
            maxfilesexceeded: function (file) {
                dz_var15866134771240834480ble[0].mockFile = '';
                dzMaxfile(this,file);
            },
            complete: function (file) {
                dzComplete(this, file, var15866134771240834480ble, dz_var15866134771240834480ble[0].mockFile);
                dz_var15866134771240834480ble[0].mockFile = file;
            },
            removedfile: function (file) {
                dzRemoveFile(
                    file, var15866134771240834480ble, '{!! url("tickets/remove-media") !!}',
                    'image', '{!! isset($ticket) ? $ticket->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
                );
            }
        });
        dz_var15866134771240834480ble[0].mockFile = var15866134771240834480ble;
        dropzoneFields['image'] = dz_var15866134771240834480ble;
    </script>
    @endprepend
    
    <!-- Video Field -->
    <div class="form-group row">
      {!! Form::label('video', trans("lang.ticket_video"), ['class' => 'col-3 control-label text-right']) !!}
      <div class="col-9">
        <div style="width: 100%" class="dropzone video" id="video" data-field="video">
          <input type="hidden" name="video">
        </div>
        <a href="#loadMediaModal" data-dropzone="video" data-toggle="modal" data-target="#mediaModal" class="btn btn-outline-{{setting('theme_color','primary')}} btn-sm float-right mt-1">{{ trans('lang.media_select')}}</a>
        <div class="form-text text-muted w-50">
          {{ trans("lang.ticket_video_help") }}
        </div>
      </div>
    </div>
    </div>
    @prepend('scripts')
    <script type="text/javascript">
        var video = '';
        @if(isset($ticket) && $ticket->hasMedia('video'))
        video = {
            name: "{!! $ticket->getFirstMedia('video')->name !!}",
            size: "{!! $ticket->getFirstMedia('video')->size !!}",
            type: "{!! $ticket->getFirstMedia('video')->mime_type !!}",
            collection_name: "{!! $ticket->getFirstMedia('video')->collection_name !!}"};
        @endif
        var dz_video = $(".dropzone.video").dropzone({
            url: "{!!url('uploads/store')!!}",
            addRemoveLinks: true,
            maxFiles: 3,
            maxFilesize: 209715200,
            acceptedFiles: "video/*",
            timeout: 180000,
            init: function () {
                @if(isset($ticket) && $ticket->hasMedia('video'))
                    dzInit(this,video,'{!! url($ticket->getFirstMediaUrl('video','thumb')) !!}')
                @endif
            },
            accept: function(file, done) {
                dzAccept(file,done,this.element,"{!!config('medialibrary.icons_folder')!!}");
            },
            sending: function (file, xhr, formData) {
                dzSending(this,file,formData,'{!! csrf_token() !!}');
            },
            maxfilesexceeded: function (file) {
                dz_video[0].mockFile = '';
                dzMaxfile(this,file);
            },
            complete: function (file) {
                dzComplete(this, file, video, dz_video[0].mockFile);
                dz_video[0].mockFile = file;
            },
            removedfile: function (file) {
                dzRemoveFile(
                    file, video, '{!! url("categories/remove-media") !!}',
                    'video', '{!! isset($ticket) ? $ticket->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
                );
            }
        });
        dz_video[0].mockFile = video;
        dropzoneFields['video'] = dz_video;
    </script>
    @endprepend
@if($customFields)
<div class="clearfix"></div>
<div class="col-12 custom-field-container">
  <h5 class="col-12 pb-4">{!! trans('lang.custom_field_plural') !!}</h5>
  {!! $customFields !!}
</div>
@endif
<!-- Submit Field -->
<div class="form-group col-12 text-right">
  <button type="submit" class="btn btn-{{setting('theme_color')}}" ><i class="fa fa-save"></i> {{trans('lang.save')}} {{trans('lang.ticket')}}</button>
  <a href="{!! route('tickets.index') !!}" class="btn btn-default"><i class="fa fa-undo"></i> {{trans('lang.cancel')}}</a>
</div>