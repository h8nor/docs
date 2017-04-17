## Описание команд в Git для объекта с именем origin

#### Настройка имени пользователя и почтового адреса:
``` nix
# Между прочим, это хороший тон
git config user.name "FirstName LastName"
git config user.email "user@example.com"
```

#### Автоматическая перекодировка в windows-1251 файлов *.bas из репозитория:
``` nix
# В репозитории файлы хранятся в кодировке utf-8
# Фильтры применяются для типов файлов: *.bas	filter=win1251  eol=crlf
git config --global filter.win1251.clean "iconv -f windows-1251 -t utf-8"
git config --global filter.win1251.smudge "iconv -f utf-8 -t windows-1251"
git config --global filter.win1251.required true
```

#### Загрузить существующий репозиторий с локальной машины:
``` nix
git remote add origin https://github.com/bopoh13/docs.git
git push -u origin master
```

#### Индексирование (add) файлов и проверка, записываем состояние (commit):
``` nix
# Очень опасная команда, подумайте прежде чем пользоваться ею
git add .
# Отмена изменений файла до внесения файла в записанное состояние (commit)
git checkout -- README.md

# Список всех измененных
git status
# Самая важная команда (commit)
git commit -m"comment"
```
Картинки в комментариях можно посмотреть [здесь](//www.webpagefx.com/tools/emoji-cheat-sheet/).

#### Удаление файла из списка индексируемых до записи состояния (commit):
``` nix
# Список файлов можно перечислять через пробел
git rm README.md
```

#### Извлечь случайно удалённый файл из репозитория:
``` nix
git checkout README.md
```

#### Объединение (merge) ветки dev с веткой master:
``` nix
# Переключиться на ветку master
git checkout master
git pull origin master
# Вливаем изменения в активную ветку master из ветки dev
# с сохранением истории изменений
git merge --no-ff -m"comment" dev

# ! или применить указанный коммит к ветке master
# Список файлов можно перечислять через пробел
git cherry-pick "5a0eb0"

# Обновляем ветку master (обязательно)
git push origin master
```

#### Отправка изменений (push) в ветку репозитория dev:
``` nix
git push origin dev
```
Синхронизируем ветку dev через клиент (если требуется)

## Дополнительные команды в Git

#### Создание новой ветки в репозитории:
``` nix
# Ветка dev создаётся из текущей
git branch dev
# Создать ветку на определенном коммите
git branch new_branch "5a0eb0"
```

#### Получение (pull) обновленной версии из репозитория:
``` nix
# Команда забирает изменения и проводит слияние ветки master (с активной веткой)
git pull origin master
```

#### Изменение комментария к последнему комииту:
``` nix
# Только в том случае, если после последнего коммита не было ни каких изменений в рабочем каталоге
git commit --amend
```

#### Отмена слияния:
``` nix
git merge --abort
```

#### Отмена всех изменений, сделанных в дереве, до состояния, которое было при последнем комите в локальный репозиторий:
``` nix
# Очень опасная команда, подумайте прежде чем пользоваться ею
# чтобы файлы не загружались из локального репозитория - ключ --soft
git reset --hard HEAD~
```

#### Как исправить "Your branch and 'origin/master' have diverged" удалить файлы --hard
``` nix
git fetch origin
git reset --hard origin/dev
# Копируем исправленные файлы
git add --all && git commit -m"fix commit"
# Пушим. Ветка должна быть не заблокирована? http://tonyganch.com/git/rebase/
# git rebase -i HEAD~2 (не вышло)
# s - вводим вместо "pick" для самого нижнего

# Коммиты должны быть запушины?
git reset --soft "5a0eb0"
git push --force
# http://marklodato.github.io/visual-git-guide/index-ru.html
```
