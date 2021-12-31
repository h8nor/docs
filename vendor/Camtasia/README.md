[License]://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

Приложение|Редакция|Версия|Дата|Язык
---|---|---|---|---
Camtasia Studio <sup>[www]</sup>|TetcSmith|9.1.1.2546|2017-11-10|de, en, fr

[www]: //www.techsmith.com/download/camtasia "Site"

### Краткое описание

Camtasia Studio позволяет записывать видео с экрана, редактировать видео и аудио дорожки, сохранять 
видео в популярных форматах и GIF. Программа имеет широкий функционал, и при этом проста в освоении. 
Программа имеет встроенную библиотеку: группированные объекты и анимационные эскизы.

---
# Содержание репозитория

- ***README.md*** - описание и рекомендации по работе с программой
- ***anim_\*.svg*** - анимационные эскизы (для импорта в Callouts)
- ***motioncallouts.xml*** - список анимационных эскизов для программы


# Рекомендации по работе с анимационными эскизами

Программа всегда использует параметр `stroke="none" fill="none"`, независимо, что указано в файле SVG. 
Обратите внимание, что горизонтальные линии отображася в программе не будут.  
Описание формата SVG можно посмотреть здесь:  
- https://developer.mozilla.org/ru/docs/Web/SVG/Tutorial/Paths
- https://developer.mozilla.org/ru/docs/Web/SVG/Attribute/fill-rule
- https://developer.mozilla.org/ru/docs/Web/SVG/Attribute/clip-rule
- https://developer.mozilla.org/ru/docs/Web/SVG/Attribute/stroke-miterlimit

### Настройки программы

1. Скопируйте файлы в директорию `Camtasia Studio\Media\Studio\Callouts`

# 
