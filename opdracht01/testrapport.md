# Testrapport taak 1: (titel)

(Een testrapport is het verslag van de uitvoering van het testplan door een teamlid (iemand anders dan de auteur van het testplan!). Deze noteert bij elke stap in het testplan of het bekomen resultaat overeenstemt met wat verwacht werd. Indien niet, dan is het belangrijk om gedetailleerd op te geven wat er misloopt, wat het effectieve resultaat was, welke foutboodschappen gegenereerd werden, enz. De tester kan meteen een Github issue aanmaken en er vanuit het testrapport naar verwijzen. Wanneer het probleem opgelost werdt, wordt een nieuwe test uitgevoerd, met een nieuw verslag.)

## Test X

Uitvoerder(s) test: NAAM
Uitgevoerd op: DATUM
Github commit:  COMMIT HASH

## Test basisconfiguratie

Uitvoerder: Emiel Marchand
Datum: 26/02/2018
Github commit: 5ece21c332803cc381fb0f6cb205b7c0ea7b7ba7
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
