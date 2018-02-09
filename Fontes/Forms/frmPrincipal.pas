unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvSpeedbar, Vcl.ExtCtrls,
  JvExExtCtrls, JvExtComponent, Vcl.ToolWin, System.ImageList, Vcl.ImgList,
  ACBrBase, ACBrBoleto;

type
  TformPrincipal = class(TForm)
    statPrincipal: TStatusBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    pnl1: TPanel;
    ilLinDig: TImageList;
    acbrblt1: TACBrBoleto;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses
  foCodeBar;

{$R *.dfm}

procedure TformPrincipal.btn1Click(Sender: TObject);
begin
  foGeraCodeBar := TfoGeraCodeBar.Create(Application);
  try
    foGeraCodeBar.ShowModal;
  finally
    foGeraCodeBar.Free;
  end;
end;

procedure TformPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
