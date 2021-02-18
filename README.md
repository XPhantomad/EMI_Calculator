# EMI_Calculator
## Audiorechner
- Eingabe in allen Feldern außer Mebibiyte möglich
- Eingabe bei Größe auch in Hex (ohne #) möglich
- Ausgabe bei Größe auch in Hex möglich
- ACHTUNG Sampletiefe in bit angegeben
- Länge Felder(!) frei --> berechnet die Länge 
- Größe Feld frei --> berechnet Dateigröße 
- Bsp: Datenchunkgröße berechnen: Headergröße auf 8 setzen und Größe aus Länge berechnen

## Abtasttheorem
- Eingabe eines Wertes --> berechnen des Fehlenden

## Videorechner
- Eingabe in allen Feldern außer Mebibiyte möglich
- ACHTUNG Farbtiefe in bit angegeben
- Länge Felder(!) frei --> berechnet die Länge 
- Größe Feld frei --> berechnet Dateigröße 

## Kontrastrechner
- Eingabe der Farbwerte als:
  - 8bit, Intervall [0, 255]
  - 8bit Hex: Intervall [000000, FFFFFF]
  - sRGB: Intervall [0,1]
- Hex Checkbox gilt für alle 8bit Farbfelder
1. Luminanz von Farbe 1 mit L1 ausgeben, Ausgabe der R, G und B Werte, sowie der sRGB Werte der jeweiligen Farben 
(Löschen Button)
2. Luminanz von Farbe 2 mit L2 ausgeben, Ausgabe der R, G und B Werte, sowie der sRGB Werte der jeweiligen Farben  


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
 - Endian Konvertierung Notlösung hinzugefügt 
 - Zusammenfassung hier mit reingemacht
  
  




