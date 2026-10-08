Option Explicit

Dim fso, shell, appFolder, python, appScript, command
Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

appFolder = fso.GetParentFolderName(WScript.ScriptFullName)
python = shell.ExpandEnvironmentStrings("%LOCALAPPDATA%") & "\Microsoft\WindowsApps\python3.11.exe"
appScript = fso.BuildPath(appFolder, "app.py")

If Not fso.FileExists(appScript) Then
    MsgBox "The study app file is missing:" & vbCrLf & appScript, vbExclamation, "CompSci Practice"
    WScript.Quit 2
End If

shell.CurrentDirectory = appFolder
shell.Environment("PROCESS")("OCR_STUDY_PORT") = "8770"

' Stop any older copy already holding the app port before starting this copy.
On Error Resume Next
Dim request
Set request = CreateObject("WinHttp.WinHttpRequest.5.1")
request.SetTimeouts 500, 500, 500, 500
request.Open "POST", "http://127.0.0.1:8770/api/stop", False
request.SetRequestHeader "Content-Type", "application/json"
request.Send "{}"
WScript.Sleep 1800
Set request = Nothing
On Error GoTo 0

If fso.FileExists(python) Then
    command = Chr(34) & python & Chr(34) & " " & Chr(34) & appScript & Chr(34)
Else
    command = "py -3.11 " & Chr(34) & appScript & Chr(34)
End If
shell.Run command, 0, False
