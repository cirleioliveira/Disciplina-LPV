unit UConsultaMusicas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TFormConsultamusicas = class(TForm)
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    QueryMusicas: TADOQuery;
    QueryMusicasIDMUSICA: TIntegerField;
    QueryMusicasIDGENERO: TIntegerField;
    QueryMusicasNOMEMUSICA: TStringField;
    QueryMusicasDURACAO: TBCDField;
    QueryMusicasLook_Generos: TStringField;
    QueryGerenos: TADOQuery;
    QueryGerenosIDGENERO: TIntegerField;
    QueryGerenosDESCRICAO: TStringField;
    DataSourceMusicas: TDataSource;
    BConsultar: TSpeedButton;
    BSair: TSpeedButton;
    GroupBoxConsulta: TGroupBox;
    Label1: TLabel;
    CampoNome: TEdit;
    procedure BConsultarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultamusicas: TFormConsultamusicas;

implementation

{$R *.dfm}

procedure TFormConsultamusicas.BConsultarClick(Sender: TObject);
begin
  if (CampoNome.Text='') then
  begin
    messagedlg('Informe o Nome para consulta', mtwarning,[mbok],0);
    CampoNome.SetFocus;
    exit;
  end;
  QueryMusicas.Close;
  QueryMusicas.Parameters.ParamByName('nomemusica').Value:=CampoNome.Text  + '%';
  QueryMusicas.Open;
  
end;

procedure TFormConsultamusicas.BSairClick(Sender: TObject);
begin
  close;
end;

end.
