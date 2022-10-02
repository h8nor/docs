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

#### Генерация SSH ключей:
``` nix
ssh-keygen -t rsa -b 4096 -C "Email"
# Нажать Enter (запомнить путь публичного ключа)
# Пароль закрытого ключа (кодовая фраза)
> passphrase
> passphrase again
# Проверка подключения
ssh -T git@github.com
```

#### Генерация и просмотр GPG ключей:
``` nix
# //gnupg.org/download/integrity_check.html
# //habr.com/post/73642/
# //debianzilla.com/gnupg-pgp/ (not "PGP keys")
gpg --full-generate-key
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
# Пароль закрытого ключа (кодовая фраза) для версии GnuPG 2.20 и ниже
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

# Типы ключей https://habr.com/post/358182/
# Установка истечения срока ключа (закрытого и открытого)
gpg --edit-key <найденный_KEY>
> key 0  > usage: SC
> expire
>> Changing expiration time for the primary key.
> 1y
> Y
>> Changing expiration time for a subkey.
> key 1  > usage: E
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
Для изменения последнего коммита лучше сразу использовать (см. ниже --amend)
``` nix
# Добавить/удалить файлы в индекс. Список файлов можно перечислять через пробел
git add/rm <FILE>
# Команда (также) может просто изменить комментарий коммита - меняется KEY (не применять после push)
git commit --amend -S (-a только для изменённых файлов (без первой команды); -v при редактировании описания коммита показывает все сделанные изменения)
```

#### Загрузить существующий репозиторий с локальной машины (требует создания на github; не работает):
``` nix
# Создать пустой репозиторий (origin) на GitHub, и проверить путь:
cd .. && \
 git init <docs> && cd "$_" && git remote add origin https://github.com/h8nor/"$_".git
git remote -v
# //github.com/Imangazaliev/git-tips
# //help.github.com/articles/creating-releases/
git remote add origin https://github.com/h8nor/<docs>.git
# -u связывает локальный и удалённый репозитории
git push -u origin master
```

#### Индексирование (add) файлов и проверка, записываем состояние (commit):
``` nix
# Индексация новых файлов и всех изменений (для текущей директории заменить -A на .)
# Очень опасная команда, подумайте прежде чем пользоваться ею
git add -A

# Краткий список всех изменений
# //habr.com/post/420529/
git status -sb
# Самая важная команда (commit)
git commit -m"comment1" -m"comment2" (ключ -a коммитит только файлы из индекса)
```
:factory_worker: Картинки в комментариях можно посмотреть [здесь](//github.com/jzeferino/AllGithubEmojis).

#### Отмена индексирования файла до записи состояния (commit):
``` nix
# Список файлов можно перечислять через пробел
git reset folder/ReadMe.md
```

#### Извлечь случайно удалённый файл из репозитория:
``` nix
git checkout README.md
# Отмена изменений всех файлов после модификации
git checkout -- .
# Переименовать изменив только регистр
git mv -f Readme.md README.md
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
# (ключ -n применяет изменения к дереву проекта без индексации и создания коммита)
git cherry-pick <KEY>

# Обновляем ветку master (обязательно)
git push origin master
```

#### Получение последних изменений из ветки master (без связей, конфликты не разрешает)
``` nix
git checkout dev

git merge --squash master
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
# Создать чистую новую ветку
git checkout --orphan new_branch
```

#### Получение (pull) обновленной версии из репозитория:
``` nix
# Рисовать дерево репозитория
git log --oneline --graph --decorate --all
# Команда забирает изменения и проводит слияние ветки master (с активной веткой)
git pull origin master
```

#### Отмена слияния:
``` nix
git merge --abort
```

#### Отмена всех изменений, сделанных в дереве, до состояния, которое было при последнем комите в локальный репозиторий:
``` nix
# Очень опасная команда, подумайте прежде чем пользоваться ею
# чтобы файлы не загружались из локального репозитория - ключ --soft
git reset --hard ^HEAD
# Вернуть курсор к актуальному коммиту
git reset ORIG_HEAD
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

#### Заменить в текстовых файлах символы переноса строк LF на CRLF
``` shell
find -not -path './.git*' -type f | xargs unix2dos
# Просмотреть символы переноса строк в `i/N` удалённом и `w/N` локальном репозиториях 
git ls-files --eol
# Удалить все локальные изменения до последнего коммита
git reset --hard
```

#### Найти файлы с BOM
``` shell
find . -type f \( -name "*.md" -o -name "*.html" \) -print0\
 | xargs -0r awk "/^\xEF\xBB\xBF/ {print FILENAME}{nextfile}"
```
#### Удалить BOM из UTF-8 и добавить в строках символы CR перед LF

https://gist.github.com/c55f1538454755fdff71fba0d686e371

``` shell
bash pre-commit.sh
```

#
