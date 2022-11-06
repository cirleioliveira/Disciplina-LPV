object FormConsColetaneas: TFormConsColetaneas
  Left = 0
  Top = 0
  Caption = 'Consulta Coletaneas'
  ClientHeight = 445
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BConsulta: TSpeedButton
    Left = 168
    Top = 376
    Width = 107
    Height = 41
    Caption = 'Consultar'
    OnClick = BConsultaClick
  end
  object BSair: TSpeedButton
    Left = 310
    Top = 376
    Width = 107
    Height = 41
    Caption = 'Sair'
    OnClick = BSairClick
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
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 597
      Height = 223
      Align = alClient
      DataSource = DataSourceColetaneas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'IDCOLETANEA'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = clInactiveCaption
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 84
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Color = clInactiveCaption
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 359
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'DATACOLETANEA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Color = clInactiveCaption
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 131
          Visible = True
        end>
    end
  end
  object GroupBoxConsulta: TGroupBox
    Left = 18
    Top = 272
    Width = 599
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
      Top = 43
      Width = 465
      Height = 21
      TabOrder = 0
    end
  end
  object DataSourceColetaneas: TDataSource
    DataSet = QueryColetaneas
    Left = 568
    Top = 200
  end
  object QueryColetaneas: TADOQuery
    Active = True
    Connection = FormPrinccipal.conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nome'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Aval3.coletaneas c where c.nome=:nome')
    Left = 520
    Top = 200
    object QueryColetaneasIDCOLETANEA: TIntegerField
      FieldName = 'IDCOLETANEA'
    end
    object QueryColetaneasNOME: TStringField
      Alignment = taRightJustify
      FieldName = 'NOME'
      Size = 30
    end
    object QueryColetaneasDATACOLETANEA: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'DATACOLETANEA'
    end
  end
end
