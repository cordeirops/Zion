inherited FGeradorXML: TFGeradorXML
  Left = 255
  Top = 273
  Caption = 'Gerador XML'
  ClientHeight = 169
  ClientWidth = 529
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 26
    Top = 208
  end
  object PPrincipal: TPanel
    Left = 144
    Top = 32
    Width = 225
    Height = 121
    TabOrder = 1
    object PDiretorios: TPanel
      Left = 16
      Top = 8
      Width = 201
      Height = 105
      BorderWidth = 2
      BorderStyle = bsSingle
      TabOrder = 0
      object btnGerar: TButton
        Left = 8
        Top = 16
        Width = 83
        Height = 25
        Caption = 'Exportar Dados'
        TabOrder = 0
        OnClick = btnGerarClick
      end
      object Button1: TButton
        Left = 104
        Top = 16
        Width = 83
        Height = 25
        Caption = 'Importar Dados'
        TabOrder = 1
        OnClick = Button1Click
      end
      object cbSincFormPag: TCheckBox
        Left = 8
        Top = 80
        Width = 185
        Height = 17
        Caption = 'Sincronizar Forma de Pagamento'
        TabOrder = 2
      end
    end
    object Button2: TButton
      Left = 80
      Top = 60
      Width = 75
      Height = 25
      Caption = 'LimparCDS'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
  end
end
