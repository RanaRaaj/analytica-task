@extends('layouts.app')

@section('content')
<div class="max-w-3xl mx-auto bg-white p-6 rounded shadow">
    <h1 class="text-2xl font-bold">{{ $article->title }}</h1>
    <p class="text-sm text-gray-500 mb-4">
        By {{ $article->author_name }} — {{ $article->published_at->format('M d, Y') }}
    </p>
    <div class="text-gray-800 leading-relaxed">
        {{ $article->description }}
    </div>
    <div class="mt-6">
        <a href="{{ route('articles.index') }}" class="text-blue-600 hover:underline">← Back to Articles</a>
    </div>
</div>
@endsection
