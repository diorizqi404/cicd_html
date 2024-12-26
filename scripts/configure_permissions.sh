#!/bin/bash
# Set permission
sudo chown -R apache:apache /var/www/html/storage /var/www/html/bootstrap/cache
sudo chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache
