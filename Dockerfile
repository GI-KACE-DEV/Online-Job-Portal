FROM php:8.2-fpm as php

# Arguments defined in docker-compose.yml
# ARG user
# ARG uid

RUN apt-get update -y
RUN apt-get install -y unzip libpq-dev libcurl4-gnutls-dev
RUN docker-php-ext-install pdo pdo_mysql bcmath

RUN pecl install -o -f redis \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis

WORKDIR /var/www
COPY . .

COPY --from=composer:2.3.5 /usr/bin/composer /usr/bin/composer

ENV PORT=10000


# Copy the custom entrypoint script
COPY entrypoint.sh /usr/bin/entrypoint.sh

# Set the entrypoint script as executable
RUN chmod +x /usr/bin/entrypoint.sh

# Set the custom entrypoint
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

# Set working directory
#WORKDIR /var/www

# ==============================================================================
#  node
FROM node:14-alpine as node

WORKDIR /var/www
COPY . .

RUN npm install --global cross-env
RUN npm install

VOLUME /var/www/node_modules
# USER $user


# Expose the port that the application listens on.
EXPOSE 10000