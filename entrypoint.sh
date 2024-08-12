#!/bin/sh
composer install

npm install

npm run dev
# Run database migrations
php artisan migrate:fresh

#php artisan db:seed
php artisan serve