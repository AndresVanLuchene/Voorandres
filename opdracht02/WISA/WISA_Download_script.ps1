Clear-Host;

Import-Module ServerManager;
Import-Module PackageManagement;

#installatie van choclatey
Clear-host;
Write-Host("Chocolatey wordt gëinstalleerd. Even geduldt aub.");
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

#controleren op windows updates
Clear-Host;
Write-Host("Uw windowsmachine wordt gecontroleerd op update. Even geduldt aub.");
choco install pswindowsupdate;
Import-Module PSWindowsUpdate;
Get-WUInstall -WindowsUpdate ;
$kbID = Get-WUList -KBArticleID
Get-WUInstall -Type "Software" -KBArticleID $kbID -AcceptAll;

#installatie IIS + installatie http + asp.net;
clear-host;
Write-Host("IIS module wordt momenteel gëinstalleerd");
Add-windowsfeature web-server -includeallsubfeature;
Add-WindowsFeature NET-HTTP-Activation;

#installatie SQLServer
clear-host;
Write-Host("mySQL  wordt momenteel gëinstalleerd");

choco feature enable -y allowGlobalConfirmation;
choco install sqlserver-cmdlineutils
choco install sqlserverlocaldb;
choco install mssql2014express-defaultinstance
choco update sqlserver-cmdlineutils;
choco update sqlserverlocaldb;
choco update mssql2014express-defaultinstance


#installaties compleet
clear-host;
