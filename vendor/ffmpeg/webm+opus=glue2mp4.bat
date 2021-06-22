:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@Echo off
If "%PROCESSOR_ARCHITECTURE%"=="x86" chcp 65001

:: Путь к приложению (в дикектории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -threads auto
SET "pre=[glue] "
:: Перекодировать
SET /A encode=1
:: Обрезать webm
SET interval=-ss 00:00:00 -t 1:00


If %encode% EQU 1 (
	SET code=-c:v h264 -pix_fmt yuv420p -c:a aac
) Else (
	SET code=-c:v copy -c:a mp3 -b:a 256k
)
For %%i In (*.mp4 *.webm) Do (
	%ffmpeg% %interval% -i "%%~nxi" %interval% -i "%%~ni.opus" ^
	%code% -metadata:s:a language=rus -shortest "%pre%%%~ni.mp4" ^
	| findstr /P %pre%
)

PAUSE
