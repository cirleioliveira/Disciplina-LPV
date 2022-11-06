object FormPrinccipal: TFormPrinccipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 261
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 16
    Top = 16
    object AtividadeIII1: TMenuItem
      Caption = 'Atividade III'
      object Musicas1: TMenuItem
        Caption = 'Musicas'
        OnClick = Musicas1Click
      end
      object Coletaneas1: TMenuItem
        Caption = 'Coletaneas'
        OnClick = Coletaneas1Click
      end
      object Generos1: TMenuItem
        Caption = 'Generos'
        OnClick = Generos1Click
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Consultas: TMenuItem
      Caption = 'Consultas'
      object MusicasColuna: TMenuItem
        Caption = 'Musicas coluna nome'
        OnClick = MusicasColunaClick
      end
      object ColetaneasNome: TMenuItem
        Caption = 'Coletaneas nome'
        OnClick = ColetaneasNomeClick
      end
    end
    object Sair2: TMenuItem
      Caption = 'Sair'
      OnClick = SairClick
    end
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=abc;User ID=Aval3;Data Source=xe;Per' +
      'sist Security Info=True'
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 72
    Top = 16
  end
end
