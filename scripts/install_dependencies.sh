#!/bin/bash
# Update dan instal dependensi
dnf update -y

# Instal PHP 8.2 dan ekstensi yang dibutuhkan
dnf install -y php php-cli php-common php-mbstring php-xml php-bcmath php-mysqlnd php-curl php-zip unzip git

# Instal Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Instal Apache
dnf install -y httpd
systemctl enable httpd