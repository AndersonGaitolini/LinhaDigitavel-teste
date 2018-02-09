unit uDMLinhaDigitavel;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  Data.DB, DaoFD;

type
  TdmLinDig = class(TDataModule)
    conLinDigitavel: TFDConnection;
    tranLinDigitavel: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

var
  dmLinDig: TdmLinDig;

implementation




{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
