<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;

class ArticleApiController extends Controller
{
    //
    public function index()
    {
        return response()->json(Article::latest()->paginate(10));
    }
}
