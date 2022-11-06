unit UnitProva3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, Math;

type
  TFormExe3 = class(TForm)
    GridDados: TStringGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExe3: TFormExe3;

implementation

{$R *.dfm}

procedure TFormExe3.FormCreate(Sender: TObject);
var i :integer;
begin
GridDados.ColCount:=3;
  GridDados.FixedCols:=0;
  GridDados.FixedRows:=1;

  GridDados.Cells[0,0]:='Valores';
  GridDados.Cells[1,0]:='Polimonial';
  GridDados.Cells[2,0]:='Soma';
  GridDados.Cells[3,0]:='Nota';

  randomize;
  for i:= 1 to GridDados.RowCount - 1 do
  Begin
    GridDados.Cells[0,i]:= IntToStr(randomRange(1000,10000));
  end;
end;

procedure TFormExe3.SpeedButton1Click(Sender: TObject);
var c,l,i,x,y,soma, aux, incremento,total :integer;
    a :string;
begin
  for c:=1 to GridDados.RowCount - 1 do
  Begin
    aux:=0;
    x:=0;
    y:=0;
    total:=0;
    soma:=0;
    incremento:=4;
    a:=GridDados.cells[0,c];
    for l:=4 downto 1 do
      Begin
        aux:=StrToInt(a[l]);
        soma:=soma+aux;
        y:=Aux*incremento;
        total:=total+y;
        incremento:=incremento-1;
      end;
  GridDados.Cells[1,c]:=inttostr(total);
  GridDados.Cells[2,c]:=inttostr(soma);
  end;

end;

procedure TFormExe3.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
