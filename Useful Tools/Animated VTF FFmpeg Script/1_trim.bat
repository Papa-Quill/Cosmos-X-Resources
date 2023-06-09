@echo off
color 0a
echo =======================================================================================================
echo  [91m!!!!!!!![92m        This is a drag and drop process. Drag your video onto this bat file.         [91m!!!!!!!![92m
echo.
echo  Trim the video by first selecting the start second and then the finish second.
echo  Note: This is inacurate, but you can delete unwanted frames after you convert the video to png images
echo =======================================================================================================
set /p trimstart=[91mTrim Start time (HH:MM:SS):	[92m
set /p trimend=[91mTrim End time (HH:MM:SS):	[92m

ffmpeg -i %1 -ss %trimstart% -to %trimend% -async 1 "%~dpn1_trimmed.mp4"
