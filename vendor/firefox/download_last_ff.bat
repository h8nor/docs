@echo off
chcp 65001

set lang=ru
set os=win64
set ver=firefox-latest-ssl

echo Загрузка ссылки для %ver%-%os% через redirect

curl ^
	--location ^
	--output "%USERPROFILE%\Desktop\Setup Firefox %os%.exe" ^
	--url "https://download.mozilla.org/?product=%ver%&os=%os%&lang=%lang%"

::pause
