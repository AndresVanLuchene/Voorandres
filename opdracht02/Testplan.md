# Testplan Opdracht 2:

## WISA
### script
1. module servermanager aanwezig
2. module PackageManagement aanwezig
3. Toestenbord instelling : Azerty Belgium
4. Chocolatey aanwezig op het systeem
5. Updates : apparataat up to date
6. klok : Huidige tijd
7. Internet aanwezig
8. Windowsfeature IIS aanwezig
9. Windowsfeature HTTP aanwezig
10. Windowsfeature ASP.net aanwezig
11. SQLServer
  a. mssqlserver2014express aanwezig
  b. sqlserver-cmdlineutils aanwezig
  c. webdeploy aanwezig
12. http://localhost ziet er als volgt uit : 

### vagrant
1. wisa script aanwezig in folder
2. Systeem wordt opgemaakt
3. script automatisch geladen

#### vagrant file
config.vm.box = "mwrock/Windows2016"
config.vm.privision = "shell", path: "WISA.ps1";

### conclusie



## LAMP


## SAP
