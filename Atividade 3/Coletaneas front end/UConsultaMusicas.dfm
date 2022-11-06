object FormConsultamusicas: TFormConsultamusicas
  Left = 0
  Top = 0
  Caption = 'Consulta musicas'
  ClientHeight = 431
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BConsultar: TSpeedButton
    Left = 224
    Top = 360
    Width = 107
    Height = 41
    Caption = 'Consultar'
    OnClick = BConsultarClick
  end
  object BSair: TSpeedButton
    Left = 366
    Top = 360
    Width = 107
    Height = 41
    Caption = 'Sair'
    OnClick = BSairClick
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
    TabOrder = 0
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
  object GroupBoxConsulta: TGroupBox
    Left = 16
    Top = 264
    Width = 671
    Height = 81
    Caption = 'Dados para consulta'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 95
      Height = 13
      Caption = 'Nome para consulta'
    end
    object CampoNome: TEdit
      Left = 16
      Top = 40
      Width = 465
      Height = 21
      TabOrder = 0
    end
  end
  object QueryMusicas: TADOQuery
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nomemusica'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Aval3.musicas m where m.nomemusica=:nomemusica')
    Left = 552
    Top = 208
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
  object QueryGerenos: TADOQuery
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Aval3.generos')
    Left = 600
    Top = 208
    object QueryGerenosIDGENERO: TIntegerField
      FieldName = 'IDGENERO'
    end
    object QueryGerenosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object DataSourceMusicas: TDataSource
    DataSet = QueryMusicas
    Left = 640
    Top = 208
  end
end
