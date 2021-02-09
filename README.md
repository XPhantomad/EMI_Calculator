# EMI_Calculator
////Stand////

-error handling: in den Feldern, die keine Hex Werte erlauben, dürfen keine Buchstaben mehr eingegeben werden

wav wird nicht berechnet, wenn kein Mono/Stereo ausgewählt wurde (LSG: Standard Stereo auswählen)

-Fano.C für fano, scheint zu funktionieren

-Tonhöhe Funktion doch entfernt

-https://github.com/fsr villeicht können wir uns die Zusammenfassung doch sparen (...vielleicht wäre sie aber auch trotzdem sinnvoll?)




////To Do////
- Für Felder, wo Float eingabe möglich sein soll NumbersOnly wieder auf False setzen
- R, G und B bei Farb kontrasten ausgeben (weil war in einem online Test mit dran)!
- Möglichkeit:  1.Farbe eingeben + Luminanz berechnen
                2.Farbe eingeben + Luminanz berechnen
                1.Farbe Ändern + Luminanz berechnen
                Wenn auf L2 gedrückt wird immer Error egal ob mit oder ohne Farben in RGB
                
     angeblich ist ein hex Wert mit buchstaben kein Float in allen Feldern dasselbe.
-TESTEN!



Das bei dir ausführen um den neuen Namen bei dir zu übernehmen

  git branch -d master

  git branch -m Version2 master

  git fetch origin

  git branch -u origin/master master

Ich hoffe das klappt so weil ich hab zwischendurch noch eine Branch wmaster erstellt

///Updates///
- Audioberechnung berichtigt, dabei auf Byte umgestellt, weil immer Byte gegeben sind und Byte auch für Hex berechnung gebraucht werden
- Wsk Feld bei Kodierungsrechner NumbersOnly entfernt, da Komma eingegeben werden muss




