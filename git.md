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

#### Генерация и просмотр GPG ключей:
``` nix
# //gnupg.org/download/integrity_check.html
# //habrahabr.ru/post/73642/
# //debianzilla.com/gnupg-pgp/ (not "PGP keys")
gpg --gen-key
# //linux.org.ru/forum/security/10904313
# RSA and RSA (4096) 6мес //k806.ru/help/gpg_create
> 1
> 4096
> 6m
> Y
> FirstName LastName
> Email
> comment
> O
# Пароль закрытого ключа (кодовая фраза)
> passphrase
# Показать список открытых ключей
gpg --list-keys
# Показать список закрытых ключей (хеш совпадает)
gpg -K --keyid-format LONG | grep -C 1 "^sec"\
 | GREP_COLOR="01;36" egrep -i --color "([0-9A-F]{8,}|-\W+)"
# Добавить зашифрованный открытый ключ GPG в учётную запись GutHub
gpg --armor --export <KEY>
# Удалить ключ //eax.me/gpg/
gpg --delete-secret-keys <KEY>
gpg --delete-sigs <KEY>
gpg --delete-keys <KEY>

# //help.github.com/articles/generating-a-new-gpg-key/
# Обязательная подпись всех коммитов
git config --global commit.gpgsign false
git config --global tag.gpgsign true

# Установка ключа для подписи по умолчанию
# //stackoverflow.com/questions/10161198/
git config --global user.signingkey <KEY>
```
``` nix
# GitHub Desktop не поддерживает подпись, т.к. нужно передавать passphrase
# //github.com/desktop/desktop/issues/78
# //stackoverflow.com/questions/36941533
# поэтому, надо удалить всё, что было избыточно введено в консоли (создать хук к $ git commit -S)
git config --global --unset commit.gpgsign
git config --global --unset gpg.program
# и в файле конфигурации gpg.conf; путь к "~" echo ${HOME}
# //lists.gnupg.org/pipermail/gnupg-users/2003-May/018492.html
sed -i "/^no-tty/d" ~/.gnupg/gpg.conf
# //ant0.ru/comment/52

# Установка истечения срока ключа (закрытого и открытого)
gpg --edit-key <KEY>
> key 0
> expire
>> Changing expiration time for the primary key.
> 1y
> Y
>> Changing expiration time for a subkey.
> key 1
> expire
> 22w
> Y
> save
# Удалить открытый ключ GPG из учётной записи GutHub и вставить новый
# Тогда все предыдушие подписи к коммитам станут валидными

# ? Создание зашифрованного архива по паролю (gpg умеет BZIP2 из коробки)
# Просмотр содержания архива
tar -tj -f backup.tbz2

# Необходимо передать открытый ключ человеку, который будет шифровать файлы текущей директории
tar -cjv ../${PWD##*/} | gpg -e -r <KEY> -o ../backup.tbz2.gpg
# Расшифровка архива по закрытому ключу
gpg -d backup.tbz2.gpg | tar -xj
gpg -o backup.tbz2 -d backup.tbz2.gpg
```

#### Загрузить существующий репозиторий с локальной машины:
``` nix
# //github.com/Imangazaliev/git-tips
# //help.github.com/articles/creating-releases/
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
git commit -m"comment1" -m"comment2" (ключ -a аналогичен команде git add .)
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
git cherry-pick <KEY>

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
git branch new_branch <KEY>
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
# Пушим. Ветка должна быть не заблокирована? //tonyganch.com/git/rebase/
# git rebase -i HEAD~2 (не вышло)
# s - вводим вместо "pick" для самого нижнего

# Коммиты должны быть запушины?
git reset --soft <KEY>
git push --force
# //tonyganch.com/git/reset/
# //marklodato.github.io/visual-git-guide/index-ru.html
```

#### Найти файлы с BOM
```shell
find . -type f \( -name "*.md" -o -name "*.html" \) -print0\
 | xargs -0r awk "/^\xEF\xBB\xBF/ {print FILENAME}{nextfile}"
```
#### Удалить BOM из UTF-8
```shell
find . -type f \( -name "*.md" -o -name "*.html" \) -print0\
 | xargs -0 grep -l `printf "^\xEF\xBB\xBF"`\
 | xargs sed -i "1 s/^\xEF\xBB\xBF//"
```

#
