#! /bin/bash

echo "Mise à jour serveur"
apt-get update
apt-get upgrade -y

echo "Installation apache2 et unzip"
apt install apache2 unzip -y

echo "Activation d'apache2"
systemctl start apache2

echo "Changement répertoire vers /tmp"
cd /tmp

echo "Code source zippé de l'application récupéré sur Github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Dézipage du fichier main.zip"
unzip main.zip

echo "Copie des fichiers dézippé vers le répertoire défaut d'apache"
cd linux-site-dio-main
cp -R * /var/www/html/
 
