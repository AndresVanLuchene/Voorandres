# Handleiding LAMP

Auteur(s): Jonas Braem

Gebruikte OS: Fedora Server

Voordat je deze handleiding gebruikt raad ik je aan om eerst volgend handleiding te gebruiken: [Vagrant Handleiding](https://github.com/HoGentTIN/p2ops-g02/blob/master/opdracht02/LAMP/Vagrant.md)

## Fedora Server

Als je de handleiding van de Vagrant al hebt gevolgd zou je al een minimale versie van Fedora Server moeten hebben geinstalleerd. En om deze te benaderen open je een Git bash in de map waar de vagrantfile zich bevind. Je voert dan het commando `Vagrant up` uit en daarna `Vagrant ssh`.

Eerst en vooral gaan we controleren of we wel de laatste versie van Fedora Server hebben door eens een update uit te voeren dit doen we via het commando `sudo yum -y update`. We zullen voor elk commando Sudo moeten gebruiken omdat we niet de rechten hebben van een administrator maar met Sudo wordt er ons wel meer toegelaten. En we gebruiken ook de -y optie om zo tegen alles ja te zeggen.

![Fedora Server Update](img/Update.JPG)
## Vagrant File
We hebben ook een aanpassing nodig in de vagrant file. We gaan onze machine een adres geven zodat we er van buitenaf naar toe kunnen surfen ik heb het adres `192.168.33.10` gebruikt. Verder wijs je ook poort 8080 aan voor communicatie tussen het virtuele machine en de host-pc. Dit pas je aan in het bestand zoals op de afbeelding.

![Vagrant File Lamp](img/VagrantFileLAMP.JPG)

## LAMP

Het eerste deel van de LAMP is in orde ons Linux OS. Dan zullen we nu Apache installeren dit doe je met het commando `sudo yum -y httpd`

![Lamp installatie commando](img/httpd.JPG)

Nu gaan we de apache service starten en ook maken dat deze opstart bij het booten van de machine. Dit doen we met het commando `sudo systemctl start httpd` & `sudo systemctl enable httpd`

![Lamp installatie commando](img/httpdEnable.JPG)

Nu gaan we de firewall configureren door deze ook te staren en te laten opstarten bij boot met de commando's `sudo systemctl start firewalld` & `sudo systemctl enable firewalld`

![Lamp Firewall enable & Start](img/Firewalld.JPG)

Nu gaan we de firewall configureren om communicatie toe te staan naar de buiten wereld en ook zoals we al op de host machine gedaan hebben, hem poort 8080 laten gebruiken. Hierna herladen we hem zodat hij de nieuwe configuratie gebruikt dit doen we met commando's:`sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp`, `sudo firewall-cmd --zone=public --permanent --add-service=http` & `sudo firewall-cmd --reload`

![Lamp Firewall config en reload](img/Firewallcmd.JPG)

Het 3de onderdeel van een LAMP server is mysql of MariaDB hier is gebruik gemaakt van Maria db deze installeer je via volgend commando: `sudo yum -y install mariadb-server`

![Lamp MariaDb installatie](img/mariaDbInstall.JPG)

Nu ze geinstalleerd is moeten we ze natuurlijk ook starten en laten starten bij boot, dit doen we met commando's: `sudo systemctl start mariadb.service` & `sudo systemctl enable mariadb.service`

![Lamp Firewall enable & Start](img/MariaDBservice.JPG)

Het laatste deel van de LAMP is php deze installeren we met volgend commando: `sudo yum -y install php`

![Lamp php install](img/php.JPG)

Om onze lamp nu te testen moeten we de stappen ondernemen uit het [Testplan](https://github.com/HoGentTIN/p2ops-g02/blob/master/opdracht02/LAMP/Testplan.md)
