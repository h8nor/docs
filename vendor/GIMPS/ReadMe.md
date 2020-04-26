[License]: //creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

Приложение|Редакция|Версия|Дата|Язык
|:--- |:--- |:--- |:---:|:--- 
Prime95 <sup>[www]</sup>|Release|29.8|2019-04-23|en

[www]: //mersenne.org/download/ "Download"

### Краткое описание

Официальное приложение проекта GIMPS (Great Internet Mersenne Prime Search) осуществляет поиск простых чисел 
*среди* чисел Мерсенна (2<sup>n</sup>-1). Для поиска требуются современные компьютеры, потому как сложность 
поиска быстро возрастает.

Помимо поиска [простых чисел Мерсенна] используя различные [методы] можно вычислить простые множители 
(сомножители, факторы) чисел Мерсенна. Каждое число Мерсенна имеет очень [мало сомножителей].  
Поиск сомножителей методами [P-1] (алгоритм Полларда) и [ECM]<sup>[*]</sup> (метод случайных эллиптических 
кривых) требует свободной памяти, потому в случае недостатка памяти вычисления остановятся, а в графе `Stage` 
назначенных заданиях появятся *метки* без указания процентов. Зато эти методы находят простые сомножители 
на несколько порядков длиннее. Повторное использование коэффициентов B1 и B2 в алгоритме [P-1] приведут 
к аналогичному результату, при этом их можно использовать повторно для алгоритма [ECM], но нужно проверить 
по [таблицам] вероятностное количество ненайденных кривых.  

Проверка [PRP] (вероятное простое) с большой вероятностью укажет, если простые сомножители (все или с одним 
недостающим) будут найдены; или число Мерсенна не имеет сомножителей и является простым (данный метод заменил 
тест LL). Чем длиннее уже найденные простые сомножители, тем больше шансов успешно пройти проверку PRP.
``` tf
# Параметры, передаваемые программе
PRP=1,2,{EXPONENT},-1,"{FACTOR_N1},{FACTOR_N2}"
PRP=1,2,{EXPONENT},-1,{BIT_LAST},0,{opt_N_BASE},{opt_N_RESIDUE}
```

На 2020-02-13 найден 149 сомножителей. Любой метод добавляет очков в проекте GIMPS.

[простых чисел Мерсенна]: //www.mersenne.ca/prime.php
[методы]: //www.mersenne.org/various/math.php
[мало сомножителей]: //www.mersenne.ca/manyfactors.php
[P-1]: //www.mersenne.ca/p1missed.php?min=1&max=999999999
[ECM]: //www.mersenneforum.org/showthread.php?t=194
[*]: //www.mersenneforum.org/showpost.php?p=1406&postcount=19
[таблицам]: //www.mersenne.org/report_ecm/ "Значение 'Done' вероятно не лжёт"
[PRP]: //www.mersenne.ca/prp.php?show=2&min_exponent=1213&max_exponent=4871

---
# Содержание репозитория

- ***FastFactoring.md*** - таблица #1 найденных простых делителей
- ***TrialFactoring.md*** - таблица #2 найденных простых делителей
- ***ReadMe.md*** - описание и рекомендации по проекту GIMPS


# Дополнительная информация

### Приложения для поиска простых сомножителей на GPU

1. [gpuOwL] a tiny OpenCL 
2. [mfaktc] a CUDA<sup>[**]</sup> 
3. [mfakto] an OpenCL<sup>[**]</sup> 
4. [yafu] 

[gpuOwL]: http://www.mersenneforum.org/showthread.php?t=22204
[mfaktc]: http://www.mersenneforum.org/showthread.php?t=12827
[mfakto]: http://www.mersenneforum.org/showthread.php?t=15646
[yafu]: http://www.mersenneforum.org/showthread.php?p=488202
[**]: //www.mersenne.ca/tf1G.php

### Формула пополнения таблицы в Excel

`=СЦЕПИТЬ("|";ЕСЛИ(ИЛИ(ЛЕВСИМВ(A1;1)="Q";ЛЕВСИМВ(A1;1)="i");"C";"G");"PU_";A1;"|M<sub>";B1;"</sub>|";ТЕКСТ(D1;"ГГГГ-ММ-ДД");"|[";ПОДСТАВИТЬ(ЛЕВСИМВ(F1;ПОИСК(" / ";F1)-1);"Factor: ";"");"](//mersenne.org/M";B1;" """;ТЕКСТ(LOG(ПОДСТАВИТЬ(ЛЕВСИМВ(F1;ПОИСК(" / ";F1)-1);"Factor: ";"");2);"0,0_ бит");""")")`

---
<details>
<summary>:cyclone: Ссылки на пояснения и приложения</summary><br />

1. [Простые числа Мерсенна и Тест Люка-Лемера](//habr.com/post/327342/ "RU, 2017-04-25")
2. [Mersenne Prime](//download.mersenne.ca/ "EN")
3. **[factordb.com](http://factordb.com/index.php?query=2^1213-1 "EN")**
4. [Proving primality](//primes.utm.edu/prove/ "EN, 2018-01-03")
5. [Mersenne Numbers with no Known Factors](//www.mersenne.org/report_factoring_effort/?exp_lo=2&exp_hi=7650&bits_lo=64&bits_hi=70&exassigned=1 "EN")
6. [Эффективные алгоритмы факторизации](http://www.e-maxx-ru.1gb.ru/algo/factorization "RU, 2008-06-10")

</details>

<details>
<summary>:cyclone: Ссылки на статьи о числах и RSA</summary><br />

1. [Решето Эратосфена и Аткина](//habr.com/post/133037/ "RU, 2011-11-21")
2. [Математик совершил прорыв в теории простых чисел-близнецов](//habr.com/post/180259/ "RU, 2013-05-20")
3. [База данных простых чисел](//habr.com/post/246789/ "RU, 2014-12-25")
4. [Алгоритмы быстрого вычисления факториала](//habr.com/post/255761/ "RU, 2015-04-14")
5. [5 способов вычисления чисел Фибоначчи](//habr.com/post/261159/ "RU, 2015-06-25")
6. [Математик уменьшил расход памяти для решета Эратосфена](//habr.com/post/369713/ "RU, 2016-09-27")
7. [Красота чисел. Как быстро вычислять в уме](//habr.com/post/398589/ "RU, 2016-10-23")
8. [Быстрое вычисление факториала - PrimeSwing](//habr.com/post/323770/ "RU, 2017-04-29")
9. [Найдено самое большое обобщённое число Ферма](//habr.com/post/406485/ "RU, 2017-09-05")
10. [Математики доказали, что неприводимые многочлены не имеют простых множителей](//habr.com/post/436110/ "RU, 2019-01-16")
11. [Почему единицу не относят к простым числам](//habr.com/post/450838/ "RU, 2019-05-07")
12. [Тесты Ферма и Миллера-Рабина на простоту](//habr.com/post/486116/ "RU, 2020-01-29")

</details>


# Сообщения приложения Prime95

|Communication thread|Поток сообщений
|:--- |:--- 
|Composite factor Z = X * Y|Составной множитель Z = X * Y
|Days to go|Осталось дней
|Exchanging program options with server|Обмен параметрами программы с сервером
|Estimated completio date is more than one yer away. The assignment may be reassigned to another user after one year.|Предполагаемая дата завершения составляет более одного года. Назначение может быть назначено другому пользователю через один год.
|Getting assignment from server|Получение задания с сервера
|ra: exponent M violates assignment rules.|треб: экспонента M нарушает правила назначения.
|Sending result to server:|Отправка результата на сервер:
|Updating computer information on the server|Обновление информации о компьютере на сервере

# 
