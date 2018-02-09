unit formORMPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList;

type
  TfrmORMPrincipal = class(TForm)
    stat1: TStatusBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    pnl1: TPanel;
    ilORM: TImageList;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmORMPrincipal: TfrmORMPrincipal;

implementation

uses
  formGerarClasse;


{$R *.dfm}

procedure TfrmORMPrincipal.btn1Click(Sender: TObject);
begin
  frmGeraClasse := TfrmGeraClasse.create(Application);
  try
   frmGeraClasse.showmodal;
  finally
    frmGeraClasse.free;
  end;
end;

end.
