Gui, Add, Text, x82 y9 w320 h30, Ausgabe wird im Clipboard abgelegt
Gui, Add, Text, x150 y29 w50 h30 , Buchstabe
Gui, Add, Text, x150 y50 w50 h30 , Anzahl
Gui, Add, Edit, x42 y29 w100 h20 vBst Limit1
Gui, Add, Edit, x42 y50 w100 h20 vNmb Number
Gui, Add, Button, x42 y80 w100 h30, Ausgabe
Gui, Add, Link,, Klick <a href="https://people.ok.ubc.ca/ylucet/DS/Huffman.html">hier</a> um den Algorithmus zu �ffnen
Gui, Show, w300 h150, Huffman_Eingabe GUI
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
Gui, Show, w300 h150, Huffman_Eingabe GUI
return