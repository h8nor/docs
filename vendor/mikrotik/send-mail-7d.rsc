# ######################### header ##########################

# Name Script: send-mail-7d
# Comment: script to mail if in Microtik may upgrade packages
# Policy Script: [X] read, [X] policy, [X] write, [X] test
# Name Schedule: send-mail-upgrage-packege
# Interval: 7d 00:00:00
# Policy Schedule: [X] read, [X] policy, [X] write, [X] test
# On-Event: /system script run send-mail-7d
# Tested by bopoh13@ya on: RouterOS v6.32.2, v6.44.5

# ##################### Script Settings #####################

/system package update check-for-updates;

:local EMAIL "$(name_text)\40yandex.com";
:local PASS "$(pass_text)";
:local LASTVER [/system package update get latest-version];

#############################################################

:if ( [/system package update get installed-version] != $LASTVER ) do={
  /log warning message="Can upgrade packages to $LASTVER";
  /tool e-mail send server=[:resolve smtp.yandex.ru] port=465 \
    start-tls=tls-only from="Mikrotik Package Update <$EMAIL>" \
    user=$EMAIL password="$PASS" to=$EMAIL \
    subject="Доспупна новая версия для RouterOS" \
    body=( "Для пакетов доступна новая версия - $LASTVER.\nСписок изменений в " \
    . "WinBox можно просмотреть по кнопке:\nSystem \96\BB Packages \96\BB " \
    . "Check For Updates\85\n\nили по ссылке https://mikrotik.com/download/" \
    . "changelogs/long-term-release-tree\n\n" . [/system resource get version] \
    . " " . [/system resource get build-time] );
}
