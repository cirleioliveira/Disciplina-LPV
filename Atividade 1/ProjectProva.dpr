program ProjectProva;

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitProva1 in 'UnitProva1.pas' {FormExe1},
  UnitProva2 in 'UnitProva2.pas' {FormExe2},
  UnitProva3 in 'UnitProva3.pas' {FormExe3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormExe1, FormExe1);
  Application.CreateForm(TFormExe2, FormExe2);
  Application.CreateForm(TFormExe3, FormExe3);
  Application.Run;
end.
