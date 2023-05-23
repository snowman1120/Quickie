<?php

namespace App\DataTables;

use App\Models\Ticket;
use App\Models\CustomField;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\EloquentDataTable;
use Barryvdh\DomPDF\Facade as PDF;

class TicketDataTable extends DataTable
{
    /**
     * custom fields columns
     * @var array
     */
    public static $customFields = [];

    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        $dataTable = new EloquentDataTable($query);
        $columns = array_column($this->getColumns(), 'data');
        $dataTable = $dataTable
            ->editColumn('image', function ($ticket) {
                return getMediaColumn($ticket, 'image');
            })
            ->addColumn('action', 'tickets.datatables_actions')
            ->rawColumns(array_merge($columns, ['action']));

        return $dataTable;
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Post $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Ticket $model)
    {
        return $model->newQuery()/*->with("ticketCategory")->select('tickets.*')*/;
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
            ->addAction(['width' => '80px', 'printable' => false, 'responsivePriority' => '100'])
            ->parameters(array_merge(
                config('datatables-buttons.parameters'), [
                    'language' => json_decode(
                        file_get_contents(base_path('resources/lang/' . app()->getLocale() . '/datatable.json')
                        ), true)
                ]
            ));
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        $columns = [
            [
                'data' => 'name',
                'title' => trans('lang.ticket_name'),
                'searchable' => false
            ],
            [
                'data' => 'group_artist',
                'title' => trans('lang.ticket_group_artist'),
            ],
            [
                'data' => 'venue',
                'title' => trans('lang.ticket_venue'),
            ],
            [
                'data' => 'gender',
                'title' => trans('lang.ticket_gender'),
            ],
            [
                'data' => 'start_date',
                'title' => trans('lang.ticket_start_date'),
            ],
            [
                'data' => 'end_date',
                'title' => trans('lang.ticket_end_date'),
            ],
            [
                'data' => 'capacity',
                'title' => trans('lang.ticket_capacity'),
                'searchable' => false
            ],
            [
                'data' => 'price',
                'title' => trans('lang.ticket_price'),
                'searchable' => false
            ],
            [
                'data' => 'discount_price',
                'title' => trans('lang.ticket_discount_price'),
                'searchable' => false
            ],
            [
                'data' => 'image',
                'title' => trans('lang.ticket_image'),
                'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
            ]
        ];

        $hasCustomField = in_array(Ticket::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', Ticket::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $field) {
                array_splice($columns, $field->order - 1, 0, [[
                    'data' => 'custom_fields.' . $field->name . '.view',
                    'title' => trans('lang.ticket_' . $field->name),
                    'orderable' => false,
                    'searchable' => false,
                ]]);
            }
        }
        return $columns;
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'ticketsdatatable_' . time();
    }

    /**
     * Export PDF using DOMPDF
     * @return mixed
     */
    public function pdf()
    {
        $data = $this->getDataForPrint();
        $pdf = PDF::loadView($this->printPreview, compact('data'));
        return $pdf->download($this->filename() . '.pdf');
    }
}