@extends('layouts.app')

@section('content')
<div class="max-w-xl mx-auto bg-white p-6 rounded shadow">
    <h1 class="text-xl font-bold mb-4">Create Article</h1>

    <form action="{{ route('articles.store') }}" method="POST">
        @csrf
        @include('articles.partials.form', ['buttonText' => 'Create'])
    </form>
</div>
@endsection
