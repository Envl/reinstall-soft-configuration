#NoTrayIcon
#SingleInstance force
DetectHiddenWindows,On


;~ DetectHiddenText,On
;#t::run E:\TotalCommander\TOTALCMD64.EXE /O
;-------------------TC--------------------------
#e::
;Win + E
IfWinNotExist, ahk_class TTOTAL_CMD
;不存在就运行TC
    Run,E:\TotalCommander\TOTALCMD64.EXE /O
;~ 	#t::run E:\TotalCommander\TOTALCMD64.EXE /O
;存在就激活
Else
{
    IfWinActive, ahk_class TTOTAL_CMD
;
       WinMinimize, 
;
    Else
       WinActivate,
;
}
return
;-------------------Everthing-------------------
#f::

;Win + F
IfWinNotExist, ahk_class EVERYTHING
;
    Run,"E:\Everything\Everything.exe"
;~ 	#t::run E:\TotalCommander\TOTALCMD64.EXE /O

;
Else
{
    IfWinActive, ahk_class EVERYTHING
;
       WinClose,
;
    Else
       WinActivate,
;
}
return