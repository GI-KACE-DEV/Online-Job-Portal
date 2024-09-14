#!/bin/bash

if [ ! -f "vendor/autoload.php" ]; then
    composer update
    composer install --no-progress --no-interaction
fi

if [ ! -f ".env" ]; then
    echo "Creating env file for env $APP_ENV"
    cp .env.example .env
else
    echo "env file exists."
fi

role=${CONTAINER_ROLE:-app}

if [ "$role" = "app" ]; then
    #php artisan migrate:fresh
    # php artisan db:seed
    php artisan key:generate
    php artisan cache:clear
    php artisan config:clear
    php artisan route:clear

    # Run npm development server if not in production
    if [ "$APP_ENV" != "production" ]; then
        echo "Running npm dev server..."
        npm run dev &
    fi

    php artisan serve --port=8000 --host=0.0.0.0 --env=.env
    exec docker-php-entrypoint "$@"
elif [ "$role" = "queue" ]; then
    echo "Running the queue ... "
    php /var/www/artisan queue:work --verbose --tries=3 --timeout=180
elif [ "$role" = "websocket" ]; then
    echo "Running the websocket server ... "
    php artisan websockets:serve
fi
