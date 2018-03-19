# Testplan Opdracht 2:

## WISA
 1. login wachtwoord: vagrant
 2. menory : 2048
 3. virtual name : Windows Server 2016
### script
1. module servermanager aanwezig/installeerd
2. module PackageManagement aanwezig/installeerd
3. Toestenbord instelling : Azerty Belgium
4. Chocolatey aanwezig op het systeem
5. Updates : apparataat up to date
6. klok : Huidige tijd
7. Internet is bruikbaar
8. Windowsfeature IIS aanwezig/installeerd
9. Windowsfeature HTTP aanwezig/installeerd
10. Windowsfeature ASP.net aanwezig/installeerd
11. SQLServer
  a. mssqlserver2014express aanwezig/installeerd
  b. sqlserver-cmdlineutils aanwezig/installeerd
  c. webdeploy aanwezig/installeerd
12. http://localhost ziet er als volgt uit : 

![IIS LOCALHOST](WISA/img/localhost.PNG)

### vagrant
#### vagrant file
1. config.vm.box = "mwrock/Windows2016"
2. config.vm.hostname = "host-win"
3. config.winrm.username = "Windows Server 2016"
4. config.winrm.basic_auth_only = true
5. config.vm.provision "shell", path: "WISA.ps1", privileged: true, binary: true
6. config.vm.box_check_update = true



## LAMP

# Testplan Opdracht 2 LAMP:

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
