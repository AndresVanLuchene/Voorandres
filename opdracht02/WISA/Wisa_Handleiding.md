# Handleiding WISA

Auteur(s): Joeri Verhavert

Gebruikte OS: Windows server 2016

Voordat je deze handleiding gebruikt raad ik je aan om eerst volgend handleiding te gebruiken: 

## Windows Server 

## WISA

In het eerste deel van het WiSA script worden de gebruikte module gëimporteerd, daarna zullen het Windows Server systeem laten 
controleren op updates en deze uitvoeren.

Nu gaan we ons systeem voorzien van het IIS feature samen met subfeatures zoals asp.net. Hiervoor gebruiken we het commando 
`add-windowsfeature web-server -includeallsubfeature`

Als volgende stap installeren we het NET-HTTP-Activation module op ons systeem. `Add-WindowsFeature NET-HTTP-Activation` is hier het gepaste commando.

Als laaste zullen we de mySQL gaan downloaden. Hiervoor gebruiken we chocolatey.org voor het proces te versnellen en te vereenvoudigen. 
We gebruiken het commando. 
`Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`
Met dit commando gaan we chocolatey downloaden door gebruik te maken van een externe link.



