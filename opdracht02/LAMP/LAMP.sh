#Het updaten van de van het besturingsysteem
sudo yum update
#Heropstarten Firewall en deze ook automatisch opzetten bij het starten.
sudo systemctl start firewalld
sudo systemctl enable firewalld
#Instellingen van de Firewall en herladen
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --reload
#Installeren van Apache
sudo yum -y install httpd
#De apache service starten en ook laten starten bij boot
sudo systemctl start httpd
sudo systemctl enable httpd
#Installeren van PHP
sudo yum -y install php
#Installeren van MariaDB
sudo yum -y install mariadb-server
#MariaDB starten bij boot
sudo systemctl enable mariadb.service 
#MariaDB starten van de service
sudo systemctl start mariadb.service  
#firewall config herstarten
sudo systemctl restart firewalld