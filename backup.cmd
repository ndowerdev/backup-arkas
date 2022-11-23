@echo off
cd /d "%~dp0"
@REM by: Rendrian Arma
@REM Donate: BCA 8455187440
@REM create folder with current date




TITLE "Arkas Database Backup By: Rendrian"
echo ================================
echo By: Rendrian Arma
echo Donasi:
echo BCA : 8455187440
echo DANA: 081253363512
echo ================================

set name=%DATE:/=-%
@REM set "folderName=backup_files\%DATE:/=-%"
for /f "skip=1" %%i in ('wmic os get localdatetime') do if not defined fulldate set fulldate=%%i
set year=%fulldate:~2,2%
set month=%fulldate:~4,2%
set day=%fulldate:~6,2%
set "foldername=backup\%day%-%month%-%year%"

if not exist %foldername% mkdir %foldername%

@REM copy backup files to destination folder
cp %appdata%\ArtTech\RKAS\RKASClient2022.db %foldername%

echo "Database RKAS Berhasil Di Backup"




@pause