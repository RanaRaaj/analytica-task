@extends('layouts.app')

@section('content')
<div class="max-w-6xl mx-auto">
    <div class="flex justify-between items-center mb-6">
        <h1 class="text-2xl font-semibold">Articles</h1>
        <a href="{{ route('articles.create') }}" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Create Article</a>
    </div>

    @if(session('success'))
        <div class="mb-4 text-green-600">{{ session('success') }}</div>
    @endif

    <div class="bg-white rounded shadow p-4">
        @foreach($articles as $article)
            <div class="mb-4 border-b pb-2">
                <h2 class="text-xl font-bold">{{ $article->title }}</h2>
                <p class="text-sm text-gray-600">By {{ $article->author_name }} on {{ $article->published_at->format('M d, Y') }}</p>
                <p class="mt-2">{{ Str::limit($article->description, 150) }}</p>
                <div class="mt-2 flex gap-2 text-sm">
                    <a href="{{ route('articles.show', $article) }}" class="text-blue-600 hover:underline">View</a>
                    <a href="{{ route('articles.edit', $article) }}" class="text-yellow-600 hover:underline">Edit</a>
                    <form action="{{ route('articles.destroy', $article) }}" method="POST" onsubmit="return confirm('Are you sure?')" class="inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="text-red-600 hover:underline">Delete</button>
                    </form>
                </div>
            </div>
        @endforeach

        {{ $articles->links() }}
    </div>
</div>
@endsection
