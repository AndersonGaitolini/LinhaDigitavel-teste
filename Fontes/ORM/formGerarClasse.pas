unit formGerarClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDataModuleORM;

type
  TfrmGeraClasse = class(TForm)
    lbTabelas: TListBox;
    Panel1: TPanel;
    memResult: TMemo;
    btnSalvar: TButton;
    btnSair: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnGerar: TButton;
    Salvar: TSaveDialog;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraClasse: TfrmGeraClasse;

implementation


{$R *.dfm}



procedure TfrmGeraClasse.btnGerarClick(Sender: TObject);
var
  Unidade,
  Tabela,
  Classe: string;
begin
  if lbTabelas.Count = 0 then
    Exit;

  Tabela  := trim(lbTabelas.Items[lbTabelas.ItemIndex]);
  Unidade := Tabela;
  Classe  := Tabela;

  memResult.lines.Text := dmORM.Dao.GerarClasse(Tabela, Unidade, Classe);
end;

procedure TfrmGeraClasse.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGeraClasse.btnSalvarClick(Sender: TObject);
var
  Arquivo: string;
begin
  if memResult.lines.Count = 0 then
    Exit;

  Arquivo := Copy(memResult.Lines[0], 6);
  Arquivo := Copy(Arquivo, 1, pos(';', Arquivo) - 1) + '.pas';

  Salvar.FileName := Arquivo;

  if Salvar.Execute then
  begin
    memResult.Lines.SaveToFile(Salvar.FileName);
    ShowMessage('Arquivo Salvo com sucesso!');
  end;
end;

procedure TfrmGeraClasse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmGeraClasse.FormShow(Sender: TObject);
const
  SQL: string = 'SELECT RDB$RELATION_NAME FROM RDB$RELATIONS ' +
                'WHERE RDB$VIEW_BLR IS NULL and ' +
                '(RDB$SYSTEM_FLAG = 0 OR RDB$SYSTEM_FLAG IS NULL) ' +
                'ORDER BY 1';

//  SQL: string =  'SHOW TABLES';
begin
  lbTabelas.Items.Clear;

  with dmORM.Dao.ConsultaSql(SQL) do
  begin
    while not EOF do
    begin
      if not (Copy(Fields[0].AsString,1,4) = 'IBE$') then
        lbTabelas.Items.Add(Fields[0].AsString);
      Next;
    end;
  end;

  lbTabelas.ItemIndex := 0;
end;

end.
