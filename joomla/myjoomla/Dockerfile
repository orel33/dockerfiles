FROM joomla:3.10.0-php7.3-apache

### Joomla 4 ###
# FROM joomla:php8.2-apache
# RUN apt update
# RUN apt install -yq libmagickwand-dev libzip-dev libmemcached-dev
# already installed in joomla:php8.2-apache
# RUN pecl install imagick memcached zip
# RUN docker-php-ext-enable imagick memcached zip

COPY info.php /var/www/html/
COPY kickstart.php /var/www/html/
COPY backup /backup
RUN chown -R www-data:www-data /backup
