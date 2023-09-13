Option Explicit

' License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/

' Copy this file to a folder with HTML documents before run
' Removing the advertising line for files created by version 4.x
Const VERSION = "0.01.000"

Sub CurrentDir(folder)
	Dim file, TextStream, txt, newtxt, jaw
	
	For Each file In folder.Files
	If EXT_SEARCH = fso.GetExtensionName(file) Then
		newtxt = vbNullString
		Set TextStream = file.OpenAsTextStream(1)
		While Not TextStream.AtEndOfStream
			txt = TextStream.ReadLine() & vbCrLf
			If InStr(txt, "Created with the Personal Edition") = 0 Then
				newtxt = newtxt & txt
			End If
		Wend
		TextStream.Close
		
		Set TextStream = fso.CreateTextFile(file, True)
		TextStream.Write newtxt
		TextStream.Close
	End If
	Next
    
	file = folder & "\js\hndsd.js"
'	Set txt = CreateObject("VBScript.RegExp")
'	txt.Global = True: txt.Pattern = "'[А-ЯЁ].{2,}'\[\["
	If fso.FileExists(file) Then
		Set TextStream = fso.GetFile(file).OpenAsTextStream(1)
		txt = StrConv(TextStream.ReadAll(), "windows-1251", "UTF-8")
		TextStream.Close
		
		jaw = Split(txt, ";"): newtxt = Split(jaw(1), "=")
		
		Set TextStream = fso.CreateTextFile(file, True)
		TextStream.Write StrConv(Replace(txt, newtxt(1), LCase(newtxt(1))), "UTF-8", "windows-1251")
		TextStream.Close
	End If
	If IsArray(jaw) Then
		jaw = " and file '" & fso.GetFileName(file) & "'"
	End If
	MsgBox "All '" & EXT_SEARCH & "-files' in the folder " & folder & jaw & " have been modifed.", vbInformation
End Sub

Function StrConv(Text, SourceCharset, DestCharset)
	With CreateObject("ADODB.Stream")
		.Charset = SourceCharset
		.Mode = 3: .Type = 2: .Open
		.WriteText Text: .Position = 0
		.Charset = DestCharset
		StrConv = .ReadText
	End With
End Function

Dim fso, folder
Const EXT_SEARCH = "html"

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))
CurrentDir(folder)
Set fso = Nothing
