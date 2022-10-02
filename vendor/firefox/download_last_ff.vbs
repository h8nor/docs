Option Explicit

' License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/

' Downloading the latest ESR version of Firefox to your Desktop
Const VERSION = "1.02.004"

Set objScriptShell = CreateObject("WScript.Shell")
' The component Msxml2.XMLHTTP.6.0 doesn't support redirect on Win10
Set objXmlServ = CreateObject("Msxml2.ServerXMLHTTP")

Dim objScriptShell, objXmlServ, strPath
Const JSON_ATTR = Null
Const FILE_NAME = "\Setup Firefox"
Const LANG = "ru" ' "en-US"

'Private Sub Auto_Load()
	Dim ProcessorArch, WindowsBit
	ProcessorArch = objScriptShell.Environment("System").Item("PROCESSOR_ARCHITECTURE")
	If ProcessorArch = "x86" Then WindowsBit = "win" Else WindowsBit = "win64"
	
	Call GetRequest("https://download.mozilla.org/?product=firefox-esr-latest-ssl&os=" _
		& WindowsBit & "&lang=" & LANG, Replace(ProcessorArch, "AMD", " x") & ".exe")
	
	Set objXmlServ = Nothing
	Set objScriptShell = Nothing
'End Sub


Private Function GetRequest(ByRef request, ByRef contentType)
	Dim objStream, data
	
	On Error Resume Next
	objXmlServ.Open "GET", request, False
	objXmlServ.Send
	If objXmlServ.Status = 200 And Err.Number = 0 Then
		If InStr(contentType, ".") > 0 Then
			Set objStream = CreateObject("ADODB.Stream")
			objStream.Mode = 3
			objStream.Type = 1
			objStream.Open
			objStream.Write objXmlServ.responseBody
			objStream.SaveToFile objScriptShell.SpecialFolders("Desktop") _
				& FILE_NAME & " ESR" & contentType, 2
			Set objStream = Nothing
			If Err.Number = 0 Then objScriptShell.Popup FILE_NAME _
				& contentType & " downloaded ", 9, "VBScript", 64
		Else
			objStream = objXmlServ.responseText
			For Each data In Split(objStream, """,""")
				strPath = Split(data, """:""")
				
				If strPath(0) = JSON_ATTR Then
					GetRequest = strPath(1)
					Exit For
				End If
			Next
		End If
	ElseIf Err.Number = -&H7ff8fffb Then
		objScriptShell.Popup "msxml6.dll https: Access is denied", 15, "VBScript", 16
	Else
		MsgBox Join(Array("Error connect ", objXmlServ.Status, objXmlServ.statusText)), 16
	End If
	On Error GoTo 0
End Function
