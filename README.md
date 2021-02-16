# EMI_Calculator
////Stand////

-error handling: in den Feldern, die keine Hex Werte erlauben, dürfen keine Buchstaben mehr eingegeben werden

wav wird nicht berechnet, wenn kein Mono/Stereo ausgewählt wurde 

-Fano.C für fano, scheint zu funktionieren


-https://github.com/fsr villeicht können wir uns die Zusammenfassung doch sparen (...vielleicht wäre sie aber auch trotzdem sinnvoll?)




////To Do////
- extra Button für t Berechnung (Vorteil: bei #000000 kann man direkt 0 für L2 reinschreiben)
  Lsg: man kann die 0 auch bei L1 reinschreiben und die Farben vertausche weil t Berechnung verbessert
- Für Felder, wo Float eingabe möglich sein soll NumbersOnly wieder auf False setzen (für sRGB bereits gemacht)
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
- R, G, B Ausgabe hinzugefügt (wenn Zwischenergebnisse in Klausur abgefragt werden online Rechner hat das nicht)
- T-Wert Berechnung überprüft jetzt erst ob L1 > L2 um immer hellere durch dunklere Farbe zu rechnen (für t dürften keine Zahlen kleiner 1 mehr rauskommen)
- Huffman Eingabe Tool geschrieben:
  - Mit Tab kann durchgängig weiter gegangen werden
  - Es kann nur ein Buchstabe/Zahl aufs mal eingegeben werden möglicherweise noch ändern
  - Es können bei Anzhal keine Buchstaben eingegeben werden 
  - Die Ausgabe ist in der MsgBox zu sehen und im Clipboard gespeichert
  - Nach drücken von OK bei der MsgBox geht die GUI wieder auf
  
  




