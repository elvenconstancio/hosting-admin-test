<?php

namespace Database\Seeders;

use App\Models\Billing;
use App\Models\Service;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BillingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $services = Service::all();
        if ($services->isEmpty()) {
            $this->call(ServicesTableSeeder::class);
            $services = Service::all();
        }
        foreach ($services as $service) {
            // for each service, create 1-3 billings
            $count = rand(1,3);
            for ($i = 0; $i < $count; $i++) {
                Billing::factory()->create([
                    'service_id' => $service->id,
                ]);
            }
        }
    }
}
