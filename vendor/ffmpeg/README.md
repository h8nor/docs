[License]://creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

|Приложение|Редакция|Версия|Дата|Язык
|:--- |:--- |:--- |:---:|:--- 
|ffmpeg <sup>[win32]</sup>|FFmpeg developers|3.4.2|2018-02-25|en

[win32]: //www.videohelp.com/software/ffmpeg/old-versions "Archive"

### Краткое описание

FFmpeg - набор свободных библиотек с открытым исходным кодом, которые позволяют записывать, 
конвертировать и передавать цифровые аудио- и видеозаписи в различных форматах.  
Сокращенно от Fast Forward Mpeg (лицензии GPL 2.0 и LGPL 2.1)

---
# Содержание репозитория

- ***mkv=crop2mp4.bat*** - (test) скрипт преобразования контейнера и первой аудиодорожки `mkv` в формат `mp4`
- ***mp4=concat4mp4.bat*** - (test) скрипт склейки несколько видео `mp4` в одной директории
- ***mp4=split2ts.bat*** - (subdir) скрипт разделения видео `mp4` на сегменты для потока `ts`
- ***webm+opus=glue2mp4.bat*** - (test) скрипт склейки видео `webm` и аудио `opus`
- ***README.md*** - описание и рекомендации по работе с программой

### Важные переменные в скриптах (комментарии есть в скриптах)

 > * `grade_best` - качество видео (целое число)
 > * `interval` - устанавливает начало конечного файла `-ss` и его продолжительность `-t`
 > * `pre` [Const] - приставка к конечному файлу

```
Stream mapping:
  Stream #0:1 -> #0:0 (mpeg2video (native) -> h264 (libx264))
  Stream #0:2 -> #0:1 (mp2 (native) -> mp3 (libmp3lame))
Aspect:
  FS - Full Screen (4:3 ==> Pal (720×576))
  WS - WideScreen (16:9 ==> NTSC (720×480))
```

# Рекомендации по работе с программой
 
Помощь по консольным параметрам программы:  
- https://iu5bmstu.ru/index.php/FFmpeg_-_Работа_с_видео
- http://wiki.rosalab.com/ru/index.php/FFmpeg
- https://qna.habr.com/user/honor8/tag_answers?tag=ffmpeg
- https://nosovdn-cisco.blogspot.com/2014/09/ffmpeg.html
- -vf delogo https://youtu.be/kIaxrXbPrT8
- stabilization https://youtu.be/MfHGH2Mnxls
- credits in video https://youtu.be/Qh_rH5GeMQM

### Настройки программы

1. Скопируйте нужный скрипт в директорию с медиа-файлами
2. Отредактируйте параметры в заголовке скрипта
3. Запустите скрипт

# 
