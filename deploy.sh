#!/bin/bash
cd shuhan.org
git pull
bundle exec jekyll build
sudo rm -rf /var/www/html/shuhan.org/*
sudo cp -r _site/* /var/www/html/shuhan.org/
sudo chown -R www-data:www-data /var/www/html/shuhan.org/