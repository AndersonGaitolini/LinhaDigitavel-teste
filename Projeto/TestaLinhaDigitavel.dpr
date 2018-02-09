program TestaLinhaDigitavel;

uses
  Vcl.Forms,
  frmPrincipal in '..\Fontes\Forms\frmPrincipal.pas' {formPrincipal},
  uDMLinhaDigitavel in '..\Fontes\Data Module\uDMLinhaDigitavel.pas' {dmLinDig: TDataModule},
  DaoFD in '..\Fontes\ORM\DaoFD.pas',
  Atributos in '..\Fontes\ORM\Atributos.pas',
  Base in '..\Fontes\ORM\Base.pas',
  GerarClasseFireDac in '..\Fontes\ORM\GerarClasseFireDac.pas',
  GerarClasse.BancoFirebird in '..\Fontes\ORM\GerarClasse.BancoFirebird.pas',
  GerarClasse.BancoMySQL in '..\Fontes\ORM\GerarClasse.BancoMySQL.pas',
  GerarClasse in '..\Fontes\ORM\GerarClasse.pas',
  uLinhaDigitavel in '..\Fontes\Classes\uLinhaDigitavel.pas',
  foCodeBar in '..\Fontes\CodeBar\Fontes\foCodeBar.pas' {foGeraCodeBar},
  frmTesteLinhaDigitavel in '..\Fontes\Forms\frmTesteLinhaDigitavel.pas' {formTesteLinDig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmLinDig, dmLinDig);
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TfoGeraCodeBar, foGeraCodeBar);
  Application.CreateForm(TformTesteLinDig, formTesteLinDig);
  Application.Run;
end.
