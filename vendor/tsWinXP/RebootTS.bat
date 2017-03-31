:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@Echo off
:: Перезагрузка компьютера с уведомлением активных сеансов от имени ...
SET Admin="Ђ¤¬Ё­Ёбва в®а"
:: Задержка в секундах
SET /a WaitSec=180

If %WaitSec% LSS 0 GoTo :EOF
If %WaitSec% GTR 999 GoTo :EOF

Color 1F
Echo.
Echo   °°°°° °°°  °°°   °°° °°°° °°°  °   °
Echo     °  °   ° °  ° °    °    °  °  ° °
Echo  ІІІІІ ІІІ °ІІІ°  ІІІ ІІІІ°ІІІ° І ° І
Echo    І° І°  І°І° І°І   °І°   І° І° І°І°
Echo    І° І °°І ІІІ ° ІІ°%Time:~,5%°ІІІ ° І І
Echo    І  І   І І  І    І І    І  І  І І
Echo    І   ІІІ  І  І ІІІ  ІІІІ І  І   І
Echo.
Echo ЏҐаҐ§ Јаг§Є  бҐаўҐа  зҐаҐ§ %WaitSec% бҐЄг­¤
:: Подтверждение намерений
SET /p begin="Џа®¤®«¦Ёвм [Y(¤ )/N(­Ґв)]? " && Echo.
If /i Not "%begin%"=="Y" GoTo :EOF
SetLocal EnableDelayedExpansion

SET /a begin=%WaitSec%/60
If %begin% GEQ 2 (If %begin% LEQ 4 SET RemUser=ы) Else (If %begin%==1 SET RemUser=у)
SET WorkDir=%TEMP%\RebootMsg.tmp
Echo Перезагрузка удалённого компьютера произойдёт через %begin% минут%RemUser%. Сохраните все рабочие документы.> %WorkDir%
Echo Возобновить подключение возможно через 1 минуту после перезагрузки.>> %WorkDir%
Echo.>> %WorkDir%
Echo Примечание: Во избежании потери важной информации рекомендуется закрывать все приложения,>> %WorkDir%
Echo либо самостоятельно производить выход через Пуск -^> Завершение сеанса...>> %WorkDir%
SET RemUser=
:: Список подключённых пользователей
For /f "tokens=1" %%i In ('qwinsta ^| find "rdp-tcp#" ^| find /v ">"') Do (
  For /f "tokens=2" %%i In ('qwinsta ^| find "%%i"') Do SET RemUser=!RemUser!, %%i)
If "%RemUser%"=="" (SET /a WaitSec=30 && del /q "%WorkDir%") Else (SET RemUser=‘®®ЎйҐ­ЁҐ ® ЇҐаҐ§ Јаг§ЄҐ ®вЇа ў«Ґ­®:%RemUser:~1%)
start /B /WAIT runas /u:%Admin% "shutdown /r /f /t %WaitSec% /c \"%RemUser%\" /d P:4:1"
:: Подключённые сеансы RDP-TCP#
If %ErrorLevel%==0 (If exist "%WorkDir%" For /f "tokens=1" %%i In ('qwinsta ^| find "rdp-tcp#" ^| find /v ">"') Do (
  start /B /I /WAIT msg %%i /TIME:%WaitSec% /v < %WorkDir%)) Else (GoTo :EOF)
Echo.

SET /a begin=%WaitSec%-40
SET Delay=-20
SET pTime=%Time:~7,1%
:WAIT
SET iTime=%Time:~7,1%
If %iTime%==%pTime% GoTo WAIT
SET pTime=%iTime%
SET /a Delay=%Delay%+1
If %Delay%==%begin% (
  tskill DUC40 && Echo ЏаЁ«®¦Ґ­ЁҐ DUC40 ўлЈаг¦Ґ­®
  :: ID отключённых сеансов (%UserName% используется для проверки, если сеанс отключён пару секунд назад)
  For /f "tokens=1 skip=1" %%i In ('qwinsta ^| find /v "rdp-tcp" ^| find /v "console"') Do (
    For /f "tokens=2" %%i In ('qwinsta ^| find "%%i" ^| find /v "%UserName%"') Do logoff %%i /v)
)
If %Delay% LSS %WaitSec% GoTo WAIT

SET WorkDir="C:\Program Files\No-IP"
start /D%WorkDir% DUC40 /minimize

EndLocal
::PAUSE
