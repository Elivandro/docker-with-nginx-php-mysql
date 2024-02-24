FROM php:8.3-fpm

ARG NODE_VERSION=18

# Set environment variables
ENV PHP_OPCACHE_ENABLE=0
ENV PHP_OPCACHE_ENABLE_CLI=0
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=1
ENV PHP_OPCACHE_INTERNED_STRINGS_BUFFER=8
ENV PHP_OPCACHE_MAX_ACCELERATED_FILES=4000
ENV PHP_OPCACHE_REVALIDATE_FREQ=60
ENV PHP_OPCACHE_FAST_SHUTDOWN=1
ENV PHP_OPACHE_MEMORY_CONSUMPTION=256

WORKDIR /var/www

RUN rm -rf /var/www/html

RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    libzip-dev \
    apt-utils \
    libonig-dev

RUN docker-php-ext-install zip pdo_mysql mbstring exif
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd
RUN docker-php-ext-install opcache

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN curl -sLS https://deb.nodesource.com/setup_$NODE_VERSION.x | bash -
RUN apt-get install -y nodejs

RUN usermod -u 1000 www-data

EXPOSE 9000

CMD ["php-fpm"]