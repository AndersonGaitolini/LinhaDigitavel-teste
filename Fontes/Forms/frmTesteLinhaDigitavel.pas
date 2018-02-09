unit frmTesteLinhaDigitavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList;

type
  TformTesteLinDig = class(TForm)
    statLinDig: TStatusBar;
    tlbLinDig: TToolBar;
    pnlLinDig: TPanel;
    ilLinDig: TImageList;
    btn1: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTesteLinDig: TformTesteLinDig;

implementation

{$R *.dfm}

end.
