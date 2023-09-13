:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@Echo off
:: Обновление NOD32 v4 путём запуска программы от имени ...
SET Admin="Ђ¤¬Ё­Ёбва в®а"
:: Искать группу Пользователь или UserName
SET UserGroup="Џ®«м§®ў вҐ«м"

Color 1F
Echo.
Echo.   °°°°° °°°  °°°   °°° °°°° °°°  °   °
Echo.     °  °   ° °  ° °    °    °  °  ° °
Echo.  ІІІІІ ІІІ °ІІІ°  ІІІ ІІІІ°ІІІ° І ° І
Echo.    І° І°  І°І° І°І   °І°   І° І° І°І°
Echo.    І° І °°І ІІІ ° ІІ°%Time:~,5%°ІІІ ° І І
Echo.    І  І   І І  І    І І    І  І  І І
Echo.    І   ІІІ  І  І ІІІ  ІІІІ І  І   І
Echo.
Echo Џ®ЇлвЄ  ЇҐаҐ§ Јаг§ЄЁ ®Ў®«®зЄЁ EGUI
:: Подтверждение намерений
::SET /P begin="Џа®¤®«¦Ёвм [Y(¤ )/N(­Ґв)]? " && Echo.
::If /I Not "%begin%"=="Y" Exit /b 0
SetLocal EnableDelayedExpansion

SET NodGUI=egui.exe
SET NodDir="C:\Program Files\ESET Smart Security"
SET TNodUP="C:\Drivers\TNod\TNODUP-Portable.exe"

tasklist /FI "%UserGroup% EQ %Admin%" /FI "ImageName EQ %NodGUI%" | Find /I "%NodGUI%"
If %ErrorLevel% NEQ 0 (
	taskkill /F /IM %NodGUI% && start /B /I /WAIT runas /u:%Admin% /savecred \"%NodDir%\%NodGUI%\"
)
start /B /I /WAIT runas /u:%Admin% /savecred "\"%TNodUP%\" /o /x"

EndLocal
::PAUSE
