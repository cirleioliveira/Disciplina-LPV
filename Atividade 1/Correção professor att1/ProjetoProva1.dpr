program ProjetoProva1;

uses
  Forms,
  Prova1 in 'Prova1.pas' {FormPrincipal},
  Q1 in 'Q1.pas' {FormQ1},
  Q3 in 'Q3.pas' {FormQ3},
  Q2 in 'Q2.pas' {FormQ2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormQ1, FormQ1);
  Application.CreateForm(TFormQ3, FormQ3);
  Application.CreateForm(TFormQ2, FormQ2);
  Application.Run;
end.
