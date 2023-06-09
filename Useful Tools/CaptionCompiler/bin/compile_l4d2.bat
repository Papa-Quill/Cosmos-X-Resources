@echo off
IF EXIST "%~dp0\resource\closecaption_modded_l4d2.txt" (
captioncompiler closecaption_modded_l4d2.txt -game "%cd%"
cd UnrealConverter
unreal_dat -src %~dp0\resource\closecaption_modded_l4d2.dat -trg %~dp0\resource\closecaption_modded_l4d2.360.dat
echo. & echo Caption compiled and converted!
) ELSE (
echo No closecaption_modded_l4d2.txt file found in resource folder!
)
pause>nul