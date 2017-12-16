@echo off

rem This script requires a 32 bit Python version 3.6 or newer
rem with PyInstaller. Also, you'll need Info-ZIP's zip utility:
rem   http://www.info-zip.org/

set tmp_dir=build_exe_tmp

py -3.6-32 -B -m PyInstaller ^
--log-level WARN ^
--console --onefile --noupx ^
--exclude-module bz2 ^
--exclude-module lzma ^
--exclude-module decimal ^
--exclude-module pyexpat ^
--distpath %tmp_dir%\dist ^
--workpath %tmp_dir%\build ^
--specpath %tmp_dir% ^
pindl.py

for /f %%i in ('py -3.6 -B -c "import pindl; print(pindl.VERSION)"') do ^
set VERSION=%%i

zip -j -n .exe pindl-%VERSION%-win32.zip ^
%tmp_dir%\dist\pindl.exe CHANGELOG.md LICENSE README.md

rmdir /s /q %tmp_dir%
