unit UGeneros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormGenero = class(TForm)
    QueryGeneros: TADOQuery;
    QueryGenerosIDGENERO: TIntegerField;
    QueryGenerosDESCRICAO: TStringField;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    DataSourceGeneros: TDataSource;
    procedure BNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BExcluirClick(Sender: TObject);
    procedure BConfirmarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure botoes(acao: Boolean);
  end;

var
  FormGenero: TFormGenero;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFormGenero.BCancelarClick(Sender: TObject);
begin
  botoes(true);
  QueryGeneros.Cancel;
  QueryGeneros.Close;
  QueryGeneros.Open;
end;

procedure TFormGenero.BConfirmarClick(Sender: TObject);
begin
//Codigo genero
  if (DBEdit1.Text='') then
  begin
    Messagedlg('O código é um campo obrigatório', mtinformation,[mbok],0);
    DBEdit1.SetFocus;
    Exit;
  end;

//Descrição
  if (DBEdit2.Text='') then
  begin
    Messagedlg('A descrição é um campo obrigatório', mtinformation,[mbok],0);
    DBEdit2.SetFocus;
    Exit;
  end;
  botoes(true);
  QueryGeneros.Post;
  QueryGeneros.Close;
  QueryGeneros.Open;
end;

procedure TFormGenero.BEditarClick(Sender: TObject);
begin
  botoes(false);
  QueryGeneros.Edit;
  DBEdit1.SetFocus;
end;

procedure TFormGenero.BExcluirClick(Sender: TObject);
begin
  if (Messagedlg('Confirma a exclusão',mtconfirmation, [mbyes, mbno],0)=mryes) then
  begin
    QueryGeneros.Delete;
    QueryGeneros.Close;
    QueryGeneros.Open;
  end;
end;

procedure TFormGenero.BNovoClick(Sender: TObject);
begin
  botoes(false);
  QueryGeneros.Append;
  DBEdit1.SetFocus;
end;

procedure TFormGenero.botoes(acao: Boolean);
begin
  BNovo       .Enabled:=acao;
  BEditar     .Enabled:=acao;
  BExcluir    .Enabled:=acao;
  BConfirmar  .Enabled:= not acao;
  BCancelar   .Enabled:=not acao;
  BSair       .Enabled:=acao;
  GrupoDados  .Enabled:= not acao;
  GrupoLista  .Enabled:= not acao;
end;

procedure TFormGenero.BSairClick(Sender: TObject);
begin
  close;
end;

end.
