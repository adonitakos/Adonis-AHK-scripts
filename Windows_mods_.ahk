;; Adoni's AHK Windows Mods that make his PC use a bit easier
;; Some scripts are borrowed from 'The Macro King', TaranVH --> https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Windows_Functions.ahk

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance force ; So that you don't have to confirm script reload


#IfWinActive

;This holds the "BACK" script (in Google Chrome and Mozilla Firefox tabs);
F15:: 									
if WinActive("ahk_class MozillaWindowClass")
	Send ^+{tab} ; CTRL SHIFT TAB is the shortcut for "go to previous tab"
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
;; Should honestly just be a native feature of Windows 10/11

#o::		; <-- Win + O
Run, C:\Users\adoni\OneDrive
Return

#IfWinActive, ahk_exe powershell.exe		;; <--- anything below this line will only work in PowerShell
F16::
Send, {Home} 	;; jump to the beginning of the line (no matter where you are)
SendRaw, get-help 	;; type in get-help
Send, {Space} 	;; add the necessary space
Send, {End}	;; jump back to the end 
Send, {Space} ;; add a necessary space
Return
