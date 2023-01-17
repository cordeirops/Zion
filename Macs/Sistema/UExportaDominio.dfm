object FExportaDominio: TFExportaDominio
  Left = 607
  Top = 274
  BorderStyle = bsSingle
  Caption = 'FExportaDominio'
  ClientHeight = 188
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelPerFIscal: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 185
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    object Shape1: TShape
      Left = 8
      Top = 100
      Width = 450
      Height = 33
    end
    object b: TGroupBox
      Left = 176
      Top = 147
      Width = 110
      Height = 34
      Color = clWhite
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      object BtnExportar: TBitBtn
        Left = 3
        Top = 7
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = 'Libera exporta'#231#245'es para esta base'
        Caption = 'Exportar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnExportarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object cbLancBancarios: TCheckBox
      Left = 16
      Top = 108
      Width = 185
      Height = 17
      Caption = 'Lan'#231'amentos Banc'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox5: TGroupBox
      Left = 101
      Top = 15
      Width = 252
      Height = 64
      Caption = 'Intervalo de datas  (movimenta'#231#227'o)'
      Color = clWhite
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 6
        Top = 18
        Width = 55
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label4: TLabel
        Left = 134
        Top = 18
        Width = 43
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDataFim: TDateTimePicker
        Left = 134
        Top = 32
        Width = 110
        Height = 24
        Date = 42293.626812928240000000
        Time = 42293.626812928240000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EdDataIni: TDateTimePicker
        Left = 8
        Top = 32
        Width = 110
        Height = 24
        Date = 42293.626812928240000000
        Time = 42293.626812928240000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
