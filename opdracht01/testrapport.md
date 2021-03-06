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

## Testrapport labo 4

Uitvoerder: Joeri verhavert
Datum: 6/03/02/2018

## Switch R1

1. Secret wachtwoord is inderdaad class. Dit kunnen we controleren door het commando show running config te gaan gebruiken. Als we dan in running-config kijken zien we dat enable secret aanwezig is in de config, hier kunnen we wel niet zien wat het wachtwoord is.Maar dit kunnen we controleren door het commando enable in de geven.
2. Als we in de running config gaan kijken, kunnen we vaststellen dat de hostname van deze router R1 is.

![Hostnaam router R1](img/HostnameR1.PNG)

3. No ip domain-lookup is gëenabled. Ook hier vinden we de gepaste informatie in de running-config.

![No ip domain-lookup router switch R1](img/noIpdomainlookupR1.PNG)

4. het line vty 0 15 password is password, dit komt overeen.
5. logging synchronous is op van line vty 0 15 en line con 0 gëenabled. Dit kunnen we allebei zien op onderstaande foto.

![line vty 0 15 Router R1](img/linevtypasswordR1.PNG)

6. Het ip adres van interface F0/0 is ingesteld op 172.16.3.1 255.255.255.0
7. Shutdown is bij interface F0/0 gëenabled. Als we in de running config gaan kijken, valt er ons op dat bij interfafe F0/0 niets aanwezig is van shutdown. Hierbij kunnen we vaststellen dat no shutdown in werking is. Anders hadden we shutdown gezien.
8. De description van interface F0/0 is "This is the description", wat we kunnen aantonen met onderstaande foto.

![Interface F0/0 Router R1](img/interfaceF0R1.PNG)

9. Interface S0/0/1 bestaat niet. Het is Serial2/0, het ip adres van Serial2/0 is 172.16.2.1 255.255.255.0
    a. Oplossing : Controleren naar juiste interface in packettracer.
    b. Opmerking : In de opdracht wordt er wel degelijk over S0/0/1.
10. De clock rate van Serial2/0 is 64000, dit klopt dus. Dit kunnen we controleren door in de running config te gaan kijken. Dit kunnen we zien op onderstaande foto.
11. Shutdown is bij interface Serial2/0 gëenabled.

![Interface Serial2/0 Router R1](img/interfaceserial2R1.PNG)

12. Ip route is 0.0.0.0 0.0.0.0 172.16.2.2  en niet 172.16.1.0 255.255.255.0 172.16.2.2 
Door het commando show ip route te gaan gebruiken kunnen we deze route terug vinden of door te gaan kijken in de running-config.
   a. Oplossing : Opletten bij het neerschrijven van het testplan. 
   b. opmerking : Dit is een default route.
   
![Ip route Router R1](img/iprouteR1.PNG)
    
    
## Switch R2

1. Secret password is class, dit komt overeen met het testplan. Dit kunnen we controleren door het commando show running config te gaan gebruiken. Als we dan in running-config kijken zien we dat enable secret aanwezig is in de config, hier kunnen we wel niet zien wat het wachtwoord is.Maar dit kunnen we controleren door het commando enable in de geven.
2. De hostnaam van de Router is R2, dit klopt. Dit kunnen we terug vinden door naar de running-config te gaan kijke. Hier kunnen we zien dat hostname van deze Router R2 is

![Hostname Router R2 + secret](img/HostnameR2.PNG)

3. No ip domain-lookup vinden we terug in het running-config hiermee weten we dat dit is gëenabled.

![no domain-lookup Router R2](img/noIpdomainlookupR2.PNG)

4. Het password van line vty 0 15 is inderdaad password.
5. Logging synchronous is op alle vty line ingesteld. Dit kunnen we zien op onderstaande foto die getrokken is uit de running-config.

![line vty 15 + synchronous](img/linevtyR2.PNG)

6. Interface F0/0 heeft als ip adres. 172.16.2.1 255.255.255.0
7. no shutdown is bij F0/0 aanwezig.
8. De description van F0/0 is "This is the description", dit klopt dus. Zoals te zien op onderstaande foto. Om deze informatie te raadplegen moeten we gaan kijken in de running-config.

![Interface F0/0](img/interfaceserial2R1.PNG)

9. Er is geen interface Serial0/0/0, wel een interface Serial2/0 en heeft als ip adres 172.16.2.2 255.255.255.0
10. Er is geen interface Serial0/0/1, wel een interface Serial3/0 en heeft als ip adres 172.16.1.2 255.255.255.0
11. No shutdown is bij interface S2/0 en S3/0 ingesteld, dit kunnen we zien omdat er geen shutdown bij de interface te zien is. Zoals we kunnen zien op onderstaande foto.

![Serial interface 2/0 en 3/0](img/SerialsR2.PNG)

12. Volgende ip routes zijn vastgesteld. Door het commando show ip route te gaan gebruiken kunnen we deze routes terug vinden.
    a. ip route 172.16.2.0 255.255.255.0 172.16.2.1 /
    b. ip route 192.168.1.0 255.255.255.0 192.168.1.1 /
    c. ip route 192.168.2.0 255.255.255.0 192.168.1.1 aa
    d. ip route 172.16.3.0 255.255.255.0 Serial2/0 
    Oplossing : Hier zien we dat er route a en b allebei fout zijn. We hoeven enkel netwerk 172.16.3.0 en 192.168.2.0 aan te spreken       voor een ip route.
 13. Er is geen default route ingesteld. 
    Oplossing : Hier is geen default route nodig, dit kan niet.
    
 ![Ip routes Router R1](img/iprouteR2.PNG)

## Switch R3

1. Secret password is class, dit komt overeen met het testplan. Dit kunnen we controleren door het commando show running config te gaan gebruiken. Als we dan in running-config kijken zien we dat enable secret aanwezig is in de config, hier kunnen we wel niet zien wat het wachtwoord is.Maar dit kunnen we controleren door het commando enable in de geven. 
2. De hostnaam van de switch is R2, dit klopt. Dit kunnen we controleren door te kijken wat voor het # staat of in de running-config te gaan kijken.

![Hostname Router R3 + secret](img/HostnameR3.PNG)

3. No ip domain-lookup vinden we terug in het running-config hiermee weten we dat dit is gëenabled.

![no domain-lookup Router R3](img/noIpdomainlookupR3.PNG)

4. Het password van line vty 0 15 is inderdaad password.
5. Logging synchronous is op alle vty line ingesteld. Dit kunnen we zien op onderstaande foto die getrokken is uit de running-config.

![line vty 15 + synchronous](img/linevtyR3.PNG)

6. Interface F0/0 heeft als ip adres. 192.168.2.1 255.255.255.0
7. No shutdown is bij F0/0 aanwezig.
8. De description van F0/0 is "This is the description", dit klopt dus. Zoals te zien op onderstaande foto. Om deze informatie te raadplegen moeten we gaan kijken in de running-config.


![Interface F0/0](img/interfaceF0R3.PNG)

9. Er is geen interface Serial0/0/0, wel een interface Serial30 en heeft als ip adres 192.168.1.2
10. shutdown is bij interface S3/0 ingesteld, dit kunnen we zien omdat er geen shutdown bij de interface te zien is.
11. De clockrate van interface Serial3/0 is ingesteld op 64000. Om deze creteria te gaan controleren kunnen we het commando show running-config raadplegen.

![Serial interface 3/0](img/SerialsR3.PNG)

11. Volgende ip routes zijn vastgesteld. Door het commando show ip route te gaan gebruiken kunnen we deze routes terug vinden.
    a. ip route 192.168.1.0 255.255.255.0 192.168.1.2
    b. ip route 172.16.0.0 255.255.252.0 198.168.1.2
    
12. Er is geen default route ingesteld. 
    Oplossing : Instellen kan door het commando : ip route 0.0.0.0 0.0.0.0 192.168.1.2
    
 ![Ip routes Router R1](img/iprouteR3.PNG)
 
 ## PC1
 1. Het ip adres van PC1 is inderdaad 172.16.3.10.
 2. Het default gateway van PC1 is 172.16.3.1.
 
Als we in commando prompt van de PC gaan, en het commando ipconfig gaan gebruiken kunnen we deze informatie terug vinden die je vindt op onderstaande foto. 
 
  ![ipconfig PC1](img/ipPC1.PNG)
 
 ## PC2
 1. Het ip adres van PC1 is inderdaad 172.16.1.10.
 2. Het default gateway van PC1 is 172.16.1.1.
 
  ![ipconfig PC2](img/ipPC2.PNG)
 
 ## PC3
 1. Het ip adres van PC1 is inderdaad 172.16.2.10.
 2. Het default gateway van PC1 is 172.16.2.1.
 
  ![ipconfig PC3](img/ipPC2.PNG)
 

