unit UnitProva1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids;

type
  TFormExe1 = class(TForm)
    GridDados: TStringGrid;
    ListBox1: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExe1: TFormExe1;

implementation

{$R *.dfm}

procedure TFormExe1.SpeedButton1Click(Sender: TObject);
var col, lin, i, SomaNum, SomaLetra :integer;
    caracter, aux:string;
begin
   randomize;
  caracter:='ABCDEFGHIJKLMNOPQRSTUVXYWZ0123456789';
   // atribuição letras e números
  for col:=0 to GridDados. ColCount-1 do
    for lin:=0 to GridDados.RowCount-1 do
    begin
      aux:='';
      //linhas e colunas com 4 números e letras
      for i:=1 to 4 do
      aux:=aux+caracter[random(length(caracter))+1];
        GridDados.Cells[col,lin]:=aux;
    end;
  //linhas e colunas com 8 números ou letras
  for col:=0 to GridDados.ColCount-1 do
    for lin:=5 to GridDados.RowCount-1 do
    begin
      aux:='';
      for i:=1 to 8 do
        aux:=aux+caracter[random(length(caracter))+1];
        GridDados.Cells[col, lin]:=aux;
     end;
        // ListBox1
  for col:=0 to GridDados.ColCount-1 do
    for lin:=0 to GridDados.RowCount-1 do
  begin
    SomaNum:=0;
    SomaLetra:=0;
    aux:=GridDados.Cells[col, lin];
    for i:=0 to length(aux) do
     if(aux[i] in ['0'..'9']) then
        SomaNum:=SomaNum+1;

     for i:=0 to length(aux) do
      if(aux[i] in ['A'..'Z']) then
        SomaLetra:=SomaLetra+1;

      ListBox1.Items.Add('Quantidade Letras: '  + IntToStr(SomaLetra));
      ListBox1.Items.Add('Quantidade Números: ' + IntToStr(SomaNum));

  end;
end;

procedure TFormExe1.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.
