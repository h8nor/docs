:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@Echo off
If "%PROCESSOR_ARCHITECTURE%"=="x86" chcp 65001

:: Путь к приложению (в директории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -threads auto
SET "pre=[crop] "
:: Обрезать mkv
SET interval=-ss 00:00:00 -t 01:00


For %%i In (*.mkv) Do (
	%ffmpeg% %interval% -i "%%~nxi" -map 0:v -c:v h264 -pix_fmt yuv420p ^
	-map 0:a:0 -c:a copy -map_metadata -1 "%pre%%%~ni.mp4"
)
:: If ERROR Then
:: Format matroska,webm detected only with low score of 1, misdetection possible!

PAUSE
