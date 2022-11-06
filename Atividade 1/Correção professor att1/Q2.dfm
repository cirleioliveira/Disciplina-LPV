object FormQ2: TFormQ2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Quest'#227'o 2'
  ClientHeight = 490
  ClientWidth = 634
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
  object Label1: TLabel
    Left = 104
    Top = 388
    Width = 48
    Height = 13
    Caption = 'Disciplinas'
  end
  object Label2: TLabel
    Left = 312
    Top = 388
    Width = 32
    Height = 13
    Caption = 'Nota 1'
  end
  object Label3: TLabel
    Left = 391
    Top = 388
    Width = 32
    Height = 13
    Caption = 'Nota 2'
  end
  object Label4: TLabel
    Left = 469
    Top = 388
    Width = 32
    Height = 13
    Caption = 'Nota 3'
  end
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Disciplinas Lan'#231'adas'
  end
  object Button1: TButton
    Left = 166
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object StringGridHCD: TStringGrid
    Left = 7
    Top = 24
    Width = 609
    Height = 329
    ColCount = 6
    DefaultColWidth = 95
    DragCursor = crHandPoint
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 269
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 370
    Top = 447
    Width = 75
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Orientation = 2
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object EditValor1: TEdit
    Left = 312
    Top = 407
    Width = 50
    Height = 21
    TabOrder = 4
  end
  object EditValor2: TEdit
    Left = 391
    Top = 407
    Width = 50
    Height = 21
    TabOrder = 5
  end
  object EditValor3: TEdit
    Left = 469
    Top = 407
    Width = 50
    Height = 21
    TabOrder = 6
  end
  object ComboDisciplinas: TComboBox
    Left = 104
    Top = 407
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'LPV'
      'LBD'
      'Redes')
  end
end
