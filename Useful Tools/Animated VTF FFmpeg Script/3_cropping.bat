@echo off
color 0a
echo.
echo =======================================================================================================
echo  [91m!!!!!!!![92m        This is a drag and drop process. Drag your video onto this bat file.         [91m!!!!!!!![92m
echo.
echo  Cropping is done by first deciding output width, followed by output height.
echo  Afterwards you decide where the 'Top Left' pixel is. FFMPEG will do the rest.
echo  Use an image editing tool like Photoshop or Gimp to find the top left pixel.
echo.
echo  You could also crop the image directly to a power of two texture, skipping step 4.
echo =======================================================================================================


set /p width=[91mWidth:	[92m 
set /p height=[91mHeight:	[92m 
set /p vertical=[91m"Top Left" pixel location, from left:	[92m
set /p horizontal=[91m"Top Left" pixel location, from top:	[92m
ffmpeg -i %1 -filter:v "crop=%width%:%height%:%vertical%:%horizontal%" "%~dpn1_cropped.mp4"
