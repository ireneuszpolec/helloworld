#zainstaluj odpowiendia wersje php
FROM php:8.0-apache

#katalog roboczy
WORKDIR /var/www/html

# kopiowanie do kontenera
COPY . .

#kilka bibliotek(instalacja)

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql


#instlaacja komposera
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#composer - narzenie do php do zarzania bibliotekami
run composer install

EXPOSE 80