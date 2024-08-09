#!/bin/sh

# Run database migrations
php artisan migrate:fresh

php artisan db:seed

# Start PHP-FPM server
exec php-fpm
