<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Service>
 */
class ServiceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->company() . ' Hosting',
            'domain' => $this->faker->unique()->domainName(),
            'status' => $this->faker->randomElement(['active','suspended']),
            'price' => $this->faker->randomFloat(2, 50000, 900000),
        ];
    }
}
