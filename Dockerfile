#zainstaluj odpowiendia wersje php
FROM php:8.0-apache

#katalog roboczy
WORKDIR /var/www/html

# kopiowanie do kontenera
COPY . .

#kilka bibliotek(instalacja)

RUN docker-php-ext-install pdo pdo_pgsql pdo-pgsql

#instlaacja komposera
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#composer - narzenie do php do zarzania bibliotekami
run composer install

EXPOSE 80