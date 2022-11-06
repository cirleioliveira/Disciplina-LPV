program ProjectAtividade2;

uses
  Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitExercicio1 in 'UnitExercicio1.pas' {FormExe1},
  UnitExercicio2 in 'UnitExercicio2.pas' {FormExe2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
