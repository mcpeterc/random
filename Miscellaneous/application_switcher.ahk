#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;FORKLARING
;!	{Alt}	{Alt down}	{Alt up}	Send !a presses ALT+a
;+	{Shift}	{Shift down}	{Shift up}	Send +abC sends the text "AbC"
;Send !+a presses ALT+SHIFT+a
;^	{Ctrl}	{Ctrl down}	{Ctrl up}	Send ^{Home} presses CONTROL+HOME
;#	{LWin}
;{RWin}	{LWin down}
;{RWin down}	{LWin up}
;{RWin up}	Send #e holds down the Windows key and then presses the letter "e"







#IfWinActive

!+^1::
switchToExplorer(){
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, taranexplorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
	GroupActivate, taranexplorers, r
else
	WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
}

; ;trying to activate these windows in reverse order from the above. it does not work.
; ^+F2::
; IfWinNotExist, ahk_class CabinetWClass
	; Run, explorer.exe
; GroupAdd, taranexplorers, ahk_class CabinetWClass
; if WinActive("ahk_exe explorer.exe")
	; GroupActivate, taranexplorers ;but NOT most recent.
; else
	; WinActivatebottom ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
; Return

;closes all explorer windows :/
;^!F2 -- for searchability

closeAllExplorers()
{
WinClose,ahk_group taranexplorers
}



!+^2::
switchToWord()
{
Process, Exist, WINWORD.EXE
;msgbox errorLevel `n%errorLevel%
	If errorLevel = 0
		Run, WINWORD.EXE
	else
	{
	IfWinExist, Microsoft Office Word, OK ;checks to see if the annoying "do you want to continue searching from the beginning of the document" dialouge box is present.
		sendinput, {escape}
	else if WinActive("ahk_class OpusApp") 
		sendinput, {F3} ;set to "go to next comment" in Word.
	else
		WinActivate ahk_class OpusApp
	}
}




!+^3::
switchToSuperOffice()
{
Process, Exist, SOCRM.EXE
;msgbox errorLevel `n%errorLevel%
	If errorLevel = 0
		Run, SOCRM.EXE
	else
	{
	IfWinExist, "SuperOffice® Sales and Marketing - MSS Professional A/S", OK ;checks to see if the annoying "do you want to continue searching from the beginning of the document" dialouge box is present.
		sendinput, {escape}
	else if WinActive("ahk_class SVWORK")
		sendinput, {F3} ;set to "go to next comment" in Word.
	else
		WinActivate ahk_class SVWORK
	}
}




!+^4::
switchToExel()
{
Process, Exist, EXCEL.EXE
;msgbox errorLevel `n%errorLevel%
	If errorLevel = 0
		Run, EXCEL.EXE
	else
	{
	IfWinExist, "Excel", OK ;checks to see if the annoying "do you want to continue searching from the beginning of the document" dialouge box is present.
		sendinput, {escape}
	else if WinActive("ahk_class XLMAIN")
		sendinput, {F3} ;set to "go to next comment" in Word.
	else
		WinActivate ahk_class XLMAIN
	}
}





