@echo off
setlocal enabledelayedexpansion

set "folder=."
set "prefix=image"
set /a counter=1

for %%f in ("%folder%\*.jpg") do (
    set "num=000!counter!"
    ren "%%f" "%prefix%!num:~-3!.jpg"
    set /a counter+=1
)

echo Renaming complete.
pause