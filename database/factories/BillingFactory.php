<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Billing>
 */
class BillingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'amount' => $this->faker->randomFloat(2, 50000, 900000),
            'due_date' => $this->faker->dateTimeBetween('-60 days', '+60 days')->format('Y-m-d'),
            'status' => $this->faker->randomElement(['paid','unpaid','overdue']),
        ];
    }
}
