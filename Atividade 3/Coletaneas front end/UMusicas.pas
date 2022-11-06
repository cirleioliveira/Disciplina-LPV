unit UMusicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFormMusic = class(TForm)
    QueryMusicas: TADOQuery;
    QueryMusicasIDMUSICA: TIntegerField;
    QueryMusicasIDGENERO: TIntegerField;
    QueryMusicasNOMEMUSICA: TStringField;
    QueryMusicasDURACAO: TBCDField;
    BNovo: TSpeedButton;
    BEditar: TSpeedButton;
    BExcluir: TSpeedButton;
    BConfirmar: TSpeedButton;
    BCancelar: TSpeedButton;
    BSair: TSpeedButton;
    GrupoDados: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    DataSourceMusicas: TDataSource;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    QueryGerenos: TADOQuery;
    QueryGerenosIDGENERO: TIntegerField;
    QueryGerenosDESCRICAO: TStringField;
    QueryMusicasLook_Generos: TStringField;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
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
  FormMusic: TFormMusic;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TFormMusic.BCancelarClick(Sender: TObject);
begin
botoes(true);
  QueryMusicas.Cancel;
  QueryMusicas.Close;
  QueryMusicas.Open;
end;

procedure TFormMusic.BConfirmarClick(Sender: TObject);
begin
//Codigo musica
  if (DBEdit1.Text='') then
  begin
    Messagedlg('O c�digo � um campo obrigat�rio', mtinformation,[mbok],0);
    DBEdit1.SetFocus;
    Exit;
  end;

//C�digo genero
  if (DBLookupComboBox1.Text='') then
  begin
    Messagedlg('O generos � um campo obrigat�rio', mtinformation,[mbok],0);
    DBLookupComboBox1.SetFocus;
    Exit;
  end;
  

//Nome musica
if (DBEdit3.Text='') then
  begin
    Messagedlg('O nome � um campo obrigat�rio', mtinformation,[mbok],0);
    DBEdit3.SetFocus;
    Exit;
  end;

//Dura��o
if (DBEdit4.Text='') then
  begin
    Messagedlg('A dura��o � um campo obrigat�rio', mtinformation,[mbok],0);
    DBEdit4.SetFocus;
    Exit;
  end;

  botoes(true);
  QueryMusicas.Post;
  QueryMusicas.Close;
  QueryMusicas.Open;
end;

procedure TFormMusic.BEditarClick(Sender: TObject);
begin
  botoes(false);
  QueryMusicas.Edit;
  DBEdit1.SetFocus;
end;

procedure TFormMusic.BExcluirClick(Sender: TObject);
begin
if (Messagedlg('Confirma a exclus�o',mtconfirmation, [mbyes, mbno],0)=mryes) then
  begin
    QueryMusicas.Delete;
    QueryMusicas.Close;
    QueryMusicas.Open;
  end;
end;

procedure TFormMusic.BNovoClick(Sender: TObject);
begin
  botoes(false);
  QueryMusicas.Append;
  DBEdit1.SetFocus;
end;

procedure TFormMusic.botoes(acao: Boolean);
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


procedure TFormMusic.BSairClick(Sender: TObject);
begin
  close;
end;

end.
