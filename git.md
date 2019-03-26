## Описание команд в Git для объекта с именем origin

#### Настройка имени пользователя и почтового адреса:
``` nix
# https://habr.com/post/306166/
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
# //habr.com/post/73642/
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
# (при key 0 и key 1 с одинаковой датой - подпись оставалась валидной)

# ? Создание зашифрованного архива по паролю (gpg умеет BZIP2 из коробки)
# Просмотр содержания архива
tar -tj -f backup.tbz2

# Необходимо передать открытый ключ человеку, который будет шифровать файлы текущей директории
tar -cjv ../${PWD##*/} | gpg -e -r <KEY> -o ../backup.tbz2.gpg
# Расшифровка архива по закрытому ключу
gpg -d backup.tbz2.gpg | tar -xj
gpg -o backup.tbz2 -d backup.tbz2.gpg
```

#### Создание нового репозитория (после инициализация в GitHub Desktop)
Коммит создаётся от имени, указаного в настройках GitHub Desktop. Заменяем его.
Создаём файлы .gitattributes и .gitignore. Затем нужно удалить коммит `<234567KEY>`
``` nix
git log --pretty=oneline
<234567KEY>
<123456KEY>
git reset --soft <234567KEY>
```
Лучше сразу использовать (см. ниже --amend)
``` nix
git add .
git commit --amend -S (-v при редактировании описания коммита показывает все сделанные изменения)
```

#### Загрузить существующий репозиторий с локальной машины:
``` nix
# Создать пустой репозиторий (origin) на GitHub, и проверить путь:
git remote -v
# //github.com/Imangazaliev/git-tips
# //help.github.com/articles/creating-releases/
git remote add origin https://github.com/bopoh13/docs.git
git push -u origin master
```

#### Индексирование (add) файлов и проверка, записываем состояние (commit):
``` nix
# Индексация новых файлов и всех изменений. Очень опасная команда, подумайте прежде чем пользоваться ею
git add .

# Краткий список всех изменений
# //habr.com/post/420529/
git status -sb
# Самая важная команда (commit)
git commit -m"comment1" -m"comment2" (ключ -a коммитит только файлы из индекса)
```
:space_invader: Картинки в комментариях можно посмотреть [здесь](//gist.github.com/rxaviers/7360908).

#### Удаление файла из списка индексируемых до записи состояния (commit):
``` nix
# Список файлов можно перечислять через пробел
git rm --cached folder/ReadMe.md
```

#### Извлечь случайно удалённый файл из репозитория:
``` nix
git checkout README.md
# Отмена изменений всех файлов после модификации
git checkout -- .
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
# Перед этим должен быть снят "Branch protection"
# //tonyganch.com/git/reset/
# //marklodato.github.io/visual-git-guide/index-ru.html
```

#### Найти файлы с BOM
``` shell
find . -type f \( -name "*.md" -o -name "*.html" \) -print0\
 | xargs -0r awk "/^\xEF\xBB\xBF/ {print FILENAME}{nextfile}"
```
#### Удалить BOM из UTF-8 и добавить в строках символы CR перед LF
``` shell
find . -type f \( -name "*.css" -o -name "*.scss"\
 -o -name "*.html" -o -name "*.js" -o -name "*.liquid"\
 -o -name "*.md" -o -name "*.svg" -o -name "*.xml" \) -print0\
 | xargs -0 grep -m1 -l `printf "^\xEF\xBB\xBF"`\
 | xargs sed -i "1 s/^\xEF\xBB\xBF//; s/\$/\x0D/"\
 && git ls-files -mo --eol
# https://toster.ru/q/377947 (1 s - обрабатывется первая строка)
```

#
