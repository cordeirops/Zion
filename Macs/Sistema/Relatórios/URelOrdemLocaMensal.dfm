inherited FOrdemLocaMensal: TFOrdemLocaMensal
  Left = 391
  Top = 142
  Caption = 'FOrdemLocaMensal'
  ClientHeight = 537
  ClientWidth = 794
  OldCreateOrder = True
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Shape10: TShape [0]
    Left = 353
    Top = 81
    Width = 15
    Height = 15
    Brush.Color = clGreen
    Pen.Color = clGreen
  end
  object Shape13: TShape [1]
    Left = 646
    Top = 81
    Width = 15
    Height = 15
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object Label31: TLabel [2]
    Left = 372
    Top = 81
    Width = 231
    Height = 14
    Caption = 'Ordens Marcadas para Faturamento '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [3]
    Left = 663
    Top = 81
    Width = 112
    Height = 14
    Caption = 'Ordens Faturadas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited PComunica: TPanel
    Top = 125
  end
  object PFinanceiro: TPanel
    Left = 156
    Top = 121
    Width = 497
    Height = 318
    BevelWidth = 4
    Color = clBlack
    TabOrder = 5
    Visible = False
    object PBanco: TPanel
      Left = 127
      Top = 107
      Width = 266
      Height = 108
      BevelWidth = 3
      Color = 16772332
      TabOrder = 1
      Visible = False
      object Label115: TLabel
        Left = 8
        Top = 8
        Width = 95
        Height = 16
        Caption = 'Cta. Corrente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGCTA: TDBGrid
        Left = 5
        Top = 24
        Width = 252
        Height = 73
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
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 307
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label26: TLabel
        Left = 8
        Top = 68
        Width = 116
        Height = 20
        Caption = 'Pagamento em :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 289
        Top = 72
        Width = 70
        Height = 16
        Caption = 'Dt. Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 385
        Top = 72
        Width = 69
        Height = 16
        Caption = 'Hs Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnMoedaOK: TBitBtn
        Left = 134
        Top = 264
        Width = 75
        Height = 24
        Caption = '&Ok'
        TabOrder = 6
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
      object BtnMoedaCancelar: TBitBtn
        Left = 254
        Top = 263
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 7
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 89
        Width = 176
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Carteira'
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o'
          'Multiplo')
      end
      inline FrmFormPag: TFrmBusca
        Left = 7
        Top = 23
        Width = 478
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 429
        end
        inherited LUZMINUS: TShape
          Left = 453
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 431
          Width = 18
          OnClick = FrmFormPagBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
          OnClick = FrmFormPagBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 15269845
        end
      end
      object DBDATAENTREGA: TColorMaskEdit
        Left = 290
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHORAENTREGA: TColorMaskEdit
        Left = 386
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '  :  '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmContaServ: TFrmBusca
        Left = 6
        Top = 180
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 246
          Caption = 'Conta para Lan'#231'amento de Servi'#231'os:'
        end
        inherited LUZOPEN: TShape
          Left = 426
          Top = 39
        end
        inherited LUZMINUS: TShape
          Left = 450
          Top = 39
        end
        inherited EdDescricao: TFlatEdit
          Left = 2
          Top = 42
          Width = 423
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 151
          ColorFlat = 15329769
        end
      end
      object Panel7: TPanel
        Left = 286
        Top = 117
        Width = 123
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        object Label29: TLabel
          Left = 4
          Top = 0
          Width = 94
          Height = 16
          Caption = 'Dt Faturamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFat: TColorMaskEdit
          Left = 4
          Top = 15
          Width = 97
          Height = 22
          Color = 15597546
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object CBImpBoleto: TCheckBox
        Left = 10
        Top = 129
        Width = 123
        Height = 17
        Caption = 'Imprimir Boleto'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 8
      end
    end
  end
  object DBGridCadastroPadrao: TDBGrid
    Left = 9
    Top = 151
    Width = 774
    Height = 355
    Color = 15794175
    Ctl3D = False
    DataSource = DMMACS.DSExiste
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = pumDesmarcar
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
    OnDblClick = DBGridCadastroPadraoDblClick
    OnKeyPress = DBGridCadastroPadraoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_ORDEM'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COD_CLIENTE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COD_FUNCIONARIO'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MARK'
        Title.Caption = 'Sel.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTABERT'
        Title.Caption = 'Dt Abert.'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_GARANTIA'
        Title.Caption = 'Dt Mov.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Caption = 'Cliente'
        Width = 332
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Total'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQUIP'
        Title.Caption = 'Produto'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 9
    Top = 16
    Width = 329
    Height = 81
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 2
    object Shape8: TShape
      Left = 8
      Top = 6
      Width = 313
      Height = 67
      Pen.Color = clSkyBlue
    end
    object Label17: TLabel
      Left = 18
      Top = 24
      Width = 56
      Height = 14
      Caption = 'Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 131
      Top = 24
      Width = 42
      Height = 14
      Caption = 'Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 117
      Top = 53
      Width = 6
      Height = 13
      Caption = #224
    end
    object EdDtInicial: TDateTimePicker
      Left = 16
      Top = 46
      Width = 96
      Height = 22
      Date = 40888.781167488430000000
      Time = 40888.781167488430000000
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdDtFinal: TDateTimePicker
      Left = 131
      Top = 46
      Width = 96
      Height = 22
      Date = 40888.781167488430000000
      Time = 40888.781167488430000000
      Color = clInactiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnFaturados: TButton
      Left = 232
      Top = 43
      Width = 78
      Height = 25
      Caption = 'Faturados'
      TabOrder = 2
      OnClick = btnFaturadosClick
    end
  end
  object btnAFaturar: TButton
    Left = 241
    Top = 33
    Width = 78
    Height = 25
    Caption = 'A Faturar'
    TabOrder = 3
    OnClick = btnAFaturarClick
  end
  object btnFaturar: TButton
    Left = 672
    Top = 34
    Width = 89
    Height = 25
    Caption = 'Faturar'
    TabOrder = 4
    OnClick = btnFaturarClick
  end
  object GBPLACA: TcxGroupBox
    Left = 351
    Top = 16
    Width = 258
    Height = 57
    Alignment = alTopLeft
    Caption = 'Extratos de Faturamentos'
    ParentColor = False
    ParentFont = False
    Style.Color = clWhite
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    TabOrder = 7
    object btnExtratoGeral: TButton
      Left = 8
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Extrato Geral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnExtratoGeralClick
    end
    object btnExtratoOS: TButton
      Left = 87
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Extrato OS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExtratoOSClick
    end
    object btnExtratoCliente: TButton
      Left = 166
      Top = 24
      Width = 81
      Height = 25
      Caption = 'Extrato Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnExtratoClienteClick
    end
  end
  object Panel1: TPanel
    Left = 9
    Top = 100
    Width = 775
    Height = 49
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object Shape1: TShape
      Left = 3
      Top = 3
      Width = 768
      Height = 42
      Pen.Color = clSkyBlue
    end
    object Label2: TLabel
      Left = 17
      Top = 4
      Width = 84
      Height = 14
      Caption = 'N'#250'mero O.S.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 131
      Top = 4
      Width = 56
      Height = 14
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object edNumeroOS: TFlatEdit
      Left = 16
      Top = 18
      Width = 98
      Height = 22
      ColorBorder = clBlack
      ColorFlat = clBtnFace
      ParentColor = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edNumeroOSKeyPress
    end
    object edNomeCliente: TFlatEdit
      Left = 130
      Top = 18
      Width = 497
      Height = 22
      ColorBorder = clBlack
      ColorFlat = clBtnFace
      ParentColor = True
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edNomeClienteKeyPress
    end
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 720
    Top = 65522
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSource = DMMACS.DSRel
    Left = 752
    Top = 65522
  end
  object PMRelatorios: TPopupMenu
    Left = 688
    Top = 65520
    object ExtratoOS1: TMenuItem
      Caption = 'Extrato OS'
      OnClick = ExtratoOS1Click
    end
    object ExtratoCliente1: TMenuItem
      Caption = 'Extrato Cliente'
      OnClick = ExtratoCliente1Click
    end
    object Geral1: TMenuItem
      Caption = 'Geral'
    end
  end
  object pumDesmarcar: TPopupMenu
    Left = 56
    Top = 256
    object DesmarcarOrdensdeServio1: TMenuItem
      Caption = 'Desmarcar Todas Ordens de Servi'#231'o'
      OnClick = DesmarcarOrdensdeServio1Click
    end
  end
end
