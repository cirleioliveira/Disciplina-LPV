object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'LPV - Atividade 1'
  ClientHeight = 271
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 3
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 447
  end
  object MenuPrincipal: TMainMenu
    Left = 110
    Top = 60
    object Prova: TMenuItem
      Caption = 'Quest'#245'es'
      Checked = True
      object Questao1: TMenuItem
        Caption = 'Quest'#227'o1'
        OnClick = Questao1Click
      end
      object Questao2: TMenuItem
        Caption = 'Quest'#227'o2'
        OnClick = Questao2Click
      end
      object Questao3: TMenuItem
        Caption = 'Quest'#227'o3'
        OnClick = Questao3Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
  end
end
