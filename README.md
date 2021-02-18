# EMI_Calculator

- Deutsche Schreibweise (,) für Dezimalzahlen verwenden
- Keine Tausendertrennzeichen verwenden
- Eingabe von Buchstaben (oder ,) nur in Felder wo es nötig ist möglich
- Für alle Anwendungen ausführbare .exe sowie Quellcode enthalten
- globaler Zurücksetzen Button um alle Eingegebenen Werte zu Löschen

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
  - (Eingabe als R, G und B (3. Zeile) nicht möglich)
- Hex Checkbox gilt für alle 8bit Farbfelder
- Eingabereihenfolge der Farben (erst hellere, dann dunklere Farbe) egal
1. Luminanz von Farbe 1 mit L1 ausgeben. Zusätzlich Ausgabe der R, G und B Werte, sowie der sRGB oder 8bit Werte der jeweiligen Farben 

(Löschen Button um alle Farbwerte zu löschen)

2. Luminanz von Farbe 2 mit L2 ausgeben. Zusätzlich Ausgabe der R, G und B Werte, sowie der sRGB oder 8bit Werte der jeweiligen Farben  

Ausgabe des T-Wertes (wenn vorher bereits Schriftgröße und/oder Schriftstil eingegeben wurde wird Rating nach WACG 2.0 bereits ausgegeben)

3. Optional Schriftgröße und/oder Stil eingeben, nochmals L2 Button drücken ohne Werte vorher zu löschen gitb Rating nach WACG 2.0 aus

(Wenn Löschen vergessen wurde und nur einzelne Farbwerte geändert wurden wird von 8bit Eingabe ausgehend berechnet)

## Kodierungsrechner
- Buchstabe[n] oder Symbol[e] mit dazugehöriger WSK eingeben und Hinzufügen 
- Entropie, mittlere Wortlänge und Redundanz werden immer aktuell ermittelt
- "Bereits eingegebene Zeichen" dient nur Ausgabe keine Eingabe darüber möglich!
Tipp: über Tab und Shift+Tab kann zwischen Zeichen und WSK Eingabefeldern gewechselt werden; mit Enter(nur wenn WSK Eingabefeld ausgewählt ist) wird Hinzufügen ausgeführt.

## Mögliche Ursachen für Fehlermeldungen: 
- ungültige Zeichen bei der Eingabe verwendet
- keine oder zu wenig Werte eingegeben um etwas zu berechnen
- Werte außerhalb des vorgegebenen Werteberreichs eingegeben
- ((selten) Ausgabe entspricht dem falschen Datentyp)

# Fano C-Programm
(nicht selbst geschrieben)
!! Eingabe der WSK in englischer Schreibweise (mit . )
- Anzahl der gegebenen Zeichen eingeben
- Zeichen der Reihe nach eingeben
- WSK zu Zeichen der Reihe nach eingeben (!!!! letzte WSK um min 1/10 verrringern (weil sonst Fehlermeldung, dass Summe WSK > 1) Bsp: WSK = 0,01 --> Eingabe 0,009999 o.ä.!!!)
- Ausgabe der Fanocodierung

# Huffman Eingabetool
für Algoritmus auf https://people.ok.ubc.ca/ylucet/DS/Huffman.html

Nötig, wenn nur Zeichen und dazugehörende WSK gegeben sind.

- Eingabe EINES Buchstaben oder Symbols (in .ahk  Datei Zeile 4 Ende "Limit1" entfernen um unendlich viele Zeichen eingeben zu können)
- Eingabe Anzahl
- Ausgabe(gewünschte Anzahl der Zeichen) wird automatisch in Zwischenablage gelegt 
- Einfügen (Strg + V) in "Text" Eingabefeld auf Webseite
- Dialogfeld mit OK schließen, Eingabe erscheint automatisch wieder
- Schließen des Eingabefensters über X (!im Notfall!: oder in Taskleiste rechts grünes Symbol mit H suchen, Rechtsclick, Exit)

# Credits
Jan Biedermann, Adrian Scholze
