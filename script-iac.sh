#!/bin/bash

echo "Atualizando o servidor..."
apt update
apt upgrade -y
apt install apache2 unzip -y
echo ¨Servidor atualizado!¨

echo "Fazendo download do arquivo do site principal"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando o site para o diretório do Apache2"
cd linux-site-dio-main
cp -R * /var/www/html/

