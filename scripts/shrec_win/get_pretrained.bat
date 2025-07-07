@echo off

set CHECKPOINT=checkpoints\shrec16

REM Ordner anlegen, falls nicht vorhanden
if not exist "%CHECKPOINT%" mkdir "%CHECKPOINT%"

REM Datei herunterladen (benötigt curl, Windows 10+)
curl -L -o shrec16_wts.tar.gz https://www.dropbox.com/s/wqq1qxj4fjbpfas/shrec16_wts.tar.gz

REM Entpacken mit tar (Windows 10+ hat tar integriert)
tar -xzvf shrec16_wts.tar.gz

REM Datei löschen
del shrec16_wts.tar.gz

REM Datei verschieben
move latest_net.pth "%CHECKPOINT%"

echo downloaded pretrained weights to %CHECKPOINT%
