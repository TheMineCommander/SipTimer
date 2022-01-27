#SingleInstance, force
N = 0
InputBox, MLCount, Enter Number of Ounces, How many ounces would you like to drink?
InputBox, HourCount, Enter Number of Hours, How many hours would you like this program to last?
Sipsize = 23
MLCount *= 29.5
PerTM = %MLCount%
PerTM /= %HourCount%
HourCount *= 2
PerTM /= 2
;MsgBox,,e, %PerTM% %MLCount%
PerTM = % Round(PerTM)
MLCount = % Round(MLCount)
PerTM /= %Sipsize%
;MsgBox %PerTM% %MLCount%
Loop, %HourCount% {
	Sleep 10000 ;1800000
	N++
	M = %MLCount%
	M /= %HourCount%
	M *= %N%
	M /= 29.5735
	O = %MLCount%
	O /= 29.5735
	M = % Round(M)
	O = % Round(O)
	;MsgBox N = %N%, M = %M%, O = %O%
	;Sleep 3000
	Gui, Font, s20 cyellow
	Gui, Color, black
	Gui, Show, h800 w1000 Maximize, DRINK WATER
	Gui, Add, Text,, You must drink %PerTM% sips of water!
	Gui, Add, Button, gCancel, I have completed my task of drinking water.
	Gui, Add, Text,, You have completed %N% cycle(s) out of %HourCount%, consuming %M% OZ out of %O%!
	/*
	Thanks for looking at the code! Have a wonderful day!
	*/
	WinSet, AlwaysOnTop, On, DRINK WATER
	WinMaximize, DRINK WATER
}
Return

GuiClose:
Gui, Destroy
Return
Return
Return

Cancel:
Gui, Destroy
Return