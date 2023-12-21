FROM joomla:php8.2-apache

RUN apt update
RUN apt install -yq libmagickwand-dev libzip-dev libmemcached-dev

# already installed in joomla:php8.2-apache
# RUN pecl install imagick memcached zip
# RUN docker-php-ext-enable imagick memcached zip
