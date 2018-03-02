# Testplan Opdracht 1:

## Basisconfiguratie Switch
Auteur(s) testplan: Joeri & Thymon

A)
1. Consolekabel van Manager naar Room-145
2. Banner: "Warning"
3. Wachtwoord login: R4Xe3
4. Priviliged wachtwoord login: C4aJa
5. Wachtwoorden geëncrypteerd 
6. Hostname Room-145
7. Ip adres 172.16.5.35
8. Opgeslagen in running-config 
9. Ip adres & subnetmask manager 172.16.5.50 255.255.255.0

B)
1. Consolekabel van Reception naar Room-146
2. Banner: "Warning"
3. Wachtwoord login: R4Xe3
4. Priviliged wachtwoord login: C4aJa
5. Wachtwoorden geëncrypteerd 
6. Hostname Room-146
7. Ip adres 172.16.5.40
8. Opgeslagen in running-config 
9. Ip adres & subnetmask Reception 172.16.5.60 255.255.255.0

## Labo1

A)
1. Cisco 2960 switch aanwezig 
2. PC-PT aanwezig 
3. RJ-45 Console kabel verbind switch en PC via COM-poort

B) 
Switch:
1. Console van PC naar switch 
2. Version : lanbasek9-mz.150-2.SE.
3. Clock settings: uur:min:sec maand dag jaar

PC;
1. Geen configuratie nodig

C)
/


## Labo2

S1)

1. Consolekabel van PC-A naar S1
2. Banner: "Authorized access is strictly prohibited and prosecuted to the full extend of the law?"
3. Wachtwoord login: cisco
4. Priviliged wachtwoord login: class
5. Wachtwoorden geëncrypteerd 
6. Hostname S1
7. Ip adres /
8. Opgeslagen in running-config 

S2)

1. Consolekabel van PC-A naar S2
2. Banner: "Authorized access is strictly prohibited and prosecuted to the full extend of the law?"
3. Wachtwoord login: cisco
4. Priviliged wachtwoord login: class
5. Wachtwoorden geëncrypteerd 
6. Hostname S1
7. Ip adres /
8. Opgeslagen in running-config 

PC-A)

1. ip adres 192.168.1.10 
2. subnetmask 255.255.255.0
3. hostname PC-A

PC-A)

1. ip adres 192.168.1.10 
2. subnetmask 255.255.255.0
3. hostname PC-B

## Labo3

R1)

1. koperen crossover van R1 naar PC-B
2. Banner: "Authorized access is strictly prohibited and prosecuted to the full extend of the law?"
3. Wachtwoord login: cisco
4. Priviliged wachtwoord login: class
5. Wachtwoorden geëncrypteerd 
6. Hostname R1
7. Ip adres G0/0 en G0/1
    a. G0/0 : Ip adres G0/0 192.168.0.1 255.255.255.0
    b. G0/1 : Ip adres G0/0 192.168.1.1 255.255.255.0
8. clock ingesteld
9. interface description G0/0 en G0/1
    a. G0/0 : "Interface G0/0 is connected to PC-B"
    b. G0/1 : "Interface G0/1 is connected to S1"
10. Opgeslagen in running-config
11. koperen straight-through van R1 naar S1

PC-A)
1. ip adres : 192.168.1.3 
2. subnetmask : 255.255.255.0
3. default gateway : 192.168.1.1


PC-B)
1. ip adres : 192.168.0.3 
2. subnetmask : 255.255.255.0
3. default gateway : 192.168.0.1

S1) 
1. hostname : S1
2. interface vlan1 up
3. koperen straight-through kabel van S1 naar R1
3. koperen straight-through kabel van S1 naar PC-A

## Labo 4

Switch R1:
1. Secret: class
2. Hostname R1
3. No ip domain-lookup enabled 
4. line vty 0 15 password : password
5. logging synchronous enabled
6. interface FE 0/0 ip address 172.16.3.1 255.255.255.0
7. no shutdown enabled
8. description "This is the description"
9. interface serial 0/0/0 ip address 172.16.2.1 255.255.255.0
10. clock rate 64000 enabled
11. no shutdown enabled
12. ip route 172.16.1.0 255.255.255.0 172.16.2.2

Switch R2:
1. Secret: class
2. Hostname R2
3. No ip domain-lookup enabled
4. line vty 0 15 password : password
5. logging synchronous enabled
6. interface FE 0/0 ip address 172.16.1.1 255.255.255.0
7. no shutdown enabled
8. description "This is the description"
9. interface serial 0/0/0 ip address 172.16.2.1 255.255.255.0
10. interface serial 0/0/1 ip address 192.168.1.2 255.255.255.0
11. no shutdown enabled
12. ip route 172.16.3.0 255.255.255.0 172.16.2.1
13. ip route 192.168.2.0 255.255.255.0 192.168.1.1
14. default ip route 0.0.0.0 0.0.0.0 172.16.2.2


Switch R3:
1. Secret: class
2. Hostname R3
3. No ip domain-lookup enabled
4. line vty 0 15 password : password
5. logging synchronous enabled
6. interface FE 0/0 ip address  192.168.2.1 255.255.255.0
7. no shutdown enabled
8. description "This is the description"
9. interface serial 0/0/0 ip address 192.168.1.1 255.255.255.0
10. clock rate 64000 enabled
11. no shutdown enabled
12. ip route 172.16.1.0 255.255.255.0 192.168.1.2
13. default ip route 0.0.0.0 0.0.0.0 192.168.1.2


PC1:
1. ip addres 172.16.3.10 255.255.255.0 
2. ip default-gateway 172.16.3.1

PC2:
1. ip addres 172.16.1.10 255.255.255.0 
2. ip default-gateway 172.16.1.1

PC3:
1. ip addres 192.168.2.10 255.255.255.0 
2. ip default-gateway 192.168.2.1
     

