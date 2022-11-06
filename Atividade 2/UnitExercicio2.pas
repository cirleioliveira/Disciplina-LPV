unit UnitExercicio2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons;

type
  TFormExe2 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //exer 2
  Tdados = class(TStringGrid)
    private
      procedure ButtonSair(Sender:TObject);
      procedure ButtonExportar(Sender:TObject);
      procedure ButtonImportar(Sender:TObject);
    public
      BtnImportar, BtnExportar, BtnSair: TSpeedButton;
      constructor create(dados: TComponent);
  end;



var
  FormExe2: TFormExe2;
  objeto:TDados;
  logico:TextFile; //defini��o nome logico

implementation

{$R *.dfm}

//contrutores
constructor TDados.create(dados: TComponent);
var col, lin: integer;
begin
  inherited create(dados);
  //grid
  FixedCols:=0;
  FixedRows:=1;
  ColCount:=2;   //Qtde de coluna
  RowCount:=2;   //Qtde de linha
  DefaultColWidth:=120;
  DefaultRowHeight:=20;
  Width:=290;  //largura coluna
  Height:=300;
  left:=10;
  top:=10;
  Cells[0,0]:='Palavras';
  Cells[1,0]:='Total';

  //Button  - BtnImportar, BtnExportar, BtnSair: TSpeedButton;
  //Importar
  BtnImportar:=TSpeedButton.create(FormExe2);
  BtnImportar.Parent:=FormExe2;
  BtnImportar.Left:=320;
  BtnImportar.Top:=10;
  BtnImportar.width:= 121;
  BtnImportar.Height:=41;
  BtnImportar.Caption:= 'Importar';
  BtnImportar.OnClick:= ButtonImportar;

  //Exportar
  BtnExportar:=TSpeedButton.create(FormExe2);
  BtnExportar.Parent:=FormExe2;
  BtnExportar.Left:=320;
  BtnExportar.Top:=65;
  BtnExportar.width:= 121;
  BtnExportar.Height:=41;
  BtnExportar.Caption:= 'Exportar';
  BtnExportar.OnClick:= ButtonExportar;

  //sair
  BtnSair:=TSpeedButton.create(FormExe2);
  BtnSair.Parent:=FormExe2;
  BtnSair.Left:=320;
  BtnSair.Top:=120;
  BtnSair.width:= 121;
  BtnSair.Height:=40;
  BtnSair.Caption:= 'Sair';
  BtnSair.OnClick:= ButtonSair;

end;

//button exportar
procedure Tdados.ButtonExportar(Sender:TObject);
var lin: integer;
begin
  AssignFile(logico,'C:\Users\shirl\OneDrive\Documentos\Borland Studio Projects\201421640009 - Cirlei (Att2)\questao2.csv');
  rewrite(logico);  //criar/abrir arquivo

  for lin:=0 to RowCount - 1 do
    writeln(logico, cells[0,lin]+ ';' + cells[1,lin]);
  closefile(logico);
end;

//button Sair
procedure Tdados.ButtonSair(Sender:TObject);
begin
  FormExe2.close;;
end;

//Importar
procedure Tdados.ButtonImportar(Sender:TObject);
var col, lin, i, aux, temp: integer;
    palavra, j: string;
begin
  assignfile(logico,'C:\Users\shirl\OneDrive\Documentos\Borland Studio Projects\201421640009 - Cirlei (Att2)\questao2.txt');
  reset(logico);

  palavra:=''; lin:=2;
  for i:=1 to rowcount - 1 do
  begin
    cells[0,i]:='';
    cells[1,i]:='';
  end;
  RowCount:=2;

while not eof(logico) do
begin
  readln(logico,j);
  for col:=1 to length(j) do
        cells[0,lin-1]:=j;
        cells[1,lin-1]:='1';
        inc(lin);
        RowCount:=lin;
        palavra:='';
    RowCount:=RowCount-1;
  end;
end;


procedure TFormExe2.FormShow(Sender: TObject);
begin
  objeto:=TDados.create(FormExe2);
  objeto.Parent:=FormExe2;
end;

end.
