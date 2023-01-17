inherited FAtualizaValores: TFAtualizaValores
  Left = 240
  Top = 116
  Caption = 'FAtualizaValores'
  ClientHeight = 437
  ClientWidth = 639
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape5: TShape [0]
    Left = 15
    Top = 85
    Width = 605
    Height = 1
  end
  object LTextoBusca1: TLabel [1]
    Left = 22
    Top = 219
    Width = 92
    Height = 20
    Caption = 'Marca Inicial:'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LTextoBusca2: TLabel [2]
    Left = 22
    Top = 267
    Width = 86
    Height = 20
    Caption = 'Marca Final:'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Shape1: TShape [3]
    Left = 16
    Top = 192
    Width = 604
    Height = 1
  end
  object Shape2: TShape [4]
    Left = 19
    Top = 335
    Width = 604
    Height = 1
  end
  object LAltera: TLabel [5]
    Left = 272
    Top = 264
    Width = 112
    Height = 16
    Caption = '% de altera'#231#227'o'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 90
    Top = 112
    Caption = 'C A L C U L A N D O . . . '
    TabOrder = 14
  end
  object PComissao: TPanel
    Left = 7
    Top = 217
    Width = 625
    Height = 209
    Color = clWhite
    TabOrder = 15
    Visible = False
    object Shape3: TShape
      Left = 8
      Top = 104
      Width = 605
      Height = 1
    end
    object Label5: TLabel
      Left = 394
      Top = 5
      Width = 92
      Height = 20
      Caption = 'Marca Inicial:'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 394
      Top = 53
      Width = 86
      Height = 20
      Caption = 'Marca Final:'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object GroupBox5: TGroupBox
      Left = 15
      Top = 110
      Width = 245
      Height = 71
      Caption = 'Intervalo de datas  (lan'#231'amento)'
      Color = clWhite
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      object Label3: TLabel
        Left = 6
        Top = 16
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label4: TLabel
        Left = 127
        Top = 18
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
    end
    object CBMARCAINIC: TComboBox
      Left = 393
      Top = 25
      Width = 203
      Height = 24
      Color = 16772332
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object CBMARCAFINAL: TComboBox
      Left = 393
      Top = 73
      Width = 203
      Height = 24
      Color = 16772332
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      Left = 291
      Top = 112
      Width = 322
      Height = 90
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      object GroupBox4: TGroupBox
        Left = 211
        Top = 39
        Width = 95
        Height = 35
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 3
          Top = 7
          Width = 90
          Height = 25
          Hint = 
            'Pressione este bot'#227'o para cancelar o relat'#243'rio e abandonar a tel' +
            'a.'
          Caption = '&Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnCancelarClick
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
            6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
            0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
            006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
            60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
            FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
            FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
            609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
            8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
            0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
            D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
            6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
            CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
            FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
            609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
            90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
            0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
            F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
            FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
            CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
            FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
            5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
            FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
            20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 319
      Top = 151
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      object BtVisualizar: TBitBtn
        Left = 3
        Top = 7
        Width = 90
        Height = 25
        Hint = 
          'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
          'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
          ' sua impress'#227'o.'
        Caption = '&Visualizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtVisualizarClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
    end
    object EdDataFim: TMaskEdit
      Left = 142
      Top = 144
      Width = 112
      Height = 28
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
    end
    object EdDataIni: TMaskEdit
      Left = 22
      Top = 144
      Width = 113
      Height = 28
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 6
      Text = '  /  /    '
    end
    inline FrmVendIni: TFrmBusca
      Left = 14
      Top = 7
      Width = 297
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 7
      inherited LTextoBusca: TLabel
        Width = 111
        Caption = 'Vendedor Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 247
      end
      inherited LUZMINUS: TShape
        Left = 266
      end
      inherited EdDescricao: TFlatEdit
        Left = 58
        Width = 191
        TabStop = False
        ColorFlat = 14085099
      end
      inherited BTNOPEN: TBitBtn
        Left = 249
        OnClick = FrmVendIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 267
        TabStop = False
        OnClick = FrmVendIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 55
        ColorFlat = 7846843
        OnKeyDown = FrmVendIniEDCodigoKeyDown
      end
    end
    inline FrmVendFim: TFrmBusca
      Left = 14
      Top = 51
      Width = 297
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 8
      inherited LTextoBusca: TLabel
        Width = 103
        Caption = 'Vendedor Final:'
      end
      inherited LUZOPEN: TShape
        Left = 247
      end
      inherited LUZMINUS: TShape
        Left = 266
      end
      inherited EdDescricao: TFlatEdit
        Left = 58
        Width = 191
        TabStop = False
        ColorFlat = 14085099
      end
      inherited BTNOPEN: TBitBtn
        Left = 249
        OnClick = FrmVendFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 267
        TabStop = False
        OnClick = FrmVendFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 55
        ColorFlat = 7846843
        OnKeyDown = FrmVendFimEDCodigoKeyDown
      end
    end
    object CBDVL: TCheckBox
      Left = 15
      Top = 186
      Width = 97
      Height = 17
      Caption = 'Itens Devolvidos'
      TabOrder = 9
    end
  end
  inline FrmGrupo1: TFrmBusca
    Left = 21
    Top = 15
    Width = 302
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    inherited LTextoBusca: TLabel
      Width = 87
      Caption = 'Grupo Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 247
    end
    inherited LUZMINUS: TShape
      Left = 266
    end
    inherited EdDescricao: TFlatEdit
      Left = 58
      Width = 191
      TabStop = False
      ColorFlat = 16772313
    end
    inherited BTNOPEN: TBitBtn
      Left = 249
      OnClick = FrmGrupo1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 267
      TabStop = False
      OnClick = FrmGrupo1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 55
      ColorFlat = 16632752
      OnKeyPress = FrmGrupo1EDCodigoKeyPress
    end
  end
  inline FrmGrupo2: TFrmBusca
    Left = 322
    Top = 15
    Width = 297
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    inherited LTextoBusca: TLabel
      Width = 79
      Caption = 'Grupo Final:'
    end
    inherited LUZOPEN: TShape
      Left = 247
    end
    inherited LUZMINUS: TShape
      Left = 266
    end
    inherited EdDescricao: TFlatEdit
      Left = 58
      Width = 191
      TabStop = False
      ColorFlat = 16772313
    end
    inherited BTNOPEN: TBitBtn
      Left = 249
      OnClick = FrmGrupo2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 267
      TabStop = False
      OnClick = FrmGrupo2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 55
      ColorFlat = 16632752
      OnKeyPress = FrmGrupo2EDCodigoKeyPress
    end
  end
  inline FrmSubGrupo2: TFrmBusca
    Left = 321
    Top = 63
    Width = 298
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 104
      Caption = 'SubGrupo Final:'
    end
    inherited LUZOPEN: TShape
      Left = 247
    end
    inherited LUZMINUS: TShape
      Left = 266
    end
    inherited EdDescricao: TFlatEdit
      Left = 58
      Width = 191
      TabStop = False
      ColorFlat = 16772313
    end
    inherited BTNOPEN: TBitBtn
      Left = 249
      OnClick = FrmSubGrupo2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 267
      Top = 16
      Height = 18
      TabStop = False
      OnClick = FrmSubGrupo2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 55
      ColorFlat = 16632752
      OnKeyPress = FrmSubGrupo2EDCodigoKeyPress
    end
  end
  inline FrmSubGrupo1: TFrmBusca
    Left = 22
    Top = 63
    Width = 301
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    inherited LTextoBusca: TLabel
      Width = 112
      Caption = 'SubGrupo Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 247
    end
    inherited LUZMINUS: TShape
      Left = 266
    end
    inherited EdDescricao: TFlatEdit
      Left = 58
      Width = 191
      TabStop = False
      ColorFlat = 16772313
    end
    inherited BTNOPEN: TBitBtn
      Left = 249
      OnClick = FrmSubGrupo1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 267
      TabStop = False
      OnClick = FrmSubGrupo1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 55
      ColorFlat = 16632752
      OnKeyPress = FrmSubGrupo1EDCodigoKeyPress
    end
  end
  inline FrmProduto1: TFrmBusca
    Left = 20
    Top = 119
    Width = 295
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 100
      Caption = 'Produto Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 203
      TabStop = False
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmProduto1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      TabStop = False
      OnClick = FrmProduto1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnKeyPress = FrmProduto1EDCodigoKeyPress
    end
  end
  inline FrmProduto2: TFrmBusca
    Left = 323
    Top = 119
    Width = 295
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Width = 92
      Caption = 'Produto Final:'
    end
    inherited LUZOPEN: TShape
      Left = 250
    end
    inherited LUZMINUS: TShape
      Left = 268
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 201
      TabStop = False
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 251
      OnClick = FrmProduto2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 269
      TabStop = False
      OnClick = FrmProduto2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnKeyPress = FrmProduto2EDCodigoKeyPress
    end
  end
  object CBMARCAINI: TComboBox
    Left = 21
    Top = 239
    Width = 203
    Height = 24
    Color = 16772332
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  object CBMARCAFIM: TComboBox
    Left = 21
    Top = 287
    Width = 203
    Height = 24
    Color = 16772332
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
  end
  inline FrmSubProduto1: TFrmBusca
    Left = 20
    Top = 169
    Width = 295
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 6
    inherited LTextoBusca: TLabel
      Width = 125
      Caption = 'SubProduto Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 271
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 204
      TabStop = False
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 254
      OnClick = FrmSubProduto1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 272
      TabStop = False
      OnClick = FrmSubProduto1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
    end
  end
  inline FrmSubProduto2: TFrmBusca
    Left = 323
    Top = 169
    Width = 306
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 7
    inherited LTextoBusca: TLabel
      Width = 117
      Caption = 'SubProduto Final:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 203
      TabStop = False
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmSubProduto2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      TabStop = False
      OnClick = FrmSubProduto2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
    end
  end
  object RGCampo: TRadioGroup
    Left = 432
    Top = 224
    Width = 185
    Height = 105
    Caption = 'Campo de Altera'#231#227'o '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    Items.Strings = (
      'Lucratividade'
      'Valor de Compra'
      'Valor de Venda')
    ParentColor = False
    ParentFont = False
    TabOrder = 11
    TabStop = True
  end
  object EVlrAltera: TEdit
    Left = 269
    Top = 285
    Width = 106
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object BitBtn1: TBitBtn
    Left = 251
    Top = 352
    Width = 137
    Height = 28
    Caption = 'Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007A7A7AD3848383F5878686FF878787FF888887FF898988FF898888FF8888
      88FF888887FF878686FF848382F87A7A7AC7FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00868686FBC2C2C1FEBCBCBCFFBCBCBCFFBCBCBBFFBCBCBBFFBCBCBBFFBCBC
      BBFFBCBCBBFFBCBCBBFFC2C2C1FE878786F6FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008C8C8BFFFFFFFFFFEBEBEBFFEBEBEBFFE9E9E9FFE8E8E8FFE7E7E7FFE7E7
      E7FFE6E6E6FFE6E6E6FFFFFFFFFF8E8D8CFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929191FFFFFFFFFFB4B4B4FF949494FFE7E7E7FFB2B2B2FF939393FFE3E3
      E3FFB0B0B0FF919191FFFBFBFBFF929291FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00959595FFFFFFFFFFE8E8E8FFE7E7E7FFE5E5E5FFE3E3E3FFE2E2E2FFE0E0
      E0FFDFDFDFFFDCDCDCFFFFFFFFFF959595FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A9A99FFFFFFFFFFB1B1B1FF919191FFE2E2E2FFADADADFF8F8F8FFFDCDC
      DCFFA9A9A9FF8D8D8DFFFBFBFBFF9A9999FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF009E9D9DFFFFFFFFFFE3E3E3FFE1E1E1FFDCDCDCFFDBDBDBFFD7D7D7FFD3D3
      D3FFD3D3D3FFD1D1D1FFFFFFFFFF9E9D9CFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A0A0A0FFFFFFFFFFADADADFF8E8E8EFFD8D8D8FFA5A5A5FF8A8A8AFFCECE
      CEFF7374E8FF5258DBFFFBFBFBFF9E9E9EFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A3A3A3FFFCFCFCFFDADADAFFD7D7D7FFD2D2D2FFCECECEFFC9C9C9FFC5C5
      C5FFC2C2C2FFBFBFBFFFFFFFFFFFA0A0A0FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A3A3A3FFFFFFFFFFB07B56FFC38D67FFC58F68FFC69069FFC8926BFFCA94
      6CFFCA956EFFB07B56FFFFFFFFFFA1A09FFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A4A4A4FFFFFFFFFFB07B56FFC18B64FFC38D66FFC58F67FFC69069FFC892
      6BFFCA946CFFB07B56FFFFFFFFFFA0A0A0FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A2A2A2FBFFFFFFFEA7724DFFA7724DFFA7724DFFA7724DFFA7724DFFA772
      4DFFA7724DFFA7724DFFFFFFFFFF9E9E9EFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00979797D1FFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF9999999E6FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007272728A9E9E9EE3A8A8A8FFABABABFFACACACFFADADADFFACACACFFABAB
      ABFFA8A8A8FFA4A4A4FF9B9B9BEB7E7E7E92FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
  end
  object BtnCancelar: TBitBtn
    Left = 519
    Top = 352
    Width = 97
    Height = 26
    Hint = 
      'Pressione este bot'#227'o para cancelar o relat'#243'rio e abandonar a tel' +
      'a.'
    Caption = '&Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnClick = BtnCancelarClick
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
      6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
      0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
      006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
      60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
      FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
      FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
      609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
      8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
      0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
      D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
      6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
      CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
      FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
      609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
      90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
      0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
      F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
      FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
      CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
      FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
      E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
      5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
      FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
      20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
  end
  object FsRelAtu: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 335
    Top = 201
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 336
    Top = 247
  end
end
