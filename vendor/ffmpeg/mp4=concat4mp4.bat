:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@ECHO off & CHCP 65001>nul

:: Путь к приложению (в дикектории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -hide_banner -threads auto
SET pre=[glue]
SET list=
SET concat=
SET /A count=0


Call :LEN %pre% # BEGIN Length

SetLocal EnableDelayedExpansion

For %%i In (*.mp4) Do (
	SET Prefix=%%~ni
	If "!Prefix:~0,%LEN%!" NEQ "%pre%" (
		SET concat=!concat! [!count!:v][!count!:a]
		SET /A "count+=1"
		SET list=!list! -i "%%i"
	)
)

EndLocal
::ECHO [RESULT]%list% && ECHO [N] %count% && PAUSE :: //video.stackexchange.com/questions/10396

%ffmpeg% %list% ^
	-filter_complex "%concat% concat=n=%count%:v=1:a=1[out]" ^
	-map "[out]" "%pre% Output.mp4"

PAUSE

:LEN :: //forum.oszone.net/thread-144548.html#post2855626
	SET String=%~1
	SET "String=%String:~0,-1%" && SET /A "LEN+=1"
	If DEFINED String Call :LEN %String%
EXIT /B # HALT Length

