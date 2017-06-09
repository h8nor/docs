Option Explicit

' License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/

' Copy user.js in all profilefolders to get around those random profile names
Const VERSION = "0.02.000"

Dim fso, WshSysEnv, ProfilePath, ProfileFolder
Const FILE_TO_COPY = "user.js"

Set fso = CreateObject("Scripting.FileSystemObject")
Set WshSysEnv = CreateObject("WScript.Shell").Environment("Process")

ProfilePath = WshSysEnv.Item("AppData") & "\Mozilla\Firefox\Profiles\"
If fso.FolderExists(ProfilePath) And fso.FileExists(FILE_TO_COPY) Then
	For Each ProfileFolder In fso.GetFolder(ProfilePath).Subfolders
		If Right(ProfileFolder, 8) = ".default" Then fso.GetFile(FILE_TO_COPY) _
			.Copy ProfileFolder & "\" & FILE_TO_COPY, True
	Next
End If

Set WshSysEnv = Nothing
Set fso = Nothing
