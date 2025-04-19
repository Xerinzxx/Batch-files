@echo off
setlocal enabledelayedexpansion

:: ================================================
:: BATCH RENAME ALL FILES TO .JPG WITH NUMBERS  
::  
:: Usage:  
::   1. Place this script in the target folder.  
::   2. Double-click to run.  
::  
:: Warning:  
::   - This will change ALL files to .jpg extension!  
::   - Original extensions will be lost permanently.  
:: ================================================

set "folder=."          %= Current folder (change path if needed) =%
set "prefix=image"      %= New filename prefix (e.g., "photo_") =%
set /a counter=1        %= Starting number (001, 002, etc.) =%

:: --- Rename ALL files to .jpg ---
for %%f in ("%folder%\*.*") do (
    ren "%%f" "%prefix%!counter!.jpg"  %= Forces .jpg extension =%
    set /a counter+=1
)

echo [DONE] Renamed %counter% files to .jpg.
pause  %= Remove if running from Command Prompt =%