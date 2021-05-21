[License]: //creativecommons.org/licenses/by-nc-sa/4.0/deed.ru

|Приложение|Редакция|Версия|Дата|Язык
|:--- |:--- |:--- |:---:|:--- 
|RouterOS <sup>[www]</sup>|Long-term|6.47.9|2021-02-05|en

[www]: //mikrotik.com/download "Site"

### Особенности написания скриптов

В регулярных выражениях Mikrotik применяется модифицированная [POSIX ERE].

[POSIX ERE]: //github.com/remram44/regex-cheatsheet/issues/21

---
# Содержание репозитория

- ***check-logs-60m.rsc*** - скрипт для отправки оповещений из Log в Discord (fetch не всегда срабатывает)  
	<details>
	<summary>:yellow_square: Раскрыть изображение</summary><br />
	
	![discord-logs-send](images/mikrotik_check.png?raw=true)
	
	</details>
- ***refresh-external-IP.rsc*** - скрипт сохраняет внешний IP в глобальную переменную `publicIP` (`/ip cloud`)
- ***send-mail-7d.rsc*** - скрипт отправляет на email уведомление о новых пакетах RouterOS (если они есть)
- ***ReadMe.md*** - описание и рекомендации по работе с браузером


# WinBox menu

[` `] Quick Set [:wrench:](https://youtu.be/fWfEJREoq3g?t=53m49s)  
[`w`] CAPsMAN  
[` `] Interfaces [` `- system]  
[`w`] Wireless [`w`- wireless]  
[` `] Bridge [:hammer_and_wrench:](https://youtu.be/fWfEJREoq3g?t=1h07m24s)  
[`p`] PPP (PPTP, SSTP, L2TP, OVPN, PPPoE) [`p`- ppp] [:hammer_and_wrench:](https://youtu.be/fWfEJREoq3g?t=1h04m49s)  
[` `] Switch  
[` `] Mesh  
[` `] IP  
~	[` `] ARP  
~	[` `] Accounting  
~	[` `] Addresses  
~	[` `] Cloud  
~	[`d`] DHCP Client [`d`- dhcp]  
~	[`d`] DHCP Relay  
~	[`d`] DHCP Server [:hammer_and_wrench:](https://youtu.be/fWfEJREoq3g?t=1h12m53s)  
~	[` `] DNS  
~	[` `] Firewall  
~	[`h`] Hotspot [`h`- hotspot]  
~	[`s`] IPsec [`s`- security]  
~	[` `] Kid Kontrol  
~	[` `] Neighbors  
~	[` `] Packing  
~	[` `] Pool  
~	[` `] Routes  
~	[` `] SMB  
~	[` `] SNMP  
~	[` `] Services  
~	[` `] Settings  
~	[` `] Socks  
~	[` `] TFTP  
~	[` `] Traffic Flow  
~	[` `] UPnP  
~	[` `] Web Proxy  
[`m`] MPLS [`m`- mpls]  
~	[`m`] MPLS  
~	[`m`] Traffic Eng  
~	[`m`] VPLS  
[`i`] IPv6 [`i`- ipv6]  
~	[`i`] Addresses  
~	[`d`] DHCP Client [`d`- dhcp]  
~	[`d`] DHCP Relay  
~	[`d`] DHCP Server  
~	[`i`] Firewall (NAT) [:axe:](https://youtu.be/fWfEJREoq3g?t=59m58s)[:hammer_and_wrench:](https://youtu.be/fWfEJREoq3g?t=1h13m45s)  
~	[`i`] ND  
~	[`i`] Neighbors  
~	[`i`] Pool  
~	[`i`] Routes  
~	[`i`] Settings  
[`r`] Routing [`r`- routing]  
~	[`r`] BFD  
~	[`r`] BGP  
~	[`r`] Filters  
~	[`r`] MME  
~	[`r`] OSPF  
~	[`i`] OSPFv3  
~	[`r`] Prefix List  
~	[`r`] RIP  
~	[`i`] RIPng  
[` `] System  
~	[` `] Auto Upgrade  
~	[` `] Certficates  
~	[` `] Clock  
~	[` `] Console  
~	[` `] Disks  
~	[` `] History  
~	[` `] Identity  
~	[` `] LEDs  
~	[` `] License  
~	[` `] Logging  
~	[` `] Note  
~	[` `] Packeges [:hammer:](https://youtu.be/fWfEJREoq3g?t=44m38s)  
~	[` `] Password  
~	[` `] Ports  
~	[` `] Reboot  
~	[` `] Reset Configuration [:wrench:](https://youtu.be/fWfEJREoq3g?t=1h39m56s)  
~	[` `] Resources  
~	[` `] Routerboard [:hammer_and_wrench:](https://youtu.be/fWfEJREoq3g?t=49m51s)  
~	[` `] SNTP Client  
~	[` `] Scheduler  
~	[` `] Scripts  
~	[` `] Shutdown  
~	[` `] Special Login  
~	[` `] Users  
~	[` `] Watchdog  
[` `] Queues [:wrench:](https://youtu.be/fWfEJREoq3g?t=1h32m46s)  
[` `] Files  
[` `] Log  
[` `] RADIUS  
[` `] Tools  
~	[` `] BTest Server  
~	[` `] Bandwidth Test  
~	[` `] Email  
~	[`a`] Flood Ping [`a`- advenced-tools]  
~	[` `] Graphing  
~	[`a`] IP Scan  
~	[` `] MAC Server  
~	[`a`] Netwatch  
~	[` `] Packet Sniffer  
~	[` `] Ping  
~	[`a`] Ping Speed  
~	[` `] Profile  
~	[` `] RoMON  
~	[`a`] SMS  
~	[` `] Telnet  
~	[` `] Torch  
~	[` `] Traceroute  
~	[` `] Traffic Generator  
~	[` `] Traffic Monitor  
~	[`a`] WoL  
[` `] New Terminal  
[` `] Dot 1X  
[` `] MetaROUTER  
[` `] Partition  
[` `] Make Supout.rif  
[` `] Manual ([Online](//help.mikrotik.com/docs/))  
[` `] New WinBox  
[` `] Exit  

#
