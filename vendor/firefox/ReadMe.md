[License]://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

Приложение|Редакция|Версия|Дата|Язык
---|---|---|---|---
Firefox <sup>[www]</sup>|Release|59.0.0|2018-03-10|all
Firefox <sup>[esr]</sup>|ESR|52.7.0|2018-03-08|all

[www]://www.mozilla.org/ru-ru/firefox/all/#ru "Site"
[esr]://ftp.mozilla.org/pub/firefox/releases/52.7.0esr/win32/ "Extended support"

### Краткое описание

В браузере Firefox используется свободный портируемый движок Gecko<sup>[*]</sup>, созданный с учётом поддержки 
WebAssembly<sup>[**]</sup> и открытых стандартов. В браузере присутствует интерфейс со многими вкладками, 
проверка орфографии, поиск по мере набора с подсветкой текста на странице, менеджер закачек, поле для 
обращения к поисковым системам.  
Новые функции можно добавлять при помощи *расширений*.  
Существует альтернативная версия [Waterfox] или [PaleMoon] для 64-битных ОС. В июне 2018 г. прекратится выпуск 
обновлений безопасности на канале ESR для версии Firefox под Windows XP<sup>[***]</sup>. 

[*]://habr.com/post/313820/ "Rust > Servo > Quantum"
[**]://geektimes.com/post/286718/ "wasm - низкоуровневый ЯП, выполняющийся в браузере"
[***]://geektimes.com/post/293773/
[Waterfox]://www.waterfoxproject.org/ "браузер с поддержкой XUL-расширений"
[PaleMoon]://www.palemoon.org/ "браузер с поддержкой XUL-расширений"

---

# Содержание репозитория

- ***[habrusers_blocker_gm].user.js*** - блокировка пользователей на Хабре (*user script*)
- ***user.js*** - рекомендуемый файл безопасных настроек
- ***update_set_ff.vbs*** - скрипт автоматического обновления файла *user.js*
- ***ReadMe.md*** - описание и рекомендации по работе с браузером

[habrusers_blocker_gm]://github.com/bopoh13/docs/raw/master/vendor/firefox/habrusers_blocker_gm.user.js

# Рекомендуемые настройки

### Список некоторых расширений

1. [Adblock Plus]  
	Расширение позволяет вернуть себе контроль над содержанием страниц и видеть лишь то, что хочется.
	- Основная проблема утечки памяти состоит в подписке EasyList, содержащей 69k фильтров, большая часть 
		которых бесполезна для рунета.  
		Рекомендую альтернативную подписку [AdBlock EdgeList]. Предложения по улучшению привествуются.
	- Можете дополнительно установить *[Greasemonkey]* или ~~*[Stylish]*~~ для подключения сторонних *user 
		script*, либо сразу перейти на аналог [µBlock Origin].  
		- **ВАЖНО:** Обязательно читайте стили перед установкой в *Stylish*. Запрещенное 
			на Userstyles.org свойство **-moz-binding** может выполнить JS-код на компьютере 
			пользователя.
2. [Browsec VPN]  
	Позиционирует себя как продвинутый аналог ZenMate. Есть бесплатные сервера (NL и UK до 30 Мбит/сек). 
	Опция "Smart Settings" позволяет выбрать proxy для отдельных доменов без включения защиты.
3. [Google Translator]  
	С помощью этого расширения можно перевести любой текст на ваш родной язык одним щелчком мыши 
	или с помощью комбинации клавиш. Можно перевести либо выделенный текст, либо всю страницу.
4. [Octotree]  
	Отображает репозиторий GitHub в виде дерева.
5. [Video DownloadHelper]  
	Самый простой способ скачать и конвертировать видео из сотен сайтов как YouTube.

[Adblock Plus]://addons.mozilla.org/ru/firefox/addon/1865/
[AdBlock EdgeList]:#Ссылка-на-подписку-abp-edgelist "Ctrl+Shift+I"
[Browsec VPN]://addons.mozilla.org/firefox/addon/603434/
[Canvas]://geektimes.com/post/284604/#comment_9815366 "SHA-256"
[CanvasBlocker]://addons.mozilla.org/ru/firefox/addon/534930/
[Google Translator]://addons.mozilla.org/ru/firefox/addon/46308/ "Половина сайтов не работает"
[Greasemonkey]://addons.mozilla.org/ru/firefox/addon/748/ "Движок для запуска UserJS"
[Octotree]://addons.mozilla.org/ru/firefox/addon/512640/
[Stylish]://github.com/The-OP/Fox/commit/370229fefefb8b724f978ae9641597ca0ad40280 "Меняет внешний вид сайтов согласно UserCSS"
[Video DownloadHelper]://addons.mozilla.org/ru/firefox/addon/3006/
[µBlock Origin]://addons.mozilla.org/ru/firefox/addon/607454/

### Ссылка на подписку ABP EdgeList

Подписку можно подключить в настройках расширения "*<kbd>ЛКМ</kbd> по значку -> Настройки -> Расширенные -> 
Добавить новый список фильтров*" указав путь к файлу в ветке репозитория **adblock**, или через ссылку в html-коде:

`<a href="abp:subscribe?title=AdBlock%20EdgeList&location=https%3A%2F%2Fgithub.com%2Fbopoh13%2Fdocs%2Fraw%2Fadblock%2Fvendor%2Ffirefox%2Fadblockedge.txt">AdBlock EdgeList</a>`

### Дополнительные возможности

Справа в адресной строке появляется значок-книга "Перейти в Вид для чтения". В данном режиме просмотра 
удобно отправлять страницу на печать без оформления, можно воспроизводить текст [голосом] (для Windows 7 
требуется установить сервер [Speech Platform]) если дополнительно установить [TTS] (размер от 0,1 Гб).  
MS Word имеет функцию воспроизведения текста (в "*Настройках ленты*" в списке "*Команды не на ленте*" 
команда "*Проговорить*").

[голосом]://support.mozilla.org/ru/kb/otvet-na-forume-ustanovka-golosov-dlya-windows-10
[Speech Platform]://www.microsoft.com/en-us/download/details.aspx?id=16789
[TTS]:http://mytts.forum2x2.ru/f10-forum "Text-To-Speech движок"

# 
