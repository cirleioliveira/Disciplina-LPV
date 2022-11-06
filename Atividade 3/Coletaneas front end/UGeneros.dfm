object FormGenero: TFormGenero
  Left = 0
  Top = 0
  Caption = 'Genero'
  ClientHeight = 435
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BNovo: TSpeedButton
    Left = 18
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BNovoClick
  end
  object BEditar: TSpeedButton
    Left = 106
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Editar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BEditarClick
  end
  object BExcluir: TSpeedButton
    Left = 192
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BExcluirClick
  end
  object BConfirmar: TSpeedButton
    Left = 368
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BConfirmarClick
  end
  object BCancelar: TSpeedButton
    Left = 456
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BCancelarClick
  end
  object BSair: TSpeedButton
    Left = 542
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BSairClick
  end
  object GrupoDados: TGroupBox
    Left = 16
    Top = 264
    Width = 601
    Height = 89
    Caption = 'Dados generos'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TLabel
      Left = 16
      Top = 24
      Width = 4
      Height = 14
    end
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 85
      Height = 14
      Caption = 'C'#243'digo generos'
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 51
      Height = 14
      Caption = 'Descri'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 22
      DataField = 'IDGENERO'
      DataSource = DataSourceGeneros
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 40
      Width = 433
      Height = 22
      DataField = 'DESCRICAO'
      DataSource = DataSourceGeneros
      TabOrder = 1
    end
  end
  object GrupoLista: TGroupBox
    Left = 16
    Top = 8
    Width = 601
    Height = 241
    Caption = 'Lista de dados cadastrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 597
      Height = 223
      Align = alClient
      DataSource = DataSourceGeneros
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDGENERO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo genero'
          Title.Color = clInactiveCaption
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Color = clInactiveCaption
          Width = 478
          Visible = True
        end>
    end
  end
  object QueryGeneros: TADOQuery
    Active = True
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Aval3.generos')
    Left = 536
    Top = 216
    object QueryGenerosIDGENERO: TIntegerField
      FieldName = 'IDGENERO'
    end
    object QueryGenerosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object DataSourceGeneros: TDataSource
    DataSet = QueryGeneros
    Left = 576
    Top = 216
  end
end
