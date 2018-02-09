program CodeBAR;

uses
  Vcl.Forms,
  foCodeBar in '..\Fontes\foCodeBar.pas' {foGeraCodeBar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfoGeraCodeBar, foGeraCodeBar);
  Application.Run;
end.
