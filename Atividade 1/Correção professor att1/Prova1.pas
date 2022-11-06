unit Prova1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, ExtCtrls;

type
  TFormPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    Prova: TMenuItem;
    Questao1: TMenuItem;
    Questao2: TMenuItem;
    Questao3: TMenuItem;
    Sair1: TMenuItem;
    N1: TMenuItem;
    Panel1: TPanel;
    procedure Questao1Click(Sender: TObject);
    procedure Questao2Click(Sender: TObject);
    procedure Questao3Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses Q1, Q2, Q3;

{$R *.dfm}

procedure TFormPrincipal.Questao1Click(Sender: TObject);

begin
  FormQ1.ShowModal;
end;

procedure TFormPrincipal.Questao2Click(Sender: TObject);
begin
  FormQ2.ShowModal;
end;

procedure TFormPrincipal.Questao3Click(Sender: TObject);
begin
  FormQ3.ShowModal;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
