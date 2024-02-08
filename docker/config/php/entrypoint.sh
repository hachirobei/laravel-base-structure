#!/bin/bash
set -e
if [ ! -f /var/www/.env ]; then
    cp /var/www/.env.example .env
fi
cd /var/www

composer update

#php artisan migrate-all

#exec sudo supervisord -n
#exec php-fpm

exec "$@"
