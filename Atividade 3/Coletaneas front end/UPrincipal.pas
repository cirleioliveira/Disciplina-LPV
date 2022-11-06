unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB;

type
  TFormPrinccipal = class(TForm)
    Menu: TMainMenu;
    AtividadeIII1: TMenuItem;
    Musicas1: TMenuItem;
    Coletaneas1: TMenuItem;
    Generos1: TMenuItem;
    Sair1: TMenuItem;
    conexao: TADOConnection;
    Consultas: TMenuItem;
    MusicasColuna: TMenuItem;
    ColetaneasNome: TMenuItem;
    Sair2: TMenuItem;
    procedure Musicas1Click(Sender: TObject);
    procedure Coletaneas1Click(Sender: TObject);
    procedure Generos1Click(Sender: TObject);
    //procedure ColetaneasMusicas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure MusicasColunaClick(Sender: TObject);
    procedure ColetaneasNomeClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrinccipal: TFormPrinccipal;

implementation

uses UColetaneas, UGeneros, UMusicas, UConsultaColetaneas,
  UConsultaMusicas;

{$R *.dfm}

procedure TFormPrinccipal.Coletaneas1Click(Sender: TObject);
begin
 try
    FormColetaneas:= TFormColetaneas.create(application);
    FormColetaneas.ShowModal;
  finally
    FormColetaneas.free;
  end;
end;

{procedure TFormPrinccipal.ColetaneasMusicas1Click(Sender: TObject);
begin
try
    FormColMusic:=TFormColMusic.create(application);
    FormColMusic.ShowModal;
  finally
    FormColMusic.free;
  end;
end;  }

procedure TFormPrinccipal.ColetaneasNomeClick(Sender: TObject);
begin
  try
    FormConsColetaneas:=TFormConsColetaneas.Create(Application);
    FormConsColetaneas.ShowModal;
  finally
    FormConsColetaneas.Free;
  end;
end;

procedure TFormPrinccipal.Generos1Click(Sender: TObject);
begin
  try
    FormGenero:= TFormGenero.create(application);
    FormGenero.ShowModal;
  finally
    FormGenero.free;
  end;
end;

procedure TFormPrinccipal.Musicas1Click(Sender: TObject);
begin
  try
    FormMusic:= TFormMusic.create(application);
    FormMusic.ShowModal;
  finally
    FormMusic.free;
  end;
end;

procedure TFormPrinccipal.MusicasColunaClick(Sender: TObject);
begin
  try
    FormConsultamusicas:=TFormConsultamusicas.Create(Application);
    FormConsultamusicas.ShowModal
  finally
    FormConsultamusicas.Free;
  end;
end;

procedure TFormPrinccipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFormPrinccipal.SairClick(Sender: TObject);
begin
  close;
end;

end.
