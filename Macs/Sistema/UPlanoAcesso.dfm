inherited FPlanoAcesso: TFPlanoAcesso
  Left = 313
  Top = 31
  ActiveControl = TCPLANO
  ClientHeight = 478
  ClientWidth = 794
  OldCreateOrder = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 144
  end
  object GroupBox1: TGroupBox
    Left = 13
    Top = 11
    Width = 321
    Height = 65
    Caption = 'Usu'#225'rio Sob Configura'#231#227'o'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object LCODUSUARIO: TLabel
      Left = 8
      Top = 32
      Width = 263
      Height = 17
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LUSUARIO: TLabel
      Left = 48
      Top = 32
      Width = 272
      Height = 17
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 16
    Top = 82
    Width = 321
    Height = 31
    BevelInner = bvLowered
    Color = 13750737
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 3
      Top = 2
      Width = 158
      Height = 26
      Caption = 'Salvar Configura'#231#245'es'
      TabOrder = 0
      OnClick = BitBtn3Click
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFF606060505050707070707070FFFFFFFFFFFF7070707070706F6F6F707070
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF808080A0A0
        A07F7F7F5F5F5F4040403F3030604F4F8F6F6F9070706F5F5F3F30302F2F2FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA0AFAFD0D0D0FFFFF0E0F0D0
        FFF0E0EFC09FC0807FF0AFAFFFC0C0FFDFDFFFEFEFD0C0C04F3F3F2F2F2FFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFB0B0B0D0CFCFF0EFD020AF202FAF209F
        9F60FF9FA0FFA0A0FFAFAFFFBFBFFFEFEFFFFFFFD0C0C03F3030707070FFFFFF
        FFFFFF000000FFFFFFFFFFFFB0B0B0EFE0E0F0E0CF30C04000A0009F9F70FFB0
        BFFFA0A0FFB0BFFFBFD0FFF0F0FFFFFFFFFFFF7F6060303030FFFFFFFFFFFF00
        0000FFFFFFFFFFFFB0B0B0EFE0E0F0E0BF50E06F1FB02FCFAF9FFFCFCFFFCFCF
        E0C0D0C0B0AFF0E0E0FFF0F0FFF0F0C0A0A02F2F2FFFFFFFFFFFFF000000FFFF
        FFFFFFFFB0B0B0EFEFEFF0DFB05FE0B030A0CFC0A0BFFFCFCFFFDFDFE0D0DFBF
        A09FEFCFCFFFCFCFFFCFCFCFA0A03F3F3FFFFFFFFFFFFF000000FFFFFFFFFFFF
        B0B0B0F0DFB0F0D0AF60AFF03F90FFA0A0C0FFF0F0FFFFFFFFF0FFF0BFDFFFC0
        CFFF9F9FFFB0B0BF8080707070FFFFFFFFFFFF000000FFFFFFFFFFFFD0A06FF0
        AF50FFD0A0F0CF9FDFC0A0CFA09FEFEFEFFFFFFFFFF0F0FFCFD0FFB0B0FFA0A0
        FF9F9F806060FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFCFAF8FE0B08FFFC0
        70FFBF5FFFC06FFFB06FD0A080EFE0EFFFF0F0FFDFDFFFCFCFFFB0B0B07F7FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBFBFC0DFD0C0FFC070FFCF80
        FFC07FFFBF6FF0B050D09F5FE0B09FE0BFAFB090909F7F7FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0D0D0EFE0DFE0D0C0EFEFF0EFEFEFEF
        E0E0E0E0DFE0D0B0E0BF80E0B070706060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFDFCFCFDFC0BFB08070B08080BF8F8FC09F9FCFA0
        AFDFCFD0EFF0FFE0E0EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFDFCFCFDFD0C0FFCF90FFC08FFFC09FF0BFA0EFB0A0E0B0A0EFC0C0
        FFEFEFFFEFEF5050504F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFDFCFCFF0CF90FFC08FFFCFA0FFCFAFFFCFB0FFD0BFFFD0C0CFAFAFEFDFDFFF
        FFFFC0C0C0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFCFCF
        DFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCF
        CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object BitBtn4: TBitBtn
      Left = 161
      Top = 2
      Width = 158
      Height = 26
      Caption = 'Cancelar e Sair'
      TabOrder = 1
      OnClick = BitBtn4Click
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
  object GBLOJAS: TGroupBox
    Left = 338
    Top = 11
    Width = 439
    Height = 123
    Caption = 'Lojas a qual o usu'#225'rio ser'#225' configurado'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 265
      Top = 19
      Width = 83
      Height = 23
      Caption = 'Adicionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 348
      Top = 19
      Width = 83
      Height = 23
      Caption = 'Retirar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object LWLOJA: TListView
      Left = 8
      Top = 42
      Width = 425
      Height = 79
      Columns = <
        item
          AutoSize = True
          Caption = 'Lojas Selecionadas'
          ImageIndex = 1
        end>
      ColumnClick = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      GridLines = True
      LargeImages = ImageList1
      ParentFont = False
      SmallImages = ImageList1
      TabOrder = 2
      ViewStyle = vsReport
    end
    object DBLOJAS: TComboBox
      Left = 8
      Top = 20
      Width = 257
      Height = 24
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBLOJASKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 10
    Top = 136
    Width = 769
    Height = 329
    Caption = 'Plano de Acesso do Usu'#225'rio'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    object Shape3: TShape
      Left = 6
      Top = 17
      Width = 757
      Height = 3
      Brush.Color = clMoneyGreen
    end
    object TCPLANO: TFlatTabControl
      Left = 8
      Top = 22
      Width = 757
      Height = 305
      Tabs.Strings = (
        'CADASTROS'
        'FINANCEIRO'
        'ENTRADAS/SA'#205'DAS'
        'RELAT'#211'RIOS'
        'SERVI'#199'OS'
        'INDUSTRIAL.')
      ActiveTab = 4
      TabOrder = 0
      OnTabChanged = TCPLANOTabChanged
      object PSERVICO: TPanel
        Left = 3
        Top = 19
        Width = 748
        Height = 282
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        object Shape19: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape20: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape21: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object CBDBSERVICOS: TCheckBox
          Left = 8
          Top = 12
          Width = 105
          Height = 17
          TabStop = False
          Caption = 'Servi'#231'os'
          TabOrder = 3
          OnClick = CBDBSERVICOSClick
        end
        object CBABRIRORD: TCheckBox
          Left = 20
          Top = 48
          Width = 240
          Height = 17
          Caption = 'Abrir nova ordem'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object CBFECHORD: TCheckBox
          Left = 20
          Top = 64
          Width = 240
          Height = 17
          Caption = 'Fechar Ordem'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object CBEXCORD: TCheckBox
          Left = 20
          Top = 80
          Width = 240
          Height = 17
          Caption = 'Excluir Ordem'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object CBCADSERV: TCheckBox
          Left = 20
          Top = 32
          Width = 317
          Height = 17
          Caption = 'Cadastro de Servi'#231'os'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object CbGerarBonif: TCheckBox
          Left = 20
          Top = 97
          Width = 139
          Height = 17
          Caption = 'Gerar bonifica'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CbGerarCanc: TCheckBox
          Left = 20
          Top = 113
          Width = 157
          Height = 17
          Caption = 'Gerar Cancelamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object CbEditaVendedorOs: TCheckBox
          Left = 20
          Top = 129
          Width = 317
          Height = 17
          Caption = 'Editar Vendedor na Ordem de Servi'#231'os'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object PENTRADAS: TPanel
        Left = 3
        Top = 18
        Width = 749
        Height = 285
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 2
        object Shape12: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape13: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape15: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object DBCBENTRADAS: TCheckBox
          Left = 8
          Top = 12
          Width = 201
          Height = 17
          TabStop = False
          Caption = 'Entradas/Sa'#237'das'
          TabOrder = 0
          OnClick = DBCBENTRADASClick
        end
        object ENT1: TCheckBox
          Left = 20
          Top = 60
          Width = 261
          Height = 17
          Caption = 'Permite dar Descontos no Produto'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object ENT6: TCheckBox
          Left = 410
          Top = 154
          Width = 240
          Height = 17
          Caption = 'Acesso ao PDV'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object ENT7: TCheckBox
          Left = 20
          Top = 45
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar Pedidos de Venda'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object ENT3: TCheckBox
          Left = 410
          Top = 186
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar Or'#231'amentos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object ENT8: TCheckBox
          Left = 20
          Top = 140
          Width = 240
          Height = 17
          Caption = 'Alterar Pedidos de Venda'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object ENT2: TCheckBox
          Left = 410
          Top = 170
          Width = 261
          Height = 17
          Caption = 'Lan'#231'amentos de acertos no estoque'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object ENT4: TCheckBox
          Left = 20
          Top = 107
          Width = 240
          Height = 17
          Caption = 'Efetuar vendas no atacado'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object ENT5: TCheckBox
          Left = 20
          Top = 123
          Width = 240
          Height = 17
          Caption = 'Efetuar vendas no varejo'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object ENT10: TCheckBox
          Left = 20
          Top = 155
          Width = 240
          Height = 17
          Caption = 'Cancelar Vendas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object ENT9: TCheckBox
          Left = 20
          Top = 207
          Width = 240
          Height = 17
          Caption = 'Emitir Documento Fiscal'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object ENT12: TCheckBox
          Left = 410
          Top = 97
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar Pedidos de Compra'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object ENT13: TCheckBox
          Left = 410
          Top = 113
          Width = 240
          Height = 17
          Caption = 'Alterar Pedidos de Compra'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object ENT14: TCheckBox
          Left = 410
          Top = 81
          Width = 240
          Height = 17
          Caption = 'Efetuar Compra'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object ENT15: TCheckBox
          Left = 410
          Top = 129
          Width = 240
          Height = 17
          Caption = 'Cancelar Compra'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object CBTROCPED: TCheckBox
          Left = 20
          Top = 170
          Width = 341
          Height = 17
          Caption = 'Efetuar TROCA em pedidos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object CBPEDVENDA: TCheckBox
          Left = 20
          Top = 29
          Width = 240
          Height = 17
          Caption = 'Acesso a Pedidos de Venda'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object CBALTVLRPED: TCheckBox
          Left = 20
          Top = 92
          Width = 261
          Height = 17
          Caption = 'Permitir alterar valor total do Pedido'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object CBDESMAIORPROD: TCheckBox
          Left = 20
          Top = 76
          Width = 331
          Height = 17
          Caption = 'Per. Desc. no Produto maior que o cadastrado'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object CBGarantia: TCheckBox
          Left = 410
          Top = 201
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar como garantia'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object CBCancelPed: TCheckBox
          Left = 20
          Top = 186
          Width = 341
          Height = 17
          Caption = 'Permitir cancelar o fechamento de pedidos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object CBALTBCCOMIS: TCheckBox
          Left = 410
          Top = 37
          Width = 335
          Height = 17
          Caption = 'Alt. Base de c'#225'lculo em comissionados'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object CBALTPERCOMIS: TCheckBox
          Left = 410
          Top = 53
          Width = 327
          Height = 17
          Caption = 'Alt. Perc.(%) de comiss'#227'o em comissionados'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object CBECF: TCheckBox
          Left = 410
          Top = 224
          Width = 271
          Height = 17
          Caption = 'Alterar Estoque F'#237'sico de Produtos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object CBALTVLRUNIT: TCheckBox
          Left = 410
          Top = 238
          Width = 292
          Height = 17
          Caption = 'Permitir Alterar Vlr. Unit. em Pedidos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object CBMargemSeg: TCheckBox
          Left = 410
          Top = 253
          Width = 341
          Height = 17
          Caption = 'Vender c/ vlr. abaixo da margem de seguran'#231'a'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
        object CBTelaComis: TCheckBox
          Left = 410
          Top = 21
          Width = 335
          Height = 17
          Caption = 'Acessa tela de Comissionados'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 26
        end
        object CBFechaAuto: TCheckBox
          Left = 20
          Top = 229
          Width = 315
          Height = 17
          Caption = 'Fechar Pedido automaticamente ao Gravar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 27
        end
      end
      object PProducao: TPanel
        Left = 3
        Top = 18
        Width = 750
        Height = 285
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 5
        object Shape22: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape23: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape24: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object CBPRODUCAO: TCheckBox
          Left = 8
          Top = 12
          Width = 201
          Height = 17
          TabStop = False
          Caption = 'Produ'#231#227'o'
          TabOrder = 0
          OnClick = CBPRODUCAOClick
        end
        object CBAcessProducao: TCheckBox
          Left = 20
          Top = 29
          Width = 240
          Height = 17
          Caption = 'Acesso a tela de Ficha T'#233'cnica'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object CBACEPRODUC: TCheckBox
          Left = 20
          Top = 44
          Width = 236
          Height = 17
          Caption = 'Acesso a tela de Produ'#231#227'o'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object PREL: TPanel
        Left = 3
        Top = 18
        Width = 750
        Height = 285
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 3
        object Shape16: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape17: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape18: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object CBRBANCO: TCheckBox
          Left = 20
          Top = 92
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de banco'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object CBRCTARECEBER: TCheckBox
          Left = 20
          Top = 124
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de Contas a Receber'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object DBCBREL: TCheckBox
          Left = 8
          Top = 12
          Width = 201
          Height = 17
          TabStop = False
          Caption = 'VISUALIZAR RELAT'#211'RIOS'
          TabOrder = 0
          OnClick = DBCBRELClick
        end
        object CBRFINEST: TCheckBox
          Left = 20
          Top = 28
          Width = 333
          Height = 17
          Caption = 'rel. financeiros de estoque'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object CBRPEDVEN: TCheckBox
          Left = 20
          Top = 44
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de Pedidos de venda'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object CBRPEDCOMP: TCheckBox
          Left = 20
          Top = 60
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de pedidos de compra'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object CBRCAIXA: TCheckBox
          Left = 20
          Top = 76
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de Caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object CBRCTAPAGAR: TCheckBox
          Left = 20
          Top = 108
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rios de Contas a pagar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object ENT11: TCheckBox
          Left = 20
          Top = 140
          Width = 240
          Height = 17
          Caption = 'Relat'#243'rio de comiss'#245'es'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object CBRELABERTORD: TCheckBox
          Left = 20
          Top = 156
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rio de Abertura de Ordem de servi'#231'o'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object CBRELFECHORD: TCheckBox
          Left = 20
          Top = 172
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rio de Fechamento de Ordem de servi'#231'o'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object CBRELINVENTEST: TCheckBox
          Left = 20
          Top = 188
          Width = 333
          Height = 17
          Caption = 'Relat'#243'rio de Invent'#225'rio de Estoque'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
      end
      object PFINANCEIRO: TPanel
        Left = 3
        Top = 19
        Width = 748
        Height = 284
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 1
        object Shape5: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape6: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape7: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object DBCBFINANCEIRO: TCheckBox
          Left = 8
          Top = 12
          Width = 201
          Height = 17
          TabStop = False
          Caption = 'Financeiro'
          TabOrder = 16
          OnClick = DBCBFINANCEIROClick
        end
        object FIN1: TCheckBox
          Left = 20
          Top = 28
          Width = 240
          Height = 17
          Caption = 'Liberar cr'#233'dito ao cliente'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object FIN2: TCheckBox
          Left = 20
          Top = 52
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar em Contas a Receber'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object FIN3: TCheckBox
          Left = 20
          Top = 68
          Width = 240
          Height = 17
          Caption = 'Alterar/Excluir Ctas Receber'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object FIN4: TCheckBox
          Left = 20
          Top = 84
          Width = 240
          Height = 17
          Caption = 'Baixar Ctas Recber'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object FIN5: TCheckBox
          Left = 20
          Top = 100
          Width = 240
          Height = 17
          Caption = 'Cancelar Baixa de Ctas Receber'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object FIN6: TCheckBox
          Left = 20
          Top = 139
          Width = 240
          Height = 17
          Caption = 'Lan'#231'ar em Contas a Pagar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object FIN7: TCheckBox
          Left = 20
          Top = 155
          Width = 240
          Height = 17
          Caption = 'Alterar/Excluir Ctas Pagar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object FIN8: TCheckBox
          Left = 20
          Top = 172
          Width = 240
          Height = 17
          Caption = 'Baixar Ctas Pagar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object FIN9: TCheckBox
          Left = 20
          Top = 187
          Width = 240
          Height = 17
          Caption = 'Cancelar Baixa de Ctas Pagar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object FIN13: TCheckBox
          Left = 20
          Top = 211
          Width = 153
          Height = 17
          Caption = 'Abrir Caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object FIN14: TCheckBox
          Left = 20
          Top = 227
          Width = 153
          Height = 17
          Caption = 'Lan'#231'ar em Caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object FIN15: TCheckBox
          Left = 20
          Top = 260
          Width = 153
          Height = 17
          Caption = 'Fechar Caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object FIN16: TCheckBox
          Left = 420
          Top = 26
          Width = 153
          Height = 17
          Caption = 'Lan'#231'ar cota'#231#245'es'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object FIN17: TCheckBox
          Left = 420
          Top = 50
          Width = 301
          Height = 17
          Caption = 'Realizar movimentos banc'#225'rios'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object FIN18: TCheckBox
          Left = 420
          Top = 74
          Width = 277
          Height = 17
          Caption = 'Alterar sal'#225'rio de funcion'#225'rios'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object CBALTLANCAIXA: TCheckBox
          Left = 20
          Top = 243
          Width = 253
          Height = 17
          Caption = 'Alterar lan'#231'amentos em caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object CBREIMPDUP: TCheckBox
          Left = 420
          Top = 98
          Width = 277
          Height = 17
          Caption = 'Reimprimir Duplicata'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object CBBaixaCtaBanco: TCheckBox
          Left = 20
          Top = 116
          Width = 277
          Height = 17
          Caption = 'Baixar Cta Receber em Banco'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object CBAbreGaveta: TCheckBox
          Left = 420
          Top = 138
          Width = 277
          Height = 17
          Caption = 'Abrir Gaveta do Caixa'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object CBGeraFinanc: TCheckBox
          Left = 420
          Top = 170
          Width = 297
          Height = 17
          Caption = 'Permite n'#227'o gerar o financeiro ao fechar'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
      end
      object PCADASTRO: TPanel
        Left = 3
        Top = 20
        Width = 748
        Height = 282
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 0
        object Shape8: TShape
          Left = 369
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object Shape9: TShape
          Left = 373
          Top = 16
          Width = 1
          Height = 257
          Brush.Color = clMoneyGreen
        end
        object Shape10: TShape
          Left = 377
          Top = 49
          Width = 1
          Height = 192
          Brush.Color = clMoneyGreen
        end
        object CAD5: TCheckBox
          Left = 20
          Top = 110
          Width = 240
          Height = 17
          Caption = 'Excluir Vendedores'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object DBCBCADASTRO: TCheckBox
          Left = 8
          Top = 12
          Width = 105
          Height = 17
          TabStop = False
          Caption = 'Cadastros'
          TabOrder = 0
          OnClick = DBCBCADASTROClick
        end
        object CAD1: TCheckBox
          Left = 20
          Top = 28
          Width = 240
          Height = 17
          Caption = 'Cadastrar Clientes'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object CAD2: TCheckBox
          Left = 20
          Top = 44
          Width = 240
          Height = 17
          Caption = 'Excluir Clientes'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object CAD3: TCheckBox
          Left = 20
          Top = 78
          Width = 240
          Height = 17
          Caption = 'Cadastrar Usu'#225'rios'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object CAD4: TCheckBox
          Left = 20
          Top = 94
          Width = 240
          Height = 17
          Caption = 'Cadastrar Vendedores'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object CAD6: TCheckBox
          Left = 20
          Top = 126
          Width = 240
          Height = 17
          Caption = 'Cadastrar Conta Corrente'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object CAD7: TCheckBox
          Left = 20
          Top = 142
          Width = 240
          Height = 17
          Caption = 'Cadastrar Fornecedores'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object CAD8: TCheckBox
          Left = 20
          Top = 158
          Width = 240
          Height = 17
          Caption = 'Excluir Fornecedores'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
        end
        object CAD9: TCheckBox
          Left = 20
          Top = 174
          Width = 240
          Height = 17
          Caption = 'Cadastrar Plano de Contas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
        end
        object CAD10: TCheckBox
          Left = 20
          Top = 190
          Width = 240
          Height = 17
          Caption = 'Cadastrar Funcion'#225'rios'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object CAD11: TCheckBox
          Left = 20
          Top = 206
          Width = 240
          Height = 17
          Caption = 'Cadastrar Formas de Pagamento'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object CAD12: TCheckBox
          Left = 20
          Top = 221
          Width = 153
          Height = 17
          Caption = 'Cadastrar Empresas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
        end
        object CAD13: TCheckBox
          Left = 20
          Top = 236
          Width = 153
          Height = 17
          Caption = 'Cadastrar Lojas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object CAD14: TCheckBox
          Left = 20
          Top = 252
          Width = 153
          Height = 17
          Caption = 'Cadastrar Produtos'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object CAD15: TCheckBox
          Left = 412
          Top = 32
          Width = 153
          Height = 17
          Caption = 'Cadastrar Caixas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 16
        end
        object CAD16: TCheckBox
          Left = 412
          Top = 50
          Width = 153
          Height = 17
          Caption = 'Cadastrar Moedas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object CBCONFIGLOJA: TCheckBox
          Left = 412
          Top = 67
          Width = 317
          Height = 17
          Caption = 'Permite o acesso a configura'#231#227'o de lojas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object CBCADBENSCLI: TCheckBox
          Left = 412
          Top = 85
          Width = 317
          Height = 17
          Caption = 'Cadastro bens/equipamentos de clientes'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object CBCadastraAlteraCidadePessoa: TCheckBox
          Left = 20
          Top = 61
          Width = 301
          Height = 17
          Caption = 'Cadastrar/Alterar cidade em pessoas'
          Color = 16772332
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 232
    Top = 96
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBD000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBD0000BDBD0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBD0000BDBD0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBD000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FEFF000000000000FE7F000000000000FE3F000000000000
      E01F000000000000E00F000000000000E007000000000000E00F000000000000
      E01F000000000000FE3F000000000000FE7F000000000000FEFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
