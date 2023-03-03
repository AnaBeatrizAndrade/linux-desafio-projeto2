#!/bin/bash

echo "Atualizando servidor"

apt-get update
apt-get upgrade -y

echo "Instalando apache2"

apt-get install apache2 -y

echo "Instalando unzip"

apt-get install unzip -y

echo "Baixando aplicação no diretório tmp"

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação no diretório padrão do apache"

cd linux-site-dio-main
cp * /var/www/html -v -R