@echo off
setlocal
rem yyyy/mm/dd
set datebase=%date%
set y4=%datebase:~0,4%
set mo2=%datebase:~5,2%
set d2=%datebase:~8,2%

mkdir %~dp0%y4% > nul 2>&1
mkdir %~dp0%y4%\%mo2% > nul 2>&1

set /p yourcomment="Filename?(Need .md extension!!) >>>";

set fullpath=%~dp0%y4%\%mo2%\%d2%_%yourcomment%

copy nul %fullpath%

rem Open with assoc
start "" "%fullpath%"