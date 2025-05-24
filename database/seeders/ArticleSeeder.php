<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Article;
use Illuminate\Support\Str;

class ArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        for ($i = 1; $i <= 15; $i++) {
            Article::create([
                'title' => 'Sample Article ' . $i,
                'description' => Str::random(100),
                'author_name' => 'Author ' . $i,
                'published_at' => now()->addDays($i),
            ]);
        }
    }
}
