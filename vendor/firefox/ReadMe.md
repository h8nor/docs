[License]: //creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

|Приложение|Редакция|Версия|Дата|Язык
|:--- |:--- |:--- |:---:|:--- 
|Firefox <sup>[www]</sup>|Release|81.0.0|2020-09-17|all
|Firefox <sup>[esr]</sup>|ESR|78.3.0|2020-09-15|all

[www]: //mozilla.org/ru/firefox/all/#product-desktop-release "Site"
[esr]: //mozilla.org/ru/firefox/all/#product-desktop-esr "Extended support"

### Краткое описание

В браузере Firefox используется свободный портируемый движок Gecko<sup>[*]</sup>, созданный с учётом поддержки 
[WebAssembly]<sup>[**]</sup> и открытых стандартов. В браузере присутствует интерфейс со многими вкладками, 
проверка орфографии, поиск по мере набора с подсветкой текста на странице, менеджер закачек, поле для 
обращения к поисковым системам.  
Новые функции можно добавлять при помощи *расширений*.  
Существует альтернативная версия [Waterfox] или [PaleMoon] для 64-битных ОС. В июне 2018 г. прекратился выпуск 
обновлений безопасности на канале ESR для версии Firefox под Windows XP<sup>[***]</sup>. 
В [FF75 под Win10] появилась телеметрия.  

[*]: //habr.com/post/313820/ "Rust > Servo > Quantum"
[**]: //habr.com/post/402173/ "wasm - низкоуровневый ЯП, выполняющийся в браузере"
[***]: //habr.com/post/407239/
[FF75 под Win10]: //habr.com/post/496618/
[WebAssembly]: //habr.com/post/428347/ "RU, 2018-10-31"
[Waterfox]: //www.waterfoxproject.org/ "браузер с поддержкой XUL-расширений"
[PaleMoon]: //www.palemoon.org/ "браузер с поддержкой XUL-расширений"

---
# Содержание репозитория

- ***download_ghacks_ff.vbs*** - скрипт для скачивания ghacks-user.js для Firefox на Рабочий стол
- ***download_last_ff.vbs*** - скрипт для скачивания Firefox под разрядность ОС на Рабочий стол
- ***[habrusers_blocker_gm].user.js*** - блокировка пользователей на Хабре (*user script*)
- ***user.js*** - рекомендуемый файл безопасных настроек
- ***update_set_ff.vbs*** - скрипт автоматического обновления файла *user.js*
- ***ReadMe.md*** - описание и рекомендации по работе с браузером

[habrusers_blocker_gm]: //github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js


# Рекомендуемые настройки

### Список некоторых расширений

1. [Adblock Plus]  
	Расширение позволяет вернуть себе контроль над содержанием страниц и видеть лишь то, что хочется.
	- Основная проблема утечки памяти состоит в подписке EasyList, содержащей 69k фильтров, большая часть 
		которых бесполезна для рунета.  
		Рекомендую альтернативную подписку [AdBlock EdgeList]. Предложения по улучшению привествуются.
	- Можете дополнительно установить *[Greasemonkey]*<sup>[:(]</sup> или ~~*[Stylish]*~~ для подключения сторонних *user 
		script*, либо сразу перейти на аналог [µBlock Origin].  
		- **ВАЖНО:** Обязательно читайте стили перед установкой в *Stylish*. Запрещенное 
			на Userstyles.org свойство **-moz-binding** может выполнить JS-код на компьютере 
			пользователя.
2. [Browsec VPN]  
	Позиционирует себя как продвинутый аналог ZenMate. Есть бесплатные сервера (NL и UK до 30 Мбит/сек). 
	Опция "Smart Settings" позволяет выбрать proxy для отдельных доменов без включения защиты.
3. ~~[Google Translator]~~  
	С помощью этого расширения можно перевести любой текст на ваш родной язык одним щелчком мыши 
	или с помощью комбинации клавиш. Можно перевести либо выделенный текст, либо всю страницу.
4. [FireShot]  
	Создаёт полные скриншоты веб-страниц с вожможность сохранения в Сохраняйте снимки в PNG или PDF.
5. [Octotree]  
	Отображает репозиторий GitHub в виде дерева.
6. [Easy Youtube Video Downloader Express]  
	Самый простой способ скачать и конвертировать 720p видео из сотен сайтов как YouTube.

[:(]: //github.com/greasemonkey/greasemonkey/issues/2733/
[Adblock Plus]: //addons.mozilla.org/firefox/addon/1865/
[AdBlock EdgeList]: #Ссылка-на-подписку-abp-edgelist "Ctrl+Shift+I"
[Browsec VPN]: //addons.mozilla.org/firefox/addon/603434/
[Canvas]: //habr.com/post/357238/#comment_11221142 "SHA-256"
[CanvasBlocker]: //addons.mozilla.org/firefox/addon/534930/
[Easy Youtube Video Downloader Express]: //addons.mozilla.org/firefox/addon/463677/
[FireShot]: //addons.mozilla.org/firefox/addon/5648/ "Замена скриншотам Firefox"
[Google Translator]: //addons.mozilla.org/firefox/addon/46308/ "2018-11-29: Гугл изменил интерфейс"
[Greasemonkey]: //addons.mozilla.org/firefox/addon/748/ "Движок для запуска UserJS"
[Octotree]: //addons.mozilla.org/firefox/addon/512640/
[Stylish]: //github.com/The-OP/Fox/commit/370229fe "Меняет внешний вид сайтов согласно UserCSS"
[µBlock Origin]: //addons.mozilla.org/firefox/addon/607454/

### :chocolate_bar: Формула выбора названий свойств настроек из файла user.js в Excel

`=ЕСЛИОШИБКА(ПСТР(A1;НАЙТИ("user_pref";A1)+11;НАЙТИ(""", ";A1)-2-НАЙТИ("(""";A1));"")`

---
<!-- <details>
<summary>:coconut: Ссылка на подписку ABP EdgeList</summary><br />

Подписку можно подключить в настройках расширения "*<kbd>ЛКМ</kbd> по значку -> Настройки -> Расширенные -> 
Добавить новый список фильтров*" указав путь к файлу в ветке репозитория **adblock**, или через ссылку в html-коде:

`<a href="abp:subscribe?title=AdBlock%20EdgeList&location=https%3A%2F%2Fgithub.com%2Fbopoh13%2Fdocs%2Fraw%2Fadblock%2Fvendor%2Ffirefox%2Fadblockedge.txt">AdBlock EdgeList</a>`
#

</details> -->

1. [Mozilla усилила защиту пользователей Firefox от вредоносного кода](//habr.com/post/471602/ "RU, 2019-10-15")
2. [Mozilla: рекламщикам достаточно истории 150 посещённых доменов для определения пользователя](//habr.com/ru/news/t/517384/ "RU, 2020-09-01")

<details>
<summary>:coconut: Дополнительные возможности</summary><br />

- Проверка [FingerPrint]

Справа в адресной строке появляется значок-книга "Перейти в Вид для чтения". В данном режиме просмотра 
удобно отправлять страницу на печать без оформления, можно воспроизводить текст [голосом] (для Windows 7 
требуется установить сервер [Speech Platform]) если дополнительно установить [TTS] (размер от 0,1 Гб).  
MS Word имеет функцию воспроизведения текста (в "*Настройках ленты*" в списке "*Команды не на ленте*" 
команда "*Проговорить*").

[FingerPrint]: //amiunique.org "2018-12-07: https://habr.com/post/432296/#comment_19469322"
[голосом]: //support.mozilla.org/ru/kb/otvet-na-forume-ustanovka-golosov-dlya-windows-10
[Speech Platform]: //www.microsoft.com/en-us/download/details.aspx?id=16789
[TTS]: http://mytts.forum2x2.ru/f10-forum "Text-To-Speech движок"

</details>

# Отключить телеметрию в Windows 10

### 1. Планировщик заданий (включается при каждом обновлении FF до major)

Необходимо после каждого обновления `Отключить / Удалить` задание `Firefox Default Browser Agent`
до того, как оно выполнится.

<details>
<summary>:coconut: На блокировку в hosts реагирует MS Defender</summary><br />

- www.microsoft.com
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
