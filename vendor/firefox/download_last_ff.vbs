Option Explicit

' License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/

' Downloading the latest version of Firefox to your Desktop
Const VERSION = "0.01.000"

Dim WshShell, xmlHTTP, ADOStream, ProcessorArch, WindowsBit
Const FILE_NAME = "\Setup Firefox "
Const LANG = "ru" ' "en-US"

Set WshShell = CreateObject("WScript.Shell")
Set xmlHTTP = CreateObject("MSXML2.XMLHTTP")

ProcessorArch = WshShell.Environment("System").Item("PROCESSOR_ARCHITECTURE")
If ProcessorArch = "x86" Then WindowsBit = "win" Else WindowsBit = "win64"
On Error Resume Next
	xmlHTTP.Open "GET", "https://download.mozilla.org/?product=firefox-latest&os=" _
		& WindowsBit & "&lang=" & LANG, False
	xmlHTTP.Send
	If Not xmlHTTP.Status = 200 Then
		MsgBox Join(Array("Error connect ", xmlHTTP.Status, xmlHTTP.statusText)), 16
	Else
		Set ADOStream = CreateObject("ADODB.Stream")
		ADOStream.Mode = 3
		ADOStream.Type = 1
		ADOStream.Open
		ADOStream.Write xmlHTTP.responseBody
		ADOStream.SaveToFile WshShell.SpecialFolders("Desktop") & FILE_NAME _
			& Replace(ProcessorArch, "AMD", "x") & ".exe", 2
		Set ADOStream = Nothing
	End If

Set xmlHTTP = Nothing
Set WshShell = Nothing
