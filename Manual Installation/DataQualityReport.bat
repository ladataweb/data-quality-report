@echo off

:: Below section defines the server and databasename based on the input captured from the External tools integration. 
:: This is defined as arguments \"%server%\" and \"%database%\" in the external tools json. 
set Server=%1
set DatabaseName=%2

:: Below you can define your personal preference for file saving and reading. 
:: The outputfolder will be used to dump a temporarily file with the connection to the model. 
:: The PBITLocation defines where the templated PBIT file is saved. 

set PBITLocation="C:\Users\Public\LaDataWeb\DataQualityReport\"DataQualityReport.pbit
set JsonOutput="C:\Users\Public\LaDataWeb\DataQualityReport\"DataQualityReport.json

:: Write Server and Database information to screen. 
echo %Server%
echo %DatabaseName%
echo %PBITLocation%
::Write-Host $DatabaseName 

:: Generate json array based on the received server and database information.
set jsoncito="{\"Server\":\"%Server%\",\"DatabaseName\":\"%DatabaseName%\"}" 
::$json = @"
::    {
::    "Server": "$Server", 
::    "DatabaseName": "$DatabaseName"
::    }
::"@
:: Writes the output in json format to the defined file location. This is a temp location and will be overwritten next time. 
::$OutputLocation = $OutputFolder + 'DataQualityReport.json'
::$json  | ConvertTo-Json  | Out-File $OutputLocation
@echo %jsoncito% >%JsonOutput%
:: Open PBIT template file from PBITLocation as defined in the variable. 
::"C:\Users\IBARRAU\Desktop\RecentFiles\DocumentPBI\"DataQualityReport.pbit
start "" %PBITLocation%
exit /b