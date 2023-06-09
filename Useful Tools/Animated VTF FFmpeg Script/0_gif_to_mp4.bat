@echo off
color 0a

if exist %1 goto process else goto error

:error
cls
echo.
echo =======================================================================================================
echo  [91m!!!!!!!![92m         This is a drag and drop process. Drag your GIF onto this bat file.          [91m!!!!!!!![92m
echo =======================================================================================================
echo.
echo Press any key to exit
pause>nul

:process
ffmpeg -f gif -i %1  -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%~dpn1.mp4" -y
@exit