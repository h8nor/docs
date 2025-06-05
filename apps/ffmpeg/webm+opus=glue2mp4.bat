:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@echo off
If "%PROCESSOR_ARCHITECTURE%"=="x86" chcp 65001

:: Путь к приложению (в дикектории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -hide_banner -threads auto
SET pre=[glue]
SET /A grabest=32
:: Обрезать webm
SET interval=-ss 00:00:00 -t 1:00


call :CROP %interval% # BEGIN Start Time
call :LEN %pre% # BEGIN Length

:: Перекодировать (обязательно при -ss) # crop=iw:ih,scale=1920:1080,setsar=1:1
If %CROP% LSS 0 (
	SET acode=-acodec mp3 -ac 1 -ar 22050 -af volume=2.0
	SET vcode=-vcodec h264 -pix_fmt yuv420p -aspect 16:9 ^
		-vf crop=iw-400:ih,scale=960:540,setsar=1:1 -crf:v %%q
	SET /A gralow=%grabest%+%LEN%
) Else (
	SET vcode=-c:v copy -c:a aac
	SET /A gralow=%grabest%
)

SetLocal EnableDelayedExpansion

For %%i In (*.mp4 *.webm) Do (
	SET prefix=%%~ni
	For /L %%q In (%gralow%, -2, %grabest%) Do (
		If "!prefix:~0,%LEN%!" NEQ "%pre%" (
			%ffmpeg% %interval% -i "%%~ni.opus" %interval% -i "%%~nxi" ^
				%vcode% -metadata:s:a language=rus %acode% ^
				-shortest "%pre% Q%%q %%~ni.mp4"
		)
	)
)

PAUSE

:CROP :: //forum.oszone.net/thread-144548.html#post2855626
	SET /A MASK_LEN=10 && SET StartTime=%~2
	If DEFINED StartTime SHIFT /1 && SET /A CROP=%MASK_LEN%
	SET StartTime=%~1
	If %StartTime:~-1% NEQ 0 If %StartTime:~-1% NEQ : If %StartTime:~-1% NEQ . (
		SET /A CROP=-%MASK_LEN%
	)
	SET "StartTime=%StartTime:~0,-1%" && SET /A CROP-=1
	If DEFINED StartTime call :CROP %StartTime%
EXIT /B # HALT Start Time

:LEN :: //forum.oszone.net/thread-144548.html#post2855626
	SET String=%~1
	SET "String=%String:~0,-1%" && SET /A "LEN+=1"
	If DEFINED String call :LEN %String%
EXIT /B # HALT Length

