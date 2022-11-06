unit UnitProva2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids,Math;

type
  TFormExe2 = class(TForm)
    GroupBox1: TGroupBox;
    GridDados: TStringGrid;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExe2: TFormExe2;

implementation

{$R *.dfm}




procedure TFormExe2.Edit1Exit(Sender: TObject);
var result :integer;
begin
  result:=0;
  if trim(Tedit(sender).Text)= '' then
   begin
      messageDlg('Preencha o campo vazio!',mtInformation,[mbok],0);
      tedit(sender).setfocus;
      result:=1;
      exit;
   end; 
end;

procedure TFormExe2.FormCreate(Sender: TObject);
begin
  GridDados.ColCount:=6;
  GridDados.FixedCols:=0;
  GridDados.FixedRows:=1;

  GridDados.Cells[0,0]:='Disciplinas';
  GridDados.Cells[1,0]:='Nota 1';
  GridDados.Cells[2,0]:='Nota 2';
  GridDados.Cells[3,0]:='Nota 3';
  GridDados.Cells[4,0]:='Média';
  GridDados.Cells[5,0]:='Resultado';

  GridDados.ColWidths[0]:=300;
  GridDados.ColWidths[4]:=90;
  GridDados.ColWidths[5]:=140;
end;

procedure TFormExe2.SpeedButton3Click(Sender: TObject);
var lin, nota1, nota2, nota3:integer;
    media,soma,cont :real;

begin
  nota1:=StrToInt(Edit1.Text);
  nota2:=StrToInt(Edit2.Text);
  nota3:=StrToInt(Edit3.Text);


  for lin := 0 to GridDados.RowCount - 1 do
  begin
  //não permitir inclusao em duplicidade
    if (GridDados.Cells[0,lin])=(ComboBox1.Items[ComboBox1.ItemIndex]) then
    begin
      messageDlg('Inclusão em duplicidade!',mtInformation,[mbok],0);
      exit;
    end;
  end;

  //comboBox1
  GridDados.Cells[GridDados.Col,GridDados.RowCount-4]:= ComboBox1.Items[ComboBox1.ItemIndex];
  GridDados.SetFocus;

    //digita nota 1
    GridDados.Cells[1,GridDados.RowCount-4]:=Edit1.Text;
    Edit1.Clear;
    Edit1.SetFocus;

    //digita nota 2
    GridDados.Cells[2,GridDados.RowCount-4]:=Edit2.Text;
    Edit2.Clear;
    Edit2.SetFocus;

    //digita nota 3
    GridDados.Cells[3,GridDados.RowCount-4]:=Edit3.Text;
    Edit3.Clear;
    Edit3.SetFocus;

     soma:=(nota1+nota2+nota3);
     media:=soma/3;
     GridDados.Cells[4,GridDados.RowCount-4]:=floattostr(media);

    //resultado media
    if media >=5 then
     begin
      GridDados.Cells[5,GridDados.RowCount-4]:='Aprovado'
     end
    else
     begin
       GridDados.Cells[5,GridDados.RowCount-4]:='Reprovado';
     end;
  //criar uma linha
      GridDados.RowCount:=GridDados.RowCount+1;
end;

procedure TFormExe2.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure TFormExe2.SpeedButton5Click(Sender: TObject);
var i, linRow, coluCol : integer;
begin
  linRow := GridDados.Row;
   coluCol := GridDados.Col;
    if GridDados.RowCount > 2 then //Se o Grid possuir mais de uma linha
begin
   for i:=0 to GridDados.ColCount do
    GridDados.Cells[i,linRow]:='';

   GridDados.RowCount:=GridDados.RowCount -1;
   messageDlg('Linha Excluida com sucesso!',mtInformation,[mbok],0);
   exit;
end
   else
begin
  //Se o Grid possuir apenas uma linha os dados somente são apagados
   for i:=0 to GridDados.ColCount do
   GridDados.Cells[i,1]:='';
  //Grid está vazio o próximo dado novamente será o primeiro
end;
      GridDados.Col := 0; {*}
  end;
end.
