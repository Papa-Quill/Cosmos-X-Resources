@echo off
IF EXIST "%~dp0\resource\closecaption_modded_tf.txt" (
captioncompiler closecaption_modded_tf.txt -game "%cd%"
cd UnrealConverter
unreal_dat -src %~dp0\resource\closecaption_modded_tf.dat -trg %~dp0\resource\closecaption_modded_tf.360.dat
echo. & echo Caption compiled and converted!
) ELSE (
echo No closecaption_modded_tf.txt file found in resource folder!
)
pause>nul