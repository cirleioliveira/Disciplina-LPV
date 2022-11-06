unit UnitExercicio1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Buttons, StdCtrls, Math;

type
  TFormExe1 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //exerc 1
  TDados = class(TStringGrid)
    private
      procedure ButtonSair(Sender: TObject);
      procedure ButtonExportar(Sender: TObject);
      procedure Buttoncalcular (Sender: TObject);

    public
      BtnCalcular, BtnSair, BtnExportar: TSpeedButton;
      constructor create(dados:TComponent);
  end;

var
  FormExe1: TFormExe1;
  objeto:TDados;
  logico:Textfile;  //defini��o nome logico

implementation

{$R *.dfm}

//button exportar
procedure TDados.ButtonExportar(Sender: TObject);
var lin, col, i, j: integer;
    aux: string;
begin
  //Arq. Letra
  Assignfile(logico,'C:\Users\shirl\OneDrive\Documentos\Borland Studio Projects\201421640009 - Cirlei (Att2)\letra.txt');
  Rewrite(logico);       //criar arquivo
  for lin := 0 to RowCount - 1 do
  begin
    for col := 0 to ColCount - 1 do
    begin
      aux:=Cells[lin,col];
      for i := 1 to 10 do
      begin
        if(aux[i] in ['a'..'z'])then
          writeln(logico,aux[i]);
      end;
    end;
  end;
  closefile(logico); //fechar arquivo

  //arq. numero
  Assignfile(logico,'C:\Users\shirl\OneDrive\Documentos\Borland Studio Projects\201421640009 - Cirlei (Att2)\numero.txt');
  Rewrite(logico);       //criar arquivo
  for lin := 0 to RowCount - 1 do
  begin
    for col := 0 to ColCount - 1 do
    begin
      aux:=Cells[lin,col];
      for j := 1 to 10 do
      begin
        if(aux[j] in ['0'..'9'])then
          writeln(logico,aux[j]);
      end;
    end;
  end;
  closefile(logico);  //fechar arquivo

end;

//button calcular
procedure TDados.Buttoncalcular(Sender: TObject);
var Totalnum, temp: integer;
begin
  Totalnum:=0;
  //Associas logico fisico
  Assignfile(logico, 'C:\Users\shirl\OneDrive\Documentos\Borland Studio Projects\201421640009 - Cirlei (Att2)\numero.txt');
  reset(logico);   //criar arquivo
  while not eof(logico) do
  begin
    readln(logico,temp);
    Totalnum := Totalnum + temp;
  end;
  showmessage('Soma total dos n�meros: ' + IntToStr(Totalnum));
  closefile(logico);
end;

//Button Sair
procedure TDados.ButtonSair(Sender: TObject);
begin
  FormExe1.close;
end;

constructor TDados.create(dados: TComponent);
var col, lin, i: integer;
    letra, aux: string;
begin
  inherited create(dados);
  // TStringGrid
  FixedCols:=0;
  FixedRows:=0;
  ColCount:=10;    //Qtde de coluna
  RowCount:=10;    //Qtde de linha
  DefaultColWidth:=80;
  DefaultRowHeight:=20;
  Width:=820;  //largura coluna
  Height:=220;
  left:=10;
  top:=10;

  //Buttons BtnCalcular  BtnSair  BtnExportar
  //Exportar
  BtnExportar:=TSpeedButton.create(FormExe1);
  BtnExportar.Parent:=FormExe1;
  BtnExportar.Left:=80;
  BtnExportar.Top:=250;
  BtnExportar.width:= 121;
  BtnExportar.Height:=41;
  BtnExportar.Caption:= 'Exportar';
  BtnExportar.OnClick:= ButtonExportar;

  //calcular
  BtnCalcular:=TSpeedButton.create(FormExe1);
  BtnCalcular.Parent:=FormExe1;
  BtnCalcular.Left:=230;
  BtnCalcular.Top:=250;
  BtnCalcular.width:= 121;
  BtnCalcular.Height:=41;
  BtnCalcular.Caption:= 'Calcular';
  BtnCalcular.OnClick:=Buttoncalcular;

  //Sair
  BtnSair:=TSpeedButton.create(FormExe1);
  BtnSair.Parent:=FormExe1;
  BtnSair.Left:=380;
  BtnSair.Top:=250;
  BtnSair.width:= 121;
  BtnSair.Height:=41;
  BtnSair.Caption:= 'Sair';
  BtnSair.OnClick:=ButtonSair;

  //preenchimento Grid/colunas e linhas
  Randomize;
  letra:='abcdefghijklmnopqrstvwxyz0123456789';
  for lin := 0 to RowCount - 1 do
    for col := 0 to ColCount - 1 do
    begin
      aux:='';
      for i := 1 to 10 do
      begin
        aux:=aux + letra[random(length(letra))+1];
        Cells[lin,col]:=aux;
      end;
    end;
end;

procedure TFormExe1.FormShow(Sender: TObject);
begin
  objeto:=TDados.create(FormExe1);  //informa��o para aparecer no formulario a grid
  objeto.Parent:=FormExe1;         //informa��o para aparecer no formulario a grid
end;

end.
