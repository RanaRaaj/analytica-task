@extends('layouts.app')

@section('content')
<div class="max-w-xl mx-auto bg-white p-6 rounded shadow">
    <h1 class="text-xl font-bold mb-4">Edit Article</h1>

    <form action="{{ route('articles.update', $article) }}" method="POST">
        @csrf
        @method('PUT')
        @include('articles.partials.form', ['buttonText' => 'Update'])
    </form>
</div>
@endsection
