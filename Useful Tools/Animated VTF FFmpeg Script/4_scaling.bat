@echo off
color 0a
echo =======================================================================================================
echo  [91m!!!!!!!![92m        This is a drag and drop process. Drag your video onto this bat file.         [91m!!!!!!!![92m
echo.
echo  1.  2048x2048
echo  2.  2048x1024
echo  3.  1024x1024
echo  4.  1024x512
echo  5.  512x512
echo  6.  512x256
echo  7.  256x256
echo  8.  256x128
echo  9.  128x128
echo  10. 128x64
echo  11. 64x64
echo  12. Write your own resolution
echo =======================================================================================================

set /p op=[91mPick number 1-12 for respective choice: [92m 

if "%op%"=="12" GOTO Other
if "%op%"=="11" GOTO 64x64
if "%op%"=="10" GOTO 128x64
if "%op%"=="9" GOTO 128x128
if "%op%"=="8" GOTO 256x128
if "%op%"=="7" GOTO 256x256
if "%op%"=="6" GOTO 512x256
if "%op%"=="5" GOTO 512x512
if "%op%"=="4" GOTO 1024x512
if "%op%"=="3" GOTO 1024x1024
if "%op%"=="2" GOTO 2048x1024
if "%op%"=="1" GOTO 2048x2048


:2048x2048
ffmpeg -i %1 -vf scale=2048x2048 "%~dpn1_2048x2048.mp4"
goto exit
:2048x1024
ffmpeg -i %1 -vf scale=2048x1024 "%~dpn1_2048x1024.mp4"
goto exit
:1024x1024
ffmpeg -i %1 -vf scale=1024x1024 "%~dpn1_1024x1024.mp4"
goto exit
:1024x512
ffmpeg -i %1 -vf scale=1024x512 "%~dpn1_1024x512.mp4"
goto exit
:512x512
ffmpeg -i %1 -vf scale=512x512 "%~dpn1_512x512.mp4"
goto exit
:512x256
ffmpeg -i %1 -vf scale=512x256 "%~dpn1_512x256.mp4"
goto exit
:256x256
ffmpeg -i %1 -vf scale=256x256 "%~dpn1_256x256.mp4"
goto exit
:256x128
ffmpeg -i %1 -vf scale=256x128 "%~dpn1_256x128.mp4"
goto exit
:128x128
ffmpeg -i %1 -vf scale=128x128 "%~dpn1_128x128.mp4"
goto exit
:128x64
ffmpeg -i %1 -vf scale=128x64 "%~dpn1_128x64.mp4"
goto exit
:64x64
ffmpeg -i %1 -vf scale=64x64 "%~dpn1_64x64.mp4"
goto exit
:Other
set /p width=[91mPreferred Power-of-two Width:[92m	
set /p height=[91mPreferred Power-of-two Height:[92m	
ffmpeg -i %1 -vf scale=%width%x%height% "%~dpn1_%width%x%height%.mp4"
goto exit


:exit
@exit