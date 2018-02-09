unit uDataModuleORM;

interface

uses
  System.SysUtils, System.Classes, DaoFD, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, Data.DB;

type
  TdmORM = class(TDataModule)
    conORM: TFDConnection;
    tranORM: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Published
    Dao : TDaoFD;
  end;

var
  dmORM: TdmORM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmORM.DataModuleCreate(Sender: TObject);
begin
  Dao := TDaoFD.Create(conORM, tranORM);
end;

end.
