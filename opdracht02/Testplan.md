# Testplan Opdracht 2:

## WISA
Auteur(s) testplan: [Joeri Verhavert](https://github.com/joeriverhavert)

 1. login wachtwoord: Win2018
 2. virtual name : Windows Server 2016
### script

Eerst en vooral moeten we controleren of volgende instellingen aanwezig zijn op het syteem.
1. We controleren of het toetsenbord op Azerty staat
2. Er moet gekeken worden of alle updates zijn uitgevoerd
3. De klok instellingen moeten op huidig uur staan.
4. Het internet moet raadpleegbaar zijn, hiermee bedoelen we dat er dus internet connectie is.
5. Volgende features moeten aanwezig zijn: 
    a. Windowsfeature IIS aanwezig/installeerd
    b. Windowsfeature HTTP aanwezig/installeerd
    c. Windowsfeature ASP.net aanwezig/installeerd
6. SQLServer moet running zijn op de virtual machine, hierdoor moet : 
  a. mssqlserver2014express aanwezig/installeerd zijn
  b. sqlserver-cmdlineutils aanwezig/installeerd zijn
  c. webdeploy aanwezig/installeerd zijn
7. Vervolgens controleren we of localhost is zoals op onderstaande foto

![IIS LOCALHOST](WISA/img/localhost.PNG)

8. ASP.NET project in C/:inetpub/wwwroot
9. Als we converteren naar application in iis zou ons project op localhost/"naam van het projcet" te zien zijn

![ASP.NET Project](WISA/img/database.PNG)

### vagrant
#### vagrant file controle
Volgende instellingen moeten op de vagrantfile aanwezig zijn. indien dit niet aanwezig is, is er iets fout gelopen.
  1. config.vm.box = "JoeriVerhavert/Windows2016 ".
  2. config.vm.provision :shell, path: "WISA.ps1".
  3. config.vm.communicator = "winrm".

## LAMP 
Auteur(s) testplan: [Jonas Braem](https://github.com/Braem53402)

### Apache

Om te testen of de Apache toepassing werkt en geinstalleerd is nemen we 2 stappen eerst maken we gebruik van het commando `sudo service httpd status` hiermee kunnen we bekijken of de service Apache actief is op de server. 

![Httpd Service](LAMP/img/ServiceHttpdStatus.JPG)

Om te testen of we onze server ook kunnen bereiken geeft apache bij de installatie ook een testpagina mee deze kan je bereiken door naar het ip adres van je server te surfen in dit geval was dat `192.168.33.11` maar dit kan bij jou anders zijn het adres naar waar je moet surfen is het geen dat jij aanduid in de vagrant file. Als je hier naar surft zou je deze pagina moeten krijgen.

![Apache test pagina](LAMP/img/LAMPWerkt.JPG)

### Maria DB

Om te testen of de Mariadb toepassing werkt en geinstalleerd is nemen we 2 stappen eerst maken we gebruik van het commando `sudo service mariadb status` hiermee kunnen we bekijken of de service Apache actief is op de server. 

![MariaDb service](LAMP/img/MariaDBserviceStatus.JPG)

### php

Om onze php te testen maken we gewoon een bestand aan in de map `/var/www/html` met het commando `sudo touch info.php`. In dit bestand zet je dan het volgende `<?php  phpinfo(); ?>` en daarna surf je naar je ip adres gevolgde door `/info.php`. Werkt dit dan krijg je dit te zien.

![Info php](LAMP/img/phpWerkt.JPG)

## SAP
