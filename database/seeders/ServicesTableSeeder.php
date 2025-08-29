<?php

namespace Database\Seeders;

use App\Models\Service;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ServicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::all();
        if ($users->isEmpty()) {
            $this->call(UsersTableSeeder::class);
            $users = User::all();
        }
        // create 20 services, assigned to random users
        for ($i = 0; $i < 20; $i++) {
            Service::factory()->create([
                'user_id' => $users->random()->id,
            ]);
        }
    }
}
