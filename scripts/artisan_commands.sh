#!/bin/bash
# Direktori aplikasi Laravel
APP_DIR="/var/www/html"

# Masuk ke direktori aplikasi
cd $APP_DIR

# Jalankan Composer install
composer install --no-dev --optimize-autoloader

# Set APP_KEY jika belum di-generate
if ! grep -q "APP_KEY=base64" .env; then
    php artisan key:generate
fi

# Jalankan migrasi database
php artisan migrate --force

# Clear cache dan konfigurasi
php artisan config:clear
php artisan cache:clear
php artisan route:cache
php artisan config:cache
