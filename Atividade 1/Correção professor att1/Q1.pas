unit Q1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Math;

type
  TFormQ1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    StringGridHCD: TStringGrid;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQ1: TFormQ1;

implementation

{$R *.dfm}


procedure TFormQ1.Button1Click(Sender: TObject);
var
  aux1: String;
  i, j, k, tamStr, contNro, contStr :integer;
begin
  ListBox1.Items.Clear;
  contNro:=0;
  contStr:=0;

  for i := 0 to StringGridHCD.RowCount - 1 do
    begin
      for j := 0 to StringGridHCD.ColCount - 1 do
        begin
              aux1:= StringGridHCD.Cells[i,j];
              tamStr:= Length(aux1);
              for k := 1 to tamStr do
              begin
                if  (aux1[k] in ['0'..'9']) then contNro:= contNro + 1;

                if (upcase(aux1[k]) in ['A'..'Z']) then contStr:= contStr + 1;
                end;
              ListBox1.Items.Add('Linha:'+IntToStr(j+1)+' Coluna:'
                                        +IntToStr(i+1)
                                        +' | Letras: '
                                        +IntToStr(contStr)
                                        +' | Números: '
                                        +IntToStr(contNro));
              contNro:=0;
              contStr:=0;
        end;
    end;
end;

procedure TFormQ1.Button2Click(Sender: TObject);
begin
    ListBox1.Items.Clear;
    close;
end;

procedure TFormQ1.FormShow(Sender: TObject);
var
  letras, Result :String;
  i, j, k, tamStr :integer;
begin
  Randomize;
  Result := '';
  letras := '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

  for i := 0 to StringGridHCD.RowCount - 1 do
    begin
      for j := 0 to StringGridHCD.ColCount - 1 do
        begin
              tamStr:= RandomRange(4,9); 
              for k := 0 to tamStr - 1 do
                Result := Result + letras[Random(Length(letras)) + 1];
              StringGridHCD.Cells[i,j]:= Result;
              Result:='';
        end;
    end;

end;

end.  //app;
