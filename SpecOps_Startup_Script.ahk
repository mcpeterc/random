#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#Persistent


;FORKLARING
;!	{Alt}	{Alt down}	{Alt up}	Send !a presses ALT+a
;+	{Shift}	{Shift down}	{Shift up}	Send +abC sends the text "AbC"
;Send !+a presses ALT+SHIFT+a
;^	{Ctrl}	{Ctrl down}	{Ctrl up}	Send ^{Home} presses CONTROL+HOME
;#	{LWin}
;{RWin}	{LWin down}
;{RWin down}	{LWin up}
;{RWin up}	Send #e holds down the Windows key and then presses the letter "e"



; ---------------------------------------------------------------------------------------------------
;  Script icon
; -------------------------------------
;iconx:
;--http://www.autohotkey.com/board/topic/121982-how-to-give-your-scripts-unique-icons-in-the-windows-tray/
;- http://www.iconarchive.com/show/multipurpose-alphabet-icons-by-hydrattz.html

I_Icon = %A_ScriptDir%\img\normal.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
return




; ---------------------------------------------------------------------------------------------------
;  ¯\_(ツ)_/¯ GUI HOSTscript ¯\_(ツ)_/¯ og Standard tekster til SuperOffice
; ---------------------------------------------------------------------------------------------------

;#InstallKeybdHook

;-------------------------------------------------------
; AUTO EXECUTE SECTION FOR INCLUDED SCRIPTS
; Scripts being included need to have their auto execute
; section in a function or subroutine which is then
; executed below.
;-------------------------------------------------------
Gosub, gui_autoexecute
;-------------------------------------------------------
; END AUTO EXECUTE SECTION
return
;-------------------------------------------------------

; Load the GUI code
#Include %A_ScriptDir%\GUI\GUI.ahk

; General settings
#Include %A_ScriptDir%\Miscellaneous\miscellaneous.ahk

; Inputs til Superoffice m.m.
#include %A_ScriptDir%\inputs\inputs.ahk

; Application switcher.
#include %A_ScriptDir%\Miscellaneous\application_switcher.ahk

; ---------------------------------
; Script Icon
; ---------------------------------



; ---------------------------------
; Script access
; ---------------------------------

;^!a::edit %A_ScriptName%   ; Alt + a                 ; Open current script in editor
;^!+a::run explorer.exe %A_ScriptDir%   ;Alt+Shift+a        ; Open the current script's path

; ---------------------------------
; Script Suspend
; ---------------------------------

; Suspend AutoHotKey
#ScrollLock::Suspend ; Win + scrollLock
return



; ---------------------------------
; Search Everything
; ---------------------------------
^+c::
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
}



; ---------------------------------
; Default state of lock keys
; ---------------------------------

SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return




; ---------------------------------
; Empty trash
; ---------------------------------

#Del::FileRecycleEmpty ; win + del
return



; ---------------------------------
; Skift lydafspiller
; ---------------------------------
ScrollLock:: 
  toggle:=!toggle ;toggles up and down states. 
  Run, mmsys.cpl 
  WinWait,Sound ; Change "Sound" to the name of the window in your local language 
  if toggle
    ControlSend,SysListView321,{Down 2} ; This number selects the matching audio device in the list, change it accordingly 
  Else
    ControlSend,SysListView321,{Down 6} ; This number selects the matching audio device in the list, change it accordingly 
  ControlClick,&Set Default ; Change "&Set Default" to the name of the button in your local language 
  ControlClick,OK 
return





; ---------------------------------
; Åben hemmeligt Doc
; ---------------------------------
Pause::
   run, "C:\Users\Peter\Documents\doc.txt"
Return


; ---------------------------------
; BUANCO luk mig ind
; ---------------------------------
+!o::
if not A_IsAdmin
	Run, *RunAs %A_ScriptDir%\BUANCO\lukmigind.bat
else
    Run, %A_ScriptDir%\BUANCO\lukmigind.bat
return






































