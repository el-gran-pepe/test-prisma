#!/bin/bash

apt update -y
apt install -y nginx php-fpm php-cli php-mysql curl

rm /var/www/html/index.nginx-debian.html

curl -L https://raw.githubusercontent.com/leandroamore/ppdemo/main/index.php \
     -o /var/www/html/index.php

systemctl restart nginx