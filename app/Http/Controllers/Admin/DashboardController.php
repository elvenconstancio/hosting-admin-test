<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Billing;
use App\Models\Server;
use App\Models\Service;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $usersCount = User::count();
        $servicesCount = Service::count();
        $unpaidBills = Billing::where('status', 'unpaid')->count();
        $latestServices = Service::with('user')->latest()->take(10)->get();
    
        return view('admin.dashboard', compact(
            'usersCount', 'servicesCount', 'unpaidBills', 'latestServices'
        ));
    }
}
