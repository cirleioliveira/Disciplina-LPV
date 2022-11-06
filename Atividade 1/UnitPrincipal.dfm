object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 192
    Top = 72
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Prova11: TMenuItem
        Caption = 'Prova 1'
        OnClick = Prova11Click
      end
      object Prova21: TMenuItem
        Caption = 'Prova 2'
        OnClick = Prova21Click
      end
      object Prova31: TMenuItem
        Caption = 'Prova 3'
        OnClick = Prova31Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
