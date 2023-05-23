<?php

namespace App\Http\Controllers;

use App\DataTables\TicketDataTable;
use App\Events\TicketChangedEvent;
use App\Http\Requests;
use App\Http\Requests\CreateTicketRequest;
use App\Http\Requests\UpdateTicketRequest;
use App\Repositories\TicketRepository;
use App\Repositories\CustomFieldRepository;
use App\Repositories\UploadRepository;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class TicketController extends Controller
{
    //
    private $ticketRepository;
    private $customFieldRepository;
    private $uploadRepository;

    public function __construct(TicketRepository $ticketRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo)
    {
        parent::__construct();
        $this->ticketRepository = $ticketRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;
    }

    public function index(TicketDataTable $ticketDataTable)
    {
        return $ticketDataTable->render('tickets.index');
    }

    public function create()
    {
        // $faqCategory = $this->faqCategoryRepository->pluck('name','id');
        
        $hasCustomField = in_array($this->ticketRepository->model(),setting('custom_field_models',[]));
            if($hasCustomField){
                $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->ticketRepository->model());
                $html = generateCustomField($customFields);
            }
        return view('tickets.create')->with("customFields", isset($html) ? $html : false)/*->with("faqCategory",$faqCategory)*/;
    }

    public function store(CreateTicketRequest $request)
    {
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->ticketRepository->model());
        try {
            $ticket = $this->ticketRepository->create($input);
            $ticket->customFieldsValues()->createMany(getCustomFieldsValues($customFields,$request));
            
            if(isset($input['image']) && $input['image']){
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($ticket, 'image');
            }
            if(isset($input['video']) && $input['video']){
                $cacheUpload1 = $this->uploadRepository->getByUuid($input['video']);
                $mediaItem1 = $cacheUpload1->getMedia('video')->first();
                $mediaItem1->copy($ticket, 'video');
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully',['operator' => __('lang.ticket')]));

        return redirect(route('tickets.index'));
    }

    public function becomeSeller(CreateTicketRequest $request)
    {
        $input = $request->all();
        if (auth()->user()->hasRole('manager')||auth()->user()->hasRole('client')) {
            $input['users'] = [auth()->id()];
        }
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->ticketRepository->model());
        try {
            $ticket = $this->ticketRepository->create($input);
            $ticket->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($ticket, 'image');
            }
            if (isset($input['video']) && $input['video']) {
                $cacheUpload_video = $this->uploadRepository->getByUuid($input['video']);
                $mediaItem_video = $cacheUpload_video->getMedia('video')->first();
                $mediaItem_video->copy($ticket, 'video');
            }
            event(new TicketChangedEvent($ticket));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.ticket')]));

        if (auth()->user()->hasRole('client')) {
            return redirect(route('users.profile'));
        }else{
            return redirect(route('tickets.index'));
        }


    }

    public function show($id)
    {
        $ticket = $this->ticketRepository->findWithoutFail($id);

        if (empty($ticket)) {
            Flash::error('Ticket not found');

            return redirect(route('tickets.index'));
        }

        return view('tickets.show')->with('ticket', $ticket);
    }

    public function edit($id)
    {
        $ticket = $this->ticketRepository->findWithoutFail($id);
        // $faqCategory = $this->faqCategoryRepository->pluck('name','id');
        

        if (empty($ticket)) {
            Flash::error(__('lang.not_found',['operator' => __('lang.ticket')]));

            return redirect(route('tickets.index'));
        }
        $customFieldsValues = $ticket->customFieldsValues()->with('customField')->get();
        $customFields =  $this->customFieldRepository->findByField('custom_field_model', $this->ticketRepository->model());
        $hasCustomField = in_array($this->ticketRepository->model(),setting('custom_field_models',[]));
        if($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('tickets.edit')->with('ticket', $ticket)->with("customFields", isset($html) ? $html : false)/*->with("faqCategory",$faqCategory)*/;
    }

    public function update($id, UpdateTicketRequest $request)
    {
        $ticket = $this->ticketRepository->findWithoutFail($id);

        if (empty($ticket)) {
            Flash::error('Ticket not found');
            return redirect(route('tickets.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->ticketRepository->model());
        try {
            $ticket = $this->ticketRepository->update($input, $id);
            
            
            foreach (getCustomFieldsValues($customFields, $request) as $value){
                $ticket->customFieldsValues()
                    ->updateOrCreate(['custom_field_id'=>$value['custom_field_id']],$value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully',['operator' => __('lang.ticket')]));

        return redirect(route('tickets.index'));
    }

    public function destroy($id)
    {
        $ticket = $this->ticketRepository->findWithoutFail($id);

        if (empty($ticket)) {
            Flash::error('Ticket not found');

            return redirect(route('tickets.index'));
        }

        $this->ticketRepository->delete($id);

        Flash::success(__('lang.deleted_successfully',['operator' => __('lang.ticket')]));

        return redirect(route('tickets.index'));
    }

    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $ticket = $this->ticketRepository->findWithoutFail($input['id']);
        try {
            if($ticket->hasMedia($input['collection'])){
                $ticket->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
