# Testrapport Opdracht1 : Proefopstellingen netwerkapparatuur

(Een testrapport is het verslag van de uitvoering van het testplan door een teamlid (iemand anders dan de auteur van het testplan!). Deze noteert bij elke stap in het testplan of het bekomen resultaat overeenstemt met wat verwacht werd. Indien niet, dan is het belangrijk om gedetailleerd op te geven wat er misloopt, wat het effectieve resultaat was, welke foutboodschappen gegenereerd werden, enz. De tester kan meteen een Github issue aanmaken en er vanuit het testrapport naar verwijzen. Wanneer het probleem opgelost werdt, wordt een nieuwe test uitgevoerd, met een nieuw verslag.)

## Test X

Uitvoerder(s) test: NAAM
Uitgevoerd op: DATUM
Github commit:  COMMIT HASH

## Test basisconfiguratie

Uitvoerder: Emiel Marchand
Datum: 26/02/2018

Testrapport basisconfiguratie

A)

Terminal in Manager
1. Connectie met Room-145 is er
2. Warning banner staat er
3. Wachtwoord klopt
4. Priviliged wachtwoord klopt
5. show startup-config --> enable secret 5 $1$mERr$3VSsmT5sO0ky2/3RzW2XS1
6. Hostname is Room-145
7. Show running-config --> interface Vlan1 ip address 172.16.5.35 255.255.255.0
8. show startup-config = show running-config
Commandprompt in terminal
9. ipconfig --> klopt

Afbeeldingen:

![Afbeelding 1](img/basisconfiguratie.JPG)

![Afbeelding 2](img/basisconfiguratie_encrypt.JPG)

![Afbeelding 3](img/basisconfiguratie_ip.JPG)

![Afbeelding 4](img/basisconfiguratie_privilegedpwd_a.JPG)

![Afbeelding 5](img/basisconfiguratie_managerip.JPG)

B)
Terminal in Manager
1. Connectie met Room-146 is er
2. Warning banner staat er
3. Wachtwoord klopt
4. Privileged wachtwoord klopt
5. show startup-config --> enable secret 5 $1$mERr$3VSsmT5sO0ky2/3RzW2XS1
6. Hostname is Room-146
7. show running-config --> interface Vlan1 ip address 172.16.5.40 255.255.255.0
8. show startup-config = show running-config
Commandprompt in terminal
9. ipconfig --> klopt

Afbeeldingen:

![Afbeelding 1](img/basisconfiguratie_b.JPG)

![Afbeelding 2](img/basisconfiguratie_encrypt_b.JPG)

![Afbeelding 3](img/basisconfiguratie_ip_b.JPG)

![Afbeelding 4](img/basisconfiguratie_privilegedpwd_b.JPG)

![Afbeelding 5](img/basisconfiguratie_receptionip.JPG)

## Testrapport labo 1

A)

1. Cisco 2960 switch aanwezig
2. PC-PT aanwezig
3. RJ-45 Console kabel verbind switch en PC via COM-poort

Dit klopt allemaal zoals te zien op onderstaande afbeelding

![Test A](img/Labo1Fysiek.JPG)

B) Switch:

1. Console van PC naar switch
2. Version : lanbasek9-mz.150-2.SE.
3. Clock settings: uur:min:sec maand dag jaar

Er is wel degelijk een verbinding van de pc tot de switch dit blijkt uit volgende afbeelding

![Test B1 verbinding](img/PcToSwitch.JPG)

2 De versie is niet lanbasek9-mz.150-2.SE. maar C2960-LANBASE-M

![Test B1 Versie](img/Labo1Version.JPG)

3. De instellingen van de klok kloppen ook zoals te zien in onderstaande afbeelding

![Test B1 Klok](img/Lab1Clock.JPG)


## Testrapport labo 2

### Switch 1

Er ligt een console kabel naar de switch vanaf PC A dit is te zien door via PC-B op de terminal van S1 te geraken. Als we hier op inloggen krijgen we een banner te zien en moeten we 2 keer inloggen zoals ingesteld dit klopt dus zoals te zien op de afbeelding. En ook dat de de hosntame van de switch S1 is.

![Afbeelding 1](img/Lab2Algemeen.JPG)

![Afbeelding 4](img/Lab2Switch1.JPG)

![Afbeelding 3](img/Lab2S1NoIp.JPG)

Als we naar de running config gaan van S1 via het commando `show runnning-config` krijgen we te zien dat de configuratie correct opgelsagen is en ook dat de wachtwoorden geëncrypteerd zijn.


![Afbeelding 2](img/Lab2EncryptS1.JPG)



### Switch 2

Er ligt een console kabel naar de switch vanaf PC B dit is te zien door via PC-B op de terminal van S2 te geraken. Als we hier op inloggen krijgen we een banner te zien en moeten we 2 keer inloggen zoals ingesteld dit klopt dus zoals te zien op de afbeelding. En ook dat de de hosntame van de switch S2 is.

![Banner en Login check van switch 2](img/Labo2BannerLoginSwitch2.JPG)

Als we naar de running config gaan van S2 via het commando `show runnning-config` krijgen we te zien dat de configuratie correct opgelsagen is en ook dat de wachtwoorden geëncrypteerd zijn.

![Running config van Switch 2 deel 1](img/Labo2RunningConfigSwitch2.JPG)

![Running config van Switch 2 deel 2](img/Labo2RunningConfigSwitch2Deel2.JPG)
### PC-A

1. IP is 192.168.1.10
2. Subnetmask is 255.255.255.0
3. Hostname PC-B, kan je terugvinden in de instellingen van PC-A

![Afbeelding 5](img/PCAIpconfig.JPG)

![Afbeelding 6](img/PCAHostname.JPG)

### PC-B

1. IP is 192.168.1.10 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken
2. Subnetmask is 255.255.255.0 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken

![Resultaat bij Ipconfig van PC B](img/Labo2PcBIpConfig.JPG)

3. Hostname PC-B dit is te vinden in de instellingen van PC-B

![Resultaat Hostname van PC B](img/Labo2Pc-BHostname.JPG)

## Testrapport labo 3

### Router 1

De koperen crossover van R1 naar PC-B is er. Wanneer je kijkt naar de CLI van router 1, kan je zien dat er een banner is ingesteld.
Beide wachtwoorden kloppen. Wanneer met gaat kijken in de running-config met het commando `show running-config`, kan men de informatie i.v.m. de interfaces terugvinden. Met het commando `show clock` kan je de tijd terugvinden.

![Algemeen screenshot](img/Lab3Router.JPG)

![Running config](img/Lab3Runningconfig.JPG)

![Encryptie](img/Lab3RouterEncryptie.JPG)

![Clock](img/Lab3ShowClock.JPG)

### PC A

1. IP is 192.168.1.3 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken
2. Subnetmask is 255.255.255.0 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken

![Ip config van PC A](img/Labo3IpConfigPCA.JPG)

3. Hostname PC-A dit is te vinden in de instellingen van PC-A

![Hostname PC A ](img/Labo3HostnamePCA.JPG)
### PC B

1. IP is 192.168.0.3 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken
2. Subnetmask is 255.255.255.0 dit vinden we als we op de command prompt van PC-B het commando `ipconfig` gebruiken

![Ip config van PC B](img/Labo3IpConfigPCB.JPG)

3. Hostname PC-B dit is te vinden in de instellingen van PC-B

![Hostname PC B ](img/Labo3HostnamePCB.JPG)

### Switch 1

De hostname van de switch klopt zoals te zien in de CLI, Vlan 1 is ook actief dit vind je via het commando `show vlan`

![Hostname S1 en VLan ](img/Labo3S1VlanUp.JPG)


