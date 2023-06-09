@echo off
IF EXIST "%~dp0\resource\closecaption_modded_portal.txt" (
captioncompiler closecaption_modded_portal.txt -game "%cd%"
cd UnrealConverter
unreal_dat -src \closecaption_modded_portal.dat -trg C:\Users\Quill\closecaption_modded_portal.360.dat
echo. & echo Caption compiled and converted!
) ELSE (
echo No closecaption_modded_portal.txt file found in resource folder!
)
pause>nul