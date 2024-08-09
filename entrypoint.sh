#!/bin/sh

# Run database migrations
php artisan migrate:fresh

php artisan db:seed
