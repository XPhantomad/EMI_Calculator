unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ValEdit, Grids, ActnList, ShellApi, Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    aufloesung1: TEdit;
    aufloesung2: TEdit;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    RL: TEdit;
    GL: TEdit;
    BL: TEdit;
    Label1: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    loeschenliste: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    loeschen2: TButton;
    loeschen1: TButton;
    hex1: TCheckBox;
    hex2: TCheckBox;
    neuu: TButton;
    loeschen: TButton;
    rsrgb: TEdit;
    gsrgb: TEdit;
    bsrgb: TEdit;
    neuliste: TButton;
    Redundanz: TEdit;
    mittlerelaenge: TEdit;
    Entropie: TEdit;
    eingegebenezeichen: TEdit;
    Hinzufuegen: TButton;
    Label11: TLabel;
    WSK: TEdit;
    Zeichen: TEdit;
    L1b: TButton;
    L2b: TButton;
    Label10: TLabel;
    Video2: TButton;
    L1: TEdit;
    L2: TEdit;
    t_wert: TEdit;
    rating: TEdit;
    schriftgroesse: TEdit;
    Label9: TLabel;
    r8: TEdit;
    RadioGroup1: TRadioGroup;
    b8: TEdit;
    g8: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    laengeminuten: TEdit;
    laengeminutenv: TEdit;
    groessemibv: TEdit;
    farbtiefe: TEdit;
    groessev: TEdit;
    Label6: TLabel;
    x: TLabel;
    laengev: TEdit;
    fps: TEdit;
    fabtast: TEdit;
    fmax: TEdit;
    groessemib: TEdit;
    groesse: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    samplerate: TEdit;
    sampletiefe: TEdit;
    headergroesse: TEdit;
    laenge: TEdit;
    kanaele: TRadioGroup;
    wav: TButton;
    procedure Button1Click(Sender: TObject);
    procedure HinzufuegenClick(Sender: TObject);
    procedure kanaeleClick(Sender: TObject);
    procedure L1bClick(Sender: TObject);
    procedure L2bClick(Sender: TObject);
    procedure Label68Click(Sender: TObject);
    procedure loeschen1Click(Sender: TObject);
    procedure loeschen2Click(Sender: TObject);
    procedure loeschenClick(Sender: TObject);
    procedure loeschenlisteClick(Sender: TObject);
    procedure neulisteClick(Sender: TObject);
    procedure neuuClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Video2Click(Sender: TObject);
    procedure wavClick(Sender: TObject);
    procedure WSKKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;
  var p,p2,n: integer;
  WSKn:array [0..29] of real;
  buchstaben: array[0..29] of string;

implementation

{$R *.lfm}

{ TForm1 }
function HexToInt(HexNum: string): LongInt;
begin
  Result:=StrToInt('$' + HexNum);
end;

// Audioberechnung Kanaleingabe
procedure TForm1.kanaeleClick(Sender: TObject);
begin
     p:=kanaele.itemindex;
     if p=1 then p:=2;
     if p=0 then P:=1;
end;

procedure TForm1.Label68Click(Sender: TObject);
var
  MyLink: string;
begin
  MyLink := 'http://www.save-editor.com/tools/wse_hex.html';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink),
   nil, nil, SW_SHOW);
end;

// Berechnung Luminanz Farbe1
procedure TForm1.L1bClick(Sender: TObject);
 var r,g,b:real;
begin
     r:=0;
     g:=0;
     b:=0;
     //red
     if r8.text='' then begin              // eingabe sRGB
        r:=strtofloat(rsrgb.text);                                 // meckern, wenn ungültige Werte
        if hex2.state=cbchecked then r8.text:=inttohex(strtoint(floattostr(round(r*255))),8) else r8.text:=floattostr(r*255);        // ausgabe sRGB
     end
     else begin                            // eingabe 8bit
        if hex2.state=cbchecked then r:=hextoint(r8.text)/255 else r:=strtofloat(r8.text)/255 ;
        rsrgb.text:=floattostr(r);         // Ausgabe sRGB
     end;
     //green
     if g8.text='' then begin              // eingabe sRGB
        g:=strtofloat(gsrgb.text);                                 // meckern, wenn ungültige Werte
        if hex2.state=cbchecked then g8.text:=inttohex(strtoint(floattostr(round(g*255))),8) else g8.text:=floattostr(g*255);        // ausgabe sRGB
     end
     else begin                            // eingabe 8bit
        if hex2.state=cbchecked then g:=hextoint(g8.text)/255 else g:=strtofloat(g8.text)/255 ;
        gsrgb.text:=floattostr(g);         // Ausgabe sRGB
     end;
     // blue
     if b8.text='' then begin              // eingabe sRGB
        b:=strtofloat(bsrgb.text);                                 // meckern, wenn ungültige Werte
        if hex2.state=cbchecked then b8.text:=inttohex(strtoint(floattostr(round(b*255))),8) else b8.text:=floattostr(b*255);        // ausgabe sRGB
     end
     else begin                            // eingabe 8bit
        if hex2.state=cbchecked then b:=hextoint(b8.text)/255 else b:=strtofloat(b8.text)/255 ;
        bsrgb.text:=floattostr(b);         // Ausgabe sRGB
     end;

     if r<=0.03928 then r:=r/12.92 else r:=exp(2.4*(ln((r+0.055)/1.055)));
     RL.text := floattostr(r);
     if g<=0.03928 then g:=g/12.92 else g:=exp(2.4*(ln((g+0.055)/1.055)));
     GL.text := floattostr(g);
     if b<=0.03928 then b:=b/12.92 else b:=exp(2.4*(ln((b+0.055)/1.055)));
     BL.text := floattostr(b);
  L1.Text:=floattostr(0.2126*r+0.7152*g+0.0722*b);  // berechnung und ausgabe Luminanz Farbe 1 (hellere Farbe)
end;

//Berechnung Luminanz Farbe 2
procedure TForm1.L2bClick(Sender: TObject);
var r,g,b: real;
begin
  r:=0;
  g:=0;
  b:=0;
  //red
  if r8.text='' then begin              // eingabe sRGB
     r:=strtofloat(rsrgb.text);                                 // meckern, wenn ungültige Werte
     if hex2.state=cbchecked then r8.text:=inttohex(strtoint(floattostr(round(r*255))),8) else r8.text:=floattostr(r*255);        // ausgabe sRGB
  end
  else begin                            // eingabe 8bit
     if hex2.state=cbchecked then r:=hextoint(r8.text)/255 else r:=strtofloat(r8.text)/255 ;
     rsrgb.text:=floattostr(r);         // Ausgabe sRGB
  end;
  //green
  if g8.text='' then begin              // eingabe sRGB
     g:=strtofloat(gsrgb.text);                                 // meckern, wenn ungültige Werte
     if hex2.state=cbchecked then g8.text:=inttohex(strtoint(floattostr(round(g*255))),8) else g8.text:=floattostr(g*255);        // ausgabe sRGB
  end
  else begin                            // eingabe 8bit
     if hex2.state=cbchecked then g:=hextoint(g8.text)/255 else g:=strtofloat(g8.text)/255 ;
     gsrgb.text:=floattostr(g);         // Ausgabe sRGB
  end;
  // blue
  if b8.text='' then begin              // eingabe sRGB
     b:=strtofloat(bsrgb.text);                                 // meckern, wenn ungültige Werte
     if hex2.state=cbchecked then b8.text:=inttohex(strtoint(floattostr(round(b*255))),8) else b8.text:=floattostr(b*255);        // ausgabe sRGB
  end
  else begin                            // eingabe 8bit
     if hex2.state=cbchecked then b:=hextoint(b8.text)/255 else b:=strtofloat(b8.text)/255 ;
     bsrgb.text:=floattostr(b);         // Ausgabe sRGB
  end;

  if r<=0.03928 then r:=r/12.92 else r:=exp(2.4*(ln((r+0.055)/1.055)));
  RL.text := floattostr(r);
  if g<=0.03928 then g:=g/12.92 else g:=exp(2.4*(ln((g+0.055)/1.055)));
  GL.text := floattostr(g);
  if b<=0.03928 then b:=b/12.92 else b:=exp(2.4*(ln((b+0.055)/1.055)));
  BL.text := floattostr(b);
  L2.Text:=floattostr(0.2126*r+0.7152*g+0.0722*b);      // berechnung und ausgabe Luminanz Farbe 2 (dunklere Farbe)
  // Berechnungn T-Wert
  if (strtofloat(L1.text) >= strtofloat(L2.text)) then
     t_wert.text:=floattostr((strtofloat(L1.text)+0.05)/(strtofloat(L2.text)+0.05))
  else
     t_wert.text:=floattostr((strtofloat(L2.text)+0.05)/(strtofloat(L1.text)+0.05));

  if (not((schriftgroesse.text='') or (p2=-1))) then begin                           // p2 gibt Fett / Normal an
     if  (strtofloat(t_wert.text)>= 7) then rating.text:='ausreichend für Level AAA'
     else if ((((strtofloat(t_wert.text)>= 3) and (p2=0))and (strtofloat(schriftgroesse.text)>17)) or ((((strtofloat(t_wert.text)>= 3) and (p2=1))and (strtofloat(schriftgroesse.text)>13)))) then
          rating.text:='ausreichend für Level AA'
     else if (strtofloat(t_wert.text)>= 4.5) then
          rating.text:='ausreichend für Level AA'
     else rating.text:='nicht ausreichend';
  end;

end;

//Löschen Audio
procedure TForm1.loeschen1Click(Sender: TObject);
begin
     kanaele.itemindex:=-1;
     laenge.text:='';
     laengeminuten.text:='';
     groesse.text:='';
     groessemib.text:='';
     hex1.state:=cbunchecked;
end;

//Löschen Video
procedure TForm1.loeschen2Click(Sender: TObject);
begin
     laengev.text:='';
     laengeminutenv.text:='';
     groessev.text:='';
     groessemibv.text:='';
end;

// Kontrastrechner Felder Löschen
procedure TForm1.loeschenClick(Sender: TObject);
begin
  r8.clear;
  g8.clear;
  b8.clear;
  RL.clear;
  GL.clear;
  BL.clear;
  rsrgb.clear;
  gsrgb.clear;
  bsrgb.clear;
  hex2.state:=cbunchecked;
end;

//Letztes Element löschen
procedure TForm1.loeschenlisteClick(Sender: TObject);
var i: integer;
    e,l :real;
begin
  n:=n-1;
  eingegebenezeichen.text:='';
  for i:=0 to n-1 do begin
  eingegebenezeichen.text:=eingegebenezeichen.text+buchstaben[i] + ' : ';
  eingegebenezeichen.text:=eingegebenezeichen.text+floattostr(WSKn[i])+ ', ';
  end;
  e:=0;
  l:=0;
  i:=0;
  for i:=0 to n-1 do e:=e+WSKn[i]*(ln(WSKn[i])/ln(2));
  entropie.text:=floattostr(-1*e);
  for i:=0 to n-1 do l:=l+WSKn[i]*length(buchstaben[i]);
  mittlerelaenge.text:=floattostr(l);
  redundanz.text:=floattostr(l+e);
end;

// Abtasttheorem
procedure TForm1.Button1Click(Sender: TObject);
begin
  if fabtast.text='' then fabtast.text:=floattostr(2*strtofloat(fmax.text));   // Abtastfrequenz berechnen
  if fmax.text='' then fmax.text:=floattostr(0.5*strtofloat(fabtast.text));    // Maximalfrequenz berechnen
end;


//Zeichen hinzufügen
procedure TForm1.HinzufuegenClick(Sender: TObject);
var e,l: real;
    i: integer;
begin
    WSKn[n]:=strtofloat(WSK.text);
    buchstaben[n]:=Zeichen.text;
    eingegebenezeichen.text:=eingegebenezeichen.text+buchstaben[n] + ' : ';
    eingegebenezeichen.text:=eingegebenezeichen.text+floattostr(WSKn[n])+ ', ';
    n:=n+1;
    WSK.text:='';
    Zeichen.text:='';
    e:=0;
    l:=0;
    for i:=0 to n-1 do e:=e+WSKn[i]*(ln(WSKn[i])/ln(2));
    entropie.text:=floattostr(-1*e);
    for i:=0 to n-1 do l:=l+WSKn[i]*length(buchstaben[i]);
    mittlerelaenge.text:=floattostr(l);
    redundanz.text:=floattostr(l+e);
end;

// Liste Zurücksetzen
procedure TForm1.neulisteClick(Sender: TObject);
begin
  eingegebenezeichen.clear;
  WSK.clear;
  Zeichen.clear;
  entropie.clear;
  redundanz.clear;
  mittlerelaenge.clear;
  n:=0;
end;

// Zurücksetzen
procedure TForm1.neuuClick(Sender: TObject);
begin
     hex1.state:=cbunchecked;
     hex2.state:=cbunchecked;
     kanaele.itemindex:=-1;
     laenge.text:='';
     laengeminuten.text:='';
     groesse.text:='';
     groessemib.text:='';
     laengev.text:='';
     laengeminutenv.text:='';
     groessev.text:='';
     groessemibv.text:='';
     fmax.text:='';
     fabtast.text:='';
     r8.clear;
     g8.clear;
     b8.clear;
     RL.clear;
     GL.clear;
     BL.clear;
     rsrgb.clear;
     gsrgb.clear;
     bsrgb.clear;
     schriftgroesse.clear;
     radiogroup1.itemindex:=-1 ;
     l1.clear;
     l2.clear;
     rating.clear;
     t_wert.clear;
     WSK.clear;
     Zeichen.clear;
     eingegebenezeichen.clear;
     n:=0;
     entropie.clear;
     redundanz.clear;
     mittlerelaenge.clear;
     p2:=-1;
     p:=1;

end;

// Kontrastrechner Normal/Fett
procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  p2:=radiogroup1.itemindex;
end;

//Videorechner
procedure TForm1.Video2Click(Sender: TObject);
var l,fpsv,ft,g,a1,a2: real;
begin
   l:=0;
   fpsv:=0;
   ft:=0;
   g:=0;
   a1:=0;
   a2:=0;
 // Größe berechnen
  if groessev.text='' then begin
        if laengeminutenv.text='' then l:=strtofloat(laengev.text) else l:=strtofloat(laengeminutenv.text)*60;     // eingabe Länge in Minuten oder Sekunden
        fpsv:=strtofloat(fps.text);                                                                                // eingabe FPS
        ft:=strtofloat(farbtiefe.text)/8;                                                                          // eingabe Farbtiefe in Bit
        a1:=strtofloat(aufloesung1.text);                                                                          // eingabe Auflösung x
        a2:=strtofloat(aufloesung2.text);                                                                          // eingabe Auflösung y
        groessev.text:=floattostr(l*fpsv*ft*a1*a2);                                                                // ausgabe größe in byte
        groessemibv.text:=floattostr((l*fpsv*ft*a1*a2)/(1024*1024));                                               // ausgabe größe in mebibyte
     end;
// Länge berechnen
  if ((laengev.text='') and (laengeminutenv.text='')) then begin
        g:=strtofloat(groessev.text);                                                                             // eingabe größe in Byte
        fpsv:=strtofloat(fps.text);
        ft:=strtofloat(farbtiefe.text)/8;
        a1:=strtofloat(aufloesung1.text);
        a2:=strtofloat(aufloesung2.text);
        laengev.text:=floattostr(g/(fpsv*ft*a1*a2));                                                              // ausgabe Länge in sekunden
        laengeminutenv.text:=floattostr((g/(fpsv*ft*a1*a2))/60);                                                  // ausgabe Länge in Minuten
     end;

end;

// Audioberechnung
// Rechnung in Byte
procedure TForm1.wavClick(Sender: TObject);
var l,sr,st,hg,g:real;
begin
     if kanaele.itemindex=-1 then Exit;
     l:=0;
     sr:=0;
     st:=0;
     hg:=0;
     g:=0;
     // Berechnung Größe
     if groesse.text='' then begin
        st:=strtofloat(sampletiefe.text)/8; // weil Sampletiefe in Bit in Byte
        sr:=strtofloat(samplerate.text);
        hg:=strtofloat(headergroesse.text);
        if laengeminuten.text='' then l:=strtofloat(laenge.text) else l:=strtofloat(laengeminuten.text)*60;         // eingabe Länge in Minuten oder sekunden
        if hex1.state=cbchecked then groesse.text:=inttohex(strtoint(floattostr((st*sr*l*p+hg))),8) else groesse.text:=floattostr((st*sr*l*p+hg));
        groessemib.text:=floattostr(((st*sr*l*p+hg))/(1024*1024));                                                     // ausgabe größe in mebibyte
     end;
     // Berechnung Länge
     if ((laenge.text='') or (laengeminuten.text='')) then begin
        st:=strtofloat(sampletiefe.text)/8;    //weil Sampletiefe in Bit in Byte
        sr:=strtofloat(samplerate.text);
        hg:=strtofloat(headergroesse.text);
        if hex1.state=cbchecked then g:=hextoint(groesse.text) else g:=strtofloat(groesse.text);
        laenge.text:=floattostr((g-hg)/(st*sr*p));
        laengeminuten.text:=floattostr(((g-hg)/(st*sr*p))/60);                                                     // ausgabe Länge in Minuten

     end;

end;

procedure TForm1.WSKKeyPress(Sender: TObject; var Key: char);
begin
     if  Key=#13 then HinzufuegenClick(Sender);
end;

end.

