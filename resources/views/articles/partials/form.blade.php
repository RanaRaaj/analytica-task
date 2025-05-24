@php
    $today = date('Y-m-d');
@endphp

<div class="space-y-4">
    <div>
        <label class="block mb-1 font-medium">Title</label>
        <input type="text" name="title" value="{{ old('title', $article->title ?? '') }}" class="w-full border rounded px-3 py-2" required>
        @error('title') <div class="text-red-600 text-sm">{{ $message }}</div> @enderror
    </div>

    <div>
        <label class="block mb-1 font-medium">Description</label>
        <textarea name="description" rows="5" class="w-full border rounded px-3 py-2" required>{{ old('description', $article->description ?? '') }}</textarea>
        @error('description') <div class="text-red-600 text-sm">{{ $message }}</div> @enderror
    </div>

    <div>
        <label class="block mb-1 font-medium">Author Name</label>
        <input type="text" name="author_name" value="{{ old('author_name', $article->author_name ?? '') }}" class="w-full border rounded px-3 py-2" required>
        @error('author_name') <div class="text-red-600 text-sm">{{ $message }}</div> @enderror
    </div>

    <div>
        <label class="block mb-1 font-medium">Published At</label>
        <input type="date" name="published_at" min="{{ $today }}" value="{{ old('published_at', isset($article) ? $article->published_at->format('Y-m-d') : '') }}" class="w-full border rounded px-3 py-2" required>
        @error('published_at') <div class="text-red-600 text-sm">{{ $message }}</div> @enderror
    </div>

    <div class="flex items-center gap-4 mt-4">
        <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
            Submit
        </button>
        <a href="{{ route('articles.index') }}" class="bg-gray-300 text-gray-800 px-4 py-2 rounded hover:bg-gray-400">
            Cancel
        </a>
    </div>

</div>
