#Extra php extensies installeren voor Drupal
sudo yum -y install php-mbstring php-gd php-xml php-pear php-fpm php-mysql php-pdo php-opcache
#mysql_secure_installation script runnen voor het beveiligen van je mardiadb-server
sudo mysql_secure_installation
#Drupal dowloaden
sudo  wget -c https://ftp.drupal.org/files/projects/drupal-8.2.6.tar.gz
#Tar dowloaden om bestanden te kunnen uitpakken
sudo yum -y install tar
#Bestanden uitpakken en verplaatsen naar juiste map.
sudo tar -zxvf drupal-8.2.6.tar.gz
sudo mv drupal-8.2.6 /var/www/html/drupal
#Instellingen bestand aanmaken voor Drupal: een kopie ban het default bestand.
cd /var/www/html/drupal/sites/default/
cp default.settings.php settings.php
#De rechten aanpassen van de besranden zodat we ze kunnen lezen.
chown -R apache:apache /var/www/html/drupal/
#Herstarten Httpd voor de nieuwe modules 
sudo systemctl restart httpd