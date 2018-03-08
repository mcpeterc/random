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

;#InstallKeybdHook


; ---------------------------------
; NUMPAD
; ---------------------------------

^!numpad1::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
SendInput PC - %A_DD%-%A_MM%-%A_YYYY%:`nGenstartede terminalen i rigtigt rækkefølge:`nSluk/stop c8win32.exe.`nBed kunden holde den gule knap og komma/punktum knappen inde - Efter 30 sekunder starter jeg BUANCO igen…`n`nHvis terminalen ikke starter korrekt op, så stopper jeg igen BUANCO og så tager jeg en backup af datastoren ved at:`nGå i \BUANCO\NETS\deploy\datastore og lav en ny folder, og kopiere filerne ind i den nye mappe.`nBed kunden holde den gule knap og komma/punktum knappen inde.`nEfter 30 sekunder starter jeg Combridgecontainer og trykker Init.`nSå trækker Dankort-terminalen nye config filer. Når den skriver lukket i displayed starter jeg BUANCO`n`nI sjældne tilfælde vil Dankorts terminalen ikke boot'e korrekt op og så vises en fejlkode - `nHer er forklaringer på disse fejlkoder: http://support.mss.dk/support/wp-content/uploads/sites/4/2013/09/FlexifejlKoder.pdf 
return



^!numpad2::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, PC - %A_DD%-%A_MM%-%A_YYYY%:`nHjalp med at genudskrive tidligere bon/zbon, sådan gjorde jeg:`nFra kasseprogrammet går jeg i "Funktioner" eller "Manager" siden.`nHer trykker jeg på knappen Udskriv tidligere bon...`nSå finder jeg den rigtige dato, og herefter den bon/zbon det drejer sig om og trykker Udskriv.
sleep 50
return



^!numpad3::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, PC - %A_DD%-%A_MM%-%A_YYYY%:`nline1`nline2`nline2`nline2`nline2`nline2`nline2`nline2`nline2`nline2`nline2 
return



^!numpad4::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot4
return



^!numpad5::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot5
return


 
^!numpad6::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot6
return 



^!numpad7::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot7
return



^!numpad8::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot8
return



^!numpad9::
WinGetTitle, CurrentWinTitle    ; Gets the title of the active window
Sendinput, bot9
return



; ---------------------------------
; KEYS
; ---------------------------------

+!p::
sendinput PC - %A_DD%-%A_MM%-%A_YYYY%:
return





















