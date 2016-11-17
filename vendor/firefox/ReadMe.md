[License]://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

Приложение|Редакция|Версия|Дата|Язык
---|---|---|---|---
Firefox <sup>[www]</sup>|Release|50.0.0|2016-11-06|all

[www]://www.mozilla.org/ru-ru/firefox/all/#ru "Site"

### Краткое описание

В браузере Firefox используется свободный портируемый движок Gecko<sup>[*]</sup>, созданный с учётом поддержки 
открытых стандартов. В браузере присутствует интерфейс со многими вкладками, проверка орфографии, поиск 
по мере набора с подсветкой текста на странице, менеджер закачек, поле для обращения к поисковым системам.  
Новые функции можно добавлять при помощи *расширений*.

[*]://habrahabr.ru/post/313820/ "Rust > Servo > Quantum"

---

# Содержание репозитория

- ***user.js*** - рекомендуемый файл безопасных настроек
- ***ReadMe.md*** - описание и рекомендации по работе с браузером

# Рекомендуемые настройки

### Список некоторых расширений

1. [Adblock Plus]  
	Расширение позволяет вернуть себе контроль над содержанием страниц и видеть лишь то, что хочется.
	- Основная проблема утечки памяти состоит в подписке EasyList, содержащей 69k фильтров, большая часть 
		которых бесполезна для рунета.  
		Рекомендую альтернативную подписку [AeList]. Предложения по улучшению привествуются.
	- Можете дополнительно установить *[Stylish]* или *[Greasemonkey]*, либо сразу перейти на аналог 
		[uBlock Origin].  
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
	Расширение позволит Вам определить перекупа на сайтах *drom.ru*, *avito.ru* (на странице 
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

`<a href="abp:subscribe?title=AeList%20(Adblock%20Edge)&location=https%3A%2F%2Fraw.githubusercontent.com%2Fbopoh13%2Fdocs%2Fadblock%2Fvendor%2Ffirefox%2Fadblockedge.txt">AeList (Adblock Edge)</a>`

# 
