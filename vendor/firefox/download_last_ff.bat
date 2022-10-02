@ECHO off & CHCP 65001>nul

SET lang=ru
SET os=win64
SET ver=firefox-latest-ssl

ECHO Загрузка ссылки для %ver%-%os% через redirect && ECHO.

curl ^
	--location ^
	--output "%USERPROFILE%\Desktop\Setup Firefox %os%.exe" ^
	--url "https://download.mozilla.org/?product=%ver%&os=%os%&lang=%lang%"

::PAUSE
