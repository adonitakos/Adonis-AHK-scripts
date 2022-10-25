;; Adoni's AHK Windows Mods that make his PC use a bit easier
;; Lines 14-41 are borrowed from TaranVH --> https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Windows_Functions.ahk
;; Code below line 41 are my own!

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance force ; So that you don't have to confirm script reload


#IfWinActive

F15:: 									
if WinActive("ahk_class MozillaWindowClass")
	Send ^+{tab} 
if WinActive("ahk_class Chrome_WidgetWin_1")
	Send ^+{tab}
if WinActive("ahk_exe explorer.exe")
	Send !{left} ; ALT LEFT is the explorer shortcut to go "back" or "down" one folder level.
Return


F13::		  
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
if WinActive("ahk_exe chrome.exe")
	sendinput, ^{tab}
else
	WinActivate ahk_exe chrome.exe
Return


F14::		 
IfWinNotExist, ahk_exe firefox.exe
	Run, firefox.exe
if WinActive("ahk_exe firefox.exe")
	sendinput, ^{tab}
else
	WinActivate ahk_exe firefox.exe
Return


; --- Empties the Recycle Bin !!! --- ;
#DELETE::
FileRecycleEmpty
Return

;; --- Launches OneDrive directories -- ;;
;; This should honestly just be a native keyboard shortcut of Windows 10/11

#o::		; <-- Win + O
Run, C:\Users\adoni\OneDrive
Return

;; --- End of curly bracket comment --- ;;
;; * This is used to indicate what a closing curly bracket closes off
^!/::
Send, {Space}
SendRaw, // <--- ends here
Loop, 10
{
	Send, {Left}
}
Send, {Space}
Return

#IfWinActive, ahk_exe powershell.exe		;; <--- anything below this line will only work in PowerShell
;; --- Sends get-help in front of a PowerShell command --- ;;
^!H::
Send, {Home} 	;; jump to the beginning of the line (no matter where you are)
SendRaw, get-help 	;; type in get-help
Send, {Space} 	;; add the necessary space
Send, {End}	;; jump back to the end 
Send, {Space} ;; add a space
Return
