#!/bin/bash
# Set folder Laravel
APP_DIR="/var/www/html"

# Set permission
chown -R apache:apache $APP_DIR
chmod -R 775 $APP_DIR/storage $APP_DIR/bootstrap/cache
