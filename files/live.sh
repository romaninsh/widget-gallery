#!/bin/bash

echo -n "Checking environment.. "

if [[ $STAGE == "live" && ! -f /.live ]]; then
    touch /.live
    echo "LIVE"

else
    mkdir logs
    chown www-data logs
    echo "not live (or already initialized)"
fi

if [[ $ADMIN == "yes" && ! -f /.admin ]]; then
    touch /.admin
    echo "ADMIN"
    cp /app/admin/.htaccess-distrib /app/admin/.htaccess
    cp /app/admin/config-deploy.php /app/admin/config.php
    sed -i 's/DocumentRoot.*/DocumentRoot \/var\/www\/html\/admin/' /etc/apache2/sites-enabled/000-default.conf
else
    echo "not admin, frontend"
fi
