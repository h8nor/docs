## Описание специализированных команд для управления MikroTik через терминал

#### Полный сброс настроек маршрутизатора (отменить начальную конфигурацию):
``` ls
# https://wiki.mikrotik.com/wiki/Manual:Scripting
# Нажмите Y для подтверждения
/system reset-configuration
```

#### Перезагрузить маршрутизатор:
``` ls
# Нажмите Y для подтверждения
/system reboot
```

#### Проверка целостности кабеля WAN:
``` ls
# no-link, open:1 - пара оборвана или не подключена через 1 метр
# no-link, shorted:1 - короткое замыкание пары через 1 метр
# link-ok - всё в порядке
/interface ethernet cable-test ether1
# Нажмите Q для продолжения
```

#### Включение беспроводного интерфейса:
``` ls
/interface wireless enable 0
```

#### Вернуть родной MAC-адрес порта WAN (только через терминал):
``` ls
/interface ethernet reset-mac ether1
# поменять
/interface ethernet set ether1-wan mac-address="00:00:00:00:00:00"
```

#### ! Отключение порта (X - flag):
``` ls
/interface disable 0-NUMBER
```

#### Выключение оверлокинга (для RG951):
``` ls
/system routerboard settings set cpu-frequency=600MHz
```

#### Звуковое оповещение:
``` ls
# frequency - частота воспроизведения
/beep frequency=500 length=500ms
# Задержка
/delay 500ms
```

#### Сохранения конфигурации для RouterOS 6 в текстовом виде:
``` ls
/export compact
```

#### Резервное сохранение настроек (по умолчанию пароль от пользователя):
``` ls
# charset=UTF-8; endline=CRLF
# https://wiki.mikrotik.com/wiki/Manual:System/Backup
/system backup save name=tik9 dont-encrypt=yes
```

#### Резервное восстановление настроек:
``` ls
/system backup load name=tik9.backup
```

## Описание команд для настройки MikroTik через терминал

#### Присвоить имя маршрутизатору:
``` ls
/system identity set name=MikroTik
```

#### Создать администратора с полными правами:
``` ls
/user add name=root group=full password="0000"
# Удалить учётную запись admin
/user remove admin
# Требуется перезагрузка маршрутизатора
```

#### Установка часового пояса и NTP-сервера:
``` ls
/system clock set time-zone-name=manual
/system clock manual set time-zone=+04:00
# nslookup ru.pool.ntp.org
/system ntp client set enabled=yes primary-ntp=46.254.216.9 secondary-ntp=85.21.78.8
```

#### Отключить неиспользуемые службы для повышения безопасности:
``` ls
# https://wiki.mikrotik.com/wiki/Manual:Securing_Your_Router
/ip service
set telnet disabled=yes
set ssh address=192.168.1.0/28
set ftp disabled=yes
set api disabled=yes
set api-ssl disabled=yes
set www address=192.168.1.0/28
set www-ssl disabled=yes
set winbox address=192.168.1.0/28

```

#### Вывод глобальных переменных в терминал (очищаются при перезагрузке):
``` ls
/environment print 
```

#### Очистка кеша DNS-записей:
``` ls
/ip dns cache flush
```

### ! Настройка маскарадинга, чтобы чтобы внутренняя сеть не была видна с WAN порта:
### ? Нужен ли локальный диапазон адресов `src-address=`
``` ls
ip firewall nat add chain=srcnat action=masquerade \
  out-interface=[/interface find name~".*-wan\$"]
```

### Others (создание списка для firewall)
``` ls
# https://wiki.rtzra.ru/software/mikrotik/mikrotik-rfc6890
# https://forum.nag.ru/index.php?/topic/151593-blokirovka-po-domenu-regexp/
/system logging
action add name=logfile target=disk disk-file-name=port.knocking \
  disk-lines-per-file=2000 disk-stop-on-full=no
add action=logfile topics=firewall prefix=knock

/ip firewall filter
add chain=input protocol=icmp in-interface=[/interface find name~".*-wan\$"] \
  action=add-src-to-address-list address-list=winbox_remote place-before=0 \
  address-list-timeout=none-static log=yes \
  comment="#1 icmp port knocking; \r\n\
  #  packet-size=783 or 144; \r\n\
    local_machine=52; windows_7_or_10=60; "
```

#### Сбор данных json или скачивание файла
``` ls
# Импортировать certs-chain.pem (цепочка с конечным и исключениями)
/tool fetch http-header-field="content-type: application/json" \
  dst-path="fetch/geocoder.json" mode=https check-certificate=yes \
  url="https://nominatim.osm.org/status\?format=json"
```

#### Блокировка трафика по маске маков внутри брудкаст домена (коммутатора):
``` ls
/interface bridge filter
add action=drop chain=input comment="DE:AD:BE:AF:xx:xx" in-bridge=\
	bridge-local log=yes log-prefix=DEAD src-mac-address=\
	DE:AD:00:00:00:00/FF:FF:00:00:00:00
```

# 
