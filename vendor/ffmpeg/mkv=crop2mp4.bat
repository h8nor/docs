:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@ECHO off & CHCP 65001>nul
:: Путь к приложению (в директории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -hide_banner -threads auto
SET pre=[crop]
:: Обрезать mkv
SET interval=-ss 00:00:00 -t 01:00


Call :LEN %pre% # BEGIN Length

:: If you cut with stream copy (-c copy) you need to use the `-avoid_negative_ts 1` option if you want
:: to use that segment with the concat demuxer. https://video.stackexchange.com/questions/23373/

SetLocal EnableDelayedExpansion

For %%i In (*.avi *.mkv *.mp4) Do (
	SET prefix=%%~ni
	If "!prefix:~0,%LEN%!" NEQ "%pre%" (
		%ffmpeg% %interval% -i "%%~nxi" -c copy -avoid_negative_ts 1 "%pre% %%~ni.mp4"
		REM %ffmpeg% %interval% -i "%%~nxi" -map 0:v -c:v h264 -pix_fmt yuv420p ^
		REM	-map 0:a:0 -c:a libmp3lame -map_metadata -1 "%pre% %%~ni.mp4"
		REM %ffmpeg% ?%interval% -i "%%~nxi" -map 0:s:0 "%%~ni.srt"
	)
)
:: If ERROR Then
:: Format matroska,webm detected only with low score of 1, misdetection possible!

EndLocal
PAUSE

:LEN :: //forum.oszone.net/thread-144548.html#post2855626
	SET String=%~1
	SET "String=%String:~0,-1%" && SET /A "LEN+=1"
	If DEFINED String Call :LEN %String%
EXIT /B # HALT Length

