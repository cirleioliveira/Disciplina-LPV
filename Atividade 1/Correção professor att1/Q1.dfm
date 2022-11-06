object FormQ1: TFormQ1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o1'
  ClientHeight = 412
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 266
    Top = 340
    Width = 141
    Height = 43
    Caption = 'Contar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 566
    Top = 340
    Width = 141
    Height = 43
    Caption = 'Sair'
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 683
    Top = 8
    Width = 272
    Height = 279
    Caption = ' Resultados '
    TabOrder = 2
    object ListBox1: TListBox
      Left = 2
      Top = 15
      Width = 268
      Height = 262
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      ExplicitLeft = -177
      ExplicitTop = -426
      ExplicitWidth = 294
      ExplicitHeight = 491
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 669
    Height = 279
    Caption = ' Dados Aleat'#243'rios '
    TabOrder = 3
    object StringGridHCD: TStringGrid
      Left = 2
      Top = 15
      Width = 665
      Height = 262
      Align = alClient
      ColCount = 10
      FixedCols = 0
      RowCount = 10
      FixedRows = 0
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitWidth = 657
      ExplicitHeight = 257
    end
  end
end
