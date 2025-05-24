<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analytica Task</title>
    @vite('resources/css/app.css')
</head>
<body class="bg-gray-100 text-gray-800">

    <!-- Navbar -->
    <nav class="bg-white shadow-sm">
        <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
            <a href="/" class="text-xl font-bold text-blue-600">Analytica Task</a>
            <ul class="flex space-x-4 text-sm">
                <li><a href="/deepseek" class="hover:text-blue-600">Deep Seek</a></li>
                <li><a href="/articles" class="hover:text-blue-600">Articles</a></li>
            </ul>
        </div>
    </nav>

    <!-- Content -->
    <main class="py-6">
        @yield('content')
    </main>

    <!-- Footer -->
    <footer class="text-center py-4 text-xs text-gray-500">
        &copy; {{ date('Y') }} Analytica Task. All rights reserved.
    </footer>

</body>
</html>
