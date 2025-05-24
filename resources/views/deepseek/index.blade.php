@extends('layouts.app')

@section('content')
<div class="max-w-2xl mx-auto bg-white p-6 rounded shadow">
    <h1 class="text-2xl font-bold mb-4">DeepSeek NLP Query</h1>

    <form id="deepseek-form" action="{{ route('deepseek.process') }}" method="POST" class="space-y-4">
    @csrf

    <textarea name="query" rows="4" class="w-full p-3 border rounded" placeholder="Ask something..." required>{{ old('query', $query ?? '') }}</textarea>

        <input name="api_key" type="text" class="w-full p-3 border rounded" placeholder="(Optional) Enter your own DeepSeek API Key" value="{{ old('api_key') }}">

        <button id="submit-btn" type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 flex items-center gap-2">
            <span>Submit</span>
            <svg id="loader" class="animate-spin hidden h-5 w-5 text-white" viewBox="0 0 24 24">
                <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8v4l5-5-5-5v4a12 12 0 00-12 12h4z" />
            </svg>
        </button>
    </form>


    @if(!empty($response))
        <div class="mt-6 bg-gray-100 p-4 rounded border whitespace-pre-wrap">
            <h2 class="font-semibold mb-2 text-gray-700">Response:</h2>
            <p>{{ $response }}</p>
        </div>
    @endif

    @if(!empty($error))
        <div class="mt-6 bg-red-100 p-4 rounded border border-red-400 text-red-700">
            <strong>Error:</strong> {{ $error }}
        </div>
    @endif
</div>

<script>
    document.getElementById('deepseek-form').addEventListener('submit', function () {
        document.getElementById('submit-btn').disabled = true;
        document.getElementById('loader').classList.remove('hidden');
    });
</script>
@endsection
