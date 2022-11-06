object FormExe2: TFormExe2
  Left = 0
  Top = 0
  Caption = 'Prova 2'
  ClientHeight = 393
  ClientWidth = 788
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
    Left = 175
    Top = 335
    Width = 109
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 175
    Top = 335
    Width = 109
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton
    Left = 175
    Top = 335
    Width = 109
    Height = 33
    Caption = 'Adicionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 433
    Top = 335
    Width = 109
    Height = 33
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 305
    Top = 335
    Width = 109
    Height = 33
    Caption = 'Remover'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton5Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 769
    Height = 226
    Caption = 'Disciplinas Lan'#231'adas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GridDados: TStringGrid
      Left = 3
      Top = 24
      Width = 750
      Height = 193
      ColCount = 6
      DefaultRowHeight = 20
      FixedCols = 0
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64
        64)
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 240
    Width = 769
    Height = 81
    Caption = 'Dados das Disciplinas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 18
      Width = 59
      Height = 16
      Caption = 'Disciplinas'
    end
    object Label2: TLabel
      Left = 323
      Top = 18
      Width = 37
      Height = 16
      Caption = 'Nota 1'
    end
    object Label3: TLabel
      Left = 453
      Top = 18
      Width = 37
      Height = 16
      Caption = 'Nota 2'
    end
    object Label4: TLabel
      Left = 539
      Top = 15
      Width = 37
      Height = 16
      Caption = 'Nota 3'
    end
    object ComboBox1: TComboBox
      Left = 11
      Top = 40
      Width = 265
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Administra'#231#227'o e Ger'#234'ncia de Redes'
        'Algoritmos II'
        'Banco de Dados'
        'Contabilidade'
        'Linguagem de Programa'#231#227'o Visual'
        'Economia'
        'Algoritmos I'
        'Laboratorio de Banco de dados')
    end
    object Edit1: TEdit
      Left = 323
      Top = 37
      Width = 78
      Height = 24
      TabOrder = 1
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 435
      Top = 34
      Width = 78
      Height = 24
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 539
      Top = 34
      Width = 78
      Height = 24
      TabOrder = 3
    end
  end
end
