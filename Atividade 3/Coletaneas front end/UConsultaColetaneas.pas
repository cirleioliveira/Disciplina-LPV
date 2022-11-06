unit UConsultaColetaneas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, DB, ADODB;

type
  TFormConsColetaneas = class(TForm)
    DataSourceColetaneas: TDataSource;
    QueryColetaneas: TADOQuery;
    QueryColetaneasIDCOLETANEA: TIntegerField;
    QueryColetaneasNOME: TStringField;
    QueryColetaneasDATACOLETANEA: TDateTimeField;
    GrupoLista: TGroupBox;
    DBGrid1: TDBGrid;
    BConsulta: TSpeedButton;
    BSair: TSpeedButton;
    GroupBoxConsulta: TGroupBox;
    Label1: TLabel;
    CampoNome: TEdit;
    procedure BSairClick(Sender: TObject);
    procedure BConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsColetaneas: TFormConsColetaneas;

implementation

{$R *.dfm}

procedure TFormConsColetaneas.BConsultaClick(Sender: TObject);
begin
if (CampoNome.Text='') then
  begin
    messagedlg('Informe o Nome para consulta', mtwarning,[mbok],0);
    CampoNome.SetFocus;
    exit;
  end;
  QueryColetaneas.Close;
  QueryColetaneas.Parameters.ParamByName('nome').Value:=CampoNome.Text + '%';
  QueryColetaneas.Open;
end;

procedure TFormConsColetaneas.BSairClick(Sender: TObject);
begin
  close;
end;

end.
