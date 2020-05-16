FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

FROM redis:6.0.1-alpine

RUN adduser -D user
USER user