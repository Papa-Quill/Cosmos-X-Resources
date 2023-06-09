@echo off
color 0a
echo.
echo =========================================================================================================
echo  [91m!!!!!!!![92m         This is a drag and drop process. Drag your video onto this bat file.          [91m!!!!!!!![92m
echo.
echo.
echo  1.  Keep original Framerate	(Get All frames)
echo  2.  Override Framerate		(Only use X amount of frames, for turning a 60fps video into 30fps)
echo =========================================================================================================

set /p op=[91mPick 1 or 2 for respective choice:[92m 
if "%op%"=="2" GOTO override
if "%op%"=="1" GOTO original

:override
set /p fps=[91mNew Framerate: [92m 
for %%a in (%*) do (
    if not exist "%%~na" mkdir "%%~na_frames_customfps"
    if exist "%%~na_frames_customfps" (
		ffmpeg -i "%%a" -r %fps%/1 "%%~na_frames_customfps"/"%%~na_%%10d.png"		
	)
goto exit
)


:original
for %%a in (%*) do (
    if not exist "%%~na" mkdir "%%~na_frames"
    if exist "%%~na_frames" (
        ffmpeg -i "%%a" -an -qscale:v 1 "%%~na_frames"/"%%~na_%%10d.png"
	)
goto exit
)

:exit
echo [33mYou may see the folder or file name listed above being cut short, because the second half after the space is missing.
echo Check if any of your folders or files uses spaces. If they do, swap spaces for underscores ( _ ).[92m 
if NOT ["%errorlevel%"]==["0"] pause

