<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class DeepSeekController extends Controller
{
    //
    public function index() {
        return view('deepseek.index');
    }

    public function process(Request $request)
    {
        $request->validate([
            'query' => 'required|string|max:1000',
            'api_key' => 'nullable|string',
        ]);

        $apiKey = $request->input('api_key') ?: config('services.deepseek.api_key');
        // dd($apiKey);
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $apiKey,
            'Content-Type' => 'application/json',
        ])->post('https://api.deepseek.com/v1/chat/completions', [
            'model' => 'deepseek-chat',
            'messages' => [
                ['role' => 'user', 'content' => $request->input('query')],
            ],
        ]);

        $data = $response->json();
        if (isset($data['error'])) {
            return view('deepseek.index', [
                'query' => $request->input('query'),
                'error' => $data['error']['message'] ?? 'Unknown error occurred.',
            ]);
        }
    
        return view('deepseek.index', [
            'query' => $request->input('query'),
            'response' => $data['choices'][0]['message']['content'] ?? 'No response received.',
        ]);
    }
}
