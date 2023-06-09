@echo off
color 0a
echo.
echo =========================================================================================================
echo  [91m!!!!!!!![92m         This is a drag and drop process. Drag your video onto this bat file.          [91m!!!!!!!![92m
echo.
echo  This bat rips a single frame out of a video, to help with the cropping process.	
echo  For GIF's: load the gif in an image editing software directly.
echo.
echo  1.  First frame
echo  2.  Specific frame
echo =========================================================================================================

set /p op=[91mPick 1 or 2 for respective choice:[92m 
if "%op%"=="2" GOTO Specific
if "%op%"=="1" GOTO First

:Specific
set /p time=[91mSecond at which to extract frame (HH:MM:SS): [92m 
ffmpeg -ss %time% -i %1 -vframes 1  %~dpn1_frame.png -y

:First
ffmpeg -i %1 %~dpn1_frame.png -y