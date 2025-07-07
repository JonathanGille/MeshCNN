@echo off

set DATADIR=datasets

REM Ordner anlegen, falls nicht vorhanden, und reinwechseln
if not exist "%DATADIR%" mkdir "%DATADIR%"
cd %DATADIR%

REM Datei herunterladen (mit curl)
curl -L -o shrec_16.tar.gz https://www.dropbox.com/s/w16st84r6wc57u7/shrec_16.tar.gz

REM Entpacken
tar -xzvf shrec_16.tar.gz

REM Archiv löschen
del shrec_16.tar.gz

echo downloaded the data and putting it in: %DATADIR%
