;; Adoni's AHK Windows Mods that make his PC use a bit easier
;; Some scripts are borrowed from The Macro King, TaranVH --> https://github.com/TaranVH/2nd-keyboard/blob/master/Almost_All_Windows_Functions.ahk

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance force ; So that you don't have to confirm script reload


#IfWinActive

;This holds the "BACK" script (in Google Chrome and Mozilla Firefox tabs);
F15:: 									; <----------------- Bound to G3 macro key on Corsair K95 Platinum keyboard
if WinActive("ahk_class MozillaWindowClass")
	Send ^+{tab} ; CTRL SHIFT TAB is the shortcut for "go to previous tab"
if WinActive("ahk_class Chrome_WidgetWin_1")
	Send ^+{tab}
if WinActive("ahk_exe explorer.exe")
	Send !{left} ; ALT LEFT is the explorer shortcut to go "back" or "down" one folder level.
Return


F13::		  ; <--------------- Bound to G1 macro key on Corsair K95 Platinum keyboard
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
if WinActive("ahk_exe chrome.exe")
	sendinput, ^{tab}
else
	WinActivate ahk_exe chrome.exe
Return


F14::		  ; <---------------- Bound to G2 macro key on Corsair K95 Platinum keyboard
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
;; Should probably just be a native feature of modern Windows operating systems

#o::		; <-- Win + O
Run, C:\Users\adoni\OneDrive
Return

^#o::		; <-- CTRL + Win + O
Run, C:\Users\adoni\OneDrive - St.John's University
Return
