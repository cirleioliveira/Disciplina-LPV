object FormQ3: TFormQ3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 3'
  ClientHeight = 569
  ClientWidth = 222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StringGridHCD: TStringGrid
    Left = 9
    Top = 6
    Width = 201
    Height = 505
    ColCount = 3
    FixedCols = 0
    RowCount = 20
    TabOrder = 0
  end
  object Calcular: TButton
    Left = 10
    Top = 524
    Width = 87
    Height = 37
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = CalcularClick
  end
  object BtnSair: TButton
    Left = 124
    Top = 524
    Width = 87
    Height = 37
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BtnSairClick
  end
end
