## Описание специализированных команд для управления MikroTik через терминал

#### Сброс настроек маршрутизатора (отменить начальную конфигурацию):
```bash
# Нажмите Y для подтверждения
/system reset-configuration
```

#### Перезагрузить маршрутизатор:
```bash
# Нажмите Y для подтверждения
/system reboot
```

#### Проверка целостности кабеля WAN:
```bash
# no-link, open:1 - пара оборвана или не подключена через 1 метр
# no-link, shorted:1 - короткое замыкание пары через 1 метр
# link-ok - всё впорядке
/interface ethernet cable-test ether1
# Нажмите Q для продолжения
```

#### Включение беспроводного интерфейса:
```bash
/interface wireless enable 0
```

#### Вернуть родной MAC-адрес порта WAN:
```bash
/interface ethernet reset-mac ether1
```

#### Выключение оверлокинга (для RG951):
```bash
/system routerboard settings set cpu-frequency=600MHz
```

#### Звуковое оповещение:
```bash
# frequency - частота воспроизведения
/beep frequency=500 length=500ms
# Задержка
/delay 500ms
```

#### Сохранения конфигурации в текстовом виде:
```bash
/export compact
```

#### Резервное сохранение настроек (по умолчанию пароль от пользователя):
```bash
/system backup save name=tik9 dont-encrypt=yes
```

#### Резервное восстановление настроек
```bash
/system backup load name=tik9.backup
```

## Описание команд для настройки MikroTik через терминал

#### Присвоить имя маршрутизатору:
```bash
/system identity set name=MikroTik
```

#### Создать администратора с полными правами:
```bash
/user add root group=full password="0000"
# Удалить учётную запись admin
/user remove admin
```

#### Установка часового пояса и NTP-сервера:
```bash
/system clock set time-zone-name=manual
/system clock manual set time-zone=+04:00
# nslookup ru.pool.ntp.org
/system ntp client set enabled=yes primary-ntp=46.254.216.9 secondary-ntp=85.21.78.8
# Включаем прослушку ntp запросов
/system ntp server set enabled=yes
```

#### Отключить неиспользуемые службы для повышения безопасности:
```bash
/ip service
set telnet disabled=yes
set www-ssl disabled=yes
set ftp disabled=yes
set api disabled=yes
set api-ssl disabled=yes
set https disabled=yes
set winbox disabled=no
set www disabled=no
```
