applicationname = Wrapper

Menu,Tray,Add,%applicationname%,Setting
Menu,Tray,Add,
Menu,Tray,Add,E&xit,Exit
Menu,Tray,Default,%applicationname%
Menu,Tray,Tip,%applicationname%
Return

ButtonOK:
GuiClose:
Gui, Submit
;ExitApp
return

Setting:
Gui, Add, Edit, x172 y100 w220 h50 vInput,"
Gui, Add, Button, x232 y200 w100 h30 , OK
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h379 w479, New GUI Window
Return

Exit:
ExitApp

!`::
send ^c
word = %Clipboard%
SendRaw %Input%%word%%Input%

