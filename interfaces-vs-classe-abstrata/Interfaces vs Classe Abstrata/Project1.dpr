program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Regra.SimplesNacional in 'Regra.SimplesNacional.pas',
  Regra.LucroPresumido in 'Regra.LucroPresumido.pas',
  Regra.LucroReal in 'Regra.LucroReal.pas',
  Regra.Tipo in 'Regra.Tipo.pas',
  Regra.Interfaces in 'Regra.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
