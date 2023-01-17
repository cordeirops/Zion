inherited FOrdemRetifica: TFOrdemRetifica
  Left = 250
  Top = 0
  Caption = 'FOrdemRetifica'
  ClientHeight = 632
  ClientWidth = 987
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 282
    Top = 208
  end
  object PFinanceiro: TPanel
    Left = 228
    Top = 101
    Width = 497
    Height = 318
    BevelWidth = 4
    Color = clBlack
    TabOrder = 2
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
        Top = 263
        Width = 75
        Height = 25
        Caption = '&Ok'
        TabOrder = 7
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
        TabOrder = 8
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
      inline FrmConta: TFrmBusca
        Left = 7
        Top = 119
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 248
          Caption = 'Conta para Lan'#231'amento de Produtos:'
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
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 151
        end
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
        Top = 188
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 6
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
          OnClick = FrmContaServBTNOPENClick
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
        Left = 302
        Top = 117
        Width = 123
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        object Label29: TLabel
          Left = 4
          Top = 0
          Width = 93
          Height = 16
          Caption = 'Dt Fechamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
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
      object CBGeraFinanceiro: TCheckBox
        Left = 170
        Top = 137
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  object PCadastro: TPanel
    Left = 8
    Top = 12
    Width = 974
    Height = 614
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    object Shape1: TShape
      Left = 7
      Top = 35
      Width = 962
      Height = 577
    end
    object Shape4: TShape
      Left = 18
      Top = 219
      Width = 470
      Height = 314
      Pen.Color = clSkyBlue
      Pen.Width = 2
    end
    object Label13: TLabel
      Left = 21
      Top = 221
      Width = 203
      Height = 14
      Caption = 'PRODUTOS: (F2- Tela Produtos)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape5: TShape
      Left = 486
      Top = 219
      Width = 471
      Height = 314
      Pen.Color = clSkyBlue
      Pen.Width = 2
    end
    object Label14: TLabel
      Left = 494
      Top = 221
      Width = 252
      Height = 14
      Caption = 'M'#195'O DE OBRA: (F3 - Tela de Servi'#231'os)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 216
      Top = 240
      Width = 56
      Height = 16
      Caption = 'Quant.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 288
      Top = 240
      Width = 88
      Height = 16
      Caption = 'Vlr. Unit.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 392
      Top = 240
      Width = 88
      Height = 16
      Caption = 'Vlr. Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LProduto: TLabel
      Left = 24
      Top = 293
      Width = 64
      Height = 13
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 687
      Top = 240
      Width = 56
      Height = 16
      Caption = 'Quant.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 759
      Top = 240
      Width = 88
      Height = 16
      Caption = 'Vlr. Unit.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 863
      Top = 240
      Width = 88
      Height = 16
      Caption = 'Vlr. Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LServicos: TLabel
      Left = 496
      Top = 288
      Width = 10
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PListaServico: TPanel
      Left = 495
      Top = 282
      Width = 459
      Height = 231
      TabOrder = 22
      Visible = False
      object DBGListaServicos: TDBGrid
        Left = 3
        Top = 3
        Width = 454
        Height = 222
        Hint = 
          'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
          'sistema ir'#225' pesquisar pelo c'#243'digo'
        DataSource = DMServ.DWSubserv
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGListaServicosDblClick
        OnKeyPress = DBGListaServicosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'M'#227'o de Obra'
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTSUBSERV'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Unit'#225'rio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_INTERNO'
            Title.Caption = 'C'#243'digo'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_SUBSERVICO'
            Visible = False
          end>
      end
    end
    object PListaProdutos: TPanel
      Left = 24
      Top = 282
      Width = 459
      Height = 231
      TabOrder = 15
      Visible = False
      object DBGListaProdutos: TDBGrid
        Left = 3
        Top = 3
        Width = 454
        Height = 222
        Hint = 
          'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
          'sistema ir'#225' pesquisar pelo c'#243'digo'
        DataSource = DMESTOQUE.DWSimilar
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGListaProdutosDblClick
        OnKeyPress = DBGListaProdutosKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_ESTOQUE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ESTFISICO'
            Title.Caption = 'Estoque'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTRINT'
            Title.Caption = 'Controle'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDVARV'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr.'
            Width = 88
            Visible = True
          end>
      end
    end
    object PListaClientes: TPanel
      Left = 222
      Top = 298
      Width = 646
      Height = 174
      TabOrder = 6
      Visible = False
      object DBGListaCliente: TDBGrid
        Left = 3
        Top = 4
        Width = 638
        Height = 168
        Hint = 
          'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
          'sistema ir'#225' pesquisar pelo c'#243'digo'
        DataSource = DMPESSOA.DSVWCliente
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGListaClienteDblClick
        OnKeyDown = DBGListaClienteKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDNUMERO'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPFCNPJ'
            Title.Caption = 'Cpf/Cnpj'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELREL'
            Title.Caption = 'Telefone'
            Visible = True
          end>
      end
    end
    object PCabecalho: TPanel
      Left = 11
      Top = 40
      Width = 954
      Height = 178
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object LComplementoCliente: TLabel
        Left = 8
        Top = 107
        Width = 7
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 9
        Top = 73
        Width = 80
        Height = 16
        Caption = 'Observa'#231#227'o'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 273
        Top = 73
        Width = 40
        Height = 16
        Caption = 'Data:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      inline FrmCliente: TFrmBusca
        Left = 5
        Top = -2
        Width = 371
        Height = 47
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        OnExit = FrmClienteExit
        inherited LTextoBusca: TLabel
          Left = 2
          Top = 6
          Width = 80
          Height = 18
          Caption = 'Cliente:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 342
          Top = 21
          Width = 28
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 344
          Top = 23
          Width = 24
          Height = 23
          TabOrder = 0
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 436
          Enabled = False
          TabOrder = 3
        end
        inherited EDCodigo: TFlatEdit [5]
          Top = 23
          Width = 68
          Height = 23
          ColorFlat = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Courier New'
          TabOrder = 2
          Visible = False
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 2
          Top = 23
          Width = 341
          Height = 23
          Enabled = True
          Font.Height = -15
          Font.Name = 'Courier New'
          ReadOnly = False
          TabOrder = 1
          OnExit = FrmClienteEdDescricaoExit
          OnKeyDown = FrmClienteEdDescricaoKeyDown
          OnKeyUp = FrmClienteEdDescricaoKeyUp
        end
      end
      object MObs: TMemo
        Left = 8
        Top = 89
        Width = 249
        Height = 83
        TabOrder = 2
        OnEnter = MObsEnter
      end
      object EdObsFinanceira: TEdit
        Left = 7
        Top = 44
        Width = 366
        Height = 18
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdData: TColorMaskEdit
        Left = 272
        Top = 89
        Width = 101
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
        OnEnter = MObsEnter
        OnExit = EdDataExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object Panel2: TPanel
        Left = 397
        Top = 0
        Width = 555
        Height = 131
        BevelOuter = bvNone
        Caption = 'Panel2'
        Color = clWhite
        TabOrder = 1
        OnEnter = Panel2Enter
        object Label17: TLabel
          Left = 2
          Top = 2
          Width = 40
          Height = 16
          Caption = 'Motor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Shape2: TShape
          Left = 0
          Top = 16
          Width = 553
          Height = 114
          Pen.Color = clSkyBlue
        end
        object Label1: TLabel
          Left = 16
          Top = 18
          Width = 48
          Height = 16
          Caption = 'Marca:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 173
          Top = 18
          Width = 56
          Height = 16
          Caption = 'Modelo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 475
          Top = 18
          Width = 32
          Height = 16
          Caption = 'Ano:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 436
          Top = 62
          Width = 80
          Height = 16
          Caption = 'M. Comando'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 330
          Top = 62
          Width = 72
          Height = 16
          Caption = 'M. Biela:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 224
          Top = 62
          Width = 80
          Height = 16
          Caption = 'M. Mancal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 122
          Top = 62
          Width = 96
          Height = 16
          Caption = 'M. Cilindro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 17
          Top = 62
          Width = 96
          Height = 16
          Caption = 'Q. Cilindro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 392
          Top = 18
          Width = 48
          Height = 16
          Caption = 'Placa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object EdMarca: TColorMaskEdit
          Left = 16
          Top = 34
          Width = 151
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Marca'
          OnEnter = EdMarcaEnter
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdModelo: TColorMaskEdit
          Left = 173
          Top = 34
          Width = 212
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Cilindro'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdAno: TColorMaskEdit
          Left = 475
          Top = 34
          Width = 63
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Ano'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdComando: TColorMaskEdit
          Left = 436
          Top = 78
          Width = 100
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = 'Marca'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdBiela: TColorMaskEdit
          Left = 330
          Top = 78
          Width = 100
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = 'Marca'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdMancal: TColorMaskEdit
          Left = 224
          Top = 78
          Width = 100
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = 'Marca'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdModeloCilindro: TColorMaskEdit
          Left = 122
          Top = 78
          Width = 96
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = 'Motor'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdCilibdro: TColorMaskEdit
          Left = 17
          Top = 78
          Width = 97
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'Cilindro'
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DbDiesel: TCheckBox
          Left = 64
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Diesel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = DbDieselClick
        end
        object CbGasolina: TCheckBox
          Left = 144
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Gasolina'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = CbGasolinaClick
        end
        object CbAlcool: TCheckBox
          Left = 240
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Alcool'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = CbAlcoolClick
        end
        object CBFlex: TCheckBox
          Left = 320
          Top = 109
          Width = 97
          Height = 17
          Caption = 'Flex'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = CBFlexClick
        end
        object EdPlaca: TColorMaskEdit
          Left = 392
          Top = 34
          Width = 78
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'PLACA'
          OnKeyUp = EdPlacaKeyUp
          FocusColor = 11795199
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
    end
    object PTOPCADASTRO: TPanel
      Left = 6
      Top = 1
      Width = 963
      Height = 33
      BevelInner = bvLowered
      Color = clSilver
      TabOrder = 0
      object Label2: TLabel
        Left = 531
        Top = 5
        Width = 24
        Height = 19
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 764
        Top = 8
        Width = 27
        Height = 19
        Caption = 'R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape9: TShape
        Left = 202
        Top = 5
        Width = 1
        Height = 23
      end
      object Shape10: TShape
        Left = 200
        Top = 9
        Width = 1
        Height = 16
      end
      object Shape12: TShape
        Left = 204
        Top = 9
        Width = 1
        Height = 16
      end
      object BtnGravar: TBitBtn
        Left = 5
        Top = 4
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
          'izadas'
        Caption = 'Gravar - F5'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnGravarClick
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
      object BtnCancelar: TBitBtn
        Left = 99
        Top = 4
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
          ' o painel de consulta'
        Caption = 'Cancelar - F7'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
      object EdValorOrd: TColorEditFloat
        Left = 796
        Top = 2
        Width = 164
        Height = 30
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        TabStop = False
        Color = clMoneyGreen
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdNumero: TEdit
        Left = 568
        Top = 1
        Width = 138
        Height = 30
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object PTotal: TPanel
      Left = 10
      Top = 532
      Width = 957
      Height = 71
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object Shape3: TShape
        Left = 8
        Top = 0
        Width = 939
        Height = 71
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label10: TLabel
        Left = 491
        Top = 20
        Width = 72
        Height = 16
        Caption = 'PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 658
        Top = 20
        Width = 96
        Height = 16
        Caption = 'M'#195'O DE OBRA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 792
        Top = 46
        Width = 60
        Height = 18
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 392
        Top = 48
        Width = 39
        Height = 10
        Caption = 'DESC(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 584
        Top = 48
        Width = 39
        Height = 10
        Caption = 'DESC(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object EdValorProdutos: TColorEditFloat
        Left = 474
        Top = 36
        Width = 90
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        OnExit = EdValorProdutosExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorMaoObra: TColorEditFloat
        Left = 665
        Top = 36
        Width = 90
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnExit = EdValorMaoObraExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorOrd2: TColorEditFloat
        Left = 852
        Top = 38
        Width = 90
        Height = 26
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescProdutos: TColorEditFloat
        Left = 433
        Top = 38
        Width = 40
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        OnExit = EdDescProdutosExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescMaoObra: TColorEditFloat
        Left = 625
        Top = 38
        Width = 40
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        OnExit = EdDescMaoObraExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object DBGProdutos: TDBGrid
      Left = 21
      Top = 312
      Width = 460
      Height = 192
      Color = 15597546
      Ctl3D = False
      DataSource = DMESTOQUE.DSSlave
      FixedColor = 11039232
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Quant.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 300
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'V. Total'
          Width = 81
          Visible = True
        end>
    end
    object DBGServicos: TDBGrid
      Left = 492
      Top = 312
      Width = 460
      Height = 192
      Color = 15597546
      Ctl3D = False
      DataSource = DMESTOQUE.DSSlaveServ
      FixedColor = 11039232
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Quant.'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Servi'#231'o'
          Width = 310
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'V. Total'
          Width = 76
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 279
      Top = 170
      Width = 681
      Height = 46
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 4
      inline FrmFormaPagamento: TFrmBusca
        Left = 4
        Top = 1
        Width = 218
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 152
          Caption = 'Forma de Pagamento:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 152
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 192
          Top = 16
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 191
          Top = 19
          Height = 21
          OnClick = FrmFormaPagamentoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 154
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmFormaPagamentoEDCodigoKeyDown
        end
      end
      inline FrmVendedor: TFrmBusca
        Left = 227
        Top = 1
        Width = 215
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 72
          Caption = 'Vendedor:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 151
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 191
          Top = 16
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 192
          Top = 19
          Width = 17
          Height = 21
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 153
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      inline FrmResponsavel: TFrmBusca
        Left = 444
        Top = 1
        Width = 237
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        OnExit = FrmResponsavelExit
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 160
          Caption = 'T'#233'cnico Respons'#225'vel:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 127
          Top = 15
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 207
          Top = 15
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 176
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 206
          Top = 18
          Height = 21
          OnClick = FrmResponsavelBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 129
          Top = 18
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmResponsavelEDCodigoKeyDown
        end
      end
    end
    object EdSubTotalProdutos: TColorEditFloat
      Left = 359
      Top = 503
      Width = 94
      Height = 22
      Color = 15597546
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdSubTotalMaodeObra: TColorEditFloat
      Left = 834
      Top = 503
      Width = 92
      Height = 23
      Color = 15597546
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdBuscaProduto: TEdit
      Left = 23
      Top = 258
      Width = 171
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnKeyDown = EdBuscaProdutoKeyDown
      OnKeyUp = EdBuscaProdutoKeyUp
    end
    object EdVlrTotProd: TColorEditFloat
      Left = 378
      Top = 258
      Width = 102
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Text = '0,00'
      OnExit = EdVlrTotProdExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrUnitProd: TColorEditFloat
      Left = 274
      Top = 258
      Width = 100
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Text = '0,00'
      OnExit = EdQuantProdExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdQuantProd: TColorEditFloat
      Left = 198
      Top = 258
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = '0,00'
      OnEnter = EdQuantProdEnter
      OnExit = EdQuantProdExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BtnInsertProd: TBitBtn
      Left = 304
      Top = 286
      Width = 89
      Height = 22
      Hint = 
        'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
        'na lista (ALT + I)'
      BiDiMode = bdLeftToRight
      Caption = '&INSERIR'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BtnInsertProdClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7000777777777777700077777707777770007777706077777000777706660777
        7000777066666077700077066666660770007000066600007000777706660777
        7000777706660777700077770666077770007777000007777000777777777777
        7000}
      Spacing = 10
    end
    object BtnDeleteProd: TBitBtn
      Left = 392
      Top = 286
      Width = 89
      Height = 22
      Hint = 
        'Pressione para remover o produto selecionado na lista da mesma (' +
        'ALT + E)'
      BiDiMode = bdLeftToRight
      Caption = '&REMOVER'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = BtnDeleteProdClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7000777777777777700077770000077770007777066607777000777706660777
        7000777706660777700070000666000070007706666666077000777066666077
        7000777706660777700077777060777770007777770777777000777777777777
        7000}
      Spacing = 10
    end
    object EdBuscaServicos: TEdit
      Left = 494
      Top = 258
      Width = 171
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnKeyDown = EdBuscaServicosKeyDown
      OnKeyUp = EdBuscaServicosKeyUp
    end
    object EdQuantServ: TColorEditFloat
      Left = 669
      Top = 258
      Width = 72
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Text = '0,00'
      OnEnter = EdQuantServEnter
      OnExit = EdQuantServExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrUnitServ: TColorEditFloat
      Left = 745
      Top = 258
      Width = 100
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      Text = '0,00'
      OnExit = EdQuantProdExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrTotServ: TColorEditFloat
      Left = 849
      Top = 258
      Width = 102
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      Text = '0,00'
      OnExit = EdVlrTotServExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BitBtn1: TBitBtn
      Left = 774
      Top = 286
      Width = 89
      Height = 22
      Hint = 
        'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
        'na lista (ALT + I)'
      BiDiMode = bdLeftToRight
      Caption = '&INSERIR'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7000777777777777700077777707777770007777706077777000777706660777
        7000777066666077700077066666660770007000066600007000777706660777
        7000777706660777700077770666077770007777000007777000777777777777
        7000}
      Spacing = 10
    end
    object BitBtn2: TBitBtn
      Left = 862
      Top = 286
      Width = 89
      Height = 22
      Hint = 
        'Pressione para remover o produto selecionado na lista da mesma (' +
        'ALT + E)'
      BiDiMode = bdLeftToRight
      Caption = '&REMOVER'
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7000777777777777700077770000077770007777066607777000777706660777
        7000777706660777700070000666000070007706666666077000777066666077
        7000777706660777700077777060777770007777770777777000777777777777
        7000}
      Spacing = 10
    end
  end
  object PConsulta: TPanel
    Left = 7
    Top = 10
    Width = 970
    Height = 591
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object LEmissor: TLabel
      Left = 6
      Top = 566
      Width = 64
      Height = 16
      Caption = 'Emissor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object PExp: TPanel
      Left = 120
      Top = 225
      Width = 577
      Height = 56
      TabOrder = 5
      Visible = False
      object LBCONEXAO: TLabel
        Left = 32
        Top = 8
        Width = 212
        Height = 16
        Alignment = taCenter
        Caption = 'FAZENDO CONEX'#195'O COM O BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PBExport: TProgressBar
        Left = 30
        Top = 29
        Width = 516
        Height = 20
        TabOrder = 0
      end
    end
    object DBGridConsulta: TDBGrid
      Left = 4
      Top = 92
      Width = 965
      Height = 467
      TabStop = False
      Color = 15794175
      Ctl3D = False
      DataSource = DMServ.DWOrdemDesp
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PGrid
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridConsultaDrawColumnCell
      OnKeyDown = DBGridConsultaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Situa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Title.Caption = 'N'#186' Fiscal'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Title.Caption = 'Fechamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 475
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMAPAG'
          Title.Caption = 'Pagamento'
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Vlr. Total'
          Visible = True
        end>
    end
    object PBotoesConsulta: TPanel
      Left = 4
      Top = 3
      Width = 965
      Height = 31
      BevelInner = bvLowered
      BorderWidth = 1
      Color = clSilver
      TabOrder = 0
      object BtnNovo: TBitBtn
        Left = 3
        Top = 3
        Width = 134
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para obter novo cadastro'
        Caption = 'Novo - F4'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnNovoClick
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B8030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6060606060606060
          6060606060606060606060606060606060606060606060606060606060606060
          6060FFFFFFFFFFFF0000FFFFFF60606060CFDF009FCF2090C020A0CF20A0CF20
          A0CF30AFCF30AFCF30BFDF40BFD040BFD040BFD06F9FBF606060FFFFFFFFFFFF
          0000FFFFFF409FBF60CFDF0F70A02F90BF2F90BF2F90BF2F90BF2F90BF2F90BF
          2F90BF2F90BF2F90BF2F90BF2F90BF4080A0606060FFFFFF0000FFFFFF409FBF
          60CFDF2F8FB0B0FFFFB0FFFFB0FFFFAFFFFF90EFF090EFF090EFF0AFFFFFAFFF
          FFAFFFFF40AFC0606060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CF70B0CFC0FF
          FFC0FFFFCFCFAFA0604FA0604FA0604F506F6F10A0D0B0FFFFB0FFFF4080A060
          6060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CFBFE0EFD0FFFFCFCFAFAF40009F
          30009F3000A03F10BF5030706F6F40BFD0B0FFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF409FBF40AFC0BFE0EFE0F0E0AF4000AF4000904F00106000AF4000
          A03F008F502F30809FB0FFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B0
          30AFCFCFE0EFF0D090BF5000D06F006F70000F8000BF6F00A05F004F70007F70
          4F8FDFEF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B030AFCFD0E0EFE0AF
          60D07000508F00AF8F00E09000EF80001F70000060004F5F00A0E0FF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF3090B02F90BFD0E0EFF0EFB08F8F0020BF402F
          C050FFCF6FFF9000AF8F001F700030702FEFFFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF308FB01F90BFD0E0EFFFFFEF20BF404FD070AFEFAFCFF0B0F0B04F
          D090004F7000AFCFAFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF308FB0
          0080B0D0E0EFFFFFFFBFEFC090D070CFF0B0D0E0904FC050EF8000CFA050FFFF
          FFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF2F8FB00080B0D0E0EFFFFF
          FFFFFFFFF0F0CFD0E0908FDF806FCF6FF0D090FFFFFFFFFFFFFFFFFF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF2F8FB0007FB0D0E0EFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBF606060FFFFFFFFFFFF
          0000FFFFFF308FB000609F1F8FB01F90BF1F90BF1F90BF1F90BF1F90BF1F90BF
          1F90BF1F90BF1F90BF1F90BF6F9FBF606060FFFFFFFFFFFF0000FFFFFFFFFFFF
          5090C0B0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DF
          EFBFE0F06F9FBFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnApagar: TBitBtn
        Left = 136
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Apagar - F8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
          FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
          FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
          00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
          9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
          FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnConsultar: TBitBtn
        Left = 265
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para visualizar ou alterar os dados do regi' +
          'stro selecionado a baixo'
        Caption = 'Consultar - F6'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnConsultarClick
        Glyph.Data = {
          CA020000424DCA0200000000000036000000280000000E0000000F0000000100
          18000000000094020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4F6F704F5F5F2F2F
          2F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF80CFE06FC0EF40A0C03F809F3F6F7F4F5F602F2F2F303030FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF9FE0FF7FE0FF7FE0FF70DFFF60
          D0F04FB0D0408FA0405F6FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF90
          DFF080EFFF80EFFF80EFFF80EFFF8FEFFF8FEFFF4FA0BF2F2F2FFFFFFFFFFFFF
          0000FFFFFFFFFFFF6FCFF070CFEF9FFFFF90FFFF90EFF08FF0FF90FFFF8FF0FF
          90EFF040606FFFFFFFFFFFFF0000FFFFFFFFFFFF7FCFF05FCFF0B0EFF0B0FFFF
          EFE0C0C0DFCF9FFFFFAFDFD0D0EFE05F9FAF303030FFFFFF0000FFFFFFFFFFFF
          80DFF07FE0FF70DFFF70DFF080C0D0DFE0DFEFE0CFFFEFCFF0F0E0BFE0EF4F5F
          60FFFFFF0000FFFFFFFFFFFF9FEFF090FFFF90FFFF90E0DFC0AF80D0CFAFC0E0
          E0B0CFC08FBFC0BFE0F04F7F8FFFFFFF0000FFFFFFFFFFFFA0E0F09FFFFF9FF0
          EFE0B07FFFEFDFFFDFBFFFE0CFFFEFDFA07F4F4F4040FFFFFFFFFFFF0000FFFF
          FFFFFFFF5F9FAFAFE0F0A0E0F0608F9070604FEFBF90FFDFAFD0B08FF0CFA08F
          6F4FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          805FF0CFA03F2F1FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF70604FE0B080202020FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnRelatorio: TBitBtn
        Left = 394
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Relat'#243'rios'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnRelatorioClick
        Glyph.Data = {
          96030000424D9603000000000000360000002800000010000000120000000100
          18000000000060030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080
          8080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8080808080805050503F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F7F7F
          7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF8080805050503F3F3FF0F0F0B0B0B09F
          8080AF8080B0B0B0E0E0E0B0B0B04F4F4F3F3F3F7F7F7FFFFFFFFFFFFF3F3F3F
          3F3F3FEFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEF
          EFB0B0B07F7F7FFFFFFFFFFFFFAFAFAFFFFFFFF0F0F0DFDFDF9090907F7F7F9F
          9F9FB0B0B0A0A0A09090908F8F8F8F8F8F5F5F5F7F7F7FFFFFFFFFFFFFA0A0A0
          DFDFDFA0A0A09F9F9FCFCFCFAFAFAF8F8F8F808080808080A0A0A0BFBFBF70A0
          805050507F7F7FFFFFFFFFFFFF707070A0A0A0DFDFDFDFDFDFDFDFDFDFDFDFE0
          E0E0CFCFCFBFBFBF9F9F9F8F8F8F6F7F6F4F4F4F808080FFFFFFFFFFFF9F9F9F
          E0E0E0DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCF
          CF6F6F6FFFFFFFFFFFFFFFFFFF8F8F8FD0D0D0C0C0C0AFAFAFA0A0A0CFCFCFF0
          F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF707070FFFFFFFFFFFFFFFFFFFFFFFF
          A0A0A0CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBF7070707070
          70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA0FFD0C0FFD0C0FFD0CFEF
          DFD0E0E0E0E0E0E06F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAF8F90FFDFB0FFDFBFFFDFBFFFD0B0FFD0AF605F5FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB09F8FFFE0CFFFE0CFFFE0CFFF
          E0CFFFE0C0705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDFBFB0FFEFDFFFEFDFFFEFDFFFEFDF705F5FFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F90FFF0EFFFF0EFFFF0EFFFF0EFFF
          F0EF705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          AF8F90AF8F90AF8F90AF8F90AF8F90AF8F90FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BtnCancelamentos: TBitBtn
        Left = 653
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita o cancelamento do pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BtnCancelamentosClick
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
      object BtnFechaPed: TBitBtn
        Left = 523
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnFechaPedClick
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000C0C0C000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00C0C0C00000C0C0C0C0C0C000FF0000FF0000FF
          0000FF0000FF0000000000000000000000000000FF0000FF0000FF0000FF0000
          FF00C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000000000FF0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000FF00000000000000000000
          00000000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          BFBFBFBFBFBFBFBFBF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF
          00BFBFBFBFBFBFC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0BFBFBFBFBFBFBFBF
          BFC0C0C000FF0000000000000000000000000000FF00BFBFBFBFBFBFBFBFBFBF
          BFBFC0C0C0C0C0C00000C0C0C0C0C0C000FF0000FF0000FF0000FF0000FF0000
          FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0007F0000FF0000FF0000FF00000000000000
          00FF0000FF0000FF00007F00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C08080807F7F7F7F7F00007F0000FF0000FF0000FF0000FF007F7F007F7F
          7F000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          80FF00007F00007F000000FF0000FF007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F
          00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F00007F00007F0000
          7F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0808080808080FF00007F00007F00007F00007F00007F00007F00007F7F
          7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          807F0000FF00007F00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080807F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F8080807F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 5
      Top = 39
      Width = 105
      Height = 38
      Alignment = alTopLeft
      Caption = 'FILTRO'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 1
      object CBFILTRO: TcxComboBox
        Left = 0
        Top = 17
        Width = 105
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS'
          'TERMINADAS'
          'CANCELADO'
          'NFE2')
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'ABERTAS'
        OnClick = CBFILTROClick
        OnExit = CBFILTROExit
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 117
      Top = 39
      Width = 94
      Height = 38
      Alignment = alTopLeft
      Caption = 'ORDEM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 2
      object CBORDEM: TcxComboBox
        Left = 0
        Top = 17
        Width = 94
        Height = 21
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'NUMERO'
          'CLIENTE'
          'DATA')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'NUMERO'
        OnClick = CBORDEMClick
      end
    end
    object GBPLACA: TcxGroupBox
      Left = 214
      Top = 39
      Width = 755
      Height = 46
      Alignment = alTopLeft
      Caption = 'LOCALIZAR - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 3
      object EDNum: TFlatEdit
        Left = 7
        Top = 17
        Width = 92
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#250'mero'
        OnEnter = EDNumEnter
        OnExit = EDNumExit
        OnKeyPress = EDNumKeyPress
      end
      object EDCliente1: TFlatEdit
        Left = 197
        Top = 17
        Width = 443
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Cliente'
        OnEnter = EDCliente1Enter
        OnExit = EDCliente1Exit
        OnKeyPress = EDCliente1KeyPress
      end
      object EdFiscal: TFlatEdit
        Left = 102
        Top = 17
        Width = 92
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'N'#186' Fiscal'
        OnEnter = EdFiscalEnter
        OnExit = EdFiscalExit
        OnKeyPress = EdFiscalKeyPress
      end
      object BtnSelecionar: TBitBtn
        Left = 643
        Top = 16
        Width = 108
        Height = 23
        Caption = 'Selecionar - F9'
        TabOrder = 3
        Visible = False
        OnClick = BtnSelecionarClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777774F77777700000007777
          7777444F77777000000077777774444F777770000000700000444F44F7777000
          000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
          74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
          8777F07777774000000070FFFF00007777777000000070F88707077777777000
          000070FFFF007777777770000000700000077777777770000000777777777777
          777770000000}
      end
    end
  end
  object PmRelatorio: TPopupMenu
    Left = 481
    Top = 9
    object CompdeAbertura1: TMenuItem
      Caption = 'C&omp. de Abertura'
      OnClick = CompdeAbertura1Click
    end
  end
  object FSDSServ: TfrDBDataSet
    DataSet = DMESTOQUE.TSlaveServ
    Left = 560
    Top = 65520
  end
  object FSDSDesp: TfrDBDataSet
    DataSet = DMESTOQUE.TDesp
    Left = 584
    Top = 8
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 616
    Top = 65520
  end
  object Fsrel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 648
    Top = 65528
    ReportForm = {18000000}
  end
  object FSDSFatura: TfrDBDataSet
    DataSet = DMMACS.TMP
    Left = 693
    Top = 9
  end
  object PGrid: TPopupMenu
    Left = 762
    Top = 10
    object NotaFiscalEletrnica1: TMenuItem
      Bitmap.Data = {
        D6090000424DD60900000000000036000000280000001D0000001C0000000100
        180000000000A009000000000000000000000000000000000000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4
        F4F3F7FAF4E9DFF0C5A6F0D8CAF5F6F7F4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F5F5F5F0EDF0E9E6E9E8E5E7ECECECF3F3F3F6F7F7F4F6F7F3E2D7FAD6B8FA
        CAA3EEBB98F2E2D8F4F7F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F6F5F6EBE7E9C5CDC6B3
        C4B6C1C9C2CFCBCDD1CBCFDBD9DBF3DDCEFFD4B0FFD5B3FFDABAFACAA4EBB693
        F3EAE3F4F5F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F6F6F7F1EFF090BF9B52A46864AC7359A86D5CA16E
        7DA18A9FABADC5B2ADF8CAAAFFD8B5FFD8B7FDD4B3F1B78CF0D1BDF4F7F9F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4FCF7FAB1D3B752A169D6E1D583DEDC30C1B16CC2A058AB72349A634FA3
        979AACAEE1BFA5FCCFACFED5B4FCCFAAF0C9AFF4F5F8F4F7F9F4F4F5F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F6F5F6F6F6F576B8
        869EBBA1CCF0F91EC3BE98CAC9F6F4F9F4F6F4A5CEAC399F5F1A9A7AA8A99AEF
        BE9EF9D1B0FBD0ADECAB80F0CDB7F3EEE9F3F6F8F4F6F8F4F5F6F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F7F5F7F1F4F06EB37FB0C0AF83DEE042
        BEB7E1D3D3F6F4F3F9F6F8FFFBFFDFEBDE66B2786AA167D8B298EABFA6FBD3B2
        FAC9A0ECA97AECB18AEEC5ACEFCFBAF2EBE8F4F6F7F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F6F5F6F4F5F377B886A4BAA472D5D954C0BBDCD1D2F1F1F1
        F6F6F6F4F4F2E8C9BAC5A68B599B6455975CB3967ED4AC92FCD7B7FDD5B2F3B8
        8DF0AF80ECA777EDC1A6F4F3F2F4F5F6F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F5F4F5F9F7F88CC59A8EB09181D0D547C3BBD2CCCCEDECECF5F7F8E6E1DBD0BF
        B1C9BAB6CFCAC57BBC90367E466F5D4FAA8B76FBD2B1FFD9B8FED8B7F9CCA6EB
        A677EFD6C4F3F7F7F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4FDF8FBB4D8
        BA73A97B9BC9CD30C3BCBFC8C6E5E0E1F9FAF9FFFFFFFFFFFFFFFFF9FFFFFBFF
        FBF782C5983E814C9E7D6AE3BCA1FFD7B7FFD7B7FDD6B5F3BA8EECB695F5F1F1
        F4F5F6F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F9F6F9E0ECE168AE77A4BFB632
        C0BE95C5C1E6DCDCFFFFFFDBDBD9C0A791FBD5B2FCD3B0FFD5B6FAE0C570B680
        749F6CDFB39BEEC6A8FFD7B6FED6B5F8CBA4EBAA7DF2E1D8F4F6F9F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F5F4F5F9F7F88AC3978AB19062C0C450BEB6F1E9EA
        FFFFFF928378C39E81FFDCBAFED2AEFFD5B1FFDAB8F3DBBA5BAC6F94A579E2B6
        9EF4CDADFFD7B6FCD2AFEFAE81EED2BFF4F7F9F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4F3F4F4FCF8FBCDE3CF6AAB7497BFBC21B7B1CBEBE9FFFFFF8878699178
        63AE927BAC9078AB8D75AC8E77B28E7A989E7E479C5EB9AB89E5BA9EFAD2AFFD
        D7B6F2B589EFCEBAF4F8FBF4F4F4F4F4F400F4F4F4F4F4F4F3F4F4F4F6F7F6F7
        FBF8F8FA84C29485AE8B709F92ACC7B4FFFFFFEAE9E6E5E5E3DDDEDDDADCDBDA
        DCDBDADCDBDAD9D7C5B6B169926A609F63D8AF94ECC3A4FFDCBCEFB082EBB491
        F2EAE6F4F6F8F4F4F400F4F4F4F4F4F5F5F5F8F1E8E2F1D6C7FBEAE7D4E8DB5F
        A86DB39770E4BFA8FFFFFFE6E4E1B8ACA3F8E5D6FFF6E3FFF1E0FFEBD8FFFFFD
        E9E5E58C766561A86F8FA576E4B79EF8D2B4F8C7A1E79A67EDBFA2F5F2F2F4F6
        F700F4F5F5F3F2F2F0CFBDEEBB98EEAA7CEBAD85F9CDB59EC79B72A975DBAF93
        F2E8E2F0EFED7D6653987A61F2CAA9FFDAB5FECEA6FFF7ECE8EAEB917261C1C1
        9D52A163C7AD8FEAC1A4FFDCBDF1B88CE79B68EFCBB3F4F2F300F3F6F9F1E0D5
        F0B68DF8C79FFDD7B6F4BE94F4B589F4D8B770B98494A577E2B9A5F9F9F9E7E2
        DD8C7768876D59AA8A71CFB39BFFFFFDD3D1CFB08D73FFDABA7EB7827E9F6EE4
        B59CF6CFAEFCD4B3EFB181E89F6EF1D9CA00F3F4F6F7D9C1FED4B2FDD5B5FED5
        B4FFD9B8FED7B6FFD3B3D6D1AD5DAE76B2A881E3BBA9FCF9F6FAFCFDD3D1CFCA
        C7C5EDF1F4FBFCFCD8BFA9F0C5A0FFD9B8D6D2AF559E63C6A889EAC0A1FCD4B2
        FAD2AFEBA06CEDC0A400F3F3F3FBDABEFFD7B4FFD6B5FFD6B5FFD9B7FFD9B8FF
        D6B5FFDABAB8CFA660AA73C6A988E4BBA0FBE4D1FFFBF0FFFEF5FFF1E4F8DABF
        FBCFABFFD7B5FED2B1FFD7B875B37C909F73E6B69BFACFABFDD4B1ECA472EDC4
        AB00F4F7F9ECDED4EFC5A4FFD4B1FFD3B0EBC2A2F2CAACFFD5B3F3C8A7F6CCAF
        9CC59967A972CFB092E4B799F9CDACFFD5B2FFD3B0FED2AEFBD1AEFFD6B6FFD6
        B6FFD5B5B2C89B669E67DFB399FBC9A5F5C7A4E8C0A6F2E6DD00FAFAFADEDEDF
        8D857FE0C5AFFBE2CBBBAA9E927A67F2D4BCD9C6B6947A68EDC9AB94C5966CA9
        75D1B295E2B89EF5CEADFFD7B6FFD6B5FCD3B1FDD4B3FFD8B7FFD4B3E1D0AB61
        A46BBFA685A1A688C0BCB1E1E0E1F5F7F800F7F7F7FFFFFF919597BAB5B2FFFF
        FFFFFFFF8A7667D7C5B6FFFFFF8C7E70D9B093FFE4C391C5946AAA76CEB294E2
        B69BF0C9AAFFD6B6FFD8B6FFD5B2FCD0ABFAD2B2F1DDC66EAF7B98AA934FBCB6
        9CC8C8E1D9DBF5F5F600F5F5F5FFFFFFA8A9A8AFADACFDFDFDFFFFFFA09185BD
        A58FFFFFFFA69B92947862BF9B82C2A38A8FBE9164AC73BEB08DE2B49BECC1A4
        FDCCADF3C7A8EED2BCF7ECEBF9F9FA78B78995B5A159CAC88BC3C1E3D8D8F5F5
        F500F4F4F4FFFFFFC5C5C5D1D4D4D0C5BEF2EFECBAB2ACA38972FFFFFBF4F2F2
        E7E5E4DEDAD8B89B85FBD0B1B0CB9E5DAB739FAD808DA28A5FA299AEB5B4D8CE
        D1E9E4E8ECEDEB70B07FA2BBAB54CDCA8DBFBCE8DEDFF6F6F600F3F3F3FCFCFC
        F3F3F3F3F4F5A4978DF5F0E9D3D4D6897261FEF8EFECEBEAA4978DCCC6C0D0B7
        A0EBC1A3FFD7B9D4D1AC74B37E4CA5702AA89030A69D6CA8A8A9B1B5A7BEA762
        A36E84C6C135C0B8BCC8C8F2EDEEF5F5F500F3F3F3F8F8F8FFFFFFE6E6E6AEAF
        B0FFFFFFEDEFF0978172F3E3D6F7F7F7BCB5AEC3C2C2A6A6A8AEA9A5F7F4F3FF
        E2CEF4D4B7B3D4B777B7854CA87335A3754BA57841A1662AAE9431C3BC98CFCB
        F3EAEBF5F5F5F4F4F400F3F3F3F5F5F5FAFAFAF2F2F2EEEEEEF8F7F8FAFAFAEC
        E6E2F4F1EFFBF7F4FFFFFCFFFFFFF9F9FAEAEBEDF4F6F8F3F0EFF6ECE8FDF8FD
        F1F4F2D1E2D1B5D4B8B0D3B7B0DFD5A6E4E6D4EAE9FEF4F4F6F5F5F4F4F4F4F4
        F400F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F3F3F3F3F3F3F6F8F9F4F5F5F3F1F0
        F4F0EFF3F3F3F5F5F5F6F6F6F4F3F3F4F4F5F4F5F7F4F4F4F6F5F6FCF8FBFFFA
        FEFFFAFFFFF8FBFFF7F8FCF6F6F4F4F4F4F4F4F4F4F4F4F4F400}
      Caption = 'NOTA FISCAL ELETR'#212'NICA'
    end
    object RecuperarDados1: TMenuItem
      Caption = 'Recuperar Dados de Nota Fiscal Eletr'#244'nica'
      OnClick = RecuperarDados1Click
    end
    object ConsultasNotaFiscalEletrnica1: TMenuItem
      Caption = 'Consultas de Nota Fiscal Eletr'#244'nica'
      object VisualizarDanfe1: TMenuItem
        Caption = 'Visualizar Danfe'
        OnClick = VisualizarDanfe1Click
      end
      object VisualizarnoSefaz1: TMenuItem
        Caption = 'Visualizar no Sefaz'
      end
      object ConsultarStatusNFe1: TMenuItem
        Caption = 'Consultar Status NFe'
        OnClick = ConsultarStatusNFe1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object VerificarServidorSefaz1: TMenuItem
        Caption = 'Verificar Servidor Sefaz'
        OnClick = VerificarServidorSefaz1Click
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object ListaNfe1: TMenuItem
        Caption = 'Lista Nfe Enviadas'
        OnClick = ListaNfe1Click
      end
    end
    object InutilizarNumerao1: TMenuItem
      Caption = 'Inutilizar Numera'#231#227'o de Nota Fiscal Eletr'#244'nica'
      OnClick = InutilizarNumerao1Click
    end
    object GeraNFeDistribuio1: TMenuItem
      Caption = 'XML'
      object SalvarXMLDistribuio1: TMenuItem
        Caption = 'Salvar XML Distribui'#231#227'o'
        OnClick = SalvarXMLDistribuio1Click
      end
    end
    object CancelarNFe1: TMenuItem
      Bitmap.Data = {
        FE0B0000424DFE0B0000000000003600000028000000220000001D0000000100
        180000000000C80B000000000000000000000000000000000000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F3F4F5F3EFEBF3F2F1F4F5F5F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F3F7FAF4E9DFF0C5A6F0D8CAF5F6F7F4F4
        F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5
        F5F5F0EDF0E9E6E9E8E5E7ECECECF3F3F3F6F7F7F4F6F7F3E2D7FAD6B8FACAA3
        EEBB98F2E2D8F4F7F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F6F5F6EBE7E9C5CDC6B3C4B6C1C9C2CFCBCDD1CBCFDBD9DBF3DDCEFF
        D4B0FFD5B3FFDABAFACAA4EBB693F3EAE3F4F5F7F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F6F6F7F1EFF090BF9B52A46864AC7359A86D5CA16E7DA1
        8A9FABADC5B2ADF8CAAAFFD8B5FFD8B7FDD4B3F1B78CF0D1BDF4F7F9F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000DDDDF57A7AFAF4F4F4F4F4F4F4F4F4FCF7FAB1D3B752A169D6E1D583DEDC
        30C1B16CC2A058AB72349A634FA3979AACAEE1BFA5FCCFACFED5B4FCCFAAF0C9
        AFF4F5F8F4F7F9F4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F400002E2EFD4D4DFC7A7AFA2626FDF6F5F6F6F6F576B8869E
        BBA1CCF0F91EC3BE98CAC9F6F4F9F4F6F4A5CEAC399F5F1A9A7AA8A99AEFBE9E
        F9D1B0FBD0ADECAB80F0CDB7F3EEE9F3F6F8F4F6F8F4F5F6F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400001717FEECECF4F4F4F4DDDDF52726
        FED3D5F26EB37FB0C0AF83DEE042BEB7E1D3D3F6F4F3F9F6F8FFFBFFDFEBDE66
        B2786AA167D8B298EABFA6FBD3B2FAC9A0ECA97AECB18AEEC5ACEFCFBAF2EBE8
        F4F6F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400005C5CFBF4F4F4
        F4F4F4F4F4F41F1FFE2E2EFD3F61BF1517F44B8BE654C0BBDCD1D2F1F1F1F6F6
        F6F4F4F2E8C9BAC5A68B599B6455975CB3967ED4AC92FCD7B7FDD5B2F3B88DF0
        AF80ECA777EDC1A6F4F3F2F4F5F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        00001717FEA7A7F7CECEF6F4F4F42626FDDAD8F9090CF94758C875BCD90918F6
        D2CCCCEDECECF5F7F8E6E1DBD0BFB1C9BAB6CFCAC57BBC90367E466F5D4FAA8B
        76FBD2B1FFD9B8FED8B7F9CCA6EBA677EFD6C4F3F7F7F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000CECEF66464FBBEBEF6D5D5F52E2EFD302FFE5A6CDD73
        A97B4458E91B6DD9A1A9CF2B2AF91F1FFEFFFFFFFFFFFFFFFFF9FFFFFBFFFBF7
        82C5983E814C9E7D6AE3BCA1FFD7B7FFD7B7FDD6B5F3BA8EECB695F5F1F1F4F5
        F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4DDDDF50F0F
        FE7C7BFCE0ECE161A3801518F6217ED40E13F93330F77070FF8989E7302AE3FB
        D5B2FCD3B0FFD5B6FAE0C570B680749F6CDFB39BEEC6A8FFD7B6FED6B5F8CBA4
        EBAA7DF2E1D8F4F6F9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F5F4F5F9F7F84D6DC51116F10C18F83E94C61E1DFCB7B7
        FF0504FB866CA9A790D2604FE1A78BCCFFDAB8F3DBBA5BAC6F94A579E2B69EF4
        CDADFFD7B6FCD2AFEFAE81EED2BFF4F7F9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F4F4FCF8FB93A3DD3250BE8EB3C0
        1678CC4C58F76868FF3C35BD917863AE927B967E890B09F64135CC2D24DE989E
        7E479C5EB9AB89E5BA9EFAD2AFFDD7B6F2B589EFCEBAF4F8FBF4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F3F4F4F4F6F7F6F7FBF8
        F8FA84C29485AE8B384FC98CA2C26060FF8B8AF0E5E5E3DDDEDD7A7BEB4B4CF3
        DADCDBCCCBDAB2A5B80D12EC609F63D8AF94ECC3A4FFDCBCEFB082EBB491F2EA
        E6F4F6F8F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F5F5F5
        F8F1E8E2F1D6C7FBEAE7D4E8DB5FA86DB39770E4BFA8C7C7FF1D1DFB5C56D1C9
        BADE1817FC5853F4403BF5FFFFFD6665F4352CC53054B7161AEAE4B79EF8D2B4
        F8C7A1E79A67EDBFA2F5F2F2F4F6F7F4F4F3F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F5F5F3F2F2F0CFBDEEBB98EEAA7CEBAD85F9CDB59EC79B72A975DBAF93F2E8
        E2D2D1EF4E40945544A62E26EFEFCCBAF6C8A9EFE8ED0707FE7F6475C1C19D15
        28D88271B6EAC1A4FFDCBDF1B88CE79B68EFCBB3F4F2F3F4F5F5F4F4F4F4F4F4
        0000F4F4F4F4F4F4F3F6F9F1E0D5F0B68DF8C79FFDD7B6F4BE94F4B589F4D8B7
        70B98494A577E2B9A5F9F9F9E7E2DD8C7768544497201AE49B86B48F8FFE4242
        F0B08D73FFDABA1822E72F3CC82B22EC0F0DFAB598C88E69B4E89F6EF1D9CAF4
        F6F8F4F4F4F4F4F40000F4F4F4F4F4F4F3F4F6F7D9C1FED4B2FDD5B5FED5B4FF
        D9B8FED7B6FFD3B3D6D1AD5DAE76B2A881E3BBA9FCF9F6FAFCFDD3D1CFCAC7C5
        EDF1F45757FEAF9BB9F0C5A0FFD9B82221F248857B1310F4A88ABCDCB9BC1814
        F75137CC4A3CE2F4F5F6F4F5F5F4F4F40000F4F4F4F4F4F5F3F3F3FBDABEFFD7
        B4FFD6B5FFD6B5FFD9B7FFD9B8FFD6B5FFDABAB8CFA660AA73C6A988E4BBA0FB
        E4D1FFFBF0FFFEF5FFF1E4F8DABFFBCFABFFD7B5FED2B1100DFB0F16EF5A63A8
        E6B69B6E5BDA7764DAECA4724337E79899FAF4F5F5F4F4F40000F4F4F4F4F4F4
        F4F7F9ECDED4EFC5A4FFD4B1FFD3B0EBC2A2F2CAACFFD5B3F3C8A7F6CCAF9CC5
        9967A972CFB092E4B799F9CDACFFD5B2FFD3B0FED2AEFBD1AEFFD6B6F7CFB860
        50E36F7DC1669E67CAA2A3100DF9DEB4ADE8C0A64441F58989FA6464FB1717FE
        0000F4F4F4F3F3F3FAFAFADEDEDF8D857FE0C5AFFBE2CBBBAA9E927A67F2D4BC
        D9C6B6947A68EDC9AB94C5966CA975D1B295E2B89EF5CEADFFD7B6FFD6B5FCD3
        B1FDD4B3FFD8B7FFD4B3E1D0AB61A46B5F53C22324E5AEAAB8A9A8E90808FFAF
        AFF71717FEE5E5F50000F4F4F4F3F3F3F7F7F7FFFFFF919597BAB5B2FFFFFFFF
        FFFF8A7667D7C5B6FFFFFF8C7E70D9B093FFE4C391C5946AAA76CEB294E2B69B
        F0C9AAFFD6B6FFD8B6FFD5B2FCD0ABFAD2B2F1DDC66EAF7B93A5963175D12C38
        EF3836F6B8B8F88181F98181F9F4F4F40000F4F4F4F4F4F4F5F5F5FFFFFFA8A9
        A8AFADACFDFDFDFFFFFFA09185BDA58FFFFFFFA69B92947862BF9B82C2A38A8F
        BE9164AC73BEB08DE2B49BECC1A4FDCCADF3C7A8EED2BCF7ECEBF9F9FA78B789
        95B5A159CAC88BC3C1E3D8D8F5F5F59090F86B6BFAF4F4F40000F4F4F4F4F4F4
        F4F4F4FFFFFFC5C5C5D1D4D4D0C5BEF2EFECBAB2ACA38972FFFFFBF4F2F2E7E5
        E4DEDAD8B89B85FBD0B1B0CB9E5DAB739FAD808DA28A5FA299AEB5B4D8CED1E9
        E4E8ECEDEB70B07FA2BBAB54CDCA8DBFBCE8DEDFF6F6F6ECECF44545FC3636FD
        0000F4F4F4F4F4F4F3F3F3FCFCFCF3F3F3F3F4F5A4978DF5F0E9D3D4D6897261
        FEF8EFECEBEAA4978DCCC6C0D0B7A0EBC1A3FFD7B9D4D1AC74B37E4CA5702AA8
        9030A69D6CA8A8A9B1B5A7BEA762A36E84C6C135C0B8BCC8C8F2EDEEF5F5F5F4
        F4F4F4F4F4DDDDF50000F4F4F4F4F4F4F3F3F3F8F8F8FFFFFFE6E6E6AEAFB0FF
        FFFFEDEFF0978172F3E3D6F7F7F7BCB5AEC3C2C2A6A6A8AEA9A5F7F4F3FFE2CE
        F4D4B7B3D4B777B7854CA87335A3754BA57841A1662AAE9431C3BC98CFCBF3EA
        EBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F3F3F3F5F5F5FAFA
        FAF2F2F2EEEEEEF8F7F8FAFAFAECE6E2F4F1EFFBF7F4FFFFFCFFFFFFF9F9FAEA
        EBEDF4F6F8F3F0EFF6ECE8FDF8FDF1F4F2D1E2D1B5D4B8B0D3B7B0DFD5A6E4E6
        D4EAE9FEF4F4F6F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F3F3F3F3F3F3F6F8F9F4F5F5F3F1F0F4F0
        EFF3F3F3F5F5F5F6F6F6F4F3F3F4F4F5F4F5F7F4F4F4F6F5F6FCF8FBFFFAFEFF
        FAFFFFF8FBFFF7F8FCF6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000}
      Caption = 'Cancelar Nota Fiscal Eletr'#244'nica'
      OnClick = CancelarNFe1Click
    end
    object Cartadecorreoeletrnica1: TMenuItem
      Caption = 'Carta de corre'#231#227'o eletr'#244'nica'
      OnClick = Cartadecorreoeletrnica1Click
    end
    object EfetuardevoluodeNFe1: TMenuItem
      Caption = 'Efetuar devolu'#231#227'o de NFe'
      OnClick = EfetuardevoluodeNFe1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ReeimprimirNF1: TMenuItem
      Caption = 'Reimprimir NFe/NF'
      OnClick = ReeimprimirNF1Click
    end
  end
end
