unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Sair1: TMenuItem;
    Prova11: TMenuItem;
    Prova21: TMenuItem;
    Prova31: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Prova11Click(Sender: TObject);
    procedure Prova21Click(Sender: TObject);
    procedure Prova31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitProva1, UnitProva2, UnitProva3;

{$R *.dfm}

procedure TFormPrincipal.Prova11Click(Sender: TObject);
begin
  FormExe1.Show;
end;

procedure TFormPrincipal.Prova21Click(Sender: TObject);
begin
  FormExe2.Show;
end;

procedure TFormPrincipal.Prova31Click(Sender: TObject);
begin
  FormExe3.Show;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
