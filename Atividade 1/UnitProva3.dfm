object FormExe3: TFormExe3
  Left = 0
  Top = 0
  Caption = 'Prova 3'
  ClientHeight = 522
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 32
    Top = 464
    Width = 97
    Height = 33
    Caption = 'Calcular'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 135
    Top = 464
    Width = 98
    Height = 33
    Caption = 'Sair'
    OnClick = SpeedButton2Click
  end
  object GridDados: TStringGrid
    Left = 32
    Top = 16
    Width = 201
    Height = 425
    ColCount = 3
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 20
    TabOrder = 0
  end
end
