#!/bin/bash

echo "Atualizando o Sistema operacional linux e instalando sistema apache web e descompactador de arquivos unzip "

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando os arquivos do github para rodar no browser"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

