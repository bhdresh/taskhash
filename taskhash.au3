#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <File.au3>

Global $dir = @WorkingDir
FileChangeDir(@TempDir)
FileDelete(@TempDir & "\psexec.exe")
FileDelete(@TempDir & "\taskhashlocal.exe")
FileInstall("psexec.exe", @TempDir & "\psexec.exe")
FileInstall("taskhashlocal.exe", @TempDir & "\taskhashlocal.exe")

Local $sDrive = "", $sDir = "", $sFileName = "", $sExtension = ""
Local $aPathSplit = _PathSplit(@ScriptFullPath, $sDrive, $sDir, $sFileName, $sExtension)

Global $ip = ""
Global $user = ""
Global $pass = ""
Global $check_target = ""
Global $check_user = ""
Global $check_pass = ""

If $CmdLine[0] < 6 Then
	ConsoleWrite(@CRLF&" "&@CRLF)
	ConsoleWrite("Usage: "&$sFileName&$sExtension&" -t <Target IP> -u <username> -p <password>")
	ConsoleWrite(@CRLF&" "&@CRLF)
	Exit
EndIf

For $i = 1 To $CmdLine[0] Step 1
If $CmdLine[$i] = "-t" Then
	$check_target="pass"
EndIf
If $CmdLine[$i] = "-u" Then
	$check_user="pass"
EndIf
If $CmdLine[$i] = "-p" Then
	$check_pass="pass"
EndIf
Next

if not $check_target = "pass" or Not $check_user = "pass" or not $check_pass = "pass" Then
	ConsoleWrite(@CRLF&" "&@CRLF)
	ConsoleWrite("Usage: "&$sFileName&$sExtension&" -t <Target IP> -u <username> -p <password>")
	ConsoleWrite(@CRLF&" "&@CRLF)
	Exit
EndIf

For $i = 1 To $CmdLine[0] Step 1
    If $CmdLine[$i] = "-t" Then
		$ip = $CmdLine[$i+1]
	EndIf

	if $CmdLine[$i] = "-u" Then
		$user = $CmdLine[$i+1]
	EndIf

	if $CmdLine[$i] = "-p" Then
		$pass = $CmdLine[$i+1]
	EndIf

	if $CmdLine[$i] = "-h" Then
		ConsoleWrite(@CRLF&" "&@CRLF)
		ConsoleWrite("Usage: "&$sFileName&$sExtension&" -t <Target IP> -u <username> -p <password>")
		ConsoleWrite(@CRLF&" "&@CRLF)
	EndIf

	Next


ConsoleWrite("Running taskhash remotely"&@CRLF)

RunWait(@ComSpec & " /C " & "psexec.exe \\"&$ip&" -u "&$user&" -p "&$pass&" -c -f taskhashlocal.exe","",@SW_HIDE,0x10000)

ConsoleWrite("Creating session"&@CRLF)

RunWait(@ComSpec & " /C " & "net use \\"&$ip&"\c$ /u:"&$user&" "&$pass,"",@SW_HIDE,0x10000)

ConsoleWrite("Copying file from remote host"&@CRLF)

RunWait(@ComSpec & " /C " & "copy /Y \\"&$ip&"\c$\windows\system32\_processes_* "&$dir,"",@SW_HIDE,0x10000)

ConsoleWrite("Deleting remote copy of the file"&@CRLF)

RunWait(@ComSpec & " /C " & "del /F \\"&$ip&"\c$\windows\system32\_processes_*","",@SW_HIDE,0x10000)
