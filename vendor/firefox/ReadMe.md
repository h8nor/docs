[License]://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

Приложение|Редакция|Версия|Дата|Язык
---|---|---|---|---
Firefox <sup>[www]</sup>|Release|53.0.0|2017-04-14|all

[www]://www.mozilla.org/ru-ru/firefox/all/#ru "Site"

### Краткое описание

В браузере Firefox используется свободный портируемый движок Gecko<sup>[*]</sup>, созданный с учётом поддержки 
WebAssembly<sup>[**]</sup> и открытых стандартов. В браузере присутствует интерфейс со многими вкладками, 
проверка орфографии, поиск по мере набора с подсветкой текста на странице, менеджер закачек, поле для 
обращения к поисковым системам.  
Новые функции можно добавлять при помощи *расширений*.

[*]://habrahabr.ru/post/313820/ "Rust > Servo > Quantum"
[**]://geektimes.ru/post/286718/ "wasm - низкоуровневый ЯП, выполняющийся в браузере"

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
		Рекомендую альтернативную подписку [AeList]. Предложения по улучшению привествуются.
	- Можете дополнительно установить *[Greasemonkey]* или *[Stylish]* для подключения сторонних *user 
		script*, либо сразу перейти на аналог [uBlock Origin].  
		- **ВАЖНО:** Обязательно читайте стили перед установкой в *Stylish*. Запрещенное 
			на Userstyles.org свойство **-moz-binding** может выполнить JS-код на компьютере 
			пользователя.
2. [Google Translator]  
	С помощью этого расширения можно перевести любой текст на ваш родной язык одним щелчком мыши 
	или с помощью комбинации клавиш. Можно перевести либо выделенный текст, либо всю страницу.
3. [Octotree]  
	Отображает репозиторий GitHub в виде дерева.
4. [Video DownloadHelper]  
	Самый простой способ скачать и конвертировать видео из сотен сайтов как YouTube.
5. [Перекупы Авто]  
	Расширение позволит Вам определить перекупа на сайтах *drom.ru* (на странице 
	с объявлением появится дополнительный блок с информацией о продавце).

[Adblock Plus]://addons.mozilla.org/ru/firefox/addon/1865/
[AeList]:#Ссылка-на-подписку-aelist-adblock-edge "Ctrl+Shift+E -> Добавить подписку..."
[Google Translator]://addons.mozilla.org/ru/firefox/addon/46308/
[Greasemonkey]://addons.mozilla.org/ru/firefox/addon/748/ "Движок для запуска UserJS"
[Octotree]://addons.mozilla.org/ru/firefox/addon/512640/
[Stylish]://addons.mozilla.org/ru/firefox/addon/2108/ "Меняет внешний вид сайтов согласно UserCSS"
[Video DownloadHelper]://addons.mozilla.org/ru/firefox/addon/3006/
[uBlock Origin]://addons.mozilla.org/ru/firefox/addon/607454/
[Перекупы Авто]://addons.mozilla.org/ru/firefox/addon/542220/

### Ссылка на подписку AeList (Adblock Edge)

Подписку можно подключить в настройках расширения "*<kbd>Ctrl+Shift+E</kbd> -> Добавить подписку...*" указав 
путь к файлу в ветке репозитория **adblock**, или через ссылку в html-коде:

`<a href="abp:subscribe?title=AeList%20(Adblock%20Edge)&location=https%3A%2F%2Fgithub.com%2Fbopoh13%2Fdocs%2Fraw%2Fadblock%2Fvendor%2Ffirefox%2Fadblockedge.txt">AeList (Adblock Edge)</a>`

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
