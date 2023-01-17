inherited FFaturaPedidos: TFFaturaPedidos
  Left = 214
  Top = 119
  Caption = 'FFaturaPedidos'
  ClientHeight = 482
  ClientWidth = 762
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 761
    Height = 444
  end
  inherited LCaixa: TLabel
    Left = 602
    Top = 484
  end
  inherited LUsuario: TLabel
    Left = 437
    Top = 484
  end
  inherited ShapeRodape1: TShape
    Left = 598
    Top = 484
  end
  inherited ShapeRodape2: TShape
    Left = 596
    Top = 484
  end
  object Label2: TLabel [7]
    Left = 22
    Top = 93
    Width = 41
    Height = 12
    Caption = 'Pessoa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [8]
    Left = 414
    Top = 108
    Width = 193
    Height = 18
    Caption = 'Marcados para Baixar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [9]
    Left = 22
    Top = 61
    Width = 38
    Height = 12
    Caption = 'Pedido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel [10]
    Left = 21
    Top = 354
    Width = 116
    Height = 20
    Caption = 'Pagamento em :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [11]
    Left = 157
    Top = 359
    Width = 91
    Height = 16
    Caption = 'DOCUMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LValor: TDRLabel [12]
    Left = 256
    Top = 51
    Width = 478
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object LTotProd: TDRLabel [13]
    Left = 640
    Top = 75
    Width = 94
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object LTotServ: TDRLabel [14]
    Left = 632
    Top = 86
    Width = 102
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object LDescTotProd: TDRLabel [15]
    Left = 584
    Top = 75
    Width = 94
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Produtos: R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object LDescTotServ: TDRLabel [16]
    Left = 576
    Top = 86
    Width = 102
    Height = 23
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Servi'#231'os: R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object Label11: TLabel [17]
    Left = 260
    Top = 359
    Width = 43
    Height = 16
    Caption = 'N. NF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LMediaData: TLabel [18]
    Left = 416
    Top = 278
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LVlrCredito: TLabel [19]
    Left = 654
    Top = 444
    Width = 7
    Height = 16
    Caption = 'v'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel [20]
    Left = 552
    Top = 447
    Width = 96
    Height = 13
    Caption = 'Valor de Cr'#233'dito:'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited LDescTitulo: TLabel
    Width = 131
    Caption = 'Fatura de Pedidos'
  end
  object Label13: TLabel [23]
    Left = 24
    Top = 408
    Width = 45
    Height = 18
    Caption = 'Data:'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object DBGridCadastroPadrao: TDBGrid [24]
    Left = 22
    Top = 128
    Width = 315
    Height = 151
    Color = 15794175
    Ctl3D = False
    DataSource = DMESTOQUE.DSAlx1
    FixedColor = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DTPEDVEN'
        Title.Caption = 'Data'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMPED'
        Title.Caption = 'N'#186
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Title.Caption = 'Cliente'
        Visible = True
      end>
  end
  object PCancelaFatura: TPanel [25]
    Left = 16
    Top = 48
    Width = 737
    Height = 241
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 20
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 737
      Height = 241
      Pen.Color = clWhite
    end
    object Label14: TLabel
      Left = 12
      Top = 44
      Width = 61
      Height = 16
      Caption = 'Faturas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 276
      Top = 44
      Width = 136
      Height = 16
      Caption = 'Pedidos faturados:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GridFatura: TDBGrid
      Left = 8
      Top = 64
      Width = 249
      Height = 169
      BiDiMode = bdLeftToRight
      Color = 15794175
      Ctl3D = False
      DataSource = DMENTRADA.DFatura
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnDblClick = GridFaturaDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMDOC'
          Title.Caption = 'Doc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor Total'
          Width = 95
          Visible = True
        end>
    end
    object GridPedido: TDBGrid
      Left = 272
      Top = 64
      Width = 449
      Height = 169
      Color = 15794175
      Ctl3D = False
      DataSource = DMENTRADA.DAlx
      FixedColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDCOMP'
          Title.Caption = 'Data'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 60
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 705
      Height = 41
      Caption = 'Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object EdFiltraData: TColorMaskEdit
        Left = 6
        Top = 15
        Width = 95
        Height = 22
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnEnter = EdFiltraDataEnter
        OnKeyDown = EdFiltraDataKeyDown
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdPedido: TEdit
        Left = 112
        Top = 16
        Width = 121
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Pedido'
        OnEnter = EdPedidoEnter
        OnKeyDown = EdPedidoKeyDown
      end
      object EdNome: TEdit
        Left = 240
        Top = 16
        Width = 449
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'Cliente'
        OnEnter = EdNomeEnter
        OnKeyDown = EdNomeKeyDown
      end
    end
  end
  object PBtnCancela: TPanel [26]
    Left = 256
    Top = 400
    Width = 489
    Height = 65
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 21
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 473
      Height = 65
      Pen.Color = clWhite
    end
    object BtnCancelaFat: TBitBtn
      Left = 14
      Top = 32
      Width = 171
      Height = 25
      Caption = 'Cancelar Fatura de Pedidos '
      TabOrder = 0
      OnClick = BtnCancelaFatClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object PBanco: TPanel [27]
    Left = 154
    Top = 363
    Width = 283
    Height = 89
    BevelWidth = 3
    Enabled = False
    TabOrder = 16
    Visible = False
    object DBGCTA: TDBGrid
      Left = 5
      Top = 6
      Width = 273
      Height = 76
      Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
      Color = 16121836
      Ctl3D = False
      DataSource = DMBANCO.DWCtaCor
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGCTAKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'Ag'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
          Width = 214
          Visible = True
        end>
    end
  end
  object BtnMoedaCancelar: TBitBtn [28]
    Left = 446
    Top = 440
    Width = 97
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 9
    OnClick = BtnMoedaCancelarClick
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
  object BtnMoedaOK: TBitBtn [29]
    Left = 262
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Ok'
    TabOrder = 8
    OnClick = BtnMoedaOKClick
    Glyph.Data = {
      66030000424D6603000000000000360000002800000010000000110000000100
      18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
      00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
      7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
      7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
      7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
      00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
      7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
      007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
      007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
      007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBF}
  end
  inherited PComunica: TPanel
    Top = 180
    TabOrder = 10
  end
  inherited PBotoes: TPanel
    TabOrder = 11
  end
  object EdNumParc: TEdit
    Left = 22
    Top = 73
    Width = 121
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EdNumParcKeyPress
  end
  object EdPessoa: TEdit
    Left = 22
    Top = 104
    Width = 313
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = EdPessoaKeyPress
  end
  object Panel1: TPanel
    Left = 343
    Top = 122
    Width = 65
    Height = 145
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 14
    object LInsere: TLabel
      Left = 20
      Top = 50
      Width = 36
      Height = 22
      Cursor = crHandPoint
      Hint = 'Marcar unica'
      Alignment = taCenter
      AutoSize = False
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = LInsereClick
    end
    object Label3: TLabel
      Left = 20
      Top = 23
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = 'Marcar todos'
      Caption = '>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Label3Click
    end
    object Label7: TLabel
      Left = 20
      Top = 112
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = 'Desmarcar todos'
      Caption = '<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Label7Click
    end
    object LRetira: TLabel
      Left = 20
      Top = 85
      Width = 36
      Height = 22
      Cursor = crHandPoint
      Hint = 'Desmarcar unica'
      Alignment = taCenter
      AutoSize = False
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = LRetiraClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 415
    Top = 128
    Width = 315
    Height = 151
    Color = clWhite
    Ctl3D = False
    DataSource = DMESTOQUE.DSAlx2
    FixedColor = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DTPEDVEN'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMPED'
        Title.Caption = 'N'#186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Title.Caption = 'Cliente'
        Visible = True
      end>
  end
  object CBPagamento: TComboBox
    Left = 22
    Top = 375
    Width = 131
    Height = 21
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Text = 'Carteira'
    OnExit = CBPagamentoExit
    OnKeyPress = CBPagamentoKeyPress
    Items.Strings = (
      'Carteira'
      'Boleto'
      'Banco'
      'Cheque'
      'Cart'#227'o')
  end
  object PMostraCta: TPanel
    Left = 16
    Top = 432
    Width = 241
    Height = 34
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 15
    Visible = False
    object DBText1: TDBText
      Left = 8
      Top = 1
      Width = 41
      Height = 12
      Alignment = taRightJustify
      DataField = 'NUMAGENCIA'
      DataSource = DMBANCO.DWCtaCor
    end
    object DBText2: TDBText
      Left = 8
      Top = 15
      Width = 181
      Height = 17
      DataField = 'DESCBANCO'
      DataSource = DMBANCO.DWCtaCor
    end
    object Label39: TLabel
      Left = 51
      Top = 1
      Width = 5
      Height = 13
      Caption = '/'
    end
    object DBText3: TDBText
      Left = 58
      Top = 1
      Width = 105
      Height = 12
      DataField = 'NUMCTACOR'
      DataSource = DMBANCO.DWCtaCor
    end
  end
  inline FrmConta: TFrmBusca
    Left = 345
    Top = 364
    Width = 388
    Height = 34
    Color = 16772332
    ParentColor = False
    TabOrder = 7
    OnEnter = FrmContaEnter
    inherited LTextoBusca: TLabel
      Width = 164
      Caption = 'Conta para Lan'#231'amento:'
    end
    inherited LUZOPEN: TShape
      Left = 347
      Top = 13
      Width = 19
      Height = 19
    end
    inherited LUZMINUS: TShape
      Left = 367
      Top = 13
      Width = 17
      Height = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 89
      Width = 257
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 346
      OnClick = FrmContaBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 364
      OnClick = FrmContaBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Left = 1
      Width = 85
      Font.Style = []
      OnKeyPress = FrmContaEDCodigoKeyPress
    end
  end
  object PSelectCliente: TPanel
    Left = 21
    Top = 290
    Width = 474
    Height = 59
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    object Label4: TLabel
      Left = 4
      Top = 20
      Width = 44
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 58
      Top = 20
      Width = 69
      Height = 16
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 170
      Top = 20
      Width = 42
      Height = 16
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object LUZOPEN: TShape
      Left = 448
      Top = 34
      Width = 19
      Height = 19
      Brush.Color = clGradientActiveCaption
      Pen.Color = clGradientActiveCaption
      Visible = False
    end
    object Label10: TLabel
      Left = 4
      Top = 4
      Width = 60
      Height = 16
      Caption = 'CLIENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdCodCli: TEdit
      Left = 4
      Top = 37
      Width = 50
      Height = 21
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, informe o cliente padr'#227'o consumidor'
      Color = 16121836
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '0'
      OnKeyDown = EdCodCliKeyDown
    end
    object EdCPF: TEdit
      Left = 57
      Top = 37
      Width = 109
      Height = 21
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
        'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
        'essione <ESC>.'
      Color = 16121836
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object EdNomeCli: TEdit
      Left = 169
      Top = 37
      Width = 277
      Height = 21
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
        'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
        'essione <ESC>.'
      Color = 16121836
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object BtnProcPess: TBitBtn
      Left = 446
      Top = 37
      Width = 19
      Height = 19
      TabOrder = 1
      OnClick = BtnProcPessClick
      Glyph.Data = {
        B6000000424DB60000000000000036000000280000000A000000040000000100
        18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    end
  end
  object EdDocumento: TEdit
    Left = 156
    Top = 376
    Width = 98
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, informe o cliente padr'#227'o consumidor'
    Color = 16121836
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = '0'
  end
  inline FrmFormPagFrete: TFrmBusca
    Left = 498
    Top = 313
    Width = 239
    Height = 36
    Color = 16772332
    ParentColor = False
    TabOrder = 3
    OnExit = FrmFormPagFreteExit
    inherited LTextoBusca: TLabel
      Width = 139
      Caption = 'Forma de Pagamento'
    end
    inherited LUZOPEN: TShape
      Left = 211
      Width = 21
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 81
    end
    inherited EdDescricao: TFlatEdit
      Left = 40
      Width = 169
      ColorFlat = clWhite
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 210
      OnClick = FrmFormPagFreteBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 78
      Visible = False
    end
    inherited EDCodigo: TFlatEdit
      Width = 37
      ColorFlat = clLightGreen
      Font.Style = []
      OnKeyDown = FrmFormPagFreteEDCodigoKeyDown
    end
  end
  object EdNumFiscal: TEdit
    Left = 259
    Top = 376
    Width = 82
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, informe o cliente padr'#227'o consumidor'
    Color = 16121836
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = '0'
  end
  object CBFiltraPedidosAbertos: TCheckBox
    Left = 152
    Top = 77
    Width = 186
    Height = 17
    Caption = 'Somente Pedidos em Abertos'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 17
    OnClick = CBFiltraPedidosAbertosClick
  end
  object CbNF: TCheckBox
    Left = 608
    Top = 410
    Width = 129
    Height = 17
    Caption = 'Emitir Nota Fiscal'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 18
    OnClick = CbNFClick
  end
  object EdData: TColorMaskEdit
    Left = 70
    Top = 409
    Width = 95
    Height = 22
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 544
    Top = 148
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 488
    Top = 140
  end
end
