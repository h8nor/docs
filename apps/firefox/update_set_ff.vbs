Option Explicit

' License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/

' Copy user.js in all profilefolders to get around those random profile names
Const VERSION = "0.04.000"

Dim fso, WshSysEnv, ProfilePath, ProfileFolder
Const V = ".default-"
Const FILE_TO_COPY = "user.js"
Const FILE_HSTS = "SiteSecurityServiceState.txt"
' https://en.wikipedia.org/wiki/HSTS

Set fso = CreateObject("Scripting.FileSystemObject")
Set WshSysEnv = CreateObject("WScript.Shell").Environment("Process")

ProfilePath = WshSysEnv.Item("AppData") & "\Mozilla\Firefox\Profiles\"
If fso.FolderExists(ProfilePath) And fso.FileExists(FILE_TO_COPY) Then
	For Each ProfileFolder In fso.GetFolder(ProfilePath).Subfolders
		If Right(ProfileFolder, 12) = V & "esr" Or Right(ProfileFolder, 16) = V & "release" Then
			fso.GetFile(FILE_TO_COPY).Copy ProfileFolder & "\" & FILE_TO_COPY, True
			On Error Resume Next
				fso.OpenTextFile ProfileFolder & "\" & FILE_HSTS, 2, True
				fso.GetFile(ProfileFolder & "\" & FILE_HSTS).Attributes = 1
			'	SetAttr ProfileFolder & "\" & FILE_HSTS, 1 ' Another how
		End If
	Next
Else
	MsgBox "Profile directory not exits ", vbCritical
End If

Set WshSysEnv = Nothing
Set fso = Nothing
