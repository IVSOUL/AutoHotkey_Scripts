;
; AHK�汾: 		B:1.0.48.5 L:1.0.92.0
; ����:			����/English
; ƽ̨:			Win7
; ����:			���� <healthlolicon@gmail.com>
;
;
;
;

#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ;
TrayTip,,ѡ���ļ� Ctrl+E
Return

^e::
ClipboardOld:=ClipboardAll
Clipboard=
send,^c
ClipWait
SwapName(Clipboard)
Clipboard:=ClipboardOld
Return

Swapname(Filelist)
{
	StringSplit,File_,Filelist,`n
	SplitPath,File_1,FN1,Dir
	SplitPath,File_2,FN2
	RunWait,%ComSpec% /c ren `"%File_1%`" `"temp`",,Hide
	RunWait,%ComSpec% /c ren `"%File_2%`" `"%FN1%`",,Hide
	RunWait,%ComSpec% /c ren `"%Dir%\temp`" `"%FN2%`",,Hide
	return,0
	}