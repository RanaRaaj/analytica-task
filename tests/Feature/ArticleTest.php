<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Article;

class ArticleTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    use RefreshDatabase;

    // public function test_example()
    // {
    //     $response = $this->get('/');

    //     $response->assertStatus(200);
    // }

    public function test_article_can_be_created()
    {
        $response = $this->post('/articles', [
            'title' => 'Unit Test Article',
            'description' => 'This is a description for unit testing.',
            'author_name' => 'Test Author',
            'published_at' => now()->addDay()->format('Y-m-d'),
        ]);

        $response->assertRedirect('/articles');
        $this->assertDatabaseHas('articles', [
            'title' => 'Unit Test Article',
            'author_name' => 'Test Author',
        ]);
    }

}
