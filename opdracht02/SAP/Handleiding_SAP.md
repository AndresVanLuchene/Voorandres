# Handleiding SAP

Auteur(s): Emiel Marchand 

Gebruikte OS: Host-pc: Windows 10 64-Bit, VirtualBox: openSUSE 64-Bit

## Inleiding

Dit is een handleiding die je kan volgen wanneer je met een vagrantscript een VirtualBox instantie kan installeren met [SAP NW AS ABAP 750 SP02 Developer Edition](https://blogs.sap.com/2016/11/03/sap-nw-as-abap-750-sp02-developer-edition-to-download/?preview_id=391853) .

Alles wordt voltooid aan de hand van Packer en Vagrant. Er wordt bij deze installatie geen proxy gebruikt. Alles is vrijwel automatisch behalve de twee daadwerkelijke commandos om de sap installatie te starten. Deze worden hier wel duidelijk beschreven.

## Benodigdheden

[Chocolatey](https://chocolatey.org/install)

Installeren met chocolatey: 
```
choco install -y git
choco install -y virtualbox
choco install -y vagrant
choco install -y packer
```

## Handleiding

