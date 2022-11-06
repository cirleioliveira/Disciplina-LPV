object FormMusic: TFormMusic
  Left = 0
  Top = 0
  Caption = 'Musicas'
  ClientHeight = 431
  ClientWidth = 700
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
    OnClick = BNovoClick
  end
  object BEditar: TSpeedButton
    Left = 114
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Editar'
    OnClick = BEditarClick
  end
  object BExcluir: TSpeedButton
    Left = 208
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Excluir'
    OnClick = BExcluirClick
  end
  object BConfirmar: TSpeedButton
    Left = 424
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Confirmar'
    Enabled = False
    OnClick = BConfirmarClick
  end
  object BCancelar: TSpeedButton
    Left = 520
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    OnClick = BCancelarClick
  end
  object BSair: TSpeedButton
    Left = 614
    Top = 376
    Width = 73
    Height = 33
    Caption = 'Sair'
    OnClick = BSairClick
  end
  object GrupoDados: TGroupBox
    Left = 16
    Top = 264
    Width = 673
    Height = 97
    Caption = 'Dados de musicas'
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
      Top = 20
      Width = 77
      Height = 14
      Caption = 'C'#243'digo musica'
    end
    object Label4: TLabel
      Left = 583
      Top = 20
      Width = 44
      Height = 14
      Caption = 'Dura'#231#227'o'
    end
    object Label5: TLabel
      Left = 256
      Top = 20
      Width = 72
      Height = 14
      Caption = 'Nome musica'
    end
    object Label3: TLabel
      Left = 128
      Top = 20
      Width = 45
      Height = 14
      Caption = 'Generos'
      FocusControl = DBLookupComboBox1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 106
      Height = 22
      DataField = 'IDMUSICA'
      DataSource = DataSourceMusicas
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 40
      Width = 313
      Height = 22
      DataField = 'NOMEMUSICA'
      DataSource = DataSourceMusicas
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 583
      Top = 40
      Width = 81
      Height = 22
      DataField = 'DURACAO'
      DataSource = DataSourceMusicas
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 40
      Width = 122
      Height = 22
      DataField = 'Look_Generos'
      DataSource = DataSourceMusicas
      TabOrder = 3
    end
  end
  object GrupoLista: TGroupBox
    Left = 16
    Top = 8
    Width = 673
    Height = 241
    Caption = 'Lista de musicas cadastrados'
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
      Width = 669
      Height = 223
      Align = alClient
      DataSource = DataSourceMusicas
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
          FieldName = 'IDMUSICA'
          Title.Alignment = taCenter
          Title.Caption = 'C'#242'digo musica'
          Title.Color = clInactiveCaption
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Look_Generos'
          Title.Alignment = taCenter
          Title.Caption = 'Generos'
          Title.Color = clInactiveCaption
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEMUSICA'
          Title.Alignment = taCenter
          Title.Caption = 'Nome musica'
          Title.Color = clInactiveCaption
          Width = 384
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DURACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Dura'#231#227'o'
          Title.Color = clInactiveCaption
          Width = 74
          Visible = True
        end>
    end
  end
  object QueryMusicas: TADOQuery
    Active = True
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Aval3.musicas')
    Left = 320
    Top = 152
    object QueryMusicasIDMUSICA: TIntegerField
      FieldName = 'IDMUSICA'
    end
    object QueryMusicasIDGENERO: TIntegerField
      FieldName = 'IDGENERO'
    end
    object QueryMusicasNOMEMUSICA: TStringField
      FieldName = 'NOMEMUSICA'
      Size = 40
    end
    object QueryMusicasDURACAO: TBCDField
      FieldName = 'DURACAO'
      Precision = 6
      Size = 2
    end
    object QueryMusicasLook_Generos: TStringField
      FieldKind = fkLookup
      FieldName = 'Look_Generos'
      LookupDataSet = QueryGerenos
      LookupKeyFields = 'IDGENERO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'IDGENERO'
      Size = 25
      Lookup = True
    end
  end
  object DataSourceMusicas: TDataSource
    DataSet = QueryMusicas
    Left = 400
    Top = 152
  end
  object QueryGerenos: TADOQuery
    Active = True
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Aval3.generos')
    Left = 360
    Top = 152
    object QueryGerenosIDGENERO: TIntegerField
      FieldName = 'IDGENERO'
    end
    object QueryGerenosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
end
