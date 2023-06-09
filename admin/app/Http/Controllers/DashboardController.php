<?php
/*
 * File name: DashboardController.php
 * Last modified: 2021.02.22 at 14:52:03
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2021
 */

namespace App\Http\Controllers;

use App\Repositories\OrderRepository;
use App\Repositories\PaymentRepository;
use App\Repositories\StoreRepository;
use App\Repositories\UserRepository;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Http\Response;
use Illuminate\View\View;

class DashboardController extends Controller
{

    /** @var  OrderRepository */
    private $orderRepository;


    /**
     * @var UserRepository
     */
    private $userRepository;

    /** @var  StoreRepository */
    private $storeRepository;
    /** @var  PaymentRepository */
    private $paymentRepository;

    public function __construct(OrderRepository $orderRepo, UserRepository $userRepo, PaymentRepository $paymentRepo, StoreRepository $storeRepo)
    {
        parent::__construct();
        $this->orderRepository = $orderRepo;
        $this->userRepository = $userRepo;
        $this->storeRepository = $storeRepo;
        $this->paymentRepository = $paymentRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ordersCount = $this->orderRepository->count();
        $membersCount = $this->userRepository->count();
        $storesCount = $this->storeRepository->count();
        $stores = $this->storeRepository->limit(4)->get();
        $earning = $this->paymentRepository->all()->sum('price');
        $ajaxEarningUrl = route('payments.byMonth',['api_token'=>auth()->user()->api_token]);
//        dd($ajaxEarningUrl);
        return view('dashboard.index')
            ->with("ajaxEarningUrl", $ajaxEarningUrl)
            ->with("ordersCount", $ordersCount)
            ->with("storesCount", $storesCount)
            ->with("stores", $stores)
            ->with("membersCount", $membersCount)
            ->with("earning", $earning);
    }
}
