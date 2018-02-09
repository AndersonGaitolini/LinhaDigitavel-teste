program ORM;

uses
  Vcl.Forms,
  formORMPrincipal in 'formORMPrincipal.pas' {frmORMPrincipal},
  formGerarClasse in 'formGerarClasse.pas' {frmGeraClasse},
  uDataModuleORM in 'uDataModuleORM.pas' {dmORM: TDataModule},
  DaoFD in 'DaoFD.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmORM, dmORM);
  Application.CreateForm(TfrmORMPrincipal, frmORMPrincipal);
  Application.Run;
end.
