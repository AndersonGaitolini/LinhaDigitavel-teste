unit foCodeBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TfoGeraCodeBar = class(TForm)
    btnGeraCode: TButton;
    imgCodeBar: TImage;
    edCodeMask: TMaskEdit;
    procedure btnGeraCodeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGeraCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
   procedure GerarCodigo(Cod : String; Imagem : TCanvas);

  public
    { Public declarations }
  end;

var
  foGeraCodeBar: TfoGeraCodeBar;

implementation

{$R *.dfm}


procedure TfoGeraCodeBar.btnGeraCodeClick(Sender: TObject);
begin

  GerarCodigo(Trim(edCodeMask.text),imgCodeBar.Canvas);
end;

procedure TfoGeraCodeBar.btnGeraCodeKeyPress(Sender: TObject; var Key: Char);
begin
  edCodeMask.PasteFromClipboard;
end;

procedure TfoGeraCodeBar.FormShow(Sender: TObject);
begin
  //
  edCodeMask.Clear;

end;

procedure TfoGeraCodeBar.GerarCodigo(Cod : String; Imagem : TCanvas);
CONST digitos : array['0'..'9'] of string[5]= ('00110', '10001', '01001', '11000', '00101',
                                               '10100', '01100', '00011', '10010', '01010');
var
  Numero : String;
  Cod1 : Array[1..1000] Of Char;
  Cod2 : Array[1..1000] Of Char;
  Codigo : Array[1..1000] Of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
begin
  Numero := Cod;
  for x := 1 to 1000 Do
  begin
    Cod1 [x] := #0;
    Cod2 [x] := #0;
    Codigo[x] := #0;
  end;
  c1 := 1;
  c2 := 1;
  x := 1;
  for y := 1 to Length(Numero) div 2 do
  begin
    Digito := Digitos[Numero[x ]];
    for z := 1 to 5 do
    begin
      Cod1[c1] := Digito[z];
      Inc(c1);
    end;
    Digito := Digitos[Numero[x+1]];
    for z := 1 to 5 do
    begin
      Cod2[c2] := Digito[z];
      Inc(c2);
    end;
    Inc(x,2);
  end;
  y := 5;
  Codigo[1] := '0';
  Codigo[2] := '0';
  Codigo[3] := '0';
  Codigo[4] := '0';
  for x := 1 to c1-1 do
  begin
    Codigo[y] := Cod1[x]; Inc(y);
    Codigo[y] := Cod2[x]; Inc(y);
  end;
  Codigo[y] := '1'; Inc(y);
  Codigo[y] := '0'; Inc(y);
  Codigo[y] := '0';
  Imagem.Pen .Width := 1;
  Imagem.Brush.Color := ClWhite;
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0;
  b.x := 1; b.y := 79;
  c.x := 2000; c.y := 79;
  d.x := 2000; d.y := 0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color := ClBlack;
  Imagem.Pen .Color := ClBlack;
  x := 0;
  i := True;
  for y:=1 to 1000 do
  begin
    if Codigo[y] <> #0 then
    begin
      if Codigo[y] = '0' then
        h := 1
      else
        h := 3;
        a.x := x; a.y := 0;
        b.x := x; b.y := 79;
        c.x := x+h-1; c.y := 79;
        d.x := x+h-1; d.y := 0;
        if i then
          Imagem.Polygon([a,b,c,d]);
          i := not(i);
          x := x + h;
    end;
  end;
end;


end.
