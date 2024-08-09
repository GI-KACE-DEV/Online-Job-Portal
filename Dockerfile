# Use an official PHP 8.2 image as a base
FROM php:8.2-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip pdo pdo_mysql \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Set the working directory
# WORKDIR /app

# Set the working directory in the container
WORKDIR /var/www


# Copy the application code into the container
COPY . .
# Copy application files
# COPY . /app


# Install PHP dependencies
RUN composer update

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader


# Generate the optimized autoload files
RUN composer dump-autoload --optimize

# Install Node.js and npm (if not already included in the base image)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

# Install Node.js dependencies
RUN npm install



# Copy the custom entrypoint script
COPY entrypoint.sh /usr/bin/entrypoint.sh

# Set the entrypoint script as executable
RUN chmod +x /usr/bin/entrypoint.sh

# Set the custom entrypoint
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

# Optimize Laravel application
#CMD ["php", "artisan", "migrate:fresh", "php", "artisan", "db:seed"]
