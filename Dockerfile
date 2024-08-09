# Use an official PHP 8.2 image as a base
FROM php:8.2-cli

# Install required extensions and tools
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install zip

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app


# Install PHP dependencies
RUN composer update

# Install PHP dependencies
RUN composer install

# Install Node.js and npm (if not already included in the base image)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Node.js dependencies
RUN npm install


RUN php artisan optimize:clear && php artisan storage:link && php artisan migrate --force && php artisan db:seed

# Default command
#CMD ["php", "-S", "0.0.0.0:80"]
