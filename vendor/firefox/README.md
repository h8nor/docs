[License]: //creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

|Приложение|Редакция|User-Agent|Версия|Дата|Язык
|:--- |:--- |:--- |:--- |:---:|:--- 
|Firefox <sup>[www]</sup>|ESR Release|`Mozilla/5.0 (platform; rv:geckoversion)`|102.3.0|2022-09-12|all

[www]: //mozilla.org/ru/firefox/all/#product-desktop-esr "Extended support"

### Краткое описание

В браузере Firefox используется свободный портируемый движок Gecko<sup>[*]</sup>, созданный с учётом поддержки 
[WebAssembly]<sup>[**]</sup> и открытых стандартов. В браузере присутствует интерфейс со многими вкладками, 
проверка орфографии, поиск по мере набора с подсветкой текста на странице, менеджер закачек, поле для 
обращения к поисковым системам.  
Новые функции можно добавлять при помощи *расширений*.  
Существует альтернативная версия [Waterfox] или [PaleMoon] для 64-битных ОС. В июне 2018 г. прекратился выпуск 
обновлений безопасности на канале ESR для версии Firefox под Windows XP<sup>[***]</sup>. 

[*]: //habr.com/post/313820/ "Rust > Servo > Quantum"
[**]: //habr.com/post/402173/ "wasm - низкоуровневый ЯП, выполняющийся в браузере"
[***]: //habr.com/post/407239/
[FF75 под Win10]: //habr.com/post/496618/
[WebAssembly]: //habr.com/post/428347/ "RU, 2018-10-31"
[Waterfox]: //www.waterfoxproject.org/ "браузер с поддержкой XUL-расширений"
[PaleMoon]: //www.palemoon.org/ "браузер с поддержкой XUL-расширений"

---
# Содержание репозитория

- ***README.md*** - описание и рекомендации по работе с браузером
- ***download_ghacks_ff.vbs*** - скрипт для скачивания ghacks-user.js для Firefox на Рабочий стол
- ***download_last_ff.bat*** - скрипт для скачивания Firefox на Рабочий стол для win10
- ***download_last_ff.vbs*** - скрипт для скачивания Firefox под разрядность ОС на Рабочий стол
<!-- - ***[habrusers_blocker_gm].user.js*** - блокировка пользователей на Хабре (*user script*)
	<details>
	<summary>:yellow_square: Политика работы скриптов</summary><br />
	
	Для работы скриптов [Greasemonkey]<sup>[:(]</sup> должна быть включена настройка:  
	**`privacy.firstparty.isolate`**
	
	</details> -->
- ***user.js*** - рекомендуемый файл безопасных настроек
- ***update_set_ff.vbs*** - скрипт автоматического обновления файла *user.js*

[habrusers_blocker_gm]: //github.com/h8nor/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js


# Рекомендуемые настройки

*По статистике [FingerPrint] большинство пользователей устанавливают только одно расширение.*

### Список рекоменуемых расширений

|Open Source|Название|Описание
|:---:|:--- |:--- 
| |*[Browsec VPN]*<sup>*</sup>|Есть бесплатные сервера (NL, SG, UK и US до 30 Мбит/сек).<br />Опция "Smart Settings" позволяет выбрать proxy для отдельных доменов без включения защиты.
|:trophy: :gem:|*[µBlock Origin]*|Расширение позволяет вернуть себе контроль над содержанием страниц и видеть лишь то, что хочется.
| :gem:|*[Violetmonkey]*|Расширение для подключения сторонних *user script*.<br />:warning: **ВАЖНО:** Запрещенное на Userstyles.org свойство **-moz-binding** для ~~*[Stylish]*~~ может выполнить JS-код на компьютере пользователя.
|:trophy: :gem:|*[To Google Translate]*|Расширение переводит выделенный текст или всю страницу на родной язык.
|:trophy:|*[Easy Youtube Video Downloader Express]*<sup>*</sup>|Для PRO добавить в настройки `contact@videodroid.org`<br />Самый простой способ скачать и конвертировать 720p видео из сотен сайтов как YouTube.
| |*[SaveFrom.net]*|Расширение для скачивания видео с TT, YT, Vimeo, VK, OK и других сервисов.
|:trophy: :gem:|*[Search by Image]*|Расширение производит поиск рисунка с web-страницы.
| :gem:|*[Octotree]*|Отображает репозиторий GitHub в виде дерева.
| |*[Live Stream Downloader]*|Хороший канал связи и наличие свободного места на диске позволит сохранить потоковое видео TS из M3U. Качает одно (первый лист) из активной вкладки, но обновляет ссылки на поток в реальном времени.
| |*[VT4Browsers]*|Отправить файл на VirusTotal перед сохранением.
| |*[Full Web Page Screenshots]*|Создаёт полные скриншоты веб-страниц с вожможность сохранения в Сохраняйте снимки в PNG или PDF.

<sup>*</sup> После обновления расширения открывается рекламная страницы

[:(]: //github.com/greasemonkey/greasemonkey/issues/2733/
[Browsec VPN]: //addons.mozilla.org/firefox/addon/603434/
[Canvas]: //habr.com/post/357238/#comment_11221142 "SHA-256"
[CanvasBlocker]: //addons.mozilla.org/firefox/addon/534930/
[Easy Youtube Video Downloader Express]: //addons.mozilla.org/firefox/addon/463677/
[Full Web Page Screenshots]: //addons.mozilla.org/firefox/addon/5648/ "Замена скриншотам Firefox"
[To Google Translate]: //addons.mozilla.org/firefox/addon/445852/
[Greasemonkey]: //github.com/greasemonkey/greasemonkey/issues/2985/
[Live Stream Downloader]: //addons.mozilla.org/firefox/addon/2641439/
[Octotree]: //addons.mozilla.org/firefox/addon/512640/
[SaveFrom.net]: //addons.mozilla.org/firefox/addon/271830/
[Search by Image]: //addons.mozilla.org/firefox/addon/824288/
[Stylish]: //github.com/The-OP/Fox/commit/370229fe "Меняет внешний вид сайтов согласно UserCSS"
[Violetmonkey]: //addons.mozilla.org/firefox/addon/797378/ "Движок для запуска UserJS"
[VT4Browsers]: //addons.mozilla.org/firefox/addon/351419/ "Experimental"
[µBlock Origin]: //addons.mozilla.org/firefox/addon/607454/
[Импортировать]: //subscribe.adblockplus.org/?location=https://github.com/h8nor/docs/raw/rublock/vendor/firefox/filters.txt&title=RUS:%20Filters%20RuBlockList

---
<details>
<summary>:red_square: Ссылка на подписку <strong>uBlock RuBlockList</strong></summary><br />

Подписку можно подключить в настройках расширения "*<kbd>ЛКМ</kbd> по значку -> Открыть панель управления -> 
Списки фильтров -> **[Импортировать]...** список фильтра посредством URL*" указав путь к файлу:<br />

`https://github.com/h8nor/docs/raw/rublock/vendor/firefox/filters.txt`
#

</details>

<details>
<summary>:purple_square: Новости Mozilla</summary><br />

1. [Mozilla усилила защиту пользователей Firefox от вредоносного кода](//habr.com/news/t/471602/ "RU, 2019-10-15")
2. [Firefox 75 будет автоматически удалять отслеживающие файлы cookie](//habr.com/news/t/491152/ "RU, 2020-03-05")
3. [Firefox 75 ввели телеметрию и новую адресную строку](//habr.com/news/t/496618/ "RU, 2020-04-10")
4. [Mozilla: рекламщикам достаточно истории 150 посещённых доменов для определения пользователя](//habr.com/news/t/517384/ "RU, 2020-09-01")
5. [IETF официально прекратил поддержку протоколов TLS 1.0 и 1.1](//habr.com/post/548832/ "RU, 2021-03-24")
6. **[DevTools браузера: возможности инструмента разработчика](//habr.com/post/548898/ "RU, 2021-04-05")**
7. [Firefox 78 представил новую архитектуру безопасности браузера с изоляцией сайтов](//habr.com/post/558236/ "RU, 2021-05-19")

</details>

<details>
<summary>:purple_square: Дополнительные возможности</summary><br />

- Проверка [FingerPrint]

Справа в адресной строке появляется значок-книга "Включить Вид для чтения `[F9]`" (Firefox 78 рабоает с локальными 
страницами). В данном режиме просмотра удобно отправлять страницу на печать без оформления, можно воспроизводить текст 
[голосом] (для Windows 7 заявленная Speech Platform не работает, поэтому устанавливать надо [RHVoice] + TTS к нему).  
Для воспроизведения голоса необходимо, чтобы была включена настройка:  -  
MS Word имеет функцию воспроизведения текста (в "*Настройках ленты*" в списке "*Команды не на ленте*" 
команда "*Проговорить*").

[FingerPrint]: //amiunique.org "2018-12-07: https://habr.com/post/432296/#comment_19469322"
[голосом]: //support.mozilla.org/ru/kb/otvet-na-forume-ustanovka-golosov-dlya-windows-10
[RHVoice]: //tiflohelp.ru/synthesizers/sapi-5/rhvoice-sapi5.html

</details>

### :yellow_square: Формула выбора названий свойств настроек из файла user.js в Excel

`=ЕСЛИОШИБКА(ПСТР(A1;НАЙТИ("user_pref";A1)+11;НАЙТИ(""", ";A1)-2-НАЙТИ("(""";A1));"")`


# Отключить телеметрию в Windows 10

### 1. Планировщик заданий (включается при каждом обновлении FF до major)

Необходимо после каждого обновления `Отключить / Удалить` задание `Firefox Default Browser Agent`
до того, как оно выполнится. Задача не появляется только если установлен запрет групповыми политиками.

<details>
<summary>:yellow_square: На блокировку в hosts реагирует MS Defender</summary><br />

- www&shy;.microsoft.com
- microsoft.com
- telemetry.microsoft.com
- wns.notify.windows.com.akadns.net
- v10-win.vortex.data.microsoft.com.akadns.net
- us.vortex-win.data.microsoft.com
- us-v10.events.data.microsoft.com
- urs.microsoft.com.nsatc.net
- watson.telemetry.microsoft.com
- watson.ppe.telemetry.microsoft.com
- vsgallery.com
- watson.live.com
- watson.microsoft.com
- telemetry.remoteapp.windowsazure.com
- telemetry.urs.microsoft.com

</details>

#
