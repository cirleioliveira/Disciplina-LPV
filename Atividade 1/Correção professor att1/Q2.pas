unit Q2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TFormQ2 = class(TForm)
    Button1: TButton;
    StringGridHCD: TStringGrid;
    Button2: TButton;
    Button3: TButton;
    EditValor1: TEdit;
    EditValor2: TEdit;
    EditValor3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComboDisciplinas: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormQ2: TFormQ2;

implementation

{$R *.dfm}

procedure TFormQ2.Button2Click(Sender: TObject);
begin
    if StringGridHcd.Row = 0 then
      begin
        ShowMessage('Atenção! Selecione a linha da disciplina.');
      end
    else
      begin
        StringGridHCD.Cells[0, StringGridHCD.Row] := StringGridHCD.Cells[0, StringGridHCD.RowCount-1];
        StringGridHCD.Cells[1, StringGridHCD.Row] := StringGridHCD.Cells[1, StringGridHCD.RowCount-1];
        StringGridHCD.Cells[2, StringGridHCD.Row] := StringGridHCD.Cells[2, StringGridHCD.RowCount-1];
        StringGridHCD.Cells[3, StringGridHCD.Row] := StringGridHCD.Cells[3, StringGridHCD.RowCount-1];
        StringGridHCD.Cells[4, StringGridHCD.Row] := StringGridHCD.Cells[4, StringGridHCD.RowCount-1];
        StringGridHCD.Cells[5, StringGridHCD.Row] := StringGridHCD.Cells[5, StringGridHCD.RowCount-1];
        StringGridHCD.RowCount:= StringGridHCD.RowCount-1;
      end;
end;

procedure TFormQ2.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TFormQ2.FormCreate(Sender: TObject);
begin

  StringGridHCD.Cells[0, 0] :='Disciplinas';
  StringGridHCD.Cells[1, 0] :='Nota 1';
  StringGridHCD.Cells[2, 0] :='Nota 2';
  StringGridHCD.Cells[3, 0] :='Nota 3';
  StringGridHCD.Cells[4, 0] :='Média';
  StringGridHCD.Cells[5, 0] :='Resultado';
end;

procedure TFormQ2.Button1Click(Sender: TObject);
var
i, aux1, aux2 : Integer;
r1, r2, r3 : real;
flag : Boolean;

begin
flag:= False;

for i := 0 to StringGridHCD.RowCount-1 do
  begin
     if UpperCase(Trim(ComboDisciplinas.Text)) = UpperCase(StringGridHCD.Cells[0, i]) then
        begin
          flag:= True;
        end;
  end;

if (ComboDisciplinas.Text = '')or (EditValor1.Text = '')
                    or (EditValor2.Text = '')or (EditValor3.Text = '') then
  begin
    ShowMessage('Preencha todos os campos!');
  end
else if flag then
    begin
      ShowMessage('Atenção! Disciplina já existe.');
    end
  else
    begin

        aux1:= StringGridHCD.ColCount;
        aux2:= (StringGridHCD.RowCount+1);

        StringGridHCD.ColCount:=aux1;
        StringGridHCD.RowCount:=aux2;

        StringGridHCD.Cells[0, aux2-1] := Trim(ComboDisciplinas.Text);
        StringGridHCD.Cells[1, aux2-1] := EditValor1.Text;
        StringGridHCD.Cells[2, aux2-1] := EditValor2.Text;
        StringGridHCD.Cells[3, aux2-1] := EditValor3.Text;
        r1:= StrToFloat(EditValor1.Text);
        r2:= StrToFloat(EditValor2.Text);
        r3:= StrToFloat(EditValor3.Text);
        StringGridHCD.Cells[4, aux2-1] := FloatToStr((r1+r2+r3)/3);
        if ((r1+r2+r3)/3) < 5 then
          begin
            StringGridHCD.Cells[5, aux2-1] :='Reprovado';
          end
          else
          begin
            StringGridHCD.Cells[5, aux2-1] :='Aprovado';
          end;
        ComboDisciplinas.Text := '';
        EditValor1.Text := '';
        EditValor2.Text := '';
        EditValor3.Text := '';
    end;
end;

end.
