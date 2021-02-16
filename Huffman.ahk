Gui, Add, Text, x82 y9 w320 h30, Huffman Eingabe wird in Clipboard gespeichert
Gui, Add, Text, x150 y29 w50 h30 , Buchstabe
Gui, Add, Text, x150 y50 w50 h30 , Anzahl
Gui, Add, Edit, x42 y29 w100 h20 vBst Limit1
Gui, Add, Edit, x42 y50 w100 h20 vNmb Number
Gui, Add, Button, x42 y80 w100 h30, Ausgabe
Gui, Show, w479 h379, Untitled GUI
return

GuiClose:
ExitApp

ButtonAusgabe:
Gui, Submit
n := Nmb
a := Bst
;MsgBox, %n% , %a%
i := 1
e := a
while(i<n)
{
	
	e = %e%%a%
	i++
}
clipboard := e
MsgBox, %e%
GuiControl,, Nmb,
GuiControl,, Bst,
Gui, Show, w479 h379, Untitled GUI

return