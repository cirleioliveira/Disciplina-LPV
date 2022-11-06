unit Q3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Math;

type
  TFormQ3 = class(TForm)
    StringGridHCD: TStringGrid;
    Calcular: TButton;
    BtnSair: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure CalcularClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQ3: TFormQ3;

implementation

{$R *.dfm}

procedure TFormQ3.CalcularClick(Sender: TObject);
var
  j, pol, soma :integer;
  aux :String;
begin
  aux:='';
  for j := 1 to 20 do
    begin
        aux:= StringGridHCD.Cells[0,j];
        if aux = '10000' then
          begin
              pol:= (StrToInt(aux[1])* 1) + (StrToInt(aux[2])*2)
                                          + (StrToInt(aux[3])*3)
                                          + (StrToInt(aux[4])*4)
                                          + (StrToInt(aux[5])*5);
              StringGridHCD.Cells[1,j]:= IntToStr(pol);
              ShowMessage('aux - '+ aux );
              soma:= StrToInt(aux[1]) + StrToInt(aux[2])
                                      + StrToInt(aux[3])
                                      + StrToInt(aux[4])
                                      + StrToInt(aux[5]);
              StringGridHCD.Cells[2,j]:= IntToStr(soma);
          end
        else
          begin
             pol:= (StrToInt(aux[1])*1) + (StrToInt(aux[2])*2)
                                        + (StrToInt(aux[3])*3)
                                        + (StrToInt(aux[4])*4);
             StringGridHCD.Cells[1,j]:= IntToStr(pol);

             soma:= StrToInt(aux[1])  + StrToInt(aux[2])
                                      + StrToInt(aux[3])
                                      + StrToInt(aux[4]);
             StringGridHCD.Cells[2,j]:= IntToStr(soma);
          end;
    end;
end;

procedure TFormQ3.FormCreate(Sender: TObject);
begin

  StringGridHCD.Cells[0,0]:= 'Valores';
  StringGridHCD.Cells[1,0]:= 'Polimonial';
  StringGridHCD.Cells[2,0]:= 'Soma';

end;

procedure TFormQ3.FormShow(Sender: TObject);
var
  rd, j :integer;
begin

    for j := 1 to 20 do
    begin
        rd:= RandomRange(1000, 10000+1);
        StringGridHCD.Cells[0,j]:= IntToStr(rd);
    end;
end;

procedure TFormQ3.BtnSairClick(Sender: TObject);
var
  j :integer;
begin
    for j := 1 to 20 do
    begin
        StringGridHCD.Cells[1,j]:= '';
        StringGridHCD.Cells[2,j]:= '';
    end;
    close;
end;

end.
