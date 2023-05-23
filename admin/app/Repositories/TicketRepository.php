<?php

namespace App\Repositories;

use App\Models\Ticket;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class FaqRepository
 * @package App\Repositories
 * @version August 29, 2019, 9:39 pm UTC
 *
 * @method Faq findWithoutFail($id, $columns = ['*'])
 * @method Faq find($id, $columns = ['*'])
 * @method Faq first($columns = ['*'])
*/
class TicketRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'group_artist',
        'venue',
        'gender'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Ticket::class;
    }
}
