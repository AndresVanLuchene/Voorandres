# Handleiding Vagrant
Auteur(s): Joeri Verhavert

Gebruikte tools: Vagrant & Git Bash

## Installatie van Git Bash
Als  werkomgeving heb ik Git Bash gebruikt dit kan je downloaden via volgende link [Git Download](https://git-scm.com/download)
## Installatie van Vagrant
Het besturingsysteem is gedowload via een Vagrant Share. Maar voordat we dit kunnen doen moeten we eerst vagrant downloaden die kan je via volgende link [Vagrant Download](https://www.vagrantup.com/downloads.html).
## Gebruik van Vagrant

Voor dat je begint met vagrant te werken is handig om eerst een toegewezen folder aan te maken waar je wenst in te werken met vagrant. Hier 
heb ik gebruikt gemaakt van het mapje `windows2016`. In deze folder doe je een `git bash here`, hierdoor zit je met de git bash rechtstreeks in de juiste folder.

Als eerste stap ga je op zoek naar een windows server 2016 box op de vagrant cloud, ik heb hier gebruikt gemaakt van de
[/mwrockWindows Server 2016](https://app.vagrantup.com/mwrock/boxes/Windows2016). Om deze toe te voegen aan je vagrant file gebruik je het commando
`vagrant init mwrock/Windows2016`. Opgelet deze installatie kan een tijdje in beslag nemen!

![Vagrant init Afbeelding](img/VagrantInit.JPG)

Als we het commando `vagrant up` gebruiken, gaat vagrant de virtual machine gaan booten. Dit betekent dat hij de virtual machine gaat gaan opzetten. 
Dit kan dan ook een tijdje duren, wees hier dus op voorbereid.

![Vagrant Up Afbeelding](img/VagrantUp.JPG)

Als laaste hoeven we enkel het script te laten draaien op de virtual machine, het juiste commando dat we hiervoor gebruiken is `vagrant provision`. 
Door het script dat we geschreven hebben, zal de virtual machine ingesteld worden met de juiste programma's. 

![Vagrant provision Afbeelding](img/VagrantFile.JPG)

