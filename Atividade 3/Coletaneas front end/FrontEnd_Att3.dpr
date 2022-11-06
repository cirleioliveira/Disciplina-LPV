program FrontEnd_Att3;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FormPrinccipal},
  UColetaneas in 'UColetaneas.pas' {FormColetaneas},
  UMusicas in 'UMusicas.pas' {FormMusic},
  UGeneros in 'UGeneros.pas' {FormGenero},
  //UColetaneaMusicas in 'UColetaneaMusicas.pas' {FormColMusic},
  UConsultaMusicas in 'UConsultaMusicas.pas' {FormConsultamusicas},
  UConsultaColetaneas in 'UConsultaColetaneas.pas' {FormConsColetaneas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrinccipal, FormPrinccipal);
  Application.Run;
end.
