:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@ECHO off & CHCP 65001>nul

:: Путь к приложению (в директории Downloads)
SET ffmpeg=%UserProfile%\Downloads\ffmpeg.exe -y -threads auto
SET pre=video
:: Интервал обрезки сегментов (сек)
SET /A sec=2
:: Порядок (в цикле), Размерность, Начать_нумерацию (счётчик)
SET /A order=1,degree=4,start=1


:: Установка размерности через Порядок: 10 ^ %degree%
For /L %%i In (%order%, 1, %degree%) Do (SET /A order*=10)

SetLocal EnableDelayedExpansion

For /R %%i In (*.mp4) Do (
	SET /A degree=!order!+!start!
	%ffmpeg% -i "%%i" -f segment -segment_start_number %start% ^
		-segment_time %sec% -segment_list %pre%!degree:~-%degree%!.log ^
		-c copy %pre%!degree:~-%degree%!_segment%%0%degree%d.ts
	SET /A start+=1
)

EndLocal
PAUSE
