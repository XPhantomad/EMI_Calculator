Gui, Add, Edit, x42 y29 w300 h20 vInpuut, aus Delphi kopiertes eingeben 

Gui, Add, Button, x150 y80 w60 h30, ab ghets
; Generated using SmartGUI Creator for SciTE
Gui, Show, w479 h379, Untitled GUI
return

GuiClose:
Gui, Submit
MsgBox, %Inpuut%
ExitApp

^m::
i := 0
l := "ewwwr : 0,45, rr : 0,34,"
f := substr(l, 1, 2)
g := substr(l, 3, 3)
while (d != ":")
{
	i++
	MsgBox, durchlauf %i%
	d := substr(l, i, 1) 
	MsgBox, %d%
	
}
t := substr(l, 1, i-2) ; ausgabe von er 
MsgBox, %t% muss es sein


i := i+3
n1 := i+1
while (n != ",")
{
	i++
	n := substr(l, i, 1)
	MsgBox, %n%
}
numb:= "0."+substr(l, n1, i-n1)
MsgBox, %numb%

e := numb + 1
MsgBox, %e%
 ; funktioniert soweit, das numd jetzt eine Zahl ist
