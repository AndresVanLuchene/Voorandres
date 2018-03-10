Clear-Host;

Import-Module ServerManager;
Import-Module PackageManagement

#controleren op windows opdates
Clear-Host;
Write-Host("Uw windowsmachine wordt gecontroleerd op update. Even geduldt aub.");

cd C:\Windows\System32;
wuaclt.exe /detectnow;
wuaclt.exe /updatenow;

#installatie IIS + installatie http + asp.net;
clear-host;
Write-Host("IIS module wordt momenteel gëinstalleerd");
add-windowsfeature web-server -includeallsubfeature;
Add-WindowsFeature NET-HTTP-Activation;

#installatie mySQL
clear-host;
Write-Host("mySQL  wordt momenteel gëinstalleerd");
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
choco feature enable -n allowGlobalConfirmation;
choco install mysql -y;
choco update mysql;

#installaties compleet
clear-host;
Write-Host("ALLES IS GËINSTALLEERD!");

