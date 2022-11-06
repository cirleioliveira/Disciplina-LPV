object FormExe1: TFormExe1
  Left = 0
  Top = 0
  Caption = 'Prova 1'
  ClientHeight = 329
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 288
    Top = 264
    Width = 153
    Height = 41
    Caption = 'Calcular'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 472
    Top = 264
    Width = 153
    Height = 41
    Caption = 'Sair'
    OnClick = SpeedButton2Click
  end
  object GridDados: TStringGrid
    Left = 24
    Top = 16
    Width = 665
    Height = 225
    ColCount = 10
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 10
    FixedRows = 0
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 704
    Top = 16
    Width = 153
    Height = 225
    ItemHeight = 13
    TabOrder = 1
  end
end
