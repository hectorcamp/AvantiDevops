#!/bin/bash

# Atualizar repositorios
sudo apt-get update -y
sudo apt-get upgrade -y
# Instalar Apache e unzip
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

# Baixar e copiar arquivos do site

cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
sudo unzip main.zip
cd linux-site-dio-main
sudo cp -r * /var/www/html/
sudo systemctl restart apache2
