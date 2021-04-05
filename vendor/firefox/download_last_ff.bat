@echo off
chcp 1251 || 65001

set lang=ru
set os=win64
set ver=firefox-latest

echo Получение ссылки для %ver%-%os% в text/html

for /f "tokens=1 delims=<>" %%i in ('curl ^
	--request GET ^
	--get "https://download.mozilla.org/?product=%ver%&os=%os%&lang=%lang%" ^
	--header "Content-Type: text/html; charset=utf-8"'
) do set sLink=%%i

echo Загрузка ссылки %sLink:~8,-1%

if defined sLink (curl ^
	--url "%sLink:~8,-1%" ^
	--output "%USERPROFILE%\Desktop\Setup Firefox %os%.exe" ^
	--header "user-agent: cURL automated task"
) else (
	echo Нет ссылки [%sLink%]
	pause
)
