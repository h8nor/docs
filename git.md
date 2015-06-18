## Описание команд в Git для объекта с именем origin

#### Настройка имени пользователя и почтового адреса:
```bash
# Между прочим, это хороший тон
git config user.name "FirstName LastName"
git config user.email "user@example.com"
```

#### Автоматическая перекодировка в windows-1251 файлов *.bas из репозитория:
```bash
# В репозитории файлы хранятся в кодировке utf-8
# Фильтры применяются для типов файлов: *.bas	filter=win1251  eol=crlf
git config --global filter.win1251.clear "iconv -f windows-1251 -t utf-8"
git config --global filter.win1251.smudge "iconv -f utf-8 -t windows-1251"
git config --global filter.win1251.required true
```

#### Загрузить существующий репозиторий с локальной машины:
```bash
git remote add origin https://github.com/bopoh13/docs.git
git push -u origin master
```

#### Индексирование (add) файлов и проверка, записываем состояние (commit):
```bash
# Очень опасная команда, подумайте прежде чем пользоваться ею
git add .
# Отмена изменений файла (до внесения файла в записанное состояние (commit)
git checkout -- README.md

git status

git commit -m"commit"
```
Картинки в комментариях можно посмотреть [здесь](//www.emoji-cheat-sheet.com).

#### Удаление файла из записанного состояния (commit):
```bash
# Список файлов можно перечислять через пробел
git rm README.md
```

#### Объединение (merge) ветки dev с веткой master, отправка изменений (push) в репозиторий:
```bash
# Переключиться на ветку master
git checkout master
git merge --no-ff -m"merge" dev

git push origin master
```
Синхронизируем ветку dev через клиент (если требуется)

## Дополнительные комманды в Git

#### Создание новой ветки в репозитории:
```bash
# Ветка dev создаётся из текущей
git branch dev
# Создать ветку на определенном коммите
git branch new_branch 5a0eb0
```

#### Получение (pull) обновленной версии из репозитория:
```bash
# Команда сразу забирает изменения и проводит слияние с активной веткой
git pull
```

#### Запоминаем состояние (commit) всех изменений на локальной машине:
```bash
git commit -a
```

#### Изменение комментария к последнему комииту:
```bash
# Только в том случае, если после последнего коммита не было ни каких изменений в рабочем каталоге
git commit --amend
```

#### Отмена слияния:
```bash
git merge --abort
```

#### Отмена всех изменений, сделанных в дереве, до состояния, которое было при последнем комите в локальный репозиторий:
```bash
# Очень опасная команда, подумайте прежде чем пользоваться ею
git reset --hard
```
