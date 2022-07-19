------------------------------------------------------------------------------------------------------------
                                        	-----Mane-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    #SingleInstance, Force
    #NoTrayIcon
    #NoEnv
    SetWorkingDir %A_ScriptDir%
    #MaxHotkeysPerInterval 99000000
    #HotkeyInterval 99000000
    #KeyHistory 0
	#IfWinActive ahk_exe ragemp_v.exe
;===================================================================================
        SplashTextoff
        ListLines Off
    Process, Priority, , A
    SetMouseDelay, -1
    SetDefaultMouseSpeed, 0
        reloadStatus = 0
        DayANS = 0
        WeekANS = 0
    FormatTime, CurrentDate,, ddMM
    IniRead, Week, Settings(S).ini, ANS, Week
    IniRead, CurrentDateT, Settings(S).ini, ANS, CurrentDateT
    if CurrentDateT=%CurrentDate%
    {
        IniRead, CurrentDateT, Settings(S).ini, ANS, CurrentDateT
        IniRead, DayANS, Settings(S).ini, ANS, DayANS
    }
    else
    {
    IniWrite, %CurrentDate%, Settings(S).ini, ANS, CurrentDateT
    IniWrite, %DayANS%, Settings(S).ini, ANS, DayANS
    IniRead, DayANS, Settings(S).ini, ANS, DayANS
    IniRead, CurrentDateT, Settings(S).ini, ANS, CurrentDateT
    }
    if Week=%A_YWeek%
    {
    IniRead, Week, Settings(S).ini, ANS, Week
    IniRead, WeekANS, Settings(S).ini, ANS, WeekANS
    }
    else
    {
    IniWrite, %A_YWeek%, Settings(S).ini, ANS, Week
    IniWrite, %WeekANS%, Settings(S).ini, ANS, WeekANS
    IniRead, WeekANS, Settings(S).ini, ANS, WeekANS
    IniRead, Week, Settings(S).ini, ANS, Week
    }
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Mane Ini Radial-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    IniRead, Radio1Sex, Settings.ini, Settings, Male
    IniRead, Radio2Sex, Settings.ini, Settings, Female
;===================================================================================
    IniRead, Radio1Com, Settings.ini, Settings, /killlog
    IniRead, Radio2Com, Settings.ini, Settings, /showcheats
    IniRead, Radio3Com, Settings.ini, Settings, /dl
    IniRead, Radio4Com, Settings.ini, Settings, /esp
    IniRead, Radio5Com, Settings.ini, Settings, /templeader
    IniRead, Radio6Com, Settings.ini, Settings, /chide
    IniRead, Radio7Com, Settings.ini, Settings, /zzdebug
    IniRead, Radio8Com, Settings.ini, Settings, /setdim
;===================================================================================
	IniRead, Radio1Rez, Settings.ini, Resolution, 1920x1080
	IniRead, Radio2Rez, Settings.ini, Resolution, 1680x1050
	IniRead, Radio3Rez, Settings.ini, Resolution, 1440x900
	IniRead, Radio4Rez, Settings.ini, Resolution, 1280x1024
	IniRead, Radio5Rez, Settings.ini, Resolution, 1280x720
	IniRead, Radio6Rez, Settings.ini, Resolution, 1024x768
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Mane Ini KEY-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    IniRead, key1, Settings.ini, KeySetup, KEY1
    IniRead, key2, Settings.ini, KeySetup, KEY2
    IniRead, key3, Settings.ini, KeySetup, KEY3
    IniRead, key4, Settings.ini, KeySetup, KEY4
    IniRead, key5, Settings.ini, KeySetup, KEY5
    IniRead, key6, Settings.ini, KeySetup, KEY6
    IniRead, key7, Settings.ini, KeySetup, KEY7
    IniRead, key8, Settings.ini, KeySetup, KEY8
    IniRead, key9, Settings.ini, KeySetup, KEY9
    IniRead, key10, Settings.ini, KeySetup, KEY10
    IniRead, key11, Settings.ini, KeySetup, KEY11
    IniRead, key12, Settings.ini, KeySetup, KEY12
    IniRead, key13, Settings.ini, KeySetup, KEY13
    IniRead, key14, Settings.ini, KeySetup, KEY14
    IniRead, key15, Settings.ini, KeySetup, KEY15
    IniRead, key16, Settings.ini, KeySetup, KEY16
    IniRead, key17, Settings.ini, KeySetup, KEY17
    IniRead, key18, Settings.ini, KeySetup, KEY18
    IniRead, key19, Settings.ini, KeySetup, KEY19
    IniRead, key20, Settings.ini, KeySetup, KEY20
    IniRead, qdis, Settings.ini, Discord, qdis
    IniRead, qtag, Settings.ini, Discord, qtag
    IniRead, gadis, Settings.ini, Discord, gadis
    IniRead, gatag, Settings.ini, Discord, gatag
    IniRead, zgadis, Settings.ini, Discord, zgadis
    IniRead, zgatag, Settings.ini, Discord, zgatag
        if qdis=ERROR
    {
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    -----IniWrite-----
------------------------------------------------------------------------------------------------------------  
;===================================================================================
    IniWrite, astlunt1k, Settings.ini, Discord, qdis
    IniWrite, 1337, Settings.ini, Discord, qtag
;===================================================================================
    IniWrite, rufiano, Settings.ini, Discord, gadis
    IniWrite, 2292, Settings.ini, Discord, gatag
;===================================================================================
    IniWrite, Katana, Settings.ini, Discord, zgadis
    IniWrite, 0003, Settings.ini, Discord, zgatag
;===================================================================================
	IniWrite, Tab, Settings.ini, KeySetup, KEY5
	IniWrite, !1, Settings.ini, KeySetup, KEY6
	IniWrite, !2, Settings.ini, KeySetup, KEY7
	IniWrite, ^5, Settings.ini, KeySetup, KEY9
	IniWrite, ^3, Settings.ini, KeySetup, KEY10
	IniWrite, ^2, Settings.ini, KeySetup, KEY11
	IniWrite, ^Q, Settings.ini, KeySetup, KEY12
	IniWrite, CapsLock, Settings.ini, KeySetup, KEY15
	IniWrite, ^1, Settings.ini, KeySetup, KEY17
;===================================================================================
    IniWrite, mjc, Settings.ini, Event, eVeh
    IniWrite, 800, Settings.ini, Event, eVeht
    IniWrite, 13 13, Settings.ini, Event, eVehc
    IniWrite, weapon_stone_hatchet, Settings.ini, Event, eWg
    IniWrite, 9999, Settings.ini, Event, eWgid
    IniWrite, 777, Settings.ini, Event, eWgam
        reload
;===================================================================================
    }
;===================================================================================
    IniRead, qX, Settings.ini, Coords, qX
    IniRead, qY, Settings.ini, Coords, qY
        if qX=ERROR
;===================================================================================
    {
;===================================================================================  
    IniWrite, 1820, Settings.ini, Coords, qX
    IniWrite, 1015, Settings.ini, Coords, qY
        reload
;===================================================================================
    }
    IniRead, cID, Settings.ini, Identifier, cID
;===================================================================================
    IniRead, eVeh, Settings.ini, Event, eVeh
    IniRead, eVeht, Settings.ini, Event, eVeht
    IniRead, eVehс, Settings.ini, Event, eVehс
    IniRead, eWg, Settings.ini, Event, eWg
    IniRead, eWgid, Settings.ini, Event, eWgid
    IniRead, eWgam, Settings.ini, Event, eWgam
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    -----Mane KEY-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Hotkey, %KEY1%, Off, UseErrorLevel
        Hotkey, %KEY1%, tp, On, UseErrorLevel
    Hotkey, %KEY2%, Off, UseErrorLevel
        Hotkey, %KEY2%, gh, On, UseErrorLevel
    Hotkey, %KEY3%, Off, UseErrorLevel
        Hotkey, %KEY3%, mtp, On, UseErrorLevel
    Hotkey, %KEY4%, Off, UseErrorLevel
        Hotkey, %KEY4%, Reports, On, UseErrorLevel
    Hotkey, %KEY5%, Off, UseErrorLevel
        Hotkey, %KEY5%, fastrep, On, UseErrorLevel
    Hotkey, %KEY6%, Off, UseErrorLevel
        Hotkey, %KEY6%, fastrep2, On, UseErrorLevel
    Hotkey, %KEY7%, Off, UseErrorLevel
        Hotkey, %KEY7%, fastrep3, On, UseErrorLevel
    Hotkey, %KEY8%, Off, UseErrorLevel
        Hotkey, %KEY8%, preset, On, UseErrorLevel
    Hotkey, %KEY9%, Off, UseErrorLevel
        Hotkey, %KEY9%, spevent, On, UseErrorLevel
    Hotkey, %KEY10%, Off, UseErrorLevel
        Hotkey, %KEY10%, delv, On, UseErrorLevel
    Hotkey, %KEY11%, Off, UseErrorLevel
        Hotkey, %KEY11%, gcar, On, UseErrorLevel
    Hotkey, %KEY12%, Off, UseErrorLevel
        Hotkey, %KEY12%, rep, On, UseErrorLevel
    Hotkey, %KEY13%, Off, UseErrorLevel
        Hotkey, %KEY13%, killplayer, On, UseErrorLevel
    Hotkey, %KEY14%, Off, UseErrorLevel
        Hotkey, %KEY14%, resc, On, UseErrorLevel
    Hotkey, %KEY15%, Off, UseErrorLevel
        Hotkey, %KEY15%, memo, On, UseErrorLevel
    Hotkey, %KEY16%, Off, UseErrorLevel
        Hotkey, %KEY16%, gm, On, UseErrorLevel
    Hotkey, %KEY17%, Off, UseErrorLevel
        Hotkey, %KEY17%, chide, On, UseErrorLevel
    Hotkey, %KEY18%, Off, UseErrorLevel
        Hotkey, %KEY18%, zzdebug, On, UseErrorLevel
    Hotkey, %KEY19%, Off, UseErrorLevel
        Hotkey, %KEY19%, esp, On, UseErrorLevel
    Hotkey, %KEY20%, Off, UseErrorLevel
        Hotkey, %KEY20%, dl, On, UseErrorLevel
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  		-----Mane GUI-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: -MaximizeBox
    Gui, 2: Show, w648 h583, 𝐀𝐝𝐦𝐢𝐧𝟒𝐢𝐤
    Gui, 2: Color, 1e2124
    Gui, 2: Font, c0xFFFFFF
        Gui, 2: Add, Picture, x340 y260 w250 h320, %A_ScriptDir%\img\back.png
            Gui, 2: Add, Text, x500 y14 w138 h23 +0x200 +Border +0x1, 𝐅𝐞𝐚𝐭𝐮𝐫𝐞𝐬
            Gui, 2: Add, Text, x350 y14 w138 h23 +0x200 +Border +0x1, 𝐏𝐞𝐫𝐬𝐨𝐧𝐚𝐥𝐢𝐳𝐚𝐭𝐢𝐨𝐧
            Gui, 2: Add, Text, x164 y14 w105 h23 +0x200 +Border +0x1, 𝐇𝐨𝐭 𝐊𝐞𝐲𝐬
            Gui, 2: Add, Text, x157 y555 w150 h23 +0x200 +Border +0x1, 𝐁𝐢𝐧𝐝𝐞𝐫 𝐯𝟐 𝐛𝐲 𝐚𝐬𝐭𝐥𝐮𝐧𝐭𝟏𝐤
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    		-----Левый верхний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Button, x10 y10 w113 h25 gInfo, 𝐈𝐧𝐟𝐨
    Gui, 2: Add, Button, x10 y40 w113 h25 gTeleports, 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭𝐬
    Gui, 2: Add, Button, x10 y70 w113 h25 gCusTp, 𝐂𝐮𝐬𝐭𝐨𝐦 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭𝐬
    Gui, 2: Add, Button, x10 y100 w113 h25 gCom, 𝐂𝐨𝐦𝐦𝐚𝐧𝐝
    Gui, 2: Add, Button, x10 y130 w113 h25 gCusCom, 𝐂𝐮𝐬𝐭𝐨𝐦 𝐂𝐨𝐦𝐦𝐚𝐧𝐝
    Gui, 2: Add, Button, x10 y160 w113 h25 gKikc, 𝐊𝐢𝐤𝐜/𝐌𝐮𝐭𝐞
    Gui, 2: Add, Button, x10 y190 w113 h25 gAjail, 𝐀𝐣𝐚𝐢𝐥/𝐖𝐚𝐫𝐧
    Gui, 2: Add, Button, x10 y220 w113 h25 gBan, 𝐁𝐚𝐧/𝐇𝐚𝐫𝐝𝐛𝐚𝐧
    Gui, 2: Add, Button, x10 y250 w113 h25 gCli1, 𝐂𝐥𝐢𝐜𝐡𝐞 𝟏
    Gui, 2: Add, Button, x10 y280 w113 h25 gCli2, 𝐂𝐥𝐢𝐜𝐡𝐞 𝟐
    Gui, 2: Add, Button, x10 y310 w113 h25 gCli3, 𝐂𝐥𝐢𝐜𝐡𝐞 𝟑
    Gui, 2: Add, Button, x10 y340 w113 h25 gCli4, 𝐂𝐥𝐢𝐜𝐡𝐞 𝟒
    Gui, 2: Add, Button, x10 y370 w113 h25 gMemoBlock, 𝐌𝐞𝐦𝐨
    Gui, 2: Add, Button, x10 y400 w113 h25 gSki, 𝐒𝐤𝐢𝐥𝐥𝐬
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    		-----Левый нижний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
	Gui, 2: Add, Button, x10 y490 w113 h27 gupturn, 𝐔𝐩𝐭𝐮𝐫𝐧
    Gui, 2: Add, Button, x10 y520 w113 h27 gSaveData, 𝐒𝐚𝐯𝐞
    Gui, 2: Add, Button, x68 y550 w55 h27 grelog, 𝐑𝐞𝐥𝐨𝐠
    Gui, 2: Add, Button, x10 y550 w55 h27 gexit, 𝐄𝐱𝐢𝐭
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  -----Правый верхний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Button, x350 y50 w138 h28 gdiscord, 𝐃𝐈𝐒𝐂𝐎𝐑𝐃
    Gui, 2: Add, Button, x500 y50 w138 h28 gВход, 𝐏𝐑𝐄𝐒𝐄𝐓
    Gui, 2: Add, Button, x350 y85 w138 h28 gdiscordga, 𝐃𝐈𝐒𝐂𝐎𝐑𝐃 𝐆𝐀/𝐙𝐆𝐀
    Gui, 2: Add, Button, x500 y85 w138 h28 gChange, 𝐂𝐇𝐀𝐍𝐆𝐄-𝐋𝐎𝐆
    Gui, 2: Add, Button, x350 y120 w25 h25 gid, 𝐈𝐃
    Gui, 2: Add, Button, x380 y120 w55 h25 gEvent, 𝐄𝐯𝐞𝐧𝐭
    Gui, 2: Add, Button, x565 y120 w73 h25 gcoord, 𝐂𝐨𝐮𝐧𝐭𝐞𝐫
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  -----Правый нижний-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Button, x593 y558 w50 h20 gdefolt, 𝐃𝐞𝐟𝐨𝐥𝐭
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	-----GUI HotKey-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Hotkey, x156 y50 w48 h21 vHot1, %KEY1%
    Gui, 2: Add, Hotkey, x156 y75 w48 h21 vHot2, %KEY2%
    Gui, 2: Add, Hotkey, x156 y100 w48 h21 vHot3, %KEY3%
    Gui, 2: Add, Hotkey, x156 y125 w48 h21 vHot4, %KEY4%
    Gui, 2: Add, Hotkey, x156 y150 w48 h21 vHot5, %KEY5%
    Gui, 2: Add, Hotkey, x156 y175 w48 h21 vHot6, %KEY6%
    Gui, 2: Add, Hotkey, x156 y200 w48 h21 vHot7, %KEY7%
    Gui, 2: Add, Hotkey, x156 y225 w48 h21 vHot8, %KEY8%
    Gui, 2: Add, Hotkey, x156 y250 w48 h21 vHot9, %KEY9%
    Gui, 2: Add, Hotkey, x156 y275 w48 h21 vHot10, %KEY10%
    Gui, 2: Add, Hotkey, x156 y300 w48 h21 vHot11, %KEY11%
    Gui, 2: Add, Hotkey, x156 y325 w48 h21 vHot12, %KEY12%
    Gui, 2: Add, Hotkey, x156 y350 w48 h21 vHot13, %KEY13%
    Gui, 2: Add, Hotkey, x156 y375 w48 h21 vHot14, %KEY14%
    Gui, 2: Add, Hotkey, x156 y400 w48 h21 vHot15, %KEY15%
    Gui, 2: Add, Hotkey, x156 y425 w48 h21 vHot16, %KEY16%
    Gui, 2: Add, Hotkey, x156 y450 w48 h21 vHot17, %KEY17%
    Gui, 2: Add, Hotkey, x156 y475 w48 h21 vHot18, %KEY18%
    Gui, 2: Add, Hotkey, x156 y500 w48 h21 vHot19, %KEY19%
    Gui, 2: Add, Hotkey, x156 y525 w48 h21 vHot20, %KEY20%
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	-----GUI Расшифровок-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Text, x213 y53 w120 h14 +0x200, 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭(/𝐭𝐩)
    Gui, 2: Add, Text, x213 y78 w120 h14 +0x200, 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭(/𝐠𝐡)
    Gui, 2: Add, Text, x213 y103 w120 h14 +0x200, 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭(/𝐦𝐭𝐩)
    Gui, 2: Add, Text, x213 y128 w120 h14 +0x200, 𝐎𝐩𝐞𝐧 𝐫𝐞𝐩𝐨𝐫𝐭
    Gui, 2: Add, Text, x213 y153 w120 h14 +0x200, 𝐅𝐚𝐬𝐭 𝐫𝐞𝐩𝐨𝐫𝐭 𝟏
    Gui, 2: Add, Text, x213 y178 w120 h14 +0x200, 𝐅𝐚𝐬𝐭 𝐫𝐞𝐩𝐨𝐫𝐭 𝟐
    Gui, 2: Add, Text, x213 y203 w120 h14 +0x200, 𝐅𝐚𝐬𝐭 𝐫𝐞𝐩𝐨𝐫𝐭 𝟑
    Gui, 2: Add, Text, x213 y228 w120 h14 +0x200, 𝐏𝐫𝐞𝐬𝐞𝐭 
    Gui, 2: Add, Text, x213 y253 w120 h14 +0x200, 𝐄𝐯𝐞𝐧 /𝐯𝐞𝐡
    Gui, 2: Add, Text, x213 y278 w120 h14 +0x200, 𝐃𝐞𝐥𝐯𝐞𝐡
    Gui, 2: Add, Text, x213 y303 w120 h14 +0x200, 𝐆𝐞𝐭𝐜𝐚𝐫
    Gui, 2: Add, Text, x213 y328 w120 h14 +0x200, +𝟏 𝐫𝐞𝐩𝐨𝐫𝐭(𝐂𝐨𝐮𝐧𝐭𝐞𝐫) 
    Gui, 2: Add, Text, x213 y353 w120 h14 +0x200, 𝐊𝐢𝐥𝐥 𝐩𝐥𝐚𝐲𝐞𝐫𝐬
    Gui, 2: Add, Text, x213 y378 w124 h14 +0x200, 𝐑𝐞𝐬𝐜𝐮𝐞
    Gui, 2: Add, Text, x213 y403 w90 h14 +0x200, 𝐌𝐞𝐦𝐨
    Gui, 2: Add, Text, x213 y428 w110 h14 +0x200, 𝐎𝐧/𝐎𝐟𝐟 /𝐠𝐦
    Gui, 2: Add, Text, x213 y453 w90 h14 +0x200,  𝐎𝐧/𝐎𝐟𝐟 /𝐜𝐡𝐢𝐝𝐞
    Gui, 2: Add, Text, x213 y478 w90 h14 +0x200, 𝐎𝐧/𝐎𝐟𝐟 /𝐳𝐳𝐝𝐞𝐛𝐮𝐠
    Gui, 2: Add, Text, x213 y503 w90 h14 +0x200, 𝐎𝐧/𝐎𝐟𝐟 /𝐞𝐬𝐩
    Gui, 2: Add, Text, x213 y528 w90 h14 +0x200, 𝐎𝐧/𝐎𝐟𝐟 /𝐝𝐥
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	    -----ВЫБОР ПОЛА-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    Gui, 2: Add, Text, x440 y121 w120 h23 +0x200 +Border +0x1, 𝐆𝐞𝐧𝐝𝐞𝐫
    Gui, 2: Add, Radio, x438 y147 w50 h23 Group vRadio1Sex Checked%Radio1Sex%, 𝐌𝐚𝐥𝐞
    Gui, 2: Add, Radio, x500 y147 w60 h23 vRadio2Sex Checked%Radio2Sex%, 𝐅𝐞𝐦𝐚𝐥𝐞

	Gui, 2: Add, Text, x440 y175 w120 h20 +0x200 +Border +0x1, 𝐑𝐞𝐬𝐨𝐥𝐮𝐭𝐢𝐨𝐧
		Gui, 2: Add, Radio, x340 y205 w80 h15 Group vRadio1Rez Checked%Radio1Rez%, 𝟏𝟗𝟐𝟎𝐱𝟏𝟎𝟖𝟎
		Gui, 2: Add, Radio, x450 y205 w80 h15 vRadio2Rez Checked%Radio2Rez%, 𝟏𝟔𝟖𝟎𝐱𝟏𝟎𝟓𝟎
		Gui, 2: Add, Radio, x560 y205 w80 h15 vRadio3Rez Checked%Radio3Rez%, 𝟏𝟒𝟒𝟎𝐱𝟗𝟎𝟎
		Gui, 2: Add, Radio, x340 y235 w80 h15 vRadio4Rez Checked%Radio4Rez%, 𝟏𝟐𝟖𝟎𝐱𝟏𝟎𝟐𝟒
		Gui, 2: Add, Radio, x450 y235 w80 h15 vRadio5Rez Checked%Radio5Rez%, 𝟏𝟐𝟖𝟎𝐱𝟕𝟐𝟎
		Gui, 2: Add, Radio, x560 y235 w80 h15 vRadio6Rez Checked%Radio6Rez%, 𝟏𝟎𝟐𝟒𝐱𝟕𝟔𝟖
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                    	  		-----Файлы-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
        IfnotExist, %A_ScriptDir%\img
    {
        FileCreateDir, %A_ScriptDir%\img
    }
        Filedelete, %A_ScriptDir%\img\back.png
    URLDownloadToFile, https://i.ibb.co/6bfKRWZ/back.png,%A_ScriptDir%\img\back.png
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	    -----Counter-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
        WinSet_Click_Through(I, T="254") {
    IfWinExist, % "ahk_id " I
    {
    If (T == "Off")
    {
        WinSet, AlwaysOnTop, Off, % "ahk_id " I
        WinSet, Transparent, Off, % "ahk_id " I
        WinSet, ExStyle, -0x20, % "ahk_id " I
    }
    Else
    {
        WinSet, AlwaysOnTop, On, % "ahk_id " I
        If(T < 0 || T > 254 || T == "On")
    T := 254
        WinSet, Transparent, % T, % "ahk_id " I
        WinSet, ExStyle, +0x20, % "ahk_id " I
    }
    }
    Else
        return 0
    }
    Gui, +LastFound +ToolWindow
        ID := WinExist()
    Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
        WinSet_Click_Through(ID, "On")
    GuiControl,, Un-Clickable
        CustomColor := "#00FF00"
    Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui, Color, cRed
    Gui, Font,, Intro
    Gui, Font, s10
    Gui, Font, q1
    Gui, Font, w400
    Gui, Add, Text, vMyText cYellow, XXX, YYYY
    Gui, Add, Text, vMyTotalR cGreen, XXXXXX, YYYYYY
    Gui, Color, 1c2126
        WinSet, TransColor, AAAAAA 155
    GoSub, UpdateCounter1
    Gui, Show, x%qX% y%qY% w100 h63, Overlay
            update1:
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                	-----ManeSaveData-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            SaveData:
        Gui, Submit, NoHide
	IniWrite, %Radio1Rez%, Settings.ini, Resolution, 1920x1080
	IniWrite, %Radio2Rez%, Settings.ini, Resolution, 1680x1050
	IniWrite, %Radio3Rez%, Settings.ini, Resolution, 1440x900
	IniWrite, %Radio4Rez%, Settings.ini, Resolution, 1280x1024
	IniWrite, %Radio5Rez%, Settings.ini, Resolution, 1280x720
	IniWrite, %Radio6Rez%, Settings.ini, Resolution, 1024x768
    IniWrite, %Radio1Sex%, Settings.ini, Settings, Male
    IniWrite, %Radio2Sex%, Settings.ini, Settings, Female
    IniWrite, %Hot1%, Settings.ini, KeySetup, KEY1
    IniWrite, %Hot2%, Settings.ini, KeySetup, KEY2
    IniWrite, %Hot3%, Settings.ini, KeySetup, KEY3
    IniWrite, %Hot4%, Settings.ini, KeySetup, KEY4
    IniWrite, %Hot5%, Settings.ini, KeySetup, KEY5
    IniWrite, %Hot6%, Settings.ini, KeySetup, KEY6
    IniWrite, %Hot7%, Settings.ini, KeySetup, KEY7
    IniWrite, %Hot8%, Settings.ini, KeySetup, KEY8
    IniWrite, %Hot9%, Settings.ini, KeySetup, KEY9
    IniWrite, %Hot10%, Settings.ini, KeySetup, KEY10
    IniWrite, %Hot11%, Settings.ini, KeySetup, KEY11
    IniWrite, %Hot12%, Settings.ini, KeySetup, KEY12
    IniWrite, %Hot13%, Settings.ini, KeySetup, KEY13
    IniWrite, %Hot14%, Settings.ini, KeySetup, KEY14
    IniWrite, %Hot15%, Settings.ini, KeySetup, KEY15
    IniWrite, %Hot16%, Settings.ini, KeySetup, KEY16
    IniWrite, %Hot17%, Settings.ini, KeySetup, KEY17
    IniWrite, %Hot18%, Settings.ini, KeySetup, KEY18
    IniWrite, %Hot19%, Settings.ini, KeySetup, KEY19
    IniWrite, %Hot20%, Settings.ini, KeySetup, KEY20
    IniWrite, %qX%, Settings.ini, Coords, qX
    IniWrite, %qY%, Settings.ini, Coords, qY
    Reload
        return
;===================================================================================
            SaveData1:
    Gui, 3: Submit, NoHide
        IniWrite, %qX%, Settings.ini, Coords, qX
        IniWrite, %qY%, Settings.ini, Coords, qY
    Reload
        return
;===================================================================================
            SaveData2:
    Gui, 4: Submit, NoHide
        IniWrite, %qdis%, Settings.ini, Discord, qdis
        IniWrite, %qtag%, Settings.ini, Discord, qtag
    Reload
        return
;===================================================================================
            SaveData3:
    Gui, 5: Submit, NoHide
        IniWrite, %gadis%, Settings.ini, Discord, gadis
        IniWrite, %gatag%, Settings.ini, Discord, gatag
        IniWrite, %zgadis%, Settings.ini, Discord, zgadis
        IniWrite, %zgatag%, Settings.ini, Discord, zgatag
    Reload
        return
;===================================================================================
            SaveData4:
    Gui, 6: Submit, NoHide
        IniWrite, %Radio1Com%, Settings.ini, Settings, /killlog
        IniWrite, %Radio2Com%, Settings.ini, Settings, /showcheats
        IniWrite, %Radio3Com%, Settings.ini, Settings, /dl
        IniWrite, %Radio4Com%, Settings.ini, Settings, /esp
        IniWrite, %Radio5Com%, Settings.ini, Settings, /templeader
        IniWrite, %Radio6Com%, Settings.ini, Settings, /chide
        IniWrite, %Radio7Com%, Settings.ini, Settings, /zzdebug
        IniWrite, %Radio8Com%, Settings.ini, Settings, /setdim
    Reload
        return
;===================================================================================
            SaveData5:
    Gui, 7: Submit, NoHide
        IniWrite, %cID%, Settings.ini, Identifier, cID
    Reload
        return
;===================================================================================
            SaveData6:
    Gui, 8: Submit, NoHide
        IniWrite, %eVeh%, Settings.ini, Event, eVeh
        IniWrite, %eVeht%, Settings.ini, Event, eVeht
        IniWrite, %eVehс%, Settings.ini, Event, eVehс
        IniWrite, %eWg%, Settings.ini, Event, eWg
        IniWrite, %eWgid%, Settings.ini, Event, eWgid
        IniWrite, %eWgam%, Settings.ini, Event, eWgam
    Reload
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----GUICrash-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            Guishka3:
    Gui 3: Destroy
        return
;===================================================================================
            Guishka4:
    Gui 4: Destroy
        return
;===================================================================================
            Guishka5:
    Gui 5: Destroy
        return
;===================================================================================
            Guishka6:
    Gui 6: Destroy
        return
;===================================================================================
            Guishka7:
    Gui 7: Destroy
        return
;===================================================================================
            Guishka8:
    Gui 8: Destroy
        return
;===================================================================================
            Guishka9:
    Gui 9: Destroy
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----SaveDataGUI-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            coord:
    Gui, 3: -MaximizeBox
    Gui, 3: Show, w180 h60, 𝐗/𝐘
    Gui, 3: Color, 838d96
    Gui, 3: Font, c0x000000
            Gui, 3: Add, Edit, x10 y10 w50 h21 vqX, %qX%
            Gui, 3: Add, Edit, x70 y10 w50 h21 vqY, %qY%
        Gui, 3: Add, Text, x5 y33 w120 h23 +0x200 +0x1, 𝐂𝐨𝐨𝐫𝐝𝐢𝐧𝐚𝐭𝐞 𝐗 𝐚𝐧𝐝 𝐘
    Gui, 3: Add, Button, x125 y10 w50 h20 gSaveData1, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 3: Add, Button, x125 y33 w50 h20 gGuishka3, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
        return
;===================================================================================
            discord:
    Gui, 4: -MaximizeBox
    Gui, 4: Show, w210 h60, 𝐘𝐨𝐮
    Gui, 4: Color, 838d96
    Gui, 4: Font, c0x000000
            Gui, 4: Add, Edit, x10 y10 w90 h21 vqdis, %qdis%
            Gui, 4: Add, Edit, x105 y10 w45 h21 vqtag, %qtag%
        Gui, 4: Add, Text, x5 y33 w150 h23 +0x200 +0x1, NickName#Tag
    Gui, 4: Add, Button, x155 y10 w50 h20 gSaveData2, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 4: Add, Button, x155 y33 w50 h20 gGuishka4, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
        return
;===================================================================================
            discordga:
    Gui, 5: -MaximizeBox
    Gui, 5: Show, w210 h60, 𝐆𝐀/𝐙𝐆𝐀
    Gui, 5: Color, 838d96
    Gui, 5: Font, c0x000000
            Gui, 5: Add, Edit, x10 y10 w90 h21 vgadis, %gadis%
            Gui, 5: Add, Edit, x105 y10 w45 h21 vgatag, %gatag%
            Gui, 5: Add, Edit, x10 y33 w90 h21 vzgadis, %zgadis%
            Gui, 5: Add, Edit, x105 y33 w45 h21 vzgatag, %zgatag%
    Gui, 5: Add, Button, x155 y10 w50 h20 gSaveData3, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 5: Add, Button, x155 y33 w50 h20 gGuishka5, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
        return
;===================================================================================
			Вход:
	Gui, 6: -MaximizeBox
	Gui, 6: Show, w200 h132, 𝐏𝐫𝐞𝐬𝐞𝐭
	Gui, 6: Color, 838d96
	Gui, 6: Font, c0x000000
        Gui, 6: Add, CheckBox, x10 y10 w90 h23 vRadio1Com Checked%Radio1Com%, /𝐤𝐢𝐥𝐥𝐥𝐨𝐠
        Gui, 6: Add, CheckBox, x10 y35 w90 h23 vRadio2Com Checked%Radio2Com%, /𝐬𝐡𝐨𝐰𝐜𝐡𝐞𝐚𝐭𝐬
        Gui, 6: Add, CheckBox, x10 y60 w50 h23 vRadio3Com Checked%Radio3Com%, /𝐝𝐥
        Gui, 6: Add, CheckBox, x10 y85 w50 h23 vRadio4Com Checked%Radio4Com%, /𝐞𝐬𝐩
        Gui, 6: Add, CheckBox, x98 y10 w100 h23 vRadio5Com Checked%Radio5Com%, /𝐭𝐞𝐦𝐩𝐥𝐞𝐚𝐝𝐞𝐫 𝟒
        Gui, 6: Add, CheckBox, x98 y35 w90 h23 vRadio6Com Checked%Radio6Com%, /𝐜𝐡𝐢𝐝𝐞
        Gui, 6: Add, CheckBox, x98 y60 w90 h23 vRadio7Com Checked%Radio7Com%, /𝐳𝐳𝐝𝐞𝐛𝐮𝐠
        Gui, 6: Add, CheckBox, x98 y85 w90 h23 vRadio8Com Checked%Radio8Com%, /𝐬𝐞𝐭𝐝𝐢𝐦 𝟎    
    Gui, 6: Add, Button, x4 y107 w95 h20 gSaveData4, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 6: Add, Button, x101 y107 w95 h20 gGuishka6, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
		return
;===================================================================================
			id:
	Gui, 7: -MaximizeBox
	Gui, 7: Show, w180 h60, 𝐈𝐃
	Gui, 7: Color, 838d96
	Gui, 7: Font, c0x000000
        Gui, 7: Add, Edit, x10 y10 w80 h23 vcID, %cID%    
        Gui, 7: Add, Text, x5 y33 w58 h23 +0x200 +0x1, Динамик
    Gui, 7: Add, Button, x100 y12 w70 h20 gSaveData5, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 7: Add, Button, x100 y35 w70 h20 gGuishka7, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
		return
;===================================================================================
			Event:
	Gui, 8: -MaximizeBox
	Gui, 8: Show, w215 h150, 𝐄𝐯𝐞𝐧𝐭
	Gui, 8: Color, 838d96
	Gui, 8: Font, c0x000000
        Gui, 8: Add, Edit, x5 y5 w100 h23 veVeh, %eVeh%
        Gui, 8: Add, Text, x3 y25 w105 h23 +0x200 +0x1, Название авто
        Gui, 8: Add, Edit, x5 y45 w100 h23 veVeht, %eVeht%
        Gui, 8: Add, Text, x3 y65 w105 h23 +0x200 +0x1, Задержка /veh
        Gui, 8: Add, Edit, x5 y85 w100 h23 veVehс, %eVehс%
        Gui, 8: Add, Text, x3 y105 w105 h23 +0x200 +0x1, Цвет авто xx xx

        Gui, 8: Add, Edit, x110 y5 w100 h23 veWg, %eWg%
        Gui, 8: Add, Text, x108 y25 w105 h23 +0x200 +0x1, Название оружия
        Gui, 8: Add, Edit, x110 y45 w100 h23 veWgid, %eWgid%
        Gui, 8: Add, Text, x105 y65 w105 h23 +0x200 +0x1, ID игрока
        Gui, 8: Add, Edit, x110 y85 w100 h23 veWgam, %eWgam%
        Gui, 8: Add, Text, x108 y105 w100 h23 +0x200 +0x1, Кол-во патрон
    Gui, 8: Add, Button, x5 y126 w97 h20 gSaveData6, 𝐀𝐜𝐜𝐞𝐩𝐭
    Gui, 8: Add, Button, x110 y126 w97 h20 gGuishka8, 𝐃𝐞𝐜𝐥𝐢𝐧𝐞
		return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----HotKey-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            !A::
        SendMessage, 0x50,, 0x4190419,, A
    SendInput, Здравствуйте, иду.
        Return
;===================================================================================
            !S::
        SendMessage, 0x50,, 0x4190419,, A
    SendInput, Приятной игры на Majestic RP.
        Return
;===================================================================================
            !d:: 
        SendMessage, 0x50,, 0x4190419,, A
    SendInput, Сейчас помогу, ожидайте.
        Return
;===================================================================================
            ^F9::reload
;===================================================================================
            ^F10::Exitapp
;===================================================================================
           upturn:
    Run, https://docs.google.com/spreadsheets/d/1JEHJC5FDaC_CH68hZoG7Wma_7qolnCtq7qGJvbKXOF4/edit?usp=sharing
        Sleep, 100
    Run, https://forms.gle/ioLBfPPVG5xZQgGEA
        return
;===================================================================================
            dl:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /dl{Enter}
        return
;===================================================================================
            tp:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /tp{space}
        return
;===================================================================================
            inv:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /inv{Enter}
        return
;===================================================================================
           esp:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /esp{Enter}
        return
;===================================================================================
            delv:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /delveh{Enter}
        return
;===================================================================================
            killplayer:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /hp  0{left 2}
        return
;===================================================================================
            gcar:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /getcar{Space}
        return
;===================================================================================
            gm:
        BlockInput, SendAndMouse
    SendInput, {sc14}
        Sleep 50
    SendInput, /gm{Enter}
        return
;===================================================================================
            resc:
    SendInput, {sc14}
        Sleep 50
    SendInput, /rescue{Space}
        return
;===================================================================================
            gh:
        SendInput, {sc14}
    Sleep 50
        SendInput, /gh{Space}
    return
;===================================================================================
            chide:
        SendInput, {sc14}
    Sleep 50
        SendInput, /chide{Enter}
    return
;===================================================================================
            zzdebug:
    SendInput, {sc14}
        Sleep 50
    SendInput, /zzdebug{Enter}
        return
;===================================================================================
            mtp:
    SendInput, {F5}
        Sleep 180
    SendInput, {sc14}
        Sleep 50
    SendInput, /mtp{Enter}
        Sleep 180
    SendInput, {F5}
        return
;===================================================================================
            rep:
        counter++
            GoSub, UpdateCounter
        Clipboard :=
    return
;===================================================================================
            Reports:
    SendInput, {F8}
        return
;===================================================================================
			relog:
		ButtonПерезапуститьскрипт:
	Reload
	return
;===================================================================================
			exit:
		ButtonЗакрытьскрипт:
	ExitApp
	return
;===================================================================================
            preset:
        SendInput, {T}
    Sleep 300
       SendInput, /gm{Enter}
    Sleep 300
        if (Radio4Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /esp{Enter}
    Sleep 300
    }
        if (Radio6Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /chide{Enter}
    Sleep 300
    }
        if (Radio2Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /showcheats{Enter}
    Sleep 300
    }
        if (Radio1Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /killlog{Enter}
    Sleep 300
    }
        if (Radio3Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /dl{Enter}
    Sleep 300
    }
        if (Radio7Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /zzdebug{Enter}
    Sleep 300
    }
        if (Radio5Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /templeader 4{Enter}
    }
        if (Radio8Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /setdim %cID% 0{Enter}
    }
        if else
    {
    MsgBox, 16, Ошибка, Вы так и не выбрали присет!
    }
        return
;===================================================================================
			defolt:
    Filedelete, %A_ScriptDir%\Settings.ini
        Sleep 100
    Reload
        Sleep 100
    MsgBox, 64, Уведомление, Ваш биндер вернул заводские настройки.`n`nПо дополнениям писать: astlunt1k#1337.`n
		return
;===================================================================================
            fastrep:
        SendInput, {F8}
    Sleep 180
        if (Radio1Rez==1)
    {
        MouseMove, 650, 200
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    Sleep 300
    }
        if (Radio2Rez==1)
    {
    Sleep 180
        MouseMove, 630, 200
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio3Rez==1)
    {
        MouseMove, 535, 170
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio4Rez==1)
    {
    Sleep 180
        MouseMove, 520, 180
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio5Rez==1)
    {
        MouseMove, 470, 140
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio6Rez==1)
    {
        MouseMove, 410, 130
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if else
    {
    MsgBox, 16, Ошибка, ты ещё не выбрал "Resolution".
    }
        return
;===================================================================================
            fastrep2:
        SendInput, {F8}
    Sleep 180
        if (Radio1Rez==1)
    {
        MouseMove, 650, 350
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio2Rez==1)
    {
    Sleep 180
        MouseMove, 630, 350
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio3Rez==1)
    {
        MouseMove, 535, 320
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio4Rez==1)
    {
    Sleep 180
        MouseMove, 520, 330
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio5Rez==1)
    {
        MouseMove, 470, 290
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio6Rez==1)
    {
        MouseMove, 410, 280
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if else
    {
    MsgBox, 16, Ошибка, ты ещё не выбрал "Resolution".
    }
        return
;===================================================================================
            fastrep3:
        SendInput, {F8}
    Sleep 180
        if (Radio1Rez==1)
    {
        MouseMove, 650, 500
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio2Rez==1)
    {
    Sleep 180
        MouseMove, 630, 500
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio3Rez==1)
    {
        MouseMove, 535, 470
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio4Rez==1)
    {
    Sleep 180
        MouseMove, 520, 480
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    Sleep 300
    }
        if (Radio5Rez==1)
    {
        MouseMove, 470, 440
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if (Radio6Rez==1)
    {
        MouseMove, 410, 430
    Sleep 45
        MouseClick, left
    Sleep 45
        MouseClick, left
    }
        if else
    {
    MsgBox, 16, Ошибка, ты ещё не выбрал "Resolution".
    }
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Спавнер-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    #SingleInstance,Force
    #MaxThreadsPerHotkey 2
;===================================================================================
    var = 0
        return
;===================================================================================
            spevent:
    var := !var
        Loop
    {
    if !var
        break
    SendInput,{T}
        Sleep 30
    SendInput,/veh %eVeh% %eVehс%
        Sleep 30
    SendInput,{Enter}
        Sleep 200
    SendInput,{d down}
        Sleep 200
    SendInput,{d up}
        Sleep %eVeht%
    }
    sleep, 100
        reload
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Счётчик-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            Enter::
    labelgo:
        SendInput, {Enter}
    Sleep 250
        MouseGetPos, 1845, 335
            PixelGetColor, color, 1845, 335, alt
            Var1 = %color%
    if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
    {
    counter++
        GoSub, UpdateCounter
    Clipboard :=
    }
        return
;===================================================================================
            NumpadEnter::
    labelgo2:
        SendInput, {NumpadEnter}
    Sleep 250
        MouseGetPos, 1845, 335
            PixelGetColor, color, 1845, 335, alt
            Var1 = %color%
    if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
    {
    counter++
        GoSub, UpdateCounter
    Clipboard :=
    }
        return
;===================================================================================
            UpdateCounter1:
        IniWrite, %DayANS%, Settings(S).ini, ANS, DayANS
    IniRead, DayANS, Settings(S).ini, ANS, DayANS
        IniWrite, %WeekANS%, Settings(S).ini, ANS, WeekANS
    IniRead, WeekANS, Settings(S).ini, ANS, WeekANS
            GuiControl,, MyText, День: %DayANS%
            GuiControl,, MyTotalR, Неделя: %WeekANS%
        return
;===================================================================================
            UpdateCounter:
    DayANS+=1
    WeekANS+=1
        IniWrite, %DayANS%, Settings(S).ini, ANS, DayANS
    IniRead, DayANS, Settings(S).ini, ANS, DayANS
        IniWrite, %WeekANS%, Settings(S).ini, ANS, WeekANS
    IniRead, WeekANS, Settings(S).ini, ANS, WeekANS
            GuiControl,, MyText, День: %DayANS%
            GuiControl,, MyTotalR, Неделя: %WeekANS%
    return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----PRESET-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
           :?:.вход::
        SendInput, /gm{Enter}
    Sleep 300
        if (Radio4Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /esp{Enter}
    Sleep 700
    }
        if (Radio6Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /chide{Enter}
    Sleep 700
    }
        if (Radio2Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /showcheats{Enter}
    Sleep 700
    }
        if (Radio1Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /killlog{Enter}
    Sleep 700
    }
        if (Radio3Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /dl{Enter}
    Sleep 700
    }
        if (Radio7Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /zzdebug{Enter}
    Sleep 700
    }
        if (Radio5Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /templeader 4{Enter}
    Sleep 700
    }
        if (Radio8Com==1)
    {
        SendInput, {T}
    Sleep 300
        SendInput, /setdim %cID% 0{Enter}
    }
        if else
    {
    MsgBox, 16, Ошибка, Ну и зачем ты это тыкаешь, если ещё не выставил "𝐏𝐫𝐞𝐬𝐞𝐭".
    }
        return
------------------------------------------------------------------------------------------------------------
                                        -----Телепорты-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    :?:.пд::/ctp 429 -980 30.50
    :?:.бол::/ctp 287.70 -578.35 50
    :?:.сд::/ctp -434.87 6024.54 31.50
    :?:.фз::/ctp -2336 3257 32.50
    :?:.гов::/ctp -534.70 -222.07 37.60
    :?:.вн::/ctp -593 -929 24
    :?:.фиб::/ctp 2527 -377 93
;===================================================================================
    :?:.балас::/ctp -70.06 -1824.64 26.94
    :?:.ваг::/ctp 967 -1817 31
    :?:.фэм::/ctp -204.29 -1513.69 31.60
    :?:.бладс::/ctp 496 -1330 29.40
    :?:.мара::/ctp 1437.61 -1509.64 62.40
;===================================================================================
    :?:.лкн::/ctp 1385 1154 114.40
    :?:.рм::/ctp -1526 858 181
    :?:.як::/ctp -1556.36 113.07 57
    :?:.мекс::/ctp 381.03 23.12 91.40
    :?:.ир::/ctp -3019.848 101.262 11.629
;===================================================================================
    :?:.лост::/ctp 969.84 -128.40 74.40
    :?:.аод::/ctp 1995.99 3062.44 47.06
;===================================================================================
    :?:.воркт::/ctp 905.873 -182.840 74.113
    :?:.воркм::/ctp -432.708 -1705.689 19.018
    :?:.воркд1::/ctp 1185.185 -3250.850 6.029
    :?:.воркд2::/ctp 74.213 6341.500 31.226
    :?:.воркп::/ctp -220.035 -907.442 31.220
    :?:.ворка::/ctp 457.760 -663.879 27.703
    :?:.ворки::/ctp 1185.984 2691.326 37.798
    :?:.воркф::/ctp 1185.984 2691.326 37.798
;===================================================================================
    :?:.хум::/ctp 3569.54 3789.48 30
    :?:.мейз::/ctp -75 -818 326
    :?:.каз::/ctp 923.161 47.937 81.106
    :?:.аш::/ctp -620 -2264 6
    :?:.гг::/ctp -257 -2023 30
    :?:.бургер::/ctp -1171.31 -890.20 13.90
    :?:.багама::/ctp -1391.30 -585.35 30
    :?:.кайо::/ctp 4488.58 -4493.52 4
    :?:.авиа::/ctp 3035.21 -4688.55 15
    :?:.мол::/ctp 61.67 -1751.80 47
    :?:.трас::/ctp 7400 3946 1124
    :?:.аук::/ctp -833 -699.50 27
    :?:.бокс::/ctp 8.56 -1658.55 28.71
    :?:.бар::/ctp -305.09 6259.59 30.92
    :?:.бк::/ctp 500.44 109.79 96.49
    :?:.ванила::/ctp 131.33 -1302.93 29.23
    :?:.починка::/ctp -1430.45 -450.5 35.91
    :?:.лск4::/ctp 1175.47 2671.33 37.85
    :?:.порт::/ctp 417 -2501 13.46
    :?:.стр::/ctp 1304 1453 98.87
    :?:.лес::/ctp -321 6093 31.14
    :?:.бмара::/ctp 1302 -1646 51.04
    :?:.самол::/ctp 1473 2730 37.38
    :?:.ключ::/ctp -51.316 -1077.890 29.904
    :?:.особняк::/ctp 5011.070 -5750.629 32.853
;===================================================================================
    :?:.бдим::/setdim 3{left 2}
    :?:.кдим::/setdim 555{left 4}
;===================================================================================
    :?:.инт1::/ctp -146.93 -595.68 166.43
    :?:.инт2::/ctp 264.47 -1353.44 23.67
    :?:.инт3::/ctp 2573.90 -260 -145.5
    :?:.инт4::/ctp 2521 -234 -71
    :?:.инт5::/ctp 2540 -269 -59
    :?:.инт6::/ctp 303 -995 -94
    :?:.инт7::/ctp 227 -986 -99
    :?:.инт8::/ctp -3000 70 12
    :?:.инт9::/ctp 2532.13 -277.68 -65.33
    :?:.инт10::/ctp 2479.61 -272.62 -58.64
    :?:.инт11::/ctp 2521.91 -269.01 -39.73
    :?:.инт12::/ctp 2491.74 -246.01 -55.73
    :?:.инт13::/ctp 2154.34 2916.8 -84.9
    :?:.инт14::/ctp -1506.631 -2995.622 -82.207
;===================================================================================
    :?:.складпд::/ctp 483.140 -996.473 30.690
    :?:.складемс::/ctp 309.812 -565.172 43.284
    :?:.складсд::/ctp -434.720 6007.525 27.986
    :?:.складфз::/ctp -2352.895 3256.369 92.904
    :?:.складгов::/ctp -546.298 -192.803 32.882
    :?:.складвн::/ctp -594.387 -929.585 32.525
    :?:.складфиб::/ctp 2516.250 -328.534 101.893
    :?:.складкайо::/ctp 4996.338 -5739.071 79.11

    :?:.складяк::/ctp -1511.617 110.914 73.77
    :?:.складир::/ctp -2956.760 42.077 7.964
    :?:.складрм::/ctp -1512.286 841.529 177.000
    :?:.складмекс::/ctp 411.211 5.318 84.922
    :?:.складлкн::/ctp 1397.579 1141.242 107.02

    :?:.складбалас::/ctp -75.705 -1811.187 26.942
    :?:.складмара::/ctp 1445.227 -1486.904 66.535
    :?:.складваг::/ctp 975.165 -1858.049 31.274
    :?:.складбладс::/ctp 515.885 -1341.602 29.373
    :?:.складфэм::/ctp -237.851 -1508.816 32.935
;===================================================================================
    :?:.сш::/ctp 1888.585 3625.920 34.193
    :?:.палето::/ctp -229.238 6108.973 75.349
    :?:.ричман::/ctp -1927.219 358.418 103.399
    :?:.рокфорд::/ctp -78.035 995.733 247.247
    :?:.миррор::/ctp 1278.025 -531.254 83.166
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Бизы-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            :?:.порт1::
    SendInput, /ctp 490.2 -3153.8 6.2
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.порт2::
    SendInput, /ctp 429.3 -2500.9 14.2
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.мара1::
    SendInput, /ctp 1728.7 -1626.4 112.5
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.мара2::
    SendInput, /ctp 1330.4 -1632.2 52.3
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.стройка1::
    SendInput, /ctp 1039.1 2406.7 53.9
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.стройка2::
    SendInput, /ctp 1291.4 1467.7 99.3
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.свал1::
    SendInput, /ctp 2405.8 3103.3 48.3
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.свал2::
    SendInput, /ctp 2674.8 3248.5 55.4
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.лес1::
    SendInput, /ctp -446.1 5347.7 82.3
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
            :?:.лес2::
    SendInput, /ctp -849.8 5413.8 34.9
        Sleep 200
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %cID% 222
        Sleep 700
    SendInput, {Enter}
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Команды-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:/rtn::/resettempname
:?:.кет::/resettempname
:?:.пь::/gm
:?:.гтифт::/unban
:?:/tf::/tempfamily
:?:.еа::/tempfamily
:?:/sm::/setmaterials
:?:.ыь::/setmaterials
:?:/tn::/tempname
:?:.ет::/tempname
:?:.еуьзтфьу::.еуьзтфьу
:?:.яяв::/zzdebug
:?:/zzd::/zzdebug
:?:/amph::/addamphitheater
:?:.фьзр::/addamphitheater
:?:/ramph::/removeamphitheater
:?:.кфьзр::/removeamphitheater
:?:/gzone::/togglegreenzone
:?:.пящту::/togglegreenzone
:?:/mcheck::/mutecheck
:?:.ьсрусл::/mutecheck
:?:.ьгеусрусл::/mutecheck
:?:.гтофшд::/unjail
:?:.цфкт::/warn
:?:/ld::/lastdriver
:?:.дв::/lastdriver
:?:/af::/ainfect
:?:.фа::/ainfect
:?:/sk::/skick
:?:.ыл::/skick
:?:/k::/kick
:?:.л::/kick
:?:/ai::/auninvite
:?:аинв::/auninvite
:?:.фш::/auninvite
:?:.аи::/fb
:?:.гтьгеу::/unmute
:?:.пуезшт::/getpin
:?:.пшв::/gid
:?:.фвьшты::/admins
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon
:?:.умутещаа::/eventoff
:?:.пц::/gw
:?:.мур::/veh
:?:.ашчсфк::/fixcar
:?:.уьздуфвук::/templeader
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:.езр::/tph
:?:.пез::/gtp
:?:/gc::/getcar
:?:.пс::/getcar
:?:.фв::/admins
:?:.ум::Приветствую.Такова задумка разработчика.
:?:/ad::/admins
:?:.з::/players
:?:/p::/players
:?:.здфнукы::/players
:?:.рес::/rescue
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff {Enter} {F5}
:?:.фыьы::/asms
:?:.ку::Приветствую, 
:?:.ф::/a
:?:/sp::/spec
:?:.ыз::/spec
:?:/so::/specoff {Enter} {F5}
:?:.ыщ::/specoff {Enter} {F5}
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.пиздец:: Уважаемая администрация, просим зайти вас на сервер, в данный момент нам очень нужна ваша помощь.
:?:.штм::/inv
:?:.шв::/id
:?:.рз::/hp
:?:.од::/ajail
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.вд::/dl
:?:.уыз::/esp
:?:.пуесфк::/getcar
:?:.ифт::/ban
:?:.вудмур::/delveh
:?:.ьез::/mtp
:?:.мур::/veh
:?:.фмур::/aveh
:?:.фдщсл::/alock
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.ср::/chide
:?:/ch::/chide
:?:.кар::/veh taycan 44 44
:?:/scd::/setcardim
:?:.ысв::/setcardim
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.ыв::/setdim
:?:.сршву::/chide
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяф::/freeza
:?:.ызфцтсфк::/spawncar
:?:/sc::/spawncar
:?:.ыс::/spawncar
:?:.темп::/templeader
:?:.пинг::/ping{enter}
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Кастом-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            :?:.омп::
        SendInput,/a /o Уважаемы игроки, в каком мероприятии Вы хотели принять участие? {enter}
        return
;===================================================================================
            :?:.мп::
        SendInput,/a /o Уважаемые игроки, сейчас пройдёт мероприятие "". Попасть на мероприятие можно при помощи команды /event, уходить от RP, путём телепортации на мероприятие, строго запрещено{!} Главный приз: 20.000$.{left 149}
        return
;===================================================================================
            :?:.бб::
        SendInput, /auncuff %cID% {enter}
        return
;===================================================================================
            :?:.дим::
        SendInput, /setdim %cID% 0 {enter}
        return
;===================================================================================
            :?:.евдим::
        SendInput, /setdim %cID% 58 {enter}
        return
;===================================================================================
            :?:.рев::
        SendInput, /rescue %cID% {enter}
        return
;===================================================================================
            :?:.афк::
        SendInput, /ctp 2491.74 -246.01 -55.73 {enter}
    Sleep 300
        SendInput, {T}
    Sleep 300
        SendInput,/a afk  мин{left 4}
        return
;===================================================================================
            :?:.утон::
    Input, carId, V, {LAlt} {Enter}
        Sleep 100
    SendInput,{T}
        Sleep 200
    SendInput, /getcar %carId%
        Sleep 300
    SendInput, {Enter}
        Sleep 300
    SendInput,{T}
        Sleep 200
    SendInput,/repair
        Sleep 300
    SendInput, {Enter}
        Sleep 300
    SendInput,{T}
        Sleep 200
    SendInput,/setcardim %carId% 5
        Sleep 300
    SendInput, {Enter}
        Sleep 300
    SendInput,{T}
        Sleep 200
    SendInput,/setcardim %carId% 0
        Sleep 300
    SendInput, {Enter}
        Sleep 300
    SendInput,{T}
        Sleep 200
    SendInput,/repair
        Sleep 300
    SendInput, {Enter}
        Sleep 300
    SendInput,{T}
        Sleep 200
    SendInput, /getcar %carId%
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.сдим::
    Input, dimId, V, {LAlt} {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %dimID% 0
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.тхил::
    Input, hilId, V, {LAlt} {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/rescue %hilId%
        Sleep 300
    SendInput, {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/hp %hilId% 100
        Sleep 300
    SendInput, {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/gh %hilId%
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.хил::
    Input, hilId2, V, {LAlt} {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/rescue %hilId2%
        Sleep 300
    SendInput, {Enter}
        Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/hp %hilId2% 100
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.чел::
    Input, chelId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/ctp -51.316 -1077.890 29.904
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gh %chelId%
        Sleep 500
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/setdim %chelId% 0
        Sleep 400
    SendInput, {Enter}
        return
;===================================================================================
            :?:.чекга::
    SendInput,/admins
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 39
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 129688
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 25
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 1
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 2
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 3
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gid 4
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/clearchat 
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.чайхана::
    SendInput,/chide
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/inv
        Sleep 300
    SendInput, {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/chide
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
            :?:.ган::
    SendInput,/gw %eWgid% %eWg% %eWgam% {Enter}
        return
;===================================================================================
            :?:.флаер::
    Input, flareId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %flareId% weapon_flare 5{Enter}
        return
;===================================================================================
            :?:.ракета::
    Input, fireworkId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %fireworkId% weapon_firework 55{Enter}
        return
;===================================================================================
            :?:.мушкет::
    Input, musketId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %musketId% weapon_musket 555{Enter}
        return
;===================================================================================
            :?:.снапа::
    Input, heavysniperId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %heavysniperId% weapon_heavysniper_mk2 555{Enter}
        return
;===================================================================================
            :?:.топорик::
    Input, hatchetId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %hatchetId% weapon_stone_hatchet{Enter}
        return
;===================================================================================
            :?:.мачете::
    Input, macheteId, V, {LAlt} {Enter}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/gw %macheteId% weapon_machete{Enter}
        return
;===================================================================================
            :?:.тунк::
    SendInput,/veh khanjali
        Sleep 300
    SendInput, {Enter}
       Sleep 50
    SendInput,{T}
        Sleep 100
    SendInput,/incar{Space}
        return
;===================================================================================
            :?:.брички::
    SendInput,/veh %eVeh% %eVehс%{Enter}
        Sleep %eVeht%
    SendInput,{d down}
        Sleep 200
    SendInput,{d up}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/veh %eVeh% %eVehс%
        Sleep 300
    SendInput, {Enter}
        Sleep %eVeht%
    SendInput,{d down}
        Sleep 200
    SendInput,{d up}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/veh %eVeh% %eVehс%
        Sleep 300
    SendInput, {Enter}
        Sleep %eVeht%
    SendInput,{d down}
        Sleep 200
    SendInput,{d up}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/veh %eVeh% %eVehс%
        Sleep 300
    SendInput, {Enter}
        Sleep %eVeht%
    SendInput,{d down}
        Sleep 200
    SendInput,{d up}
       Sleep 100
    SendInput,{T}
        Sleep 100
    SendInput,/veh %eVeh% %eVehс%
        Sleep 300
    SendInput, {Enter}
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Дискорды-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
        :?:.дс::
    SendMessage, 0x50,, 0x4090409
        SendInput, Здравствуйте, предоставьте видеодоказательство мне в личные сообщения дискорда: %qdis%{#}%qtag%.
    return
;===================================================================================
        :?:.дис::
    SendMessage, 0x50,, 0x4090409
        SendInput, Здравствуйте, обратитесь ко мне в личные сообщения дискорда: %qdis%{#}%qtag%.
    return
;===================================================================================
        :?:.га::
    SendMessage, 0x50,, 0x4090409
        SendInput, Обратитесь в личные сообщения дискорда к главному администратору: %gadis%{#}%gatag%.
    return
;===================================================================================
        :?:.зга::
    SendMessage, 0x50,, 0x4090409
        SendInput, Обратитесь в личные сообщения дискорда к заместителю главного администратора: %zgadis%{#}%zgatag%.
    return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Клише-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
:?:.ставка::Расчёт ставки происходит в течение неопределённого кол-ва времени. Администрация не управляет расчетом.
:?:.коины::При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. Приятной игры на Majestic RP.
:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:.зп::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.
;===================================================================================
:?:.квест::На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
:?:.клад::Для поиска кладов Вам необходим металоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
;===================================================================================
:?:.фед::На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.
;===================================================================================
:?:.рация::Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
:?:.рац::Если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использования: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
;===================================================================================
:?:.сид::Укажите static ID игрока с которым у Вас происходил РП процесс.
:?:.ид::Укажите, пожалуйста, ID нарушителя.
:?:.увы::У-вы на данный момент нет администратора который сможет Вам помочь. Приносим свои извинения.
;===================================================================================
:?:.промо::При достижении третьего уровня игрового персонажа Вам будет зачислена награда в виде игровой валюты и VIP статуса.
:?:.твойпромо::Вы получаете за каждого игрока 7.500$ при достижении им третьего уровня, а также 10% доната игрока.
;===================================================================================
:?:.пузо::/asms Нужная поза о которой Вам говорят находится F2 - Анимации - Позы - Лежать на животе. Не игнорируйте данное сообщение чтобы не получить наказание.{left 146}
;===================================================================================
:?:.пут::Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь.
;===================================================================================
:?:.увал::Здравствуйте. К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord.
;===================================================================================
:?:.офф::Не оффтопьте в "Обращения".
:?:.п::Приятной игры на Majestic RP.
:?:.у::Приветствую, учтем Ваше мнение и возможно реализуем его.
;===================================================================================
:?:.рп::Извините, но это Role Play процесс в который администрация не в праве вмешиваться.
:?:.урп::Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. Приятной игры и самого лучшего настроения на Majestic RP.
;===================================================================================
:?:.войс::Чтобы перезагрузить войс, попробуйте нажать F7 или /v_reload в чат. Если ничего не помогает - перезайдите в игру.
:?:.рел::Попробуйте перезайти через F1 > Majestic или полностью в игру (F1 - X).
:?:.чат::Настроить чат Вы сможете в F2>Настройки>Игровой чат. Там Вы сможете выставить дату и время у СМС, тип шрифта, установить тем или задний фон, задать размер/меж строчечный интервал и многое другое.
:?:.багвойс::Нажмите F2>Настройки>Главное>Блокировка voice - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.
;===================================================================================
:?:.баг::Знаем о данной проблеме, она уже передана разработчикам. Когда её решат у нас информации нет.
:?:.тех::Напишите в технический раздел на форуме. Ссылка - https://forum.majestic-rp.ru/forums/obraschenija-v-texnicheskij-razdel.560
:?:.техдс::Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". В обращении, увы, помочь не сможем.
:?:.изв::Приносим свои извинения за возможные неудобства.
:?:.багзз::Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.
:?:.тайм::Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. Приятной игры на Majestic RP.
:?:.инв::Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, бардачок авто, обмен с другим игроком. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1>Majestic.
;===================================================================================
:?:.функ::Данный функционал временно недоступен, как только всё исправят об этом сообщат в канале "change-log".
:?:.фун::Данный функционал не предусмотрен модом Majestic.
;===================================================================================
:?:.авто::Что бы найти Ваше авто воспользуйтесь телефоном и приложением "Auto Pluce". Если же оно на месте парковки, Вы можете его призвать через любой автосервис(Гаечный ключ). Если же оно заспавнено вызвать можете на доме/апартаментах.
:?:.ремонт::Приветствую, для начала, Вам нужно купить запчасть для машины на любо АЗС или 24/7, нажать G > Починить замок/аккумулятор/залить масло. Также не забудьте рем комплект.
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить(Авто должно быть открыто).
:?:.гос::Вы можете сдать авто/катер/вертолет на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:.сто::Степень износа определенных деталей автомобиля можно узнать на автомастерской(Иконка гаечного ключа с отверткой на карте) или же при продаже/обмени и размещении лота на аукционе/авторынке.
:?:.замок::Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке(Замок в 24/7), затем подойти к своему транспорту G -> Починить дверной замок.
:?:.акум::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить аккумулятор.
:?:.масло::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить масло.
:?:.кавто::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. Максимально три дубликата.
:?:.рем::Приветствую, чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
:?:.парк::Чтобы припарковать ТС, за рулем нажмите G - Припарковать.
:?:.толкать::Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя или Вы стоите не с того ракурса.
;===================================================================================
:?:.жб::Администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.проеб::Администрация не успела зафиксировать факт нарушения. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.анак::Обратитесь, в DISCORD к администратору, который выдал Вам наказание или рассмотрел жалобу.
:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде или опишите Вашу проблему и Вам помогут/ответят на вопрос.
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора. Предварительно Вы можете обратиться к ЗГА в личные сообщения.
:?:.неп::Сформулируйте Ваш вопрос более корректно, для максимально точного и правильного ответа.
;===================================================================================
:?:.дон::Все проблемы с донатом решаются исключительно через почту - "help@majestic-rp.ru". Если Вы не из России или возникают проблемы с пополнением воспользуйтесь kinguin - "kinguin.net/c/112566/majestic-rp".
:?:.адон::Активировать уникальный код можно через F2>Активировать код.
:?:.ндон::Купить уникальный код можно через kinguin.net/c/112566/majestic-rp.
;===================================================================================
:?:.ворк::Вам нужно нажать F3 > Работа. И выбрать то что по душе.
:?:.гпс::Вам нужно нажать F3 и выбрать цель прибытия. Маршрут можно будет отменить повторно нажав F3.
:?:.рыба::Вам нужно нажать F3 > Разное > Продажа рыбы.
:?:.рын::Рынок находится в Лос-Сантосе, Сэнди-Шорс и Палето-Бей, отмечен как цикличные стрелочки желтого цвета.
:?:.арынок::Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
:?:.оружрын::Боту на рынке можно сдать оружие только со 100% износом(Показатель равен 0%).
;===================================================================================
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD.
:?:.рыблиц::Получить лицензию на рыбалку вы можете в Мэрии.
;===================================================================================
:?:.лесоруб::Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке.
:?:.инкас::Чтобы совместно работать Вам необходимо быть устроенным на работу(Всем), загрузиться, а затем через G пригласить на работу.
:?:.грибы::Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. Продажа осуществляется NPC на рынке.
:?:.рыбалка::Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магазине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши.
:?:.скилрыб::Рыбак - навык профессии прокачивающийся путём ловли рыбы (F3>Работа>Рыбак). 1 lvl Зоны: 1, 2, 3, 4. Рыба: Форель(До 196). 2 level Зоны: 5,6. Рыба: Камбала(До 588). 3 level Зоны: 7,8. Рыба: Тунец(До 1 225). 4 level Зоны: 9,10. Рыба: Красный солдат(До 2 205). 5 level Зона 11. Рыба: Карась(До 3 920). 6 level Зона 12. Рыба: Оранжевый карп(До 6 125). 7 level Зона 13. Рыба: Аквамарин(До 8 200).  8 level Зона 14. Рыба: Золотая рыбка. Данный уровень является максимальным в данной профессии.
:?:.скилфер::Фермер - навык профессии прокачивающийся путём работы на ферме(F3>Работа>Фермер). 1 lvl - Апельсины. 2 lvl - Пшеница. 3 lvl - Картофель. 4 lvl - Капуста. 5 lvl - Кукуруза. 6 lvl - Тыква. 7 lvl - Бананы, данный уровень финальный.
:?:.скилстр::Строитель - навык профессии прокачивающийся путём работы на стройке(F3>Работа>Строитель).
:?:.скилпоч::Почтальон - навык профессии прокачивающийся путём работы на почте(F3>Работа>Почтальон).
:?:.скилбус::Водитель автобуса - навык профессии прокачивающийся путём работы на автобусе(F3>Работа>Водитель автобуса).
:?:.скилмус::Мусорщик - навык профессии прокачивающийся путём работы на мусоровозе(F3>Работа>Мусорщик).
:?:.скилмяс::Мясник - навык профессии прокачивающийся путём работы на мясокомбинате(F3>Работа>Мясник).
:?:.скилинк::Инкассатор - навык профессии прокачивающийся путём работы на инкасаторе(F3>Работа>Инкассатор).
:?:.скилдал::Дальнобойщик - навык профессии прокачивающийся путём грузоперевозок(F3>Работа>Дальнобойщик).
:?:.скилгриб::Грибник - навык профессии прокачивающийся путём сбора грибов(F3>Работа>Грибник).
:?:.скиллес::Лесник - навык профессии прокачивающийся путём рубки деревьев(F3>Работа>Лесник).
:?:.скилшах::Шахтер - навык профессии не имеющий прокачки, необходим при семейных контрактах(F3>Работа>Шахтёр).
;===================================================================================
:?:.хп::Перезайдите в игру, либо купите таблетку у сотрудников EMS.
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:.подним::Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
;===================================================================================
:?:.сейф::Приветствую, закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку.
:?:.подсел::Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
:?:.кладовка::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
:?:.слетдом::Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают при просрочке налога, после чего попадают на аукцион. Содержимое кладовки не сохраняется.
:?:.госдом::Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
;===================================================================================
:?:.аним::Остановите анимацию. "X > Остановить" анимацию или же "BackSpace".
:?:.аут::Для подключения "Google Authenticator" Вам нужно в меню выбора персонажа открыть раздел настроек.
:?:.дрон::Дрон крафтится у силовых гос.структур. Пользоваться им могут соответственно эти же гос.структуры. Управление: Навигация - "W/A/S/D". Спуск - "Shift". Подъем - "Space". Тепловизор/ПНВ - "Е".
:?:.аукц::На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.
:?:.дрифт::Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот.На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются.Покажите, кто здесь настоящий король дрифта!
:?:.майки::Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды(Например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:.слух::Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:.руда::Руда - непродаваемый материал, который можно добыть на шахте(F3>Работа>Шахтер). Применяется при сдаче семейных контрактов. Шанс выпадения случайный, самая редкая золотая. 
;===================================================================================
:?:.новость::Здравствуйте, позвоните или придите лично в Weazel News.
:?:.нов::Следите за новостями сервера в официальном дискорде проекта - https://discord.gg/majestic.
;===================================================================================
:?:.банк::Приветствую, у нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5%(Максимум 20.000$), на перевод 4%(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4%(Максимум 15.000$), на перевод 3%(Максимум 15.000$), кэшбек в магазинах 1%, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3%(Максимум 20.000$), на перевод 2.5%(Максимум 20.000$), кэшбек в магазинах 3%, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
:?:.кредит::Любые финансовые договоры(Займы, кредиты и т.д) игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.
:?:.сделка::Приветствую, администрация не следит за сделками игроков.
;===================================================================================
:?:.краш::Укажите статический ID госсотрудника с которым происходило RP. Также Вам стоит загрузить видео краша, если таковое имеется.
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.лоу::Пункт "Режим низкого качества" в F2 > Настройки > Дополнительно. Она отключает любую синхронизацию одежды(Кроме фракционной), а также уменьшает дистанцию прогрузки всех авто и игроков, тем самым уменьшая нагрузку видеопамяти.
;===================================================================================
:?:.бизограб::Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC(Продавца) огнестрелом(Только один человек должен грабить). Приятной игры на Majestic RP.
:?:.огр::Приветствую. Чтобы начать ограбление Банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком(Как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:.огр2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
;===================================================================================
:?:.ник::Сменить ник Вы можете нажав - F2 > Настройки > Персонаж.
:?:.имя::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
;===================================================================================
:?:.вынос::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке(Иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность - навык скрытности повышается от количества успешных уходов от погони(Понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).
:?:.стрельба::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
;===================================================================================
:?:.актуал::Обращение неактивно более трёх минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема создайте новое и ожидайте ответа.
:?:.л::Приветствую. Уже лечу к Вам на помощь.
:?:.пом::Приветствую. Сейчас помогу Вам, ожидайте.
:?:.и::Приветствую. Иду.
;===================================================================================
:?:.погода::К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP.
;===================================================================================
:?:.реп::Пожалуйста, уточните свой вопрос подробнее в "Обращения". Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов в "Обращение" неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:.неувид::К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.нетп::Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.
;===================================================================================
:?:.кости::Приветствую, чтобы играть в кости Вам нужно купить их в любом 24/7. После того как Вы купили кости, Вы можете подойти к игроку нажать G>Бросить кости.
;===================================================================================
:?:.да::Да.
:?:.нет::Нет.
;===================================================================================
:?:.капт::Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.
:?:.биз::Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед бизваром и после него, обратитесь к своим кураторам фракции в дискорд.
;===================================================================================
:?:.зкайо::На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление(Функционально на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную/арендованную лодку - в городе перегружать в матовозку.
:?:.перико::У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет. На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.
:?:.сирена::Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.
:?:.маяк::Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.
:?:.зоо::Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.
:?:.скин::Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.
:?:.инт::Популярные интерьеры на карте: "Особняк у виноградников" - открытый интерьер не имеющий функционала, расположен левее от центра карты. "Суд" - открытый интерьер не имеющий функционала, расположен неподалёку от LSPD. Зачастую применяется во время заседаний Верховного или же окружного суда. "Университет" - открытый интерьер не имеющий функционала, расположен неподалёку от Японской мафии. "Старый офис FIB" - открытый интерьер не имеющий функционала, расположен неподалёку от EMS.
:?:.вот::Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).
:?:.одворк:: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.
:?:.холвех::"Холодный старт" - при запуске ТС издаёт характерный звук и даёт небольшую задержку перед стартом.
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Наказания-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
    :?:.хардо::/hardban 9999 Обход блокировки{left 21}
    :?:.чит::/hardban 7777 Cheats{left 12}
    :?:.чит9::/hardban 9999 Cheats{left 12}
;===================================================================================
    :?:.секс::/warn Секс. аним. без отыгровок{Left 26}
    :?:.багоюз::/warn Багоюз{Left 7}
    :?:.хтк::/warn Team Kill{Left 10}
;===================================================================================
    :?:.нрд::/ajail 15 nonRP Drive{Left 15}
    :?:.лнрд::/ajail 70 nonRP Drive{Left 15}
    :?:.хнрд::/ajail 90 nonRP Drive{Left 15}
;===================================================================================
    :?:.нрп::/ajail 15 nonRP Поведение{Left 19}
    :?:.мнрп::/ajail 70 nonRP Поведение{Left 19}
    :?:.хнрп::/ajail 90 nonRP Поведение{Left 19}
;===================================================================================
    :?:.дб::/ajail 30 DB{Left 6}
    :?:.мдб::/ajail 75 DB{Left 6}
    :?:.хдб::/ajail 90 DB{Left 6}
;===================================================================================
    :?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам сервера{Left 50}
    :?:.дм::/ajail 100 DM{Left 7}
    :?:.краймзз::/ajail 35 Крим. действия в ЗЗ{Left 23}
;===================================================================================
    :?:.тсвза::/ajail 45 1.9 ВЗА{Left 11}
    :?:.лутвза::/ajail 90 3.3 ВЗА{Left 11}
    :?:.анимвза::/ajail 45 3.7 ВЗА{Left 11}
    :?:.некраймвза::/ajail 90 1.1 ВЗА{Left 11}
    :?:.госвза::/ajail 45 1.12 ВЗА{Left 12}
;===================================================================================
    :?:.пг::/ajail 35 PG{Left 6}
    :?:.лпг::/ajail 70 PG{Left 6}
    :?:.хпг::/ajail 90 PG{Left 6}
;===================================================================================
    :?:.муз::/mute 30 Music in ZZ{Left 15}
    :?:.муз6::/mute 60 Music in ZZ{Left 15}
    :?:.оос::/mute 60 OOC in IC{Left 13}
    :?:.фикс::/mute 15 Громкие звуки в микрофон{Left 28}
    :?:.спзз::/mute 15 SP in ZZ{Left 12}
;===================================================================================
    :?:.кк::/kick Помеха капту{Left 13}
    :?:.кб::/kick Помеха бизвару{Left 15}
    :?:.кв::/kick Помеха ВЗМ{Left 11}
    :?:.оф::/kick offtop in "Обращения"{Left 22}
    :?:.кмп::/kick Помеха МП{Left 10}
;===================================================================================
    :?:.взм45::/ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала){Left 48}
    :?:.взм90::/ajail 90 Нарушение правил ВЗМ{Left 25}
    :?:.тк::/ajail 90 Team Kill{Left 13}
;===================================================================================
    :?:.пидр::/ban 7 Запрещённые слова{left 20}
    :?:.попуск::/ban 3 Действия униз. характера.{left 28}
    :?:.сельдь::/ban 3 Воз. ненависти, почве разногласия о генд.{left 44}
    :?:.пизда::/ban 10 Воз. ненависти, почве разногласия о генд.{left 45}
    :?:.неуваж::/ban 5 Неув. отношение/общение к адм. сервера.{left 42}
    :?:.лнеуваж::/ban 10 Неув. отношение/общение к адм. сервера.{left 43}
    :?:.хнеуваж::/ban 25 Неув. отношение/общение к адм. сервера.{left 43}
    :?:.хач::/hardban 30 Оскорбление нации{left 21}
    :?:.брат::/ban 15 Упоминание родных{left 21}
    :?:.мама::/hardban 30 Оскорбление родных{left 22}
    :?:.оскмамы::/hardban 45 Оскорбление родных{left 22}
;===================================================================================
    :?:.оска::/hardban 7 Оск. адм.{left 11}
    :?:.лоска::/hardban 15 Оск. адм.{left 12}
    :?:.хоска::/hardban 30 Оск. адм.{left 12}
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                                -----Оверлеи-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            memo:
    State2:=!State2
        If state2
    {
        CustomColor2 = 	EEAA99
    Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui 3: Color, black
    Gui 3: Font, s9
    Gui 3: Font, w3000
    Gui 3: Font, cFFFFFF
    Gui 3: Add, Text,, =================================================================================================================================================================================================================================================================================================================================================================================
    GUI 3: ADD, TEXT, cGreen,!                    ЧАСТЫЕ НАРУШЕНИЯ		                                                                                                			ДРУГИЕ НАРУШЕНИЯ		                                                                                                          		КРИМИНАЛЬНЫЕ НАРУШЕНИЯ
    Gui 3: Add, Text, cYellow, DM                                   	            Demorgan 100 минут / WARN / Ban 3 - 30 дней.		            Анимация секс характера.					WARN.						Грабителей меньше 4 чел. и 2 ТС.				Demorgan 15 - 35 минут
    Gui 3: Add, Text,, DB	                                    	Demorgan 30 - 90 минут / WARN / Ban 3 - 30 дней.		Аморальные/ceксуальные дейст.				Ban 3 - 7 дней.					Меньше 4-х похитителей					WARN.
    Gui 3: Add, Text, cYellow, Уход от РП                                	WARN / Ban 4-8 дней.						Ограбление/Похищение в ЗЗ					HardBan 7 дней / WARN.			Убийство жертвы без IC причины				Demorgan 100 минут.
    Gui 3: Add, Text,, SK	                                       	Ban 2-5 дня / Hardban 2 - 7 дней.				Отыгровки в свою пользу					Demorgan 15-35 минут.				Более 2х фракций в союзе на ограблении биза			Demorgan 90 минут / Устный лидеру.
    Gui 3: Add, Text, cYellow, PG	                                            	Demorgan 35-90 минут / WARN / Ban 2-7 дней.			Обман администрации						Ban-Hardban 10 - 30 дней / PermBan.		Агрес. дейст. на враж. респе					Ban 5 дней.
    Gui 3: Add, Text,, NRD					Demorgan 15 - 90 минут / Ban 3-7 дней.				Программа изм. голоса					Mute 10 - 60 минут.				Блок. входы/выходы из бизнеса ТС.				Demorgan 35 минут.
    Gui 3: Add, Text, cYellow, NRP поведение	                                    Demorgan 15 - 90 минут / WARN / Ban 3 - 15 дней.		Трап / нрп ник							Demorgan 720 минут (до смены)			Кол-во участников ограбления более 35 чел.			Demorgan 15 минут всем участникам.
    Gui 3: Add, Text,, Крайм к EMS(Без ПГ)                  	Demorgan 90 минут / WARN.                                 		Лутерство в бою						Demorgan 35 минут / WARN		           ТС/Одежда не в фрак. цвет					Demorgan 35 минут.
    Gui 3: Add, Text, cYellow, Музыка в ЗЗ	                                   	Mute 30-60 минут.						Помеха работе администрации					Kick / Demorgan-Mute 10 - 100 минут.		Срез. бронижелета без отыгровок				Demorgan 10 - 60 минут.
    Gui 3: Add, Text,, Уход в ЗЗ	                                   	Demorgan 90 минут.						Спам/флуд в чат						Mute 10 - 60 минут.				Уход от погони на респ.					Demorgan 100 минут.       
    Gui 3: Add, Text, cYellow, Упом. нации				Ban 15-30 дней / Hardban 15-30 дней.			  	Реклама посторонних проектов					HardBan 15 - 30 дней / PermBan.		Переговорщик в заложниках					WARN.
    Gui 3: Add, Text,, Упом. родных                        		Ban 5-30 дней / Hardban 15.                                                      Оск. администрации						Ban 5 - 30 дней / HardBan 10 - 30 дней.
    Gui 3: Add, Text, cYellow, Громкие звуки в войс                          	Mute 10 - 120 минут.						-------------------------------------					------------------------------								ГОСУДАРСТВЕННЫЕ НАРУШЕНИЯ
    Gui 3: Add, Text,, ООС оскобления             		Demorgan 15-90 минут.						Читерство							PermBan.
    Gui 3: Add, Text, cYellow, Свап оружия                	     		WARN / Ban 2 дня.					            Оскорбительные отыгровки					Demorgan 10-35 минут.				Спец техника в городе						Demorgan 35 минут.
    Gui 3: Add, Text,, Угон спец техники	                        Demorgan 15 - 90 минут / Ban 2 - 10 дней.			Обман /do							Demorgan 35 минут. / WARN		            Патруль на личке						Demorgan 35 минут.
    Gui 3: Add, Text, cYellow, Байт гос. структур                           	Ban 2-5 дней.					 	 	Винтовка на поставке                                                               Demorgan 60 минут. 			            Соло гетто                                          				Demorgan 25 минут.
    Gui 3: Add, Text,, Крайм без фракции          		Demorgan 15 - 90 мин.						Ограбление мёртвого						Ban 3 дня.			  		Связь с краймом						WARN.
    Gui 3: Add, Text, cYellow, Запрещенные слова                              Mute 240 / Ban 3-30 дней / Permban.				Ограб. без отыгровок						Demorgan 15-60 минут.				Затягивание допроса (120 мин.)				Demorgan 35-90 минут всем.
    Gui 3: Add, Text,, Багоюз	                                                WARN / Ban 3 - 30 дней / Hardban 3 - 30 дней / Permban.	Хилл/броня в бою						Demorgan 35 - 90 минут.			Не чёткая миранда(1.10 ПГО)			                       Увал / Mute 60-120 минут / WARN.
    Gui 3: Add, Text, cYellow, Крайм в ЗЗ	                         	Demorgan 10 - 100 минут / WARN / Ban 3 дня.			Стрельба с ТС по пешим					Demorgan 90 минут.                                          Отказ в адвокате(1.11 ПГО)                                                      Увольнение / WARN.
    Gui 3: Add, Text,, Фракции	                                    1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   13 - LCN   14 - RM   15 - YAK   16 - MEX   17 -  LOST   18 - AOD   19 - IM	
    Gui 3: Add, Text,,                =================================================================================================================================================================================================================================================================================================================================================================================
        WinSet, TransColor, %CustomColor2% 200
    Gui 3: Show, x0 y430 NoActivate, window.
    }
        Else
    Gui 3: Destroy
        return
;===================================================================================
------------------------------------------------------------------------------------------------------------
                                        -----Box-----
------------------------------------------------------------------------------------------------------------
;===================================================================================
            Info:
    MsgBox, 8192, Описание "𝐈𝐧𝐟𝐨", Софт создан для облегчения работы администрации проекта Majestic RP.`n`nО софте: Для корректной работы софта необходимо выбрать разрешение экрана, ваш дискорд, сервер и ваш пол в главном меню.`n`nЧтобы настройки вступили в силу, нужно нажать кнопку Сохранить.`n`nОписание кнопок:`n- 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭 - Телепорты в различные части карты.`n- 𝐂𝐮𝐬𝐭𝐨𝐦 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭 - Телепорты в интерьеры и бизвар локации.`n- 𝐂𝐨𝐦𝐦𝐚𝐧𝐝 - Обширный список команд.`n- 𝐂𝐮𝐬𝐭𝐨𝐦 𝐂𝐨𝐦𝐦𝐚𝐧𝐝 - Команды придуманые под пивко и для кайфа.`n- 𝐊𝐢𝐜𝐤/𝐌𝐮𝐭𝐞 - Быстрые наказания.`n- 𝐀𝐣𝐚𝐢𝐥/𝐖𝐚𝐫𝐧 - Быстрые наказания.`n- 𝐁𝐚𝐧/𝐇𝐚𝐫𝐝𝐛𝐚𝐧 - Быстрые наказания.`n- 𝐌𝐞𝐦𝐨 - Описание скилов, лицензий и тп.`n- 𝐒𝐤𝐢𝐥𝐥𝐬 - Описание всех навыков.`n- 𝐈𝐃 - Вписывать свой динамик для работы команд.`n- 𝐄𝐯𝐞𝐧𝐭 - Можно выставить параметры спавна авто.`n- 𝐃𝐞𝐟𝐨𝐥𝐭 - Сбросить все бинды/настройки к заводу.`n- 𝐂𝐨𝐮𝐧𝐭𝐞𝐫 - Настройки счётчика.`n- 𝐏𝐫𝐞𝐬𝐞𝐭 - Можно выставить команды при входе.`n- 𝐂𝐥𝐢𝐜𝐡𝐞 𝟏-𝟒 - Заготовленные ответы.`n- 𝐔𝐩𝐭𝐮𝐫𝐧 - Тут сможешь оставить свою идею или информацию о баге.`n`nHotKey:`n"Ctrl + A" - Отправит "Здравствуйте, иду."`n"Ctrl + S" - Отправит "Приятной игры на Majestic RP."`n"Ctrl + D" - Отправит "Сейчас помогу, ожидайте."`n"Ctrl + F9" - Во всех ситуациях перезагрузит скрипт.`n"Ctrl+ F10" - Во всех ситуациях закроет скрипт.`n
        return
;===================================================================================
            Teleports:
    MsgBox, 8192, Описание "𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭",`n- .пд - телепорт на LSPD`n- .бол - телепорт на Больницу ЛС`n- .сд - телепорт на Шерфи Департамент`n- .фз - телепорт на Форрт`n- .гов - телепорт на Мерию`n- .вн - телепорт на Новости`n- .фиб - телепорт на ФИБ`n `n- .балас - телепорт на Балласов`n- .ваг - телепорт на Вагасов`n- .фэм - телепорт на Фэмов`n- .бладс - телепорт на Бладсов`n- .мара - телепорт на Марабунту`n `n- .лкн - телепорт на ЛКН`n- .рм - телепорт на РМ`n- .як - телепорт на Якудзу`n- .мекс - телепорт на Мексиканцев`n- .ир - телепорт на Ирланцев`n `n- .лост - телепорт на лостов`n- .аод - телепорт на АОД`n`n- .особняк - Телепорт на особняк Кайо-Перико.`n- .ключ - Телепорт на ключ(Город).`n- .хум - телепорт на Хуман Лабс`n- .мейз - телепорт на Мейз Банк`n- .каз - телепорт на Казино`n- .аш - телепорт на АвтоШкола`n- .гг - телепорт на ГанГейм`n- .бургер - телепорт на Бургерную`n- .багама - телепорт на Багаму Маму`n- .кайо - телепорт на Остров.`n- .авиа - Телепорт на авианосец `n- .мол - Телепорт на мол `n- .трас - Телепорт на искуственную трассу`n- .аук - Телепорт на аукцион`n- .бокс - Телепорт на бокс`n- .бар - Телепорт телепорт в бар с интой`n- .бк - Телепорт на букмекерскую контору`n- .ванила - Телепорт в стрип клуб Vanila Unicorn`n- .починка - Телепорт на СТО Hayes`n- .лск4 - Телепорт к 4 лск, шоссе 68`n`n- .складпд - Телепорт на склад LSPD`n- .складбемс - Телепорт на склад EMS`n- .складсд - Телепорт на склад LSCSD`n- .складфз - Телепорт на склад SANG`n- .складгов - Телепорт на склад GOV`n- .складвн - Телепорт на склад WN`n- .складфиб - Телепорт на склад FIB`n- .склакайо - Телепорт на склад Кайо-Перико.`n`n- .складяк - Телепорт на склад Yakuza`n- .складир - Телепорт на склад Irish`n- .складрм - Телепорт на склад Russia Mafia`n- .складмекс - Телепорт на склад Mex`n- .складлкн - Телепорт на склад LCN`n- .складбалас - Телепорт на склад Ballas`n- .складмара - /ctp 1445.227 -1486.904 66.535`n- .складваг - /ctp 975.165 -1858.049 31.274`n- .складбладс - /ctp 515.885 -1341.602 29.373`n- .складфэм - /ctp -237.851 -1508.816 32.935`n- .сш - /ctp 1888.585 3625.920 34.193`n- .палето - /ctp -229.238 6108.973 75.349`n- .ричман - /ctp -1927.219 358.418 103.399`n- .рокфорд - /ctp -78.035 995.733 247.247`n- .миррор - /ctp 1278.025 -531.254 83.166`n
        return
;===================================================================================
            CusTp:
    MsgBox, 8192, Описание "𝐂𝐮𝐬𝐭𝐨𝐦 𝐓𝐞𝐥𝐞𝐩𝐨𝐫𝐭",Интерьеры:`n - .инт1 - СТО.`n- .инт2 - Морг.`n- .инт3 - Розовая комната казино.`n- .инт4 - Хранилище казино.`n- .инт5 - Металодетекторы казино.`n- .инт6 - Квартира.`n- .инт7 - Гараж.`n- .инт8 - Лаундж зона.`n- .инт9 - Гараж казино.`n- .инт10 - Казино ограба.`n- .инт11 - Пентхаус.`n- .инт12 - Бар казино.`n- .инт13 - Серверная НУП.`n- .инт14 - Гараж в МАЛС.`n`nБизвары:`n- .порт1 - Телепорт на защиту. Локация "Порт".`n- .порт2 - Телепорт на атаку. Локация "Порт".`n- .мара1 - Телепорт на защиту. Локация "Нефть".`n- .мара2 Телепорт на атаку. Локация "Нефть".`n- .стройка1 - Телепорт на защиту. Локация "Стройплощадка".`n- .стройка2 - Телепорт на атаку. Локация "Стройплощадка".`n- .свал1 - Телепорт на защиту. Локация "Самолёты".`n- .свал2 - Телепорт на атаку. Локация "Самолёты".`n- .лес1 - Телепорт на защиту. Локация "Лесопилка".`n- .лес2 - Телепорт на атаку. Локация "Лесопилка".`n`nРаботы:`n- .воркт: Телепорт на работу "Таксист".`n- .воркм: Телепорт на работу "Мусоровоз".`n- .воркд1: Телепорт на работу "Дальнобой(Порт)".`n- .воркд2: Телепорт на работу "Дальнобой(Палето)".`n- .воркп: Телепорт на работу "Почтальон".`n- .ворка: Телепорт на работу "Автобусника".`n- .ворки: Телепорт на работу "Инкассатор".`n
        return
;===================================================================================
            Com:
    MsgBox, 8192, Описание "𝐂𝐨𝐦𝐦𝐚𝐧𝐝",Все команды случайно написанные на транслите будут конверсирвоанные в номальное состояние. Пример: .ез -> /tp.`n`nБыстрый репорт - Автоматически будет взят первый репорт по списку и будет клик по строчке ответа.`nБыстрый ответ - Автоответ на репорт о том, что ты летишь, далее сам закроет меню репортов и напишет в чат /tp, нужно будет вписать только ID.`n `n .пузо - Поможет как можно быстрей предупредить игрока лечь на живот в /asms.`n `n /sm - Прописать маты фраке.(Chief  only)`n /tn - Поставить временное имя.`n /zzd - Вкл/Выкл показ зеленых зон.`n /amph - Включить элемент экстерьера на Амфитеатре. Элементы в Инфо.`n.sdc - /setcardim`n.rst - /resettempname`n /ramph - Выключить элемент экстерьера на Амфитеатре. Элементы в Инфо.`n /gzone - выключать/выключать GreenZone. Названия зон в Инфо.`n /mcheck - Проверить игрока на активный мут.`n /ld - Посмотреть последнего водителя авто.`n /af - Заразить игрока болезнью (1, 2 корона, 3).`n /ai - Уволить игрока из фракции.`n /sk - Тихий кик игрока.`n /k - Обычный кик.`n /gc - Телепортировать авто к себе (/getcar).`n /ch - Включить инвиз для читеров (/chide).`n /sc - Заспавнить автомобиль фракциии (/spawncar)`n /ad - Администраторы в сети (/admins).`n /p - Список всех игроков сервера (/players).`n .ку - Выводит в чат -  Здравствуйте,.`n /sp - Начать слежку за игроком (/spec ID).`n /so - Отменить режим слежки (/specoff).`n /kill - убить игрока (/hp ID 0).`n .пиздец - Если пизда по репортам, а админы AFK (особенно Мёрфи).`n- .дис - Отправит игроку ваш дискорд.`n- .га - Отправит игроку дискорд ГА.`n- .зга - отправит игроку дискорд зГА.`n
        return
;===================================================================================
            CusCom:
    MsgBox, 8192, Описание "𝐂𝐮𝐬𝐭𝐨𝐦 𝐂𝐨𝐦𝐦𝐚𝐧𝐝",- .флаер - Выдача "Флаера".`n- .ракета - Выдача "Фейерверка".`n- .мушкет - Выдача "Мушкета".`n- .снапа - Выдача "Heavy Mk2".`n- .топорик - Выдача "Каменный топор".`n- .мачете - Выдача "Мачете".`n- .чайхана - Баг /chide.`n- .сдим - Сменить дим на 0 игроку.`n- .дим - Сменить себе дим на 0.`n- .евдим - Сменить себе дим на 58.`n- .афк - Отпись об АФК.`n- .рев - Реснуть себя.`n- .бб - Снять с себя наручники.`n- .чел - Телепорт типа на ключ.`n- .тунк - Спавн "khanjali" и последующий /incar.`n- .ган - Выдача оружия с "𝐄𝐯𝐞𝐧𝐭".`n
        return
;===================================================================================
            Kikc:
    MsgBox, 8192, Описание "𝐊𝐢𝐜𝐤/𝐌𝐮𝐭𝐞",---KICK---`n - .кк - /kick Помеха капту.`n- .кб - /kick Помеха бизвару.`n- .кв - /kick Помеха ВЗМ.`n- .оф - /kick offtop in "Обращения".`n- .кмп - /kick Помеха МП.`n`n---MUTE---`n- .муз - /mute 60 Music in ZZ.`n- .оос - /mute 60 OOC in IC.`n- .фикс - /mute 15 Громкие звуки в микрофон.`n- .спзз - /mute 15 SP in ZZ.`n
        return
;===================================================================================
            Ajail:
    MsgBox, 8192, Описание "𝐀𝐣𝐚𝐢𝐥/𝐖𝐚𝐫𝐧",---AJAIL---`n- .нрд - /ajail 15 nonRP Drive.`n- .лнрд - /ajail 70 nonRP Drive.`n- .хнрд - /ajail 90 nonRP Drive.`n- .нрп - /ajail 15 nonRP Поведение.`n- .мнрп - /ajail 70 nonRP Поведение.`n- .хнрп - /ajail 90 nonRP Поведение.`n- .дб - /ajail 30 DB.`n- .мдб - /ajail 75 DB.`n- .хдб - /ajail 90 DB.`n- .смник - /ajail 720 Смените Имя_Фамилия согласно правилам сервера.`n- .дм - /ajail 100 DM.`n- .краймзз - /ajail 35 Crime in ZZ.`n- .тсвза - /ajail 45 1.9 ВЗА.`n- .лутвза - /ajail 90 3.3 ВЗА.`n- .анимвза - /ajail 45 3.7 ВЗА.`n- .некраймвза - /ajail 90 1.1 ВЗА.`n- .госвза - /ajail 45 1.12 ВЗА.`n- .пг - /ajail 35 PG.`n- .лпг - /ajail 70 PG.`n- .хпг - /ajail 90 PG.`n- .взм45 - /ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала).`n- .взм90 - /ajail 90 Нарушение правил ВЗМ.`n- .тк - /ajail 90 Team Kill.`n`n---WARN---`n- .секс - /warn Секс. аним. без отыгровок.`n- .багоюз - /warn Багоюз.`n- .хтк - /warn Team Kill.`n
        return
;===================================================================================
            Ban:
    MsgBox, 8192, Описание "𝐁𝐚𝐧/𝐇𝐚𝐫𝐝𝐛𝐚𝐧",---BAN---`n- .пидр - /ban 7 Запрещённые слова.`n- .брат - /ban 15 Упоминание родных.`n- .неуваж - /ban 5 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .лнеуваж - /ban 10 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .хнеуваж - /ban 25 Неуважительное отношение или неуважительное общение к администрации сервера.`n- .сельдь - /ban 3 Возбуждение ненависти, либо вражды на почве разногласия о гендерной принадлежности.`n- .пизда - /ban 10 Возбуждение ненависти, либо вражды на почве разногласия о гендерной принадлежности.`n- .попуск - /ban 3 Действия грубого унизительного характера без ООС согласия игрока.`n`n---HARDBAN---`n- .хардо - /hardban 9999 Обход блокировки.`n- .чит - /hardban 7777 Cheats.`n- .чит9 - /hardban 9999 Cheats.`n- .хач - /hardban 30 Оскорбление нации.`n- .мама - /hardban 30 Оскорбление родных.`n- .оска - /hardban 7 Оскорбление администрации.`n- .лоска - /hardban 15 Оскорбление администрации.`n- .хоска - /hardban 30 Оскорбление администрации.`n- .оскмамы - /hardban 45 Оскорбление родных.`n
        return
;===================================================================================
            Cli1:
    MsgBox, 8192, Описание "𝐂𝐥𝐢𝐜𝐡𝐞 𝟏",- .лвлрыб: 1 level Зоны: 1, 2, 3, 4. Рыба: Форель. 2 level Зоны: 5,6. Рыба: Камбала. 3 level Зоны: 7,8. Рыба: Тунец. 4 level Зоны: 9,10. Рыба: Красный солдат. 5 level Зона 11. Рыба: Карась. 6 level Зона 12. Рыба: Оранжевый карп. 7 level Зона 13. Рыба: Аквамарин.  8 level Зона 14. Рыба: Золотая рыбка. Данный уровень является максимальным в данной профессии.`n- .рыбалка: Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магазине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши.`n- .рыба: Вам нужно нажать F3 > Разное > Продажа рыбы.`n- .ставка: Расчёт ставки происходит в течение неопределённого кол-ва времени. Администрация не управляет расчетом.`n- .коины: При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC.`n- .ехп: Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.`n- .зп: Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволенным со всех работ. Оформить её можно в любом банке.`n- .квест: На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкассатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.`n - .клад: Для поиска кладов Вам необходим металлоискатель и лопата, купить можно у NPC на рынке. Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.`n- .фед: На первом этаже стоит NPC у которого можно взять задание. Чтобы отбыть срок в федеральной тюрьме, нужно выполнять задачи. Например помыть туалет - В определенное время тюрьма закрывает клетки на 5 минут, соответственно, в это время отбыть срок нельзя: -- Открываются клетки в 00 минут -- Закрываются клетки в 20 минут на 5 минут -- Открываются клетки в 25 минут -- Закрываются клетки в 55 минут на 5 минут.`n- .рация: Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.`n- .рац: Если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использования: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.`n- .сид: Укажите static ID игрока с которым у Вас происходил РП процесс.`n- .ид: Укажите, пожалуйста, ID нарушителя.`n- .увы: У-вы на данный момент нет администратора который сможет Вам помочь. Приносим свои извинения.`n- .промо: При достижении третьего уровня игрового персонажа Вам будет зачислена награда в виде игровой валюты и VIP статуса.`n- .твойпромо: Вы получаете за каждого игрока 7.500 при достижении им третьего уровня, а также 10 доната игрока.`n- .пузо: /asms Нужная поза о которой Вам говорят находится F2 - Анимации - Позы - Лежать на животе. Не игнорируйте данное сообщение чтобы не получить наказание.`n- .пут: Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь.`n- .увал: Здравствуйте. К сожалению, ничем не можем помочь. Дождитесь своего лидера/заместителей или свяжитесь с куратором своей фракции в личные сообщения Discord.`n- .офф: Не оффтопьте в "Обращения".`n- .п: Приятной игры на Majestic RP.`n- .у: Приветствую, учтем Ваше мнение и возможно реализуем его.`n- .рп: Извините, но это Role Play процесс в который администрация не в праве вмешиваться.`n- .урп: Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.`n- .войс: Чтобы перезагрузить войс, попробуйте нажать F7 или /v_reload в чат. Если ничего не помогает - перезайдите в игру.`n- .рел: Попробуйте перезайти через F1 > Majestic или полностью в игру (F1 - X).`n- .чат: Настроить чат Вы сможете в F2>Настройки>Игровой чат. Там Вы сможете выставить дату и время у СМС, тип шрифта, установить тем или задний фон, задать размер/меж строчечный интервал и многое другое.`n- .багвойс: Нажмите F2>Настройки>Главное>Блокировка voice - заблокируйте для всех и снова разблокируйте. В случае, если проблема осталась, то перезайдите в игру.`n- .ворк: Вам нужно нажать F3 > Работа. И выбрать то что по душе.`n- .гпс: Вам нужно нажать F3 и выбрать цель прибытия. Маршрут можно будет отменить повторно нажав F3.`n- .дон: Все проблемы с донатом решаются исключительно через почту - "help@majestic-rp.ru". Если Вы не из России или возникают проблемы с пополнением воспользуйтесь kinguin - "kinguin.net/c/112566/majestic-rp".`n- .адон: Активировать уникальный код можно через F2>Активировать код.`n- .ндон: Купить уникальный код можно через kinguin.net/c/112566/majestic-rp.`n- .рыба: Вам нужно нажать F3 > Разное > Продажа рыбы.`n- .рын: Рынок находится в Лос-Сантосе, Сэнди-Шорс и Палето-Бей, отмечен как цикличные стрелочки желтого цвета.`n- .арынок: Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.`n- .оружрын: Боту на рынке можно сдать оружие только со 100 износом(Показатель равен 0).`n- .ганлиц: Получить лицензию на оружие можно в LSPD или LSCSD.`n- .рыблиц: Получить лицензию на рыбалку вы можете в Мэрии.`n- .лесоруб: Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке.`n- .инкас: Чтобы совместно работать Вам необходимо быть устроенным на работу(Всем), загрузиться, а затем через G пригласить на работу.`n- .грибы: Чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. Продажа осуществляется NPC на рынке.`n- .рыбалка: Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магазине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши.`n
        return
;===================================================================================
            Cli2:
    MsgBox, 8192, Описание "𝐂𝐥𝐢𝐜𝐡𝐞 𝟐",- .баг: Знаем о данной проблеме, она уже передана разработчикам. Когда её решат у нас информации нет.`n- .тех: Напишите в технический раздел на форуме. Ссылка - https://forum.majestic-rp.ru/forums/obraschenija-v-texnicheskij-razdel.560`n- .техдс: Напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка". В обращении, увы, помочь не сможем.`n- .изв: Приносим свои извинения за возможные неудобства.`n- .багзз: Чтобы восстановить прежнюю скорость, заедьте в зеленую зону и выедьте с нее.`n- .тайм: Это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. Приятной игры на Majestic RP.`n- .инв: Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, бардачок авто, обмен с другим игроком. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1>Majestic.`n- .функ: Данный функционал временно недоступен, как только всё исправят об этом сообщат в канале "change-log".`n- .фун: Данный функционал не предусмотрен модом Majestic.`n- .авто: Что бы найти Ваше авто воспользуйтесь телефоном и приложением "Auto Pluce". Если же оно на месте парковки, Вы можете его призвать через любой автосервис(Гаечный ключ). Если же оно заспавнено вызвать можете на доме/апартаментах.`n- .ремонт: Приветствую, для начала, Вам нужно купить запчасть для машины на любо АЗС или 24/7, нажать G > Починить замок/аккумулятор/залить масло. Также не забудьте рем комплект.`n- .канистра: Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить(Авто должно быть открыто).`n- .гос: Вы можете сдать авто/катер/вертолет на свалку. После сдачи вы получите 75 от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.`n- .сто: Степень износа определенных деталей автомобиля можно узнать на автомастерской(Иконка гаечного ключа с отверткой на карте) или же при продаже/обмени и размещении лота на аукционе/авторынке.`n- .замок: Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке(Замок в 24/7), затем подойти к своему транспорту G -> Починить дверной замок.`n- .акум: Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить аккумулятор.`n- .масло: Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить масло.`n- .кавто: Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. Максимально три дубликата.`n- .рем: Приветствую, чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.`n- .парк: Чтобы припарковать ТС, за рулем нажмите G - Припарковать.`n- .толкать: Транспорт можно толкать, нажав G-толкать. Если такой функции нет, при наведении на авто, то этот транспорт толкать нельзя или Вы стоите не с того ракурса.`n- .жб: Администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.`n- .проеб: Администрация не успела зафиксировать факт нарушения. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.`n- .анак: Обратитесь, в DISCORD к администратору, который выдал Вам наказание или рассмотрел жалобу.`n- .адз: Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.`n- .адс: Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде или опишите Вашу проблему и Вам помогут/ответят на вопрос.`n- .жба: Вы можете написать жалобу на форум, если не согласны с решением администратора. Предварительно Вы можете обратиться к ЗГА в личные сообщения.`n- .неп: Сформулируйте Ваш вопрос более корректно, для максимально точного и правильного ответа.`n- .огр2: Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.`n- .ник: Сменить ник Вы можете нажав - F2 > Настройки > Персонаж.`n- .имя: Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.`n- .актуал: Обращение неактивно более трёх минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема создайте новое и ожидайте ответа.`n- .л: Приветствую. Уже лечу к Вам на помощь.`n- .пом: Приветствую. Сейчас помогу Вам, ожидайте.`n- .и: Приветствую. Иду.`n- .руда: Руда - непродаваемый материал, который можно добыть на шахте(F3>Работа>Шахтер). Применяется при сдаче семейных контрактов. Шанс выпадения случайный, самая редкая золотая.`n
        return
;===================================================================================
            Cli3:
    MsgBox, 8192, Описание "𝐂𝐥𝐢𝐜𝐡𝐞 𝟑",- .хп: Перезайдите в игру, либо купите таблетку у сотрудников EMS.`n- .емс: К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.`n- .подним: Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства.`n- .сейф: Приветствую, закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку.`n- .подсел: Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.`n- .кладовка: Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.`n- .слетдом: Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают при просрочке налога, после чего попадают на аукцион. Содержимое кладовки не сохраняется.`n- .госдом: Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.`n- .аним: Остановите анимацию. "X > Остановить" анимацию или же "BackSpace".`n- .аут: Для подключения "Google Authenticator" Вам нужно в меню выбора персонажа открыть раздел настроек.`n- .дрон: Дрон крафтится у силовых гос.структур. Пользоваться им могут соответственно эти же гос.структуры. Управление: Навигация - "W/A/S/D". Спуск - "Shift". Подъем - "Space". Тепловизор/ПНВ - "Е".`n- .аукц: На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.`n- .дрифт: Дрифт счётчик можно включить через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо вы прошли поворот. На карте вы можете увидеть зоны, где можно дрифтить и попасть в список топ-дрифтеров. Для этого Вам обязательно дрифтить по отмеченной зоне. В противном случае очки не засчитаются. Покажите, кто здесь настоящий король дрифта!`n- .майки: Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды(Например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".`n- .слух: Функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.`n- .новость: Здравствуйте, позвоните или придите лично в Weazel News.`n- .нов: Следите за новостями сервера в официальном дискорде проекта - https://discord.gg/majestic.`n- .банк: Приветствую, у нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500 в месяц, снятия и переводы без комиссии до 500.000 после превышения месечного лимита комиссия на вывод 5(Максимум 20.000), на перевод 4(Максимум 20.000), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000 после превышения месечного лимита комиссия на вывод 4(Максимум 15.000), на перевод 3(Максимум 15.000), кэшбек в магазинах 1, лимит кэшбека на одну операцию до 2.500, месечный лимит кэшбека 50.000. VIP карта стоит в обслуживании 75.000 в месяц, снятия и переводы без комиссии до 20.000.000 после превышения месечного лимита комиссия на вывод 3(Максимум 20.000), на перевод 2.5(Максимум 20.000), кэшбек в магазинах 3, лимит кэшбека на одну операцию до 10.000, месечный лимит кэшбека 150.000. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.`n- .кредит: Любые финансовые договоры(Займы, кредиты и т.д) игроки совершают на свой страх и риск. Администрация не несет ответственности и не является гарантом сделки.`n- .сделка: Приветствую, администрация не следит за сделками игроков.`n- .краш: Укажите статический ID госсотрудника с которым происходило RP. Также Вам стоит загрузить видео краша, если таковое имеется.`n- .модел: Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.`n- .бизограб: Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC(Продавца) огнестрелом(Только один человек должен грабить). Приятной игры на Majestic RP.`n- .огр: Приветствую. Чтобы начать ограбление Банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком(Как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов. Можно грабить 1 раз в день каждой огранизации. После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар. Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка». «Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты.`n
        return
;===================================================================================
            Cli4:
    MsgBox, 8192, Описание "𝐂𝐥𝐢𝐜𝐡𝐞 𝟒",- .погода: К сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP.`n- .реп: Пожалуйста, уточните свой вопрос подробнее в "Обращения". Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов в "Обращение" неограниченно, вы можете полностью расписать Вашу проблему/вопрос.`n- .неувид: К сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.`n- .актуал: Обращение неактивно более трёх минут, вынужден его закрыть. Если же у Вас есть не решенный вопрос/проблема создайте новое и ожидайте ответа.`n- .нетп: Администрация не телепортирует игроков, Вам нужно добраться до места самостоятельно.`n- .кости: Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.`n- .да: Да.`n- .нет: Нет.`n- .капт: Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.`n- .биз: Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед бизваром и после него, обратитесь к своим кураторам фракции в дискорд.`n- .зкайо: На острове имеется несколько точек захвата медицинских, военных, технических материалов. Для захвата Вам необходимо взять с собой маячки(Подберите цвета), если же у Вас маячки зелёного цвета Вы сможете захватить военные материалы, синего Вашей целью станут технически при наличии красных Вам откроется возможность захватить медицинские. Захват можно начать в радиусе 50м от точки погрузки, после активации маячка появится обозримая зона захвата, если выйти за зону захвата или все захватчики умрут, маячок уничтожается, точка переходит в спокойное состояние как до захвата. Не стоит забывать и про сигнализацию, если Вы её не выключите все госструктуры будут в момент оповещены и Вас будет ждать серьёзное сопротивление(Функционально на захват материалов это не повлияет). После захвата блип на карте красится в цвет организации захватчиков. Игроки смогут забирать материалы с точки и грузить их в личную/арендованную лодку - в городе перегружать в матовозку.`n- .перико: У всех силовых фракций появилась метка для телепортации, фракции EMS/WN/GOV лишены её. Отделение LSCSD в Сэнди-Шорс тоже не имеет метки. Каждая фракции телепортируется в одну точку на острове, таким путём и обратно. Однако Вы не сможете телепортироваться с точки другой фракции. Пример: Я из FIB и хочу сделать телепорт на территории LSCSD - У меня не выйдет. На острове, вблизи особняка и на его территории, есть машины, вертолёт и квадроциклы с ними может взаимодействовать лишь SANG, возможность заспавнить своё ТС также сохранена, для этого воспользуйтесь меткой. Также SANG стал обладателем ещё одного склада на Кайо-Перико, он аналогичен Вашему на форте. Если на форте будет заполнено 20.000 то и на острове тоже.`n- .сирена: Вышку можно взломать, не будет обновляться статус контроля точек(10 минут). Для взлома нужен "Программатор ЭБУ" и "Кабель радио сигналов". Кабель можно получить при ограблении магазина 24/7, выпадает(Шанс редко-средне), он одноразовый и после использования он пропадает. Взлом происходит в мини-игре. После удачного взлома, на мини карте не будет отображаться статус захвата точек для SANG(10 минут). После неудачного взлома, сразу срабатывает сирена. SANG могут восстановить работу вышки нажав "Е" на метке вышки.`n- .маяк: Маячки могут выпасть с "AirDrop" или же при ограблении 24/7. Шансы выпадения у всех маячков разный.`n- .зоо: Система животных. Могут спавниться различные животные, от крыс до оленей по всей карте. Некоторые виды животных можно разделать и получить мясо. Мясо можно жарить и употреблять в пищу. Домашних животных которые гуляют по карте, можно гладить.`n- .лоу: Пункт "Режим низкого качества" в F2 > Настройки > Дополнительно. Она отключает любую синхронизацию одежды(Кроме фракционной), а также уменьшает дистанцию прогрузки всех авто и игроков, тем самым уменьшая нагрузку видеопамяти.`n- .скин: Оружие появляется в донат инвентаре, его можно будет распылить. Однако при его применении невозможно дальнейшее распыление. Чтобы применить скин на оружие: F2 - Магазин - Cкины - Выбираете оружие и скин к нему - Применить, скин применяется ко всем оружиям выбранного типа. Скин привязывается к игроку, выбить оружие со скином/сбросить/обменять/продать - невозможно.`n- .инт: Популярные интерьеры на карте: "Особняк у виноградников" - открытый интерьер не имеющий функционала, расположен левее от центра карты. "Суд" - открытый интерьер не имеющий функционала, расположен неподалёку от LSPD. Зачастую применяется во время заседаний Верховного или же окружного суда. "Университет" - открытый интерьер не имеющий функционала, расположен неподалёку от Японской мафии. "Старый офис FIB" - открытый интерьер не имеющий функционала, расположен неподалёку от EMS.`n- .вот: Выборы активны с 10:00 - 10:00 по московскому времени. Проголосовать может каждый от 3-го уровня игрового персонажа, по принцыпу один голос на один аккаунт. голосование проходит в левом крыле Мэрии(На карте флаг USA).`n- .одворк: Теперь при каждом устройстве на работу Вы получаете соответствующий комплект одежды. Он снимется автоматически при увольнении/прекращении работы. Если же у Вас мед комплект то Вам нужно пройти курс лечения.`n- .холвех: "Холодный старт" - при запуске ТС издаёт характерный звук и даёт небольшую задержку перед стартом.`n
        return
;===================================================================================
            MemoBlock:
    MsgBox, 8192, Описание "𝐌𝐞𝐦𝐨", Скилы: `n stamina - выносливость`n strength - сила`n lung_capacity - дыхание`n wheelie_ability - вождение`n flying_ability - полет`n shooting_ability - стрельба`n stealth_ability - скрытность`n`n builder - Строитель`n butcher - Мясник`n trucker - Дальнобойщик`n fishing - Рыбалка`n busdriver - Водитель автобуса`n moneycollector - Инкассатор`n vineyard - Виноградник`n lumberjack - Лесоруб`n garbagecollector - Мусорщик`n farmer - Фермер`n burger - Повар`n mushroomer - Грибник`n gopostal - почтальон`n`n gangjob - Гетто закладчик`n mafiajob - Мафия закладчик`n bikerjob - Байкер закладчик`n hijacker - Угонщик`n`nЛицензии:`n drived - Легковой транспорт`n drivem - Мотоциклы`n CDLA - Тягачи и моногрузовики`n CDLB - Пикапы и грузовики`n CDWL - Оружие`n FH - Охота и рыбалка`n Business - Бизнесы`n`nЭлементы амфитеатра:`n ID 0 - Одна стойка для выступлений`n ID 1 - Две стойки для дебатов`n ID 2 - Три стойки для дебатов`n ID 3 - Четыре стойки для дебатов`n ID 4 - Американские флаги вдоль и на сцене`n ID 5 - Камеры на сцене`n ID 6 - Стол с креслами и баннерами на сцене для конкурса талантов`n
        return
;===================================================================================
            Ski:
    MsgBox, 8192, Описание "𝐒𝐤𝐢𝐥𝐥𝐬", Навыки:`n- .вынос: Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.`n- .сила: Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.`n- .дых: Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.`n- .вожден: Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.`n- .полет: Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.`n- .скрытн: Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).`n- .стрельба: Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.`n- .скилрыб: Рыбак - навык профессии прокачивающийся путём ловли рыбы (F3>Работа>Рыбак). 1 lvl Зоны: 1, 2, 3, 4. Рыба: Форель(До 196). 2 level Зоны: 5,6. Рыба: Камбала(До 588). 3 level Зоны: 7,8. Рыба: Тунец(До 1 225). 4 level Зоны: 9,10. Рыба: Красный солдат(До 2 205). 5 level Зона 11. Рыба: Карась(До 3 920). 6 level Зона 12. Рыба: Оранжевый карп(До 6 125). 7 level Зона 13. Рыба: Аквамарин(До 8 200).  8 level Зона 14. Рыба: Золотая рыбка. Данный уровень является максимальным в данной профессии.`n- .скилфер: Фермер - навык профессии прокачивающийся путём работы на ферме(F3>Работа>Фермер). 1 lvl - Апельсины. 2 lvl - Пшеница. 3 lvl - Картофель. 4 lvl - Капуста. 5 lvl - Кукуруза. 6 lvl - Тыква. 7 lvl - Бананы, данный уровень финальный.`n- .скилстр: Строитель - навык профессии прокачивающийся путём работы на стройке(F3>Работа>Строитель).`n- .скилпоч: Почтальон - навык профессии прокачивающийся путём работы на почте(F3>Работа>Почтальон).`n- .скилбус: Водитель автобуса - навык профессии прокачивающийся путём работы на автобусе(F3>Работа>Водитель автобуса).`n- .скилмус: Мусорщик - навык профессии прокачивающийся путём работы на мусоровозе(F3>Работа>Мусорщик).`n- .скилмяс: Мясник - навык профессии прокачивающийся путём работы на мясокомбинате(F3>Работа>Мясник).`n- .скилинк: Инкассатор - навык профессии прокачивающийся путём работы на инкасаторе(F3>Работа>Инкассатор).`n- .скилдал: Дальнобойщик - навык профессии прокачивающийся путём грузоперевозок(F3>Работа>Дальнобойщик).`n- .скилгриб: Грибник - навык профессии прокачивающийся путём сбора грибов(F3>Работа>Грибник).`n- .скиллес: Лесник - навык профессии прокачивающийся путём рубки деревьев(F3>Работа>Лесник).`n- .скилшах: Шахтер - навык профессии не имеющий прокачки, необходим при семейных контрактах(F3>Работа>Шахтёр).`n
        return
;===================================================================================
            Change:
    MsgBox, 8192, Обновления в кастомке,- 24.03.2022`n- Полное изменение GUI.`n- Исправление "Клише".`n`n- 25.03.2022`n- Добавление кастомных команд:`n - .утон`n - .рес`n - .хил`n - .тпб и тп.`n- Добавление плашек ID/Defolt/Biz/Capt.`n`n- 10.07.2022`n- Убраны лишние плашки.`n- Добавлен спавнер авто(Цикличный).`n- Разделение дефолных телепортов/команд на более дефолные и кастомные.`n- Создание полного описания в "Info".`n`n- 12.07.2022`n- Добавлен "Resolution" и возможность настроить "fastreport" через него.`n- Залил AHK ответы про остров Кайо-Перико.`n`n- 17.07.2022`n- Добавлен .скин - ответ по заданию БП.`n`n- 17.07.2022`n- Добавлен .инт - ответ по интерьерам и для чего они.`n- Подредактирован "fastreport", теперь не должно дёргать экран.`n- Все команды оптимизированы под новый чат.`n- Новые телепорты по всем работам.`n- Добавлены пару ответов в "𝐂𝐥𝐢𝐜𝐡𝐞 𝟏" и "𝐂𝐥𝐢𝐜𝐡𝐞 𝟒".`n- Актуализировал памятку.`n- Добавление функции "𝐔𝐩𝐭𝐮𝐫𝐧".`n
        return
;===================================================================================
