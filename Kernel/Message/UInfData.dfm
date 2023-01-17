inherited FInfoData: TFInfoData
  Left = 573
  Top = 212
  Caption = 'Selecione a Data'
  ClientHeight = 86
  ClientWidth = 396
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 42
    Top = 192
  end
  object edData: TcxDateEdit
    Left = 8
    Top = 33
    Width = 177
    Height = 27
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    TabOrder = 3
  end
  object lbTituloMsg: TcxLabel
    Left = 8
    Top = 9
    Width = 83
    Height = 23
    Caption = 'Mensagem!'
    ParentColor = False
    ParentFont = False
    Properties.ShadowedColor = clWhite
    Properties.Transparent = True
    Style.Color = 16772332
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 191
    Top = 34
    Width = 81
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
