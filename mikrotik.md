## Описание специализированных команд для управления MikroTik через терминал

#### Полный сброс настроек маршрутизатора (отменить начальную конфигурацию):
``` ls
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

#### Вернуть родной MAC-адрес порта WAN:
``` ls
/interface ethernet reset-mac ether1
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

#### Сохранения конфигурации в текстовом виде:
``` ls
/export compact
```

#### Резервное сохранение настроек (по умолчанию пароль от пользователя):
``` ls
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
/ip service
set telnet disabled=yes
set www-ssl disabled=yes
set ssh disabled=yes
set ftp disabled=yes
set api disabled=yes
set api-ssl disabled=yes
set winbox disabled=no
set www disabled=no
```

#### Вывод глобальных переменных в терминал (очищаются при перезагрузке):
``` ls
/environment print 
```

#### Очистка кеша DNS-записей:
``` ls
/ip dns cache flush
```

#### (?) Блокировка входящего трафика на мост по маске маков:
``` ls
/interface bridge filter
add action=drop chain=input comment="DE:AD:BE:AF:xx:xx" in-bridge=\
	bridge-local log=yes log-prefix=DEAD src-mac-address=\
	DE:AD:00:00:00:00/FF:FF:00:00:00:00
```
