
# Analytica Task - Laravel 9 Project

This is a Laravel 9 project built as a coding task. It includes CRUD functionality for articles, DeepSeek NLP API integration, Laravel Sanctum for API protection, TailwindCSS for responsive UI, and PHPUnit tests.

## Features

- Deepseek API Integration using text based NLP
- Article CRUD (Create, Read, Update, Delete)
- Laravel Sanctum for API authentication
- Responsive design using TailwindCSS
- Unit-testing with PHPUnit
- Seeder with 15 sample articles

## Installation

1. Clone the repository:

```
git clone https://github.com/RanaRaaj/analytica-task.git
cd analytica-task
```

2. Install dependencies:

```
composer install
npm install
npm run dev
```

3. Copy `.env.example` to `.env` and update your environment variables:

```
cp .env.example .env
php artisan key:generate
```

4. Update database credentials and DeepSeek API key in `.env` file.

=========================
5. Run migrations and seeders:

php artisan migrate --seed
```
OR
```
(Also .sql file already in root directory)
============================
## DeepSeek API Usage

Go to `/` or `/deepseek` to test the API.

You can either use the default API key from the `.env` file or enter your own in the form.

Submit any text query like:

```
Explain quantum computing in simple terms ?
```

The response will be displayed on the same page. Errors such as insufficient balance are handled and shown.

## Article Module

Visit `/articles` or click on 'Article' tab on top right to see the list of articles.

You can create, edit, view, and delete articles.

Validation is handled both client-side and server-side. The published date must be today or in the future.

## Sanctum API Access

To test API endpoints, generate a token using:

```
php artisan tinker

===========================
$user = \App\Models\User::first();
$token = $user->createToken('apitoken')->plainTextToken;
```
OR 
you can also get querry code from resources/views/tinker-for-api-token.php file, simple past it and it will generate a token.
========================

Use the token in requests like:

```
Authorization: Bearer generated_token
```

Test route:

```
GET /api/articles
```

## Running Tests

To run the unit and feature tests:

```
php artisan test
```

## Deployment

The project can be deployed on any Laravel-friendly hosting service such as Render, DigitalOcean, Forge, etc.

## Author

Muhammad Raza Tariq
GitHub: https://github.com/RanaRaaj
