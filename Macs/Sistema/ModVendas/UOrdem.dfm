inherited FOrdem: TFOrdem
  Left = 152
  Top = 142
  Caption = 'Ordem de Servi'#231'o'
  ClientHeight = 503
  ClientWidth = 793
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label33: TLabel [0]
    Left = 440
    Top = 264
    Width = 66
    Height = 16
    Caption = 'Servi'#231'os:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PFinanceiro: TPanel [1]
    Left = 172
    Top = 56
    Width = 497
    Height = 369
    BevelWidth = 4
    Color = clBlack
    TabOrder = 4
    Visible = False
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 357
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
      object Label25: TLabel
        Left = 8
        Top = 113
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
      object Label24: TLabel
        Left = 289
        Top = 117
        Width = 70
        Height = 16
        Caption = 'Dt. Entraga:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 385
        Top = 117
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
        Left = 150
        Top = 327
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
      object BtnMoedaCancelar: TBitBtn
        Left = 262
        Top = 327
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 134
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
        TabOrder = 2
        Text = 'Carteira'
        OnExit = CBPagamentoExit
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o')
      end
      inline FrmMoeda: TFrmBusca
        Left = 6
        Top = 68
        Width = 478
        Height = 43
        Enabled = False
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Width = 168
          Caption = 'Moeda para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 430
        end
        inherited LUZMINUS: TShape
          Left = 454
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
          ColorFlat = 15794169
        end
        inherited BTNOPEN: TBitBtn
          Left = 428
          OnClick = FrmMoedaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
          OnClick = FrmMoedaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 14221052
        end
      end
      inline FrmConta: TFrmBusca
        Left = 7
        Top = 167
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 6
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
          OnKeyPress = FrmContaEDCodigoKeyPress
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
        OnExit = FrmFormPagExit
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
          OnKeyDown = FrmFormPagEDCodigoKeyDown
          OnKeyPress = FrmFormPagEDCodigoKeyPress
        end
      end
      object DBDATAENTREGA: TColorMaskEdit
        Left = 290
        Top = 134
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
        TabOrder = 3
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHORAENTREGA: TColorMaskEdit
        Left = 386
        Top = 134
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
        TabOrder = 4
        Text = '  :  '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmContaServ: TFrmBusca
        Left = 6
        Top = 240
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 7
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
          OnClick = FrmContaServBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 151
          ColorFlat = 15329769
          OnKeyPress = FrmContaServEDCodigoKeyPress
        end
      end
      object Panel7: TPanel
        Left = 286
        Top = 157
        Width = 163
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 5
        object LTextoBusca: TLabel
          Left = 3
          Top = 1
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
          Left = 3
          Top = 16
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
        Left = 162
        Top = 186
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    object PBanco: TPanel
      Left = 197
      Top = 203
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
        OnKeyDown = DBGCTAKeyDown
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
  end
  inherited PConsulta: TPanel
    Left = 9
    Top = 9
    Width = 781
    Height = 492
    object Label46: TLabel [0]
      Left = 9
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Filtro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel [1]
      Left = 113
      Top = 64
      Width = 48
      Height = 16
      Caption = 'Ordem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object PDevParc: TPanel [2]
      Left = 5
      Top = 0
      Width = 778
      Height = 492
      BevelWidth = 4
      Color = clBlack
      TabOrder = 8
      Visible = False
      object FashionPanel2: TFashionPanel
        Left = 5
        Top = 5
        Width = 768
        Height = 482
        BevelOuter = bvNone
        Caption = '$00FFECEC'
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
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Title = 'Devolu'#231#227'o Parcial'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttCustom
        object DRLabel1: TDRLabel
          Left = 5
          Top = 240
          Width = 149
          Height = 18
          Caption = 'Itens devolvidos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          HiColor = clBlue
          LoColor = clNavy
          Border = boNone
          Ctl3D = True
          BlinkInterval = 300
          Blink = blNone
          Deep = 1
        end
        object Label119: TLabel
          Left = 439
          Top = 206
          Width = 90
          Height = 13
          Caption = 'Qtd. Devolvida:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label120: TLabel
          Left = 559
          Top = 206
          Width = 72
          Height = 13
          Caption = 'Vlr. Unit'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label116: TLabel
          Left = 3
          Top = 196
          Width = 236
          Height = 13
          Caption = 'Selecione o produto na lista acima para devolver.'
          Font.Charset = ANSI_CHARSET
          Font.Color = 10304777
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBGrid6: TDBGrid
          Left = 4
          Top = 258
          Width = 757
          Height = 170
          Color = clCaptionText
          Ctl3D = False
          DataSource = DMESTOQUE.DSAlx
          FixedColor = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid6DrawColumnCell
          OnKeyDown = DBGrid6KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Title.Alignment = taCenter
              Title.Caption = 'ST'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'C'#243'd.'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEPROD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALUNIT'
              Title.Caption = 'Unit'#225'rio ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Total ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCPRO'
              Title.Caption = 'Desc (%)'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Caption = 'Comis.'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDEV'
              Title.Caption = 'Qtd. Dev'
              Visible = True
            end>
        end
        object BitBtn9: TBitBtn
          Left = 546
          Top = 440
          Width = 94
          Height = 25
          Hint = 'Pressione para confirmar a devolu'#231#227'o parcial'
          Caption = '&Ok'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BitBtn9Click
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
        object BitBtn10: TBitBtn
          Left = 650
          Top = 439
          Width = 97
          Height = 26
          Hint = 'Pressione para cancelar a devolu'#231#227'o parcial'
          Caption = 'C&ancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BitBtn10Click
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
        object Panel14: TPanel
          Left = 310
          Top = 117
          Width = 163
          Height = 39
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 0
        end
        object DBGrid7: TDBGrid
          Left = 4
          Top = 31
          Width = 754
          Height = 164
          Hint = 'Selecione o produto na lista para devolver.'
          Color = 15794175
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlave
          FixedColor = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid7CellClick
          OnDrawColumnCell = DBGrid7DrawColumnCell
          OnKeyDown = DBGrid7KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Title.Alignment = taCenter
              Title.Caption = 'ST'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'C'#243'd.'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNIT'
              Title.Caption = 'Unit'#225'rio ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Caption = 'Total ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Caption = 'Desc (%)'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Caption = 'Comis.'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDEV'
              Title.Caption = 'Qtd. Dev'
              Visible = True
            end>
        end
        object BtnDevolveItem: TBitBtn
          Left = 652
          Top = 217
          Width = 105
          Height = 26
          Hint = 
            'Selecione o produto na lista acima, informe a quantidade a ser d' +
            'evolvida e o valor unit'#225'rio e clique aqui para realizar a devolu' +
            #231#227'o. '
          Caption = 'Devolver'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BtnDevolveItemClick
          Glyph.Data = {
            8E050000424D8E05000000000000360000002800000017000000130000000100
            1800000000005805000000000000000000000000000000000000FFC891FFC891
            FFC891ACB095846546896D4E896D4E896D4E896D4E896D4E896D4E896D4E896D
            4E896D4E896D4E896D4E896D4E896D4E856E4D86834EFFC891FFC891FFC89100
            0000FFC891FFC891F2F8F2004D000D69160C68140C68140C68140C68140C6814
            0C68140C68140C68140C69140C69140C68140C68140B6C150C3D04664428FFC8
            91FFC891FFC891000000FFC891FFC891F6F5F4007B0000D33600CC3300CC3300
            CC3300CC3300CC3300CC3300CB3200D434008C4E002E0700DF3700CC3300D435
            068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891F6F5F4007B0000D3
            3600CC3300CC3300CC3300D13300D83600DE3700E23700ED3D00CDB700000000
            4B1300EB3A00D535068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891
            F6F5F4007B0000D33600CC3300CE3200D03200AF2F00661A0025090000000000
            0000000000000000000000390E00D334068B1E6B422AFFC891FFC891FFC89100
            0000FFC891FFC891F6F5F4007B0000D33600CD3200CF35008831000F09000000
            00000000000000000000000000000000000000150500C431068D1E6B422AFFC8
            91FFC891FFC891000000FFC891FFC891F6F5F4007B0000D33600D23700954400
            0709000000002622008D7200D3AA00E9BA00987B00000000140500D43500D936
            068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891F6F5F4007B0000D5
            3300CB57002423000000005F3700E06600DC3C00CE2700D72D00AFA000040000
            E13800D03400D435068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891
            8B8A9500000800061000000000050500020200030616281E24853B10BF3B01D1
            3500D33400D03400CD3300CC3300D435068A1D6B422AFFC891FFC891FFC89100
            0000FFC891596779000619002A44001C322A6E80002C41001923000405000000
            00040909160503460A00831800A12300BF2D00CD3200D434068A1D6B422AFFC8
            91FFC891FFC891000000C0C5CC001B3600537B008CC600121ED0FFFF005F8300
            4561001D2600010003362900A68800A68D00A57800B06100C54300CF3900D335
            068A1D6B422AFFC891FFC891FFC891000000314F6100538100A9E400DFFF001C
            27DEF2F8006E9600688E003E58001B160307042D68461AB44602D33900D23700
            CD3400CC3300D334068A1D6B422AFFC891FFC891FFC89100000002335100567A
            56F2FF89FFFF81A0A6F5FEFF80C9DD8FD5E838A0B8002D430001062349311FA5
            3E01CA3100CC3200CB3200CB3200D434068A1D6B422AFFC891FFC891FFC89100
            000000456E01293A271D163E2725332B2AF0E9E73E26204A2F281F434A00405F
            00070D1C4A2D1CAE4101CE3500D03400CF3400CF3400D736068B1F6A3E26FFC8
            91FFC891FFC891000000185B7B00B6F122F3FF2AFFFF002A2FE4FEFF00BEF700
            C1F50087B000364F00080D124F2100921E00A51200A51200A51200A51200AB13
            007100716142FFC891FFC891FFC89100000081A5B9009DDB67EFFFD2FFFF192D
            2ABBFFFF00C7F304DCFF00769D00283D080D0FA5B5A7A4BFA09DBB989DBB989D
            BB999DBB999DBB9994BC92DCF1E1FFC891FFC891FFC891000000F2E9E94782A3
            78E2FBABFFFF1C525407354100CEFF009BC5004160000009878686FFC891FFC8
            91FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC89100
            0000FFC891F2D3D4927287309AC201C2FF00A5DB0079A5003E5C000914636466
            FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC8
            91FFC891FFC891000000FFC891FFC891FDE3E3C2878F534963003F6004293A41
            4B51C0C3C6FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891
            FFC891FFC891FFC891FFC891FFC891000000}
        end
        object EdQtdProdDev: TColorEditFloat
          Left = 443
          Top = 221
          Width = 84
          Height = 22
          Hint = 'Informe a quantidade a ser devolvida.'
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = '0,00'
          OnExit = EDQuantidadeExit
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdvlrUnitProdDev: TColorEditFloat
          Left = 545
          Top = 221
          Width = 84
          Height = 22
          Hint = 'Informe o valor unit'#225'rio do produto.'
          Color = 15329769
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          MaxLength = 13
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          OnExit = EDQuantidadeExit
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
    end
    inherited GroupBox1: TGroupBox
      Left = 253
      Top = 58
      Width = 524
      inherited EdNome: TFlatEdit
        Left = 4
        Top = 13
        Width = 89
        Height = 23
        Font.Height = -15
        Text = 'N'#250'mero'
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 525
        Width = 38
        TabOrder = 3
      end
      object EdCliente: TFlatEdit
        Left = 276
        Top = 13
        Width = 245
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Cliente'
        OnEnter = EdClienteEnter
        OnExit = EdClienteExit
        OnKeyDown = EdClienteKeyDown
        OnKeyUp = EdClienteKeyUp
      end
      object EdEquipamento: TFlatEdit
        Left = 96
        Top = 13
        Width = 177
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Equipamento'
        OnEnter = EdEquipamentoEnter
        OnExit = EdEquipamentoExit
        OnKeyDown = EdEquipamentoKeyDown
        OnKeyUp = EdEquipamentoKeyUp
      end
    end
    object GBPlaca: TGroupBox [4]
      Left = 253
      Top = 58
      Width = 524
      Height = 49
      Caption = 'Localizar - F2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object EDCliente1: TFlatEdit
        Left = 232
        Top = 16
        Width = 280
        Height = 25
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
        TabOrder = 3
        Text = 'Cliente'
        OnEnter = EDCliente1Enter
        OnExit = EDCliente1Exit
        OnKeyDown = EDCliente1KeyDown
        OnKeyUp = EDCliente1KeyUp
      end
      object EDNum: TFlatEdit
        Left = 8
        Top = 16
        Width = 73
        Height = 24
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
        TabOrder = 0
        Text = 'N'#250'mero'
        OnEnter = EDNumEnter
        OnExit = EDNumExit
        OnKeyDown = EDNumKeyDown
        OnKeyUp = EDNumKeyUp
      end
      object MEPlaca: TMaskEdit
        Left = 144
        Top = 16
        Width = 81
        Height = 26
        Color = 16772332
        Ctl3D = False
        EditMask = 'AAA-0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '   -    '
        OnKeyDown = MEPlacaKeyDown
        OnKeyUp = MEPlacaKeyUp
      end
      object EDBox: TFlatEdit
        Left = 89
        Top = 16
        Width = 48
        Height = 24
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Box'
        OnEnter = EDBoxEnter
        OnExit = EDBoxExit
        OnKeyDown = EDBoxKeyDown
        OnKeyUp = EDBoxKeyUp
      end
    end
    object PExp: TPanel [5]
      Left = 112
      Top = 273
      Width = 577
      Height = 45
      TabOrder = 7
      Visible = False
      object PBExport: TProgressBar
        Left = 30
        Top = 13
        Width = 516
        Height = 20
        TabOrder = 0
      end
    end
    inherited Painel: TPanel
      Left = 4
      Top = 0
      Width = 772
      TabOrder = 3
      inherited BtnNovo: TBitBtn
        Width = 114
      end
      inherited BtnApagar: TBitBtn
        Left = 115
        Width = 110
      end
      inherited BtnConsultar: TBitBtn
        Left = 224
        Width = 110
      end
      inherited BtnRelatorio: TBitBtn
        Left = 333
        Width = 110
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 442
        Width = 110
        Caption = '&Fiscal'
        PopupMenu = PMBtnFiscal
        OnClick = BtnFiltrarClick
      end
      object BtnFechaPed: TBitBtn
        Left = 551
        Top = 2
        Width = 110
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
      object BitBtn8: TBitBtn
        Left = 660
        Top = 2
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Or'#231'amento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn8Click
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D002000000000000000000000000000000000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEF
          EBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF000000EFEBEFEFEBEF
          6361636B696B636163636163EFEBEFEFEBEFEFEBEF6361636B6163636163EFEB
          EFEFEBEFEFEBEF000000EFEBEF6B61639C86848471736B61637B797B6B6163EF
          EBEF6B6163CEAEADA58E8C8471736B696BEFEBEFEFEBEF000000EFEBEF636163
          DEDFDED6BEBDBD9694847173636163EFEBEF6B696BD6C7C6CEB6B5BD96949C71
          73636163EFEBEF000000EFEBEFEFEBEFBDA6A5D6AEADB586849C86849CA6946B
          6163CEC7C6D6C7C6C69694C69694A58E8C636163EFEBEF000000EFEBEFBDA6A5
          F7C77BD69694DEAE843971395238316B51529C965AD6A6A5CE696B94696B7371
          73EFEBEFEFEBEF000000EFEBEFBDA6A5FFBE4AE7AE42D6A64A31613139A62152
          3831735118BD8E31DEAE84B586846B6163EFEBEFEFEBEF000000EFEBEFBDA6A5
          FFCF6B31613139A62139713921C74A08A618524110735118BD8E31F7AE42BD8E
          31636163EFEBEF000000EFEBEFBDA6A5FFE7943971394AE77B31D76B21BE4A18
          B63110AE21524110A57942E7B663C67973636163EFEBEF000000EFEBEFBDA6A5
          EFE7BD3161315AF78C4AE77B31D76B21BE4A18B631009E00D6BE84F7C77B9C96
          5A6B6163EFEBEF000000EFEBEFEFEBEFBDA6A539713939A62139A621009E0031
          D76B009E00D6BE84F7DF9CFFE794636163EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEF009E00009E009C8684BDA6A5BDA6A5E7CFA56361
          63EFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF009E00EF
          EBEFEFEBEFEFEBEFEFEBEFBDA6A5BDA6A5EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000}
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 133
      Width = 774
      Height = 358
      Font.Charset = ANSI_CHARSET
      Font.Height = -12
      Font.Name = 'Verdana'
      PopupMenu = PMFisco
      TabOrder = 4
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnDblClick = DBGridCadastroPadraoDblClick
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EXPORTADO'
          Title.Alignment = taCenter
          Title.Caption = '  '
          Width = 57
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EXP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = ' X '
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMORC'
          Title.Caption = 'N'#186' Or'#231'.'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Title.Caption = 'N'#186' Fiscal'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOX'
          Title.Caption = 'Box'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Caption = 'Placa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EQUIPAMENTO'
          Title.Caption = 'Equipamento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMAPAG'
          Title.Caption = 'Pagamento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTPREV'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Vlr. Total'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPREV'
          Title.Caption = 'Previs'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CI_CLIENTE'
          Title.Caption = 'C'#243'd. Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOPAG'
          Title.Caption = 'Tipo'
          Visible = True
        end
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
          FieldName = 'COD_EQUIPAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_FUNCIONARIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_VENDEDOR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CI_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'EQUIPAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_LOJA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'GARANT'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUMORC'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MARK'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FISCO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FORMAPAG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPOPAG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Tipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTAGENDADO'
          Title.Caption = 'Agendado'
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 4
      Top = 29
      Width = 772
      Height = 29
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 5
      object BitBtn2: TBitBtn
        Left = 551
        Top = 2
        Width = 110
        Height = 25
        Caption = '&Comissionados'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777777770FFFFFF000000007777
          777770F8888F000000007777777770FFFFFF000000007777777770F8888F0000
          00007444444440FFFFFF000000007488888880F8888F000000007477777770FF
          FFFF000000007470070070000000000000007477777777774777700000007470
          0700700747777000000074777777777747747000000074444444444447444000
          000074F44F44F44F477470000000744444444444477770000000777777777777
          777770000000}
      end
      object BtnCancelamentos: TBitBtn
        Left = 442
        Top = 2
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object BitBtn15: TBitBtn
        Left = 660
        Top = 2
        Width = 110
        Height = 25
        Caption = 'Gaveta'
        TabOrder = 2
        OnClick = BitBtn15Click
        Glyph.Data = {
          E6010000424DE601000000000000360000002800000010000000090000000100
          180000000000B001000000000000000000000000000000000000C0C0C0948E8E
          7B73737B73737B73737B73737B73737B73737B73737B73737B73737B73737B73
          737B73739F9999C0C0C0A29B9B5E5959B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4
          AFB0B4AFB0B4AFB0B4AFB0B4AFB097C6A5B4AFB05E5959A29B9B7B7373B4AFB0
          D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D87975753DB1
          625F5C5CB4AFB07B73737B7373B4AFB0D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5
          D9D8E5D9D8E5D9D8E5D9D8618E6E0AEA54545151B4AFB07B73737B7373BDB8B9
          D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D879757531C0
          60646563B5B0B17B73737B7373C4BFBFD8D6D5FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9F7D9D9D6D6C6C2C17B7373CECBCBBCB8B8
          B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B5B0
          B1B4AFB0BCB8B8CECBCBC0C0C0E7E6E6D7D5D4C9C6C5E1E0E1EBEBEDEDEDEFED
          EDEFEDEDEFEDEDEFECECEEDFDEDFC9C6C5D7D5D4E7E6E6C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0DDDBDBD4D2D1CFCDCCCFCDCCCFCDCCCFCDCCD6D4D3DDDBDBC0C0
          C0C0C0C0C0C0C0C0C0C0}
      end
      object BtnDevolucao: TBitBtn
        Left = 334
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Caption = 'Devolu'#231#227'o'
        PopupMenu = PMDev
        TabOrder = 3
        OnClick = BtnDevolucaoClick
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B803000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFA59E9C5A555A5A5D637B797BA5A2A5ADA6ADADAAADB5AEB5848284524D
          526B696BD6CBCEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF7B797B6B656BA5A2
          ADCEC3C6D6C7C6F7E3DEDECBBDBDAAA5BDAEA5E7D7D6DEDBDE94929C4A494AAD
          A6ADFFFFFFFFFFFF0000FFFFFF8C8A8C8C8A8CADA6ADB5A29CC6B2A5C6B2ADAD
          9A8C394D5A184D6B1838526B615AC6B2ADE7DFDEC6BAC64A494AB5AEADFFFFFF
          0000C6BEBDA59AA5A59E9C94796B947D6B5A4D396345183930211875AD31A6E7
          2175AD103410424129B5927BD6CBC6BDB6BD424142E7D7D60000B5AEB5A59EA5
          635139946D4A5A4529A57508DE9608735D18298AC631A2DE2986BD2175182149
          088C61399C7552D6CFCE7B798473716B0000BDBAC663514A6B45187B5121634D
          21F7AE21EFA610946D1818699431A2E72175AD297518295510844D217B4D189C
          795AD6D3D63938390000A59A9C5A38106B3C00733C00634518D6A221E7A2106B
          5518216994319EDE297DBD215D292949087341087B41086B3C089C8A73737173
          00008C7D736B38086B3800734108523C18C68E18DE9E08525D52299EDE319EDE
          319ADE296D631845086B38107B4500733C005A28009C928C0000947D73633400
          6B3C006B3C088C6921EFAA10DE9A0852614A299ADE319EDE399EE7317563216D
          085230088449006B3C0063300084757300008475636B38086B38007341109471
          21F7AE18E79E0852614A2192D6298AC6298ACE316D52216D0863380884450073
          3C085A30008C7D7B00007B7173522C006B3C006B3C089C7D39EFAA18D68E088C
          6D294A6D8C4A596B2949392986082179105230087B45086B38005A3408847D7B
          0000B5B2BD4228106B3800734108BDA284B59E845A49395A3C18BDAAADCEC3CE
          4A4942294D213941106B3C087341006B3C08948A845A555A0000E7E3EF5A514A
          5A30006B38007B5129A59EADB5AABD393831B5A294D6D3DE8479847B7184522C
          107B45006B38006B4D29B5B2BD524D520000FFFFFFBDB6BD4A30187B49189C7D
          5AD6CFCEB5AEBD5A514AA5825AE7CFC6D6CFD6847984735D4AA5754A5A30009C
          8E8C7B797BA59A9C0000FFFFFFFFFFFF9C969C634D39BD9E8CD6C7BDA59694B5
          A294D6BEADD6BEADBDAAA5A5968CD6B6A5846D52736563A5A6AD736D73FFFFFF
          0000FFFFFFFFFFFFFFFFFFA59EA563594A8C715ABD9E84D6B6A5D6BAADCEB6A5
          C6AA94AD8E736B51396B6563B5B2BD8C868CFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFC6C3CE736D6B5A45297B55317B55317B5129735129524939948A
          94BDBABDB5AAADFFFFFFFFFFFFFFFFFF0000}
      end
    end
    object CBFILTRO: TComboBox
      Left = 8
      Top = 80
      Width = 97
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      Text = 'TODAS'
      OnClick = CBFILTROClick
      OnExit = CBORDEMExit
      OnSelect = CBORDEMExit
      Items.Strings = (
        'TODAS'
        'ABERTAS'
        'FECHADAS'
        'TERMINADAS'
        'FINALIZADO'
        'AGENDADO')
    end
    object CBORDEM: TComboBox
      Left = 112
      Top = 80
      Width = 97
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      Text = 'DATA'
      OnClick = CBORDEMClick
      OnExit = CBORDEMExit
      OnSelect = CBORDEMExit
      Items.Strings = (
        'CADASTRO'
        'N'#218'MERO'
        'CLIENTE'
        'DATA'
        'BOX')
    end
    object BtnSelecionaOrdem: TBitBtn
      Left = 668
      Top = 108
      Width = 108
      Height = 23
      Caption = 'Selecionar - F9'
      TabOrder = 9
      Visible = False
      OnClick = BtnSelecionaOrdemClick
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
  inherited PCadastro: TPanel [3]
    Width = 782
    Height = 495
    object PLocacao: TPanel [0]
      Left = 3
      Top = 33
      Width = 779
      Height = 458
      Color = 16772332
      TabOrder = 1
      TabStop = True
      object Label66: TLabel
        Left = 12
        Top = 40
        Width = 35
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LUZOPEN: TShape
        Left = 225
        Top = 52
        Width = 23
        Height = 23
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object Label67: TLabel
        Left = 12
        Top = 4
        Width = 57
        Height = 14
        Caption = 'Data Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label68: TLabel
        Left = 98
        Top = 4
        Width = 58
        Height = 14
        Caption = 'Hora Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 521
        Top = 40
        Width = 104
        Height = 14
        Caption = 'Forma de Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LUZMINUS: TShape
        Left = 754
        Top = 53
        Width = 20
        Height = 24
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object Shape2: TShape
        Left = 734
        Top = 53
        Width = 20
        Height = 24
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object PHoras: TPanel
        Left = 134
        Top = 259
        Width = 517
        Height = 125
        Color = 16772332
        TabOrder = 11
        Visible = False
        object BtnUpLogoff: TSpeedButton
          Left = 490
          Top = 1
          Width = 25
          Height = 25
          Hint = 'Fechar'
          Flat = True
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000018000000170000000100
            1800000000007806000000000000000000000000000000000000DEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDE
            BAB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEBEB5DEBEB5DEC7C6E7CBC6E7CB
            C6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7
            FFF3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBAADD6BAB5EF
            E3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5
            D6B2ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3
            B5D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FF
            F7F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFF7D3C6DEB6ADE7D3CEFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
            FFA53C00A53C00FFFBFFFFF7F7F7F3EFE7CBC6D6B6ADE7C7BDDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFF7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00
            A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3
            BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7BDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
            F7EBE7DEBAB5E7C3B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFC7BDE7CB
            C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFEFCBBDE7CBC6FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
            FFA53C00A53C00FFFFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00
            A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCB
            BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBEB5F7EBEFFFFFFFFF
            FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E7D3CEDEB6ADEFCBC6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3C6DEBA
            B5E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFEFCBBDDEBAB5EFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDEB6ADF7CFC6DEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDDE
            BAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEFEFE3DEE7CBC6D6B2ADDEBAB5EFCFC6
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EF
            C7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
          ParentShowHint = False
          ShowHint = True
          OnClick = BtnUpLogoffClick
        end
        object GBHoras: TGroupBox
          Left = 6
          Top = 3
          Width = 481
          Height = 115
          Caption = 'Detalhamento de Hor'#225'rios Equip. '
          TabOrder = 0
          Visible = False
          object Label84: TLabel
            Left = 9
            Top = 26
            Width = 41
            Height = 15
            Caption = 'Hr. M'#237'n.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label76: TLabel
            Left = 98
            Top = 26
            Width = 60
            Height = 15
            Caption = 'Hrs. Norm.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label78: TLabel
            Left = 191
            Top = 26
            Width = 47
            Height = 15
            Caption = 'Hrs. Ext.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label81: TLabel
            Left = 278
            Top = 26
            Width = 81
            Height = 15
            Caption = 'Vlr. Hrs. Norm.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label82: TLabel
            Left = 396
            Top = 26
            Width = 68
            Height = 15
            Caption = 'Vlr. Hrs. Ext.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label110: TLabel
            Left = 9
            Top = 73
            Width = 97
            Height = 15
            Caption = 'Valor Hr. Normal: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label111: TLabel
            Left = 9
            Top = 91
            Width = 86
            Height = 15
            Caption = 'Valor Hr. Extra: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LVlrNormal: TLabel
            Left = 113
            Top = 73
            Width = 43
            Height = 15
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object LVlrExtra: TLabel
            Left = 102
            Top = 91
            Width = 43
            Height = 15
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EDHrMin: TMaskEdit
            Left = 9
            Top = 43
            Width = 57
            Height = 19
            Ctl3D = False
            EditMask = '00:00:00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  :  :  '
          end
          object EDHNormais: TMaskEdit
            Left = 98
            Top = 43
            Width = 57
            Height = 19
            Ctl3D = False
            EditMask = '00:00:00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '  :  :  '
          end
          object EDHExtras: TMaskEdit
            Left = 191
            Top = 43
            Width = 57
            Height = 19
            Ctl3D = False
            EditMask = '00:00:00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '  :  :  '
          end
          object EDVlrNormal: TColorEditFloat
            Left = 278
            Top = 43
            Width = 61
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDVlrExtra: TColorEditFloat
            Left = 396
            Top = 43
            Width = 61
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object PHorasAju: TPanel
        Left = 140
        Top = 101
        Width = 463
        Height = 86
        Color = 16772332
        TabOrder = 12
        Visible = False
        object SpeedButton2: TSpeedButton
          Left = 436
          Top = 2
          Width = 25
          Height = 25
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000018000000170000000100
            18000000000078060000C40E0000C40E00000000000000000000DEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDE
            BAB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEBEB5DEBEB5DEC7C6E7CBC6E7CB
            C6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7
            FFF3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBAADD6BAB5EF
            E3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5
            D6B2ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3
            B5D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FF
            F7F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFF7D3C6DEB6ADE7D3CEFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
            FFA53C00A53C00FFFBFFFFF7F7F7F3EFE7CBC6D6B6ADE7C7BDDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFF7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00
            A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3
            BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7BDFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
            F7EBE7DEBAB5E7C3B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFC7BDE7CB
            C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFEFCBBDE7CBC6FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
            FFA53C00A53C00FFFFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00
            A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCB
            BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBEB5F7EBEFFFFFFFFF
            FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E7D3CEDEB6ADEFCBC6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3C6DEBA
            B5E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFEFCBBDDEBAB5EFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDEB6ADF7CFC6DEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDDE
            BAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEFEFE3DEE7CBC6D6B2ADDEBAB5EFCFC6
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EF
            C7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
            EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
            EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
            DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
          OnClick = SpeedButton2Click
        end
        object GroupBox8: TGroupBox
          Left = 6
          Top = 3
          Width = 427
          Height = 75
          Caption = 'Detalhamento de Hor'#225'rios Ajud. '
          TabOrder = 0
          object Label104: TLabel
            Left = 16
            Top = 22
            Width = 60
            Height = 15
            Caption = 'Hrs. Norm.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label105: TLabel
            Left = 115
            Top = 22
            Width = 47
            Height = 15
            Caption = 'Hrs. Ext.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label106: TLabel
            Left = 213
            Top = 22
            Width = 81
            Height = 15
            Caption = 'Vlr. Hrs. Norm.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label107: TLabel
            Left = 326
            Top = 22
            Width = 68
            Height = 15
            Caption = 'Vlr. Hrs. Ext.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdHrNorm: TMaskEdit
            Left = 17
            Top = 39
            Width = 57
            Height = 19
            Ctl3D = False
            EditMask = '00:00:00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  :  :  '
          end
          object EdHrExt: TMaskEdit
            Left = 115
            Top = 39
            Width = 57
            Height = 19
            Ctl3D = False
            EditMask = '00:00:00;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 8
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '  :  :  '
          end
          object EdValorNorm: TColorEditFloat
            Left = 212
            Top = 39
            Width = 61
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdValorExt: TColorEditFloat
            Left = 325
            Top = 39
            Width = 61
            Height = 19
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object EDCodigoCli: TFlatEdit
        Left = 11
        Top = 54
        Width = 39
        Height = 20
        Hint = 
          'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
          '>'
        ColorBorder = clSkyBlue
        ColorFlat = clInactiveCaptionText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = FrmClienteEDCodigoKeyDown
      end
      object EdDescricaoCli: TFlatEdit
        Left = 50
        Top = 54
        Width = 176
        Height = 20
        ColorBorder = clSkyBlue
        ColorFlat = 16775666
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object BTNOPEN: TBitBtn
        Left = 227
        Top = 54
        Width = 20
        Height = 19
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = FrmClienteBTNOPENClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EDCodPag: TFlatEdit
        Left = 521
        Top = 54
        Width = 37
        Height = 20
        Hint = 
          'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
          '>'
        ColorBorder = clSkyBlue
        ColorFlat = clInactiveCaptionText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyDown = FrmFormPag1EDCodigoKeyDown
      end
      object EDDescPag: TFlatEdit
        Left = 558
        Top = 54
        Width = 176
        Height = 20
        ColorBorder = clSkyBlue
        ColorFlat = 16318450
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object EDDataIni: TMaskEdit
        Left = 11
        Top = 18
        Width = 73
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '  /  /    '
      end
      object EDHAbert: TMaskEdit
        Left = 98
        Top = 18
        Width = 52
        Height = 19
        Ctl3D = False
        EditMask = '!90:00:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '  :  :  '
      end
      object GroupBox4: TGroupBox
        Left = 2
        Top = 77
        Width = 775
        Height = 381
        TabOrder = 6
        object Label83: TLabel
          Left = 99
          Top = 332
          Width = 68
          Height = 15
          Caption = 'Tot. KM (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label70: TLabel
          Left = 298
          Top = 332
          Width = 74
          Height = 15
          Caption = 'Tot. Serv. (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label85: TLabel
          Left = 13
          Top = 332
          Width = 65
          Height = 15
          Caption = 'Desc. % KM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label87: TLabel
          Left = 212
          Top = 332
          Width = 71
          Height = 15
          Caption = 'Desc. % Serv.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label88: TLabel
          Left = 688
          Top = 332
          Width = 40
          Height = 15
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label89: TLabel
          Left = 599
          Top = 332
          Width = 72
          Height = 15
          Caption = 'Desc. % Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label103: TLabel
          Left = 491
          Top = 332
          Width = 75
          Height = 15
          Caption = 'Tot. Ajud. (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label108: TLabel
          Left = 399
          Top = 332
          Width = 72
          Height = 15
          Caption = 'Desc. % Ajud.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object PCVeiculo: TPageControl
          Left = 3
          Top = 10
          Width = 768
          Height = 316
          ActivePage = TSAjudante
          TabOrder = 0
          TabStop = False
          object TabSheet3: TTabSheet
            Caption = 'Ve'#237'culo'
            object Label98: TLabel
              Left = 5
              Top = 2
              Width = 38
              Height = 15
              Caption = 'Placa -'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label99: TLabel
              Left = 62
              Top = 2
              Width = 42
              Height = 15
              Caption = 'Ve'#237'culo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Shape8: TShape
              Left = 223
              Top = 15
              Width = 25
              Height = 24
              Brush.Color = clGradientActiveCaption
              Pen.Color = clGradientActiveCaption
              Shape = stRoundRect
              Visible = False
            end
            object BtnExcluir: TBitBtn
              Left = 676
              Top = 164
              Width = 80
              Height = 25
              Caption = 'Excluir'
              TabOrder = 6
              OnClick = BtnExcluirClick
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077770000077770007777066607777000777706660777
                7000777706660777700070000666000070007706666666077000777066666077
                7000777706660777700077777060777770007777770777777000777777777777
                7000}
            end
            object BitBtn5: TBitBtn
              Left = 595
              Top = 164
              Width = 80
              Height = 25
              Caption = 'Inserir'
              TabOrder = 5
              OnClick = BtnInserirClick
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077777707777770007777706077777000777706660777
                7000777066666077700077066666660770007000066600007000777706660777
                7000777706660777700077770666077770007777000007777000777777777777
                7000}
            end
            object DBGrid5: TDBGrid
              Left = 1
              Top = 191
              Width = 757
              Height = 96
              DataSource = DMServ.DSAlx2
              Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              TabOrder = 9
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnKeyDown = DBGrid5KeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'EQUIPAMENTO'
                  Title.Caption = 'Equipamento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERVICO'
                  Title.Caption = 'Servi'#231'o'
                  Width = 274
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Title.Caption = 'Data'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL_FINAL'
                  Title.Caption = 'Total (R$)'
                  Width = 108
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL_EXTRA'
                  Title.Caption = 'Tot. Hrs Extras (R$)'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL_NORMAL'
                  Title.Caption = 'Tot. Hrs. Normais (R$)'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORTOTKM'
                  Title.Caption = 'Tot. Quilometragem (R$)'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DIA_SEMANA'
                  Title.Caption = 'Dia Semana'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Caption = 'Motorista'
                  Width = 314
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME_TABELA'
                  Title.Caption = 'Tabela Pre'#231'o'
                  Width = 228
                  Visible = True
                end>
            end
            object CBPrecoTabela: TCheckBox
              Left = 468
              Top = 71
              Width = 291
              Height = 16
              Caption = 'Utilizar valores da Tabela de Pre'#231'o para Servi'#231'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = CBPrecoTabelaClick
            end
            object EdPlaca: TMaskEdit
              Left = 6
              Top = 18
              Width = 55
              Height = 19
              Color = clInactiveCaptionText
              Ctl3D = False
              EditMask = 'AAA-0000;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 8
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '   -    '
              OnExit = EDPlacaExit
            end
            object EdEquip: TFlatEdit
              Left = 61
              Top = 18
              Width = 162
              Height = 20
              TabStop = False
              ColorBorder = clSkyBlue
              ColorFlat = 16318450
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object BitBtn7: TBitBtn
              Left = 226
              Top = 18
              Width = 20
              Height = 19
              Hint = 'Pressione para selecionar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = FrmEquipamentoBTNOPENClick
              Glyph.Data = {
                B6000000424DB60000000000000036000000280000000A000000040000000100
                18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
            end
            object CBPrecoKm: TCheckBox
              Left = 468
              Top = 51
              Width = 331
              Height = 18
              Caption = 'Utilizar valores da Tabela de Pre'#231'o para Quilometragem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = CBPrecoKmClick
            end
            object GroupBox7: TGroupBox
              Left = 6
              Top = 46
              Width = 451
              Height = 60
              Caption = 'Quilometragem '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              TabStop = True
              object Label93: TLabel
                Left = 356
                Top = 16
                Width = 75
                Height = 15
                Caption = 'Total (R$) Km'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LValor: TLabel
                Left = 258
                Top = 16
                Width = 82
                Height = 15
                Caption = 'Vlr. Normal Km'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label95: TLabel
                Left = 174
                Top = 16
                Width = 49
                Height = 15
                Caption = 'Total Km'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label96: TLabel
                Left = 91
                Top = 16
                Width = 49
                Height = 15
                Caption = 'Km Final'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label97: TLabel
                Left = 10
                Top = 16
                Width = 54
                Height = 15
                Caption = 'Km Inicial'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object EDKMIni: TEdit
                Left = 10
                Top = 31
                Width = 61
                Height = 19
                Color = 14348751
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
              end
              object EDKMFinal: TEdit
                Left = 92
                Top = 31
                Width = 61
                Height = 19
                Color = 14348751
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                OnExit = EDKMFinalExit
              end
              object EdFinancKm: TColorEditFloat
                Left = 356
                Top = 31
                Width = 61
                Height = 19
                Color = 14348751
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EdKmTotal: TColorMaskEdit
                Left = 174
                Top = 31
                Width = 61
                Height = 19
                Color = 14348751
                Ctl3D = False
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EdVlrKm: TColorEditFloat
                Left = 258
                Top = 31
                Width = 61
                Height = 19
                Color = 14348751
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                Text = '0,00'
                OnExit = EdVlrKmExit
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            inline FrmMotorista: TFrmBusca
              Left = 265
              Top = 3
              Width = 282
              Height = 40
              Color = 16772332
              ParentColor = False
              TabOrder = 2
              TabStop = True
              inherited LTextoBusca: TLabel
                Top = -2
                Width = 54
                Caption = 'Motorista'
                Font.Name = 'Arial'
              end
              inherited LUZOPEN: TShape
                Left = 227
              end
              inherited LUZMINUS: TShape
                Left = 245
              end
              inherited EdDescricao: TFlatEdit
                Left = 57
                Width = 170
                TabStop = False
              end
              inherited BTNOPEN: TBitBtn
                Left = 229
                Width = 20
                OnClick = FrmBusca1BTNOPENClick
              end
              inherited BTNMINUS: TBitBtn
                Left = 248
                OnClick = FrmMotoristaBTNMINUSClick
              end
              inherited EDCodigo: TFlatEdit
                Width = 55
                ColorBorder = clBlack
                OnKeyDown = FrmMotoristaEDCodigoKeyDown
              end
            end
            object GBServico: TGroupBox
              Left = 6
              Top = 107
              Width = 583
              Height = 83
              Caption = 'Servi'#231'o '
              TabOrder = 4
              TabStop = True
              object BtnDownLogoff: TSpeedButton
                Left = 551
                Top = 31
                Width = 25
                Height = 25
                Hint = 'Verificar detalhadamente os hor'#225'rios'
                Flat = True
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000018000000170000000100
                  1800000000007806000000000000000000000000000000000000DEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7
                  C3BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFEFCFC6DEBAB5D6B2ADE7CBC6EFE3DEF7EBEFF7EF
                  EFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEB6ADDEC3BDF7
                  F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE
                  DEBAB5EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3CEE7C3
                  B5D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFEFCBC6DEB6ADE7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                  00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7EBEFDEBEB5F7CFC6DEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFEFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
                  A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCB
                  BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBAB5F7EFEFFFFBFFFF
                  FFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                  FFFFFFE7CBC6EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBA
                  B5F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFE7C3B5DEBAB5F7EBE7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                  00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC7BDEFCBBDDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFE7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFF
                  A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CF
                  C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C7BDD6B6ADE7CBC6F7F3EFFF
                  F7F7FFFBFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                  E7D3CEDEB6ADF7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEBA
                  ADD6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFE7BEB5D6B2ADDEBAB5EFDBD6F7F3EFFFF3EFFFF7F7FFFBF7FFFB
                  F7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DEBAADF7CFC6DEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7
                  F7EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5DE
                  B6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6DEC7C6DEBEB5DEBEB5DEB6ADDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
                ParentShowHint = False
                ShowHint = True
                OnClick = BtnDownLogoffClick
              end
              object Label69: TLabel
                Left = 216
                Top = 16
                Width = 90
                Height = 15
                Caption = 'Hor'#225'rio Matutino'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label77: TLabel
                Left = 94
                Top = 18
                Width = 26
                Height = 15
                Caption = 'Data'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label79: TLabel
                Left = 253
                Top = 36
                Width = 14
                Height = 15
                Caption = #224's'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label75: TLabel
                Left = 384
                Top = 37
                Width = 14
                Height = 15
                Caption = #224's'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label80: TLabel
                Left = 339
                Top = 17
                Width = 102
                Height = 15
                Caption = 'Hor'#225'rio Vespertino'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label86: TLabel
                Left = 468
                Top = 17
                Width = 68
                Height = 15
                Caption = 'Total R$ Hrs'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LVlrTitulo: TLabel
                Left = 8
                Top = 15
                Width = 64
                Height = 15
                Caption = 'Valor Norm.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object LDiaSemana: TLabel
                Left = 94
                Top = 62
                Width = 85
                Height = 15
                Caption = 'Dia da Semana'
                Color = 16772332
                Font.Charset = ANSI_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object EDData: TMaskEdit
                Left = 93
                Top = 33
                Width = 79
                Height = 19
                Color = 13500155
                Ctl3D = False
                EditMask = '00/00/0000;1;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 10
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                Text = '  /  /    '
                OnExit = EDDataExit
              end
              object HMatIni: TMaskEdit
                Left = 207
                Top = 33
                Width = 40
                Height = 19
                Color = 13500155
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
                TabOrder = 2
                Text = '  :  '
              end
              object HMatFim: TMaskEdit
                Left = 273
                Top = 33
                Width = 40
                Height = 19
                Color = 13500155
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
                OnExit = HMatFimExit
              end
              object HVespIni: TMaskEdit
                Left = 340
                Top = 34
                Width = 38
                Height = 19
                Color = 13500155
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
                TabOrder = 4
                Text = '  :  '
              end
              object HVespFim: TMaskEdit
                Left = 403
                Top = 34
                Width = 38
                Height = 19
                Color = 13500155
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
                TabOrder = 5
                Text = '  :  '
                OnExit = HVespFimExit
              end
              object EDVlrTotalHrs: TColorEditFloat
                Left = 450
                Top = 34
                Width = 80
                Height = 19
                Color = 13500155
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDValor: TColorEditFloat
                Left = 8
                Top = 32
                Width = 67
                Height = 19
                Color = 13500155
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnExit = EDValorExit
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
          end
          object TSAjudante: TTabSheet
            Caption = 'Ajudante'
            ImageIndex = 1
            object BitBtn12: TBitBtn
              Left = 640
              Top = 231
              Width = 80
              Height = 25
              Caption = 'Excluir'
              TabOrder = 3
              OnClick = BitBtn12Click
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077770000077770007777066607777000777706660777
                7000777706660777700070000666000070007706666666077000777066666077
                7000777706660777700077777060777770007777770777777000777777777777
                7000}
            end
            object BitBtn11: TBitBtn
              Left = 639
              Top = 197
              Width = 80
              Height = 25
              Caption = 'Inserir'
              TabOrder = 2
              OnClick = BitBtn11Click
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077777707777770007777706077777000777706660777
                7000777066666077700077066666660770007000066600007000777706660777
                7000777706660777700077770666077770007777000007777000777777777777
                7000}
            end
            object BtnFunc: TBitBtn
              Left = 626
              Top = 38
              Width = 99
              Height = 25
              Cursor = crHandPoint
              Hint = 'Selecionar funcion'#225'rios'
              Caption = 'Funcion'#225'rios'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BtnFuncClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000001000000220003004F0111
                0172011C018801200195012001960018008B0007006800000017000000000000
                000000000000000000000000000000010018042F04A0196C19EE2A902AFF1B80
                1AFF36A436FF3FB23FFF33AB33FF23A023FF0F850FFF001F008C000000000000
                0000000000000000000000000000073E078B35B535FF53CC53FF53C254FF90C0
                7FFF66B75FFF60CD61FF56C756FF42BE42FF29B829FF033B039A000000000000
                0000000000000F0900335426079D43721BEF4AC64FFF6AD16AFF5AB55AFFE4ED
                DEFFBED9B9FF5AB95BFF6FD36FFF57C857FF30AA30FF001D0058000000000000
                00003E250268AD5718F2CD562BFF6A6721FF4AC254FF7DDF80FF71BB70FFF1F4
                E9FFFFFFF8FF98BE81FF6DCC67FF62D262FF145C14B10000000300000000402A
                085CBB5A11FDAB400EFFA83703FF6A4B08FF258222FF68BF60FF73B264FF94AD
                B0FF679EC1FF739EB0FF429149FF1A5D15AA000500110000000013110719A95C
                15DEA93E01FFAB4500FFBD4C00FF7B5B01FF046700FF585C00FF296F71FF1582
                DDFF1684E3FF1A86E5FF1370ADFF0011167E00000000000000005C421C69BE58
                0DFFB64F00FFC65D00FFD36500FF457800FF007F00FF177131FF2F8CECFF369E
                FFFF379DFFFF369CFFFF339EFFFF125F99F1000000330000000094652DA7C35B
                04FFCE6300FFE07000FFC37D00FF488C00FF568700FF598178FF35A4FFFF42A8
                FFFF43A9FFFF42A8FFFF41A8FFFF3098EEFF011E2D8500000000AF7D3BBFD063
                00FFD37500FF68930AFF6C9C0CFFAE9C0AFFEF9000FF678E99FF42B1FFFF4FB5
                FFFF50B6FFFF4EB4FFFF4AB0FFFF43AFFFFF0D4365B800000000A77D41ABE873
                02FF79920FFF07B431FF23B83FFF88BB42FFFFB53AFF6C9CA4FF4FBDFFFF54BA
                FBFF57BEFDFF5AC1FFFF57BEFFFF4DBAFFFF12527BC60000000578634070E58D
                16FF46A92AFF21C557FF47D06DFF48D373FFBEDD7DFF8BA9A4FF2591D3FF3091
                C5FF3997CFFF379ADFFF399EE6FF2993D4FF033D5BAC000000002E241F1D8DB2
                52E518C147FF3ED475FFB0E597FFB6EFB3FFDAFBC1FF95BF8BFF197AAEFF55A8
                DBFF78BADFFF8CC0DEFF5AA2CCFF1F7FB1FF001F2F5E00000000000000005769
                4C6171CC62FF6DCE68FFB5E89EFFDEF6BDFFDFF2B3FF54D36EFF159872FF509F
                CBFF91CCF2FF8ECAECFF4BA2D2FF0A48679C0000000300000000000000000000
                00009D9B7267C2E182F3B5D272FFBADD88FF87DB82FF2ACC62FF2ABA35FFA792
                34FF747F71D11D64898703283B49000000030000000000000000000000000000
                000000000000FFFFD12AECE9A090CBDC86CFAFD271E9A4C255E27CA040BC7252
                136E1B0F040F0000000000000000000000000000000000000000}
            end
            object DBFunc: TDBGrid
              Left = 16
              Top = 195
              Width = 590
              Height = 92
              DataSource = DMPESSOA.DSAux3
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnKeyDown = DBFuncKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Title.Caption = 'Data'
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Caption = 'Funcion'#225'rio'
                  Width = 213
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORTOTHRS'
                  Title.Caption = 'Valor Total'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HRS_NORMAIS'
                  Title.Caption = 'Hrs. Normais'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HRS_EXTRAS'
                  Title.Caption = 'Hrs. Extras'
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL_NORMAL'
                  Title.Caption = 'Tot. Hrs. Normais'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL_EXTRA'
                  Title.Caption = 'Tot. Hrs. Extras'
                  Visible = True
                end>
            end
            object MFunc: TMemo
              Left = 16
              Top = 8
              Width = 590
              Height = 89
              Lines.Strings = (
                'MFunc')
              ReadOnly = True
              TabOrder = 5
            end
            object GroupBox6: TGroupBox
              Left = 16
              Top = 100
              Width = 704
              Height = 89
              Caption = 'Hor'#225'rios Ajudante '
              TabOrder = 1
              object Label90: TLabel
                Left = 124
                Top = 20
                Width = 60
                Height = 15
                Caption = 'Vlr. Normal'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label91: TLabel
                Left = 210
                Top = 20
                Width = 46
                Height = 15
                Caption = 'Vlr. Extra'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label92: TLabel
                Left = 323
                Top = 20
                Width = 90
                Height = 15
                Caption = 'Hor'#225'rio Matutino'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label94: TLabel
                Left = 360
                Top = 39
                Width = 14
                Height = 15
                Caption = #224's'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label100: TLabel
                Left = 446
                Top = 20
                Width = 102
                Height = 15
                Caption = 'Hor'#225'rio Vespertino'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label101: TLabel
                Left = 491
                Top = 39
                Width = 14
                Height = 15
                Caption = #224's'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label102: TLabel
                Left = 589
                Top = 20
                Width = 68
                Height = 15
                Caption = 'Total R$ Hrs'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object SpeedButton1: TSpeedButton
                Left = 671
                Top = 31
                Width = 25
                Height = 25
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000018000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000DEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7
                  C3BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFEFCFC6DEBAB5D6B2ADE7CBC6EFE3DEF7EBEFF7EF
                  EFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEB6ADDEC3BDF7
                  F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE
                  DEBAB5EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3CEE7C3
                  B5D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFEFCBC6DEB6ADE7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                  00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7EBEFDEBEB5F7CFC6DEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFEFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
                  A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCB
                  BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBAB5F7EFEFFFFBFFFF
                  FFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                  FFFFFFE7CBC6EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBA
                  B5F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFE7C3B5DEBAB5F7EBE7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                  00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC7BDEFCBBDDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFE7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFF
                  A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CF
                  C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C7BDD6B6ADE7CBC6F7F3EFFF
                  F7F7FFFBFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                  E7D3CEDEB6ADF7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEBA
                  ADD6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFE7BEB5D6B2ADDEBAB5EFDBD6F7F3EFFFF3EFFFF7F7FFFBF7FFFB
                  F7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DEBAADF7CFC6DEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7
                  F7EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5DE
                  B6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6DEC7C6DEBEB5DEBEB5DEB6ADDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                  EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                  EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                  DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
                OnClick = SpeedButton1Click
              end
              object Label109: TLabel
                Left = 15
                Top = 20
                Width = 26
                Height = 15
                Caption = 'Data'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object LDia: TLabel
                Left = 17
                Top = 62
                Width = 85
                Height = 15
                Caption = 'Dia da Semana'
                Color = 16772332
                Font.Charset = ANSI_CHARSET
                Font.Color = cl3DDkShadow
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object EdValorNormal: TColorEditFloat
                Left = 124
                Top = 36
                Width = 67
                Height = 22
                Color = 10485189
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EdValorExtra: TColorEditFloat
                Left = 210
                Top = 36
                Width = 67
                Height = 22
                Color = 10485189
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EdHMatIni: TMaskEdit
                Left = 314
                Top = 36
                Width = 40
                Height = 22
                Color = 10485189
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
              end
              object EdHMatFim: TMaskEdit
                Left = 380
                Top = 36
                Width = 40
                Height = 22
                Color = 10485189
                Ctl3D = False
                EditMask = '00:00;1;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                Text = '  :  '
                OnExit = EdHMatFimExit
              end
              object EdHVespIni: TMaskEdit
                Left = 447
                Top = 36
                Width = 38
                Height = 22
                Color = 10485189
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
                TabOrder = 5
                Text = '  :  '
              end
              object EdHVespFim: TMaskEdit
                Left = 509
                Top = 36
                Width = 38
                Height = 22
                Color = 10485189
                Ctl3D = False
                EditMask = '00:00;1;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                Text = '  :  '
                OnExit = EdHVespFimExit
              end
              object EdVlrTot: TColorEditFloat
                Left = 578
                Top = 36
                Width = 80
                Height = 22
                Color = 10485189
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EdDate: TMaskEdit
                Left = 16
                Top = 36
                Width = 79
                Height = 22
                Color = 10485189
                Ctl3D = False
                EditMask = '00/00/0000;1;_'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 10
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '  /  /    '
                OnExit = EdDateExit
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Observa'#231#227'o'
            ImageIndex = 2
            object MObservacao: TMemo
              Left = 27
              Top = 15
              Width = 699
              Height = 114
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object EdTotKm: TColorEditFloat
          Left = 98
          Top = 348
          Width = 78
          Height = 24
          Color = 14348751
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnExit = EdTotKmExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotServ: TColorEditFloat
          Left = 297
          Top = 348
          Width = 78
          Height = 24
          Color = 13500155
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = '0,00'
          OnExit = EdTotServExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdDescKm: TColorEditFloat
          Left = 12
          Top = 348
          Width = 78
          Height = 24
          Color = 14348751
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0,00'
          OnExit = EdDescKmExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdDescServico: TColorEditFloat
          Left = 211
          Top = 348
          Width = 78
          Height = 24
          Color = 13500155
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          OnExit = EdDescServicoExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotOrd: TColorEditFloat
          Left = 688
          Top = 348
          Width = 80
          Height = 21
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
        object EdDescontoTot: TColorEditFloat
          Left = 598
          Top = 348
          Width = 80
          Height = 21
          Color = clInactiveCaptionText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
        object EdDescAjud: TColorEditFloat
          Left = 400
          Top = 348
          Width = 78
          Height = 24
          Color = 10485189
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '0,00'
          OnExit = EdDescAjudExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotAjud: TColorEditFloat
          Left = 490
          Top = 348
          Width = 78
          Height = 24
          Color = 10485189
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '0,00'
          OnExit = EdTotAjudExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      inline FrmTabela: TFrmBusca
        Left = 253
        Top = 39
        Width = 264
        Height = 37
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 4
          Width = 80
          Height = 14
          Caption = 'Tabela de Pre'#231'o:'
          Font.Height = -11
          Font.Name = 'Arial'
        end
        inherited LUZOPEN: TShape
          Left = 217
        end
        inherited LUZMINUS: TShape
          Left = 235
        end
        inherited EdDescricao: TFlatEdit
          Left = 42
          Width = 176
          Height = 20
        end
        inherited BTNOPEN: TBitBtn
          Left = 219
          OnClick = FrmTabelaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 237
          OnClick = FrmTabelaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Left = 5
          Width = 37
          Height = 20
          OnKeyDown = FrmTabelaEDCodigoKeyDown
        end
      end
      object BitBtn6: TBitBtn
        Left = 735
        Top = 55
        Width = 19
        Height = 19
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = FrmFormPag1BTNOPENClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object BTNMINUS: TBitBtn
        Left = 754
        Top = 55
        Width = 19
        Height = 19
        Hint = 'Pressione para apagar '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = FrmFormPag1BTNMINUSClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
    inherited Panel4: TPanel
      Top = 31
      Width = 779
      Height = 460
      TabOrder = 2
      object LVlrComissao: TLabel
        Left = 658
        Top = 2
        Width = 118
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Comiss'#227'o..: 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object LBox: TLabel
        Left = 549
        Top = 14
        Width = 46
        Height = 16
        Caption = 'Box n'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TCCadastro: TFlatTabControl
        Left = 7
        Top = 97
        Width = 764
        Height = 357
        Tabs.Strings = (
          'Abertura'
          'Produtos e Servi'#231'os'
          'Despesas Adicionais')
        ActiveTab = 1
        TabOrder = 8
        OnTabChanged = TCCadastroTabChanged
        object PDespesas: TPanel
          Left = 2
          Top = 20
          Width = 759
          Height = 335
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 2
          OnEnter = PProdServEnter
          OnExit = PProdServExit
          object Shape13: TShape
            Left = 2
            Top = 4
            Width = 755
            Height = 328
            Brush.Color = 16772332
            Pen.Color = clLightGreen
            Pen.Style = psInsideFrame
            Pen.Width = 2
          end
          object LQTDDESP: TLabel
            Left = 567
            Top = 315
            Width = 172
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object PCabDesp: TPanel
            Left = 16
            Top = 19
            Width = 727
            Height = 89
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 0
            object Shape15: TShape
              Left = 1
              Top = 1
              Width = 725
              Height = 74
              Brush.Color = 16772332
              Pen.Color = clGray
              Pen.Width = 2
            end
            object Label35: TLabel
              Left = 7
              Top = 8
              Width = 150
              Height = 16
              Caption = 'Descri'#231#227'o da despesa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label36: TLabel
              Left = 370
              Top = 8
              Width = 43
              Height = 16
              Caption = 'Qtde.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label37: TLabel
              Left = 419
              Top = 8
              Width = 69
              Height = 16
              Caption = 'Vlr. Custo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label38: TLabel
              Left = 490
              Top = 8
              Width = 85
              Height = 16
              Caption = 'Vlr. Cobrado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label39: TLabel
              Left = 651
              Top = 8
              Width = 64
              Height = 16
              Caption = 'Vlr. Total:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label43: TLabel
              Left = 153
              Top = 55
              Width = 46
              Height = 16
              Caption = 'Marca:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 357
              Top = 55
              Width = 28
              Height = 16
              Caption = 'Un.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 587
              Top = 8
              Width = 43
              Height = 16
              Caption = 'Desc.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object EdDescD: TColorEditFloat
              Left = 7
              Top = 24
              Width = 341
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 40
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdQtdD: TColorEditFloat
              Left = 350
              Top = 24
              Width = 62
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrCustoD: TColorEditFloat
              Left = 414
              Top = 24
              Width = 75
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrCobradoD: TColorEditFloat
              Left = 491
              Top = 24
              Width = 85
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrTotD: TColorEditFloat
              Left = 632
              Top = 24
              Width = 85
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              Text = '0,00'
              OnExit = EdVlrTotDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BitBtn3: TBitBtn
              Left = 577
              Top = 49
              Width = 70
              Height = 21
              Hint = 
                'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                'na lista (ALT + I)'
              Caption = '&Inserir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = BitBtn3Click
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077777707777770007777706077777000777706660777
                7000777066666077700077066666660770007000066600007000777706660777
                7000777706660777700077770666077770007777000007777000777777777777
                7000}
              Layout = blGlyphRight
              Spacing = 10
            end
            object BitBtn4: TBitBtn
              Left = 647
              Top = 49
              Width = 70
              Height = 21
              Hint = 
                'Pressione para remover o produto selecionado na lista da mesma (' +
                'ALT + E)'
              Caption = '&Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = BitBtn4Click
              Glyph.Data = {
                DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                0400000000006800000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7000777777777777700077770000077770007777066607777000777706660777
                7000777706660777700070000666000070007706666666077000777066666077
                7000777706660777700077777060777770007777770777777000777777777777
                7000}
              Layout = blGlyphRight
              Spacing = 10
            end
            object EDMarca: TColorEditFloat
              Left = 200
              Top = 52
              Width = 148
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '0,00'
              OnExit = EdQtdDExit
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdUnidade: TColorEditFloat
              Left = 386
              Top = 52
              Width = 33
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 2
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '00'
              OnExit = EdQtdDExit
              EditType = fltString
              ValueFormat = '##00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdDesconto: TColorEditFloat
              Left = 577
              Top = 24
              Width = 54
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DBGrid3: TDBGrid
            Left = 17
            Top = 98
            Width = 725
            Height = 216
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DDesp
            FixedColor = 11039232
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnKeyDown = DBGrid3KeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'DESPESA'
                Title.Caption = 'Despesa'
                Width = 239
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Caption = 'Un.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtde.'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRREAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Custo'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFINAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Cobrado'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Caption = 'Desc.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTFIN'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCMOE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Luc. ($)'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCPER'
                Title.Alignment = taRightJustify
                Title.Caption = 'Luc. (%)'
                Width = 71
                Visible = True
              end>
          end
        end
        object PAbertura: TPanel
          Left = 2
          Top = 20
          Width = 759
          Height = 334
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 7
            Width = 69
            Height = 16
            Caption = 'Data Abert.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 124
            Top = 7
            Width = 69
            Height = 16
            Caption = 'Hora Abert.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object LTitulo: TLabel
            Left = 12
            Top = 59
            Width = 128
            Height = 16
            Caption = 'Problema Reclamado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 12
            Top = 148
            Width = 127
            Height = 16
            Caption = 'Solu'#231#227'o Apresentada:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 220
            Top = 7
            Width = 63
            Height = 16
            Caption = 'Data Prev.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 314
            Top = 7
            Width = 63
            Height = 16
            Caption = 'Hora Prev.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 220
            Top = 59
            Width = 72
            Height = 16
            Caption = 'Observa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 220
            Top = 148
            Width = 129
            Height = 16
            Caption = 'Local de Atendimento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 221
            Top = 199
            Width = 111
            Height = 16
            Caption = 'Contato no Cliente:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbDiaSemanaAbert: TLabel
            Left = 13
            Top = 44
            Width = 85
            Height = 15
            Caption = 'Dia da Semana'
            Color = 16772332
            Font.Charset = ANSI_CHARSET
            Font.Color = cl3DDkShadow
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lbDiaSemanaPrev: TLabel
            Left = 220
            Top = 45
            Width = 85
            Height = 15
            Caption = 'Dia da Semana'
            Color = 16772332
            Font.Charset = ANSI_CHARSET
            Font.Color = cl3DDkShadow
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Shape3: TShape
            Left = 1
            Top = 4
            Width = 755
            Height = 329
            Brush.Color = 16772332
            Pen.Color = clInactiveCaption
            Pen.Style = psInsideFrame
            Pen.Width = 2
          end
          object Label117: TLabel
            Left = 13
            Top = 9
            Width = 55
            Height = 13
            Caption = 'Abertura:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label118: TLabel
            Left = 224
            Top = 9
            Width = 54
            Height = 13
            Caption = 'Previs'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label121: TLabel
            Left = 14
            Top = 61
            Width = 67
            Height = 13
            Caption = 'PROBLEMA:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label122: TLabel
            Left = 14
            Top = 149
            Width = 62
            Height = 13
            Caption = 'SOLU'#199#195'O:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label123: TLabel
            Left = 222
            Top = 61
            Width = 87
            Height = 13
            Caption = 'OBSERVA'#199#195'O:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label124: TLabel
            Left = 222
            Top = 149
            Width = 77
            Height = 13
            Caption = 'Atendimento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label125: TLabel
            Left = 222
            Top = 197
            Width = 50
            Height = 13
            Caption = 'Contato:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object PAbreInfo: TPanel
            Left = 411
            Top = 13
            Width = 337
            Height = 313
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 12
            object Label23: TLabel
              Left = 40
              Top = 0
              Width = 253
              Height = 13
              Caption = 'Perif'#233'ricos que Acompanham o Equipamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label48: TLabel
              Left = 40
              Top = 16
              Width = 46
              Height = 14
              Caption = 'Mouse:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 192
              Top = 16
              Width = 87
              Height = 14
              Caption = 'Kit Multim'#237'dia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 96
              Top = 16
              Width = 52
              Height = 14
              Caption = 'Teclado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 128
              Top = 56
              Width = 81
              Height = 14
              Caption = 'Cds Recuper.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 288
              Top = 16
              Width = 45
              Height = 14
              Caption = 'Cabos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 223
              Top = 56
              Width = 52
              Height = 14
              Caption = 'Monitor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 40
              Top = 56
              Width = 77
              Height = 14
              Caption = 'Impressora:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 287
              Top = 56
              Width = 43
              Height = 14
              Caption = 'Fones:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 40
              Top = 101
              Width = 135
              Height = 13
              Caption = 'Estado do Equipamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBDescricao: TLabel
              Left = 40
              Top = 249
              Width = 54
              Height = 13
              Caption = 'Backups:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBMouse: TDBComboBox
              Left = 40
              Top = 30
              Width = 44
              Height = 18
              DataField = 'MOUSE'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 0
            end
            object DBKitmm: TDBComboBox
              Left = 192
              Top = 29
              Width = 85
              Height = 18
              DataField = 'KITMM'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 2
            end
            object DBTeclado: TDBComboBox
              Left = 96
              Top = 29
              Width = 85
              Height = 18
              DataField = 'TECLADO'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 1
            end
            object DBCdRecupera: TDBComboBox
              Left = 128
              Top = 69
              Width = 85
              Height = 18
              DataField = 'CDRECUPERA'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 5
            end
            object DBCabos: TDBComboBox
              Left = 288
              Top = 29
              Width = 45
              Height = 18
              DataField = 'CABOS'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 3
            end
            object DBMonitor: TDBComboBox
              Left = 223
              Top = 69
              Width = 53
              Height = 18
              DataField = 'MONITOR'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 6
            end
            object DBimpressora: TDBComboBox
              Left = 40
              Top = 69
              Width = 80
              Height = 18
              DataField = 'IMPRESSORA'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 4
            end
            object DbFones: TDBComboBox
              Left = 287
              Top = 69
              Width = 45
              Height = 18
              DataField = 'FONES'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'SIM'
                'N'#195'O')
              ParentFont = False
              TabOrder = 7
            end
            object DbEstadoEquip: TDBComboBox
              Left = 39
              Top = 117
              Width = 117
              Height = 18
              DataField = 'ESTADOEQUIP'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ItemHeight = 10
              Items.Strings = (
                'Sem controle'
                'Lacrado'
                'Deslacrado')
              ParentFont = False
              TabOrder = 8
              OnExit = DbEstadoEquipExit
            end
            object DBDescBackup: TDBMemo
              Left = 40
              Top = 263
              Width = 291
              Height = 43
              Color = clWhite
              Ctl3D = False
              DataField = 'DESCBACKUP'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
            object RGDados: TGroupBox
              Left = 40
              Top = 149
              Width = 292
              Height = 84
              Caption = 'O que deseja salvar: '
              TabOrder = 10
              object CBDocumentos: TCheckBox
                Left = 10
                Top = 24
                Width = 118
                Height = 17
                Caption = 'Meus Documentos'
                TabOrder = 0
              end
              object CBDesktop: TCheckBox
                Left = 11
                Top = 48
                Width = 110
                Height = 17
                Caption = #193'rea de Trabalho'
                TabOrder = 1
              end
              object CBEmails: TCheckBox
                Left = 144
                Top = 24
                Width = 97
                Height = 17
                Caption = 'E-mails'
                TabOrder = 2
              end
              object CBOutros: TCheckBox
                Left = 144
                Top = 48
                Width = 97
                Height = 17
                Caption = 'Outros'
                TabOrder = 3
              end
            end
          end
          object PAbreMecanica: TPanel
            Left = 411
            Top = 13
            Width = 337
            Height = 313
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 11
            object DBRadioGroup1: TDBRadioGroup
              Left = 3
              Top = 9
              Width = 198
              Height = 82
              Caption = 'N'#237'vel de combust'#237'vel:'
              Columns = 3
              Ctl3D = False
              DataField = 'NIVELCOMP'
              DataSource = DMServ.DOrd
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Items.Strings = (
                'Vazio'
                '1/4'
                '2/4'
                '3/4'
                'Cheio')
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object GBKM: TGroupBox
              Left = 3
              Top = 116
              Width = 286
              Height = 79
              Caption = 'Rodagem Atual:'
              TabOrder = 1
              object Label65: TLabel
                Left = 120
                Top = 14
                Width = 107
                Height = 16
                Caption = 'Unid. de Rodagem'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object EDKM: TEdit
                Left = 23
                Top = 32
                Width = 88
                Height = 21
                TabOrder = 0
                OnExit = EDKMExit
              end
              object CBUnid: TComboBox
                Left = 120
                Top = 32
                Width = 65
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnExit = CBUnidExit
                Items.Strings = (
                  'Km'
                  'Hs')
              end
            end
          end
          object DBDTABERT: TDBColorEdit
            Left = 12
            Top = 23
            Width = 92
            Height = 22
            Color = clWhite
            Ctl3D = False
            DataField = 'DTABERT'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnExit = DBDTABERTExit
            OnKeyPress = DBDTABERTKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBHRABERT: TDBColorEdit
            Left = 106
            Top = 23
            Width = 92
            Height = 22
            Color = clWhite
            Ctl3D = False
            DataField = 'HRABERT'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = DBHRABERTKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBPROBREC: TDBMemo
            Left = 12
            Top = 75
            Width = 202
            Height = 70
            Color = 15597546
            Ctl3D = False
            DataField = 'PROBREC'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBSOLU: TDBMemo
            Left = 12
            Top = 164
            Width = 201
            Height = 70
            Color = 15597546
            Ctl3D = False
            DataField = 'SOLUCAO'
            DataSource = DMServ.DOrd
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBDTPREV: TDBColorEdit
            Left = 222
            Top = 23
            Width = 89
            Height = 22
            Color = 15659005
            Ctl3D = False
            DataField = 'DTPREV'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            OnExit = DBDTPREVExit
            OnKeyPress = DBDTPREVKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBHRPREV: TDBColorEdit
            Left = 314
            Top = 23
            Width = 89
            Height = 22
            Color = 15659005
            Ctl3D = False
            DataField = 'HRPREV'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            OnKeyPress = DBHRPREVKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBOBS: TDBMemo
            Left = 220
            Top = 75
            Width = 183
            Height = 70
            Color = 16646143
            Ctl3D = False
            DataField = 'OBSERVACAO'
            DataSource = DMServ.DOrd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object RGSituacao: TRadioGroup
            Left = 12
            Top = 240
            Width = 201
            Height = 55
            Caption = 'Situa'#231#227'o da Ordem'
            Columns = 2
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Aberto'
              'Agendado'
              'Finalizado'
              'Terminado')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            OnClick = RGSituacaoClick
          end
          object PMotParada: TPanel
            Left = 10
            Top = 296
            Width = 204
            Height = 35
            BevelOuter = bvNone
            Color = 16772332
            Enabled = False
            TabOrder = 10
            Visible = False
            object Label10: TLabel
              Left = 4
              Top = -1
              Width = 100
              Height = 16
              Caption = 'Dt Agendamento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBMMotParada: TDBMemo
              Left = 184
              Top = 24
              Width = 19
              Height = 9
              Color = 16646143
              Ctl3D = False
              DataField = 'MOTIVOPARADA'
              DataSource = DMServ.DOrd
              ParentCtl3D = False
              TabOrder = 0
              Visible = False
            end
            object edDtAgendamento: TColorMaskEdit
              Left = 4
              Top = 13
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
              TabOrder = 1
              Text = '  /  /    '
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DBLOCALAT: TDBComboBox
            Left = 220
            Top = 164
            Width = 182
            Height = 24
            Ctl3D = False
            DataField = 'LOCALAT'
            DataSource = DMServ.DOrd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'BALC'#195'O'
              'EXTERNO'
              'EXTERNO PG')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            OnExit = DBLOCALATExit
            OnKeyPress = DBLOCALATKeyPress
          end
          object DBContato: TDBEdit
            Left = 221
            Top = 212
            Width = 179
            Height = 21
            DataField = 'CONTATO'
            DataSource = DMServ.DOrd
            TabOrder = 9
          end
        end
        object PProdServ: TPanel
          Left = 1
          Top = 20
          Width = 759
          Height = 333
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 1
          OnEnter = PProdServEnter
          OnExit = PProdServExit
          object Shape5: TShape
            Left = 10
            Top = 0
            Width = 755
            Height = 334
            Brush.Color = 16772332
            Pen.Color = clLightGreen
            Pen.Style = psInsideFrame
            Pen.Width = 2
          end
          object Label31: TLabel
            Left = 211
            Top = 292
            Width = 67
            Height = 16
            Caption = 'Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 380
            Top = 292
            Width = 66
            Height = 16
            Caption = 'Servi'#231'os:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 698
            Top = 292
            Width = 54
            Height = 16
            Caption = 'TOTAL:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 471
            Top = 292
            Width = 76
            Height = 16
            Caption = 'Despesas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label40: TLabel
            Left = 564
            Top = 292
            Width = 60
            Height = 16
            Caption = 'Desc(%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 286
            Top = 292
            Width = 60
            Height = 16
            Caption = 'Desc(%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 118
            Top = 292
            Width = 60
            Height = 16
            Caption = 'Desc(%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object PCProdServ: TPageControl
            Left = 6
            Top = 3
            Width = 748
            Height = 287
            ActivePage = TabSheet1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Images = ImageList1
            MultiLine = True
            ParentFont = False
            TabOrder = 0
            TabPosition = tpBottom
            OnChange = PCProdServChange
            object TabSheet1: TTabSheet
              Caption = '&PRODUTOS'
              object Shape6: TShape
                Left = 5
                Top = 0
                Width = 730
                Height = 249
                Brush.Color = 15329769
                Pen.Color = clMaroon
              end
              object LQTDPROD: TLabel
                Left = 548
                Top = 249
                Width = 172
                Height = 16
                Hint = 'Informa a quantidade total de itens inseridos neste pedido'
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LOCAL:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Panel2: TPanel
                Left = 9
                Top = 4
                Width = 719
                Height = 241
                BevelInner = bvLowered
                Color = 16772332
                TabOrder = 0
                OnEnter = Panel2Enter
                object Label18: TLabel
                  Left = 394
                  Top = 12
                  Width = 38
                  Height = 14
                  Caption = 'Quant.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 510
                  Top = 12
                  Width = 48
                  Height = 14
                  Caption = 'Vlr. Unit.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 454
                  Top = 12
                  Width = 33
                  Height = 14
                  Caption = 'Desc.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 611
                  Top = 12
                  Width = 29
                  Height = 14
                  Caption = 'Total:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object LEstoque: TLabel
                  Left = 632
                  Top = 2
                  Width = 71
                  Height = 16
                  Alignment = taCenter
                  AutoSize = False
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object LProduto: TLabel
                  Left = 44
                  Top = 54
                  Width = 593
                  Height = 19
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Produto Teste'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object BtnProcProd: TBitBtn
                  Left = 6
                  Top = 29
                  Width = 22
                  Height = 20
                  Hint = 'Pressione para localizar o Produto'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnClick = BtnProcProdClick
                  Glyph.Data = {
                    B6000000424DB60000000000000036000000280000000A000000040000000100
                    18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                    C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                    90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                    90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                    C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
                end
                object BtnInsertProd: TBitBtn
                  Left = 643
                  Top = 35
                  Width = 70
                  Height = 23
                  Hint = 
                    'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                    'na lista (ALT + I)'
                  Caption = '&Inserir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
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
                  Layout = blGlyphRight
                  Spacing = 10
                end
                object BtnDeleteProd: TBitBtn
                  Left = 643
                  Top = 57
                  Width = 70
                  Height = 21
                  Hint = 
                    'Pressione para remover o produto selecionado na lista da mesma (' +
                    'ALT + E)'
                  Caption = '&Excluir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 8
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
                  Layout = blGlyphRight
                  Spacing = 10
                end
                object EDQuantidade: TColorEditFloat
                  Left = 374
                  Top = 26
                  Width = 59
                  Height = 24
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  Text = '0,00'
                  OnExit = EDQuantidadeExit
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDValUnit: TColorEditFloat
                  Left = 492
                  Top = 26
                  Width = 67
                  Height = 24
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                  Text = '0,00'
                  OnEnter = EDValUnitEnter
                  OnExit = EDQuantidadeExit
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDDesc: TColorEditFloat
                  Left = 437
                  Top = 26
                  Width = 51
                  Height = 24
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  Text = '0,00'
                  OnExit = EDQuantidadeExit
                  OnKeyPress = EDDescKeyPress
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDTotal: TColorEditFloat
                  Left = 563
                  Top = 26
                  Width = 77
                  Height = 25
                  Hint = 
                    'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
                    'informe o valor em total e pressione <ENTER>'
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                  Text = '0,00'
                  OnKeyDown = EDTotalKeyDown
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object PBPCodBarra: TPanel
                  Left = 28
                  Top = 14
                  Width = 165
                  Height = 36
                  BevelOuter = bvNone
                  Color = 16772332
                  TabOrder = 1
                  object Label15: TLabel
                    Left = 2
                    Top = -1
                    Width = 60
                    Height = 14
                    Caption = 'C'#243'd. Barra:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EDCodBarra: TEdit
                    Left = 1
                    Top = 12
                    Width = 141
                    Height = 24
                    BiDiMode = bdRightToLeft
                    Ctl3D = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    MaxLength = 13
                    ParentBiDiMode = False
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    Text = '7893265412587'
                    OnKeyDown = EDCodBarraKeyDown
                  end
                end
                object PListaProdutos: TPanel
                  Left = 632
                  Top = 51
                  Width = 537
                  Height = 172
                  BevelOuter = bvNone
                  TabOrder = 9
                  Visible = False
                  object DBGrid8: TDBGrid
                    Left = 1
                    Top = 1
                    Width = 536
                    Height = 170
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
                    TitleFont.Height = -13
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnCellClick = DBGrid8CellClick
                    OnDblClick = DBGrid8DblClick
                    OnKeyUp = DBGrid8KeyUp
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'COD_ESTOQUE'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CODFABRICANTE'
                        Title.Caption = 'C. Fabric.'
                        Width = 92
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CONTRINT'
                        Title.Caption = 'Controle'
                        Width = 78
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'Produto'
                        Width = 255
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VENDVARV'
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Vlr.'
                        Width = 116
                        Visible = True
                      end
                      item
                        Alignment = taRightJustify
                        Expanded = False
                        FieldName = 'LOCALESTANTE'
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Local'
                        Visible = True
                      end>
                  end
                end
                object pPesquisaRapida: TPanel
                  Left = 174
                  Top = 10
                  Width = 194
                  Height = 42
                  BevelOuter = bvNone
                  Color = 16772332
                  TabOrder = 2
                  object LPesquisa: TLabel
                    Left = 4
                    Top = 0
                    Width = 101
                    Height = 14
                    Caption = 'Pesquisar C'#243'digo:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = True
                  end
                  object Label30: TLabel
                    Left = 112
                    Top = 4
                    Width = 75
                    Height = 12
                    Caption = 'F2 - PESQ. C/ %'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Courier New'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = True
                  end
                  object EDCodFab: TColorMaskEdit
                    Left = 3
                    Top = 16
                    Width = 185
                    Height = 24
                    CharCase = ecUpperCase
                    Ctl3D = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    MaxLength = 30
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnEnter = EDCodFabEnter
                    OnKeyDown = EDCodFabKeyDown
                    OnKeyUp = EDCodFabKeyUp
                    NotFoundText = 'N'#227'o Existe'
                    InputText = 'Por favor entre na procura pelo crit'#233'rio'
                    ButtonCaption = 'Ok'
                  end
                end
                object GroupBox5: TGroupBox
                  Left = 4
                  Top = 82
                  Width = 715
                  Height = 156
                  Caption = 'Lista de produtos da ordem'
                  Color = 15329769
                  Ctl3D = False
                  ParentColor = False
                  ParentCtl3D = False
                  TabOrder = 10
                  object DBGrid1: TDBGrid
                    Left = 1
                    Top = 14
                    Width = 711
                    Height = 140
                    Color = 15597546
                    Ctl3D = False
                    DataSource = DMESTOQUE.DSSlave
                    FixedColor = 11039232
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = [fsBold]
                    OnKeyDown = DBGrid1KeyDown
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'CODPRODFABR'
                        Title.Caption = 'C'#243'd. Fabricante'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTD'
                        Title.Caption = 'Qtd. Aplic.'
                        Width = 67
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VLRUNIT'
                        Title.Caption = 'Vlr. Unit.'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL'
                        Title.Caption = 'Vlr. total'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'Produto'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA'
                        Title.Caption = 'Data'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCONTO'
                        Title.Caption = 'Desc(%)'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MARCA'
                        Title.Caption = 'Marca'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NOME'
                        Title.Caption = 'Vendedor'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTDRET'
                        Title.Caption = 'Qtd. Ret.'
                        Width = 62
                        Visible = True
                      end>
                  end
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = '&SERVI'#199'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImageIndex = 1
              ParentFont = False
              object Shape7: TShape
                Left = 5
                Top = 0
                Width = 727
                Height = 250
                Brush.Color = 15329769
                Pen.Color = 4227072
              end
              object LQTDSERV: TLabel
                Left = 557
                Top = 250
                Width = 172
                Height = 12
                Hint = 'Informa a quantidade total de itens inseridos neste pedido'
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LOCAL:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object PEquipe: TPanel
                Left = 6
                Top = 1
                Width = 725
                Height = 248
                Color = 16772332
                TabOrder = 2
                Visible = False
                object Label60: TLabel
                  Left = 8
                  Top = 6
                  Width = 66
                  Height = 18
                  Caption = 'Servi'#231'o:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label61: TLabel
                  Left = 64
                  Top = 60
                  Width = 43
                  Height = 16
                  Caption = 'Valor:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label62: TLabel
                  Left = 125
                  Top = 59
                  Width = 31
                  Height = 16
                  Caption = 'Qtd:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label63: TLabel
                  Left = 184
                  Top = 59
                  Width = 61
                  Height = 16
                  Caption = 'Desc %:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label64: TLabel
                  Left = 599
                  Top = 6
                  Width = 94
                  Height = 18
                  Caption = 'Valor Total:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                inline FrmEquipe: TFrmBusca
                  Left = 318
                  Top = 57
                  Width = 291
                  Height = 47
                  AutoScroll = False
                  Color = 16772332
                  ParentColor = False
                  TabOrder = 4
                  inherited LTextoBusca: TLabel
                    Top = -1
                    Width = 150
                    Caption = 'Equipe Respons'#225'vel:'
                    Font.Style = [fsBold]
                  end
                  inherited LUZMINUS: TShape
                    Left = 268
                    Top = 15
                    Height = 27
                  end
                  inherited EdDescricao: TFlatEdit
                    Left = 48
                    Top = 18
                    Width = 220
                    Height = 22
                    TabStop = False
                    ColorBorder = clBlack
                    ColorFlat = clWindow
                    Font.Height = -15
                  end
                  inherited BTNOPEN: TBitBtn
                    Left = 269
                    Top = 19
                    Height = 20
                    Hint = 'Pressione para selecionar a equipe respons'#225'vel'
                    OnClick = FrmEquipeBTNOPENClick
                  end
                  inherited BTNMINUS: TBitBtn
                    Left = 384
                    Top = 14
                    Enabled = False
                  end
                  inherited EDCodigo: TFlatEdit
                    Left = 1
                    Top = 18
                    Width = 48
                    Height = 22
                    ColorBorder = clBlack
                    ColorFlat = 15329769
                    Font.Height = -15
                    OnKeyPress = FrmEquipeEDCodigoKeyPress
                  end
                end
                object DBGrid4: TDBGrid
                  Left = 2
                  Top = 112
                  Width = 720
                  Height = 132
                  TabStop = False
                  Color = 15204092
                  Ctl3D = True
                  DataSource = DMESTOQUE.DSAlx3
                  FixedColor = 11039232
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 7
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -13
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'COD_DESPADIC'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'COD_GERADOR'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'GERADOR'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'DESPESA'
                      Title.Caption = 'Servi'#231'o'
                      Width = 227
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VLRFINAL'
                      Title.Caption = 'Vlr. Unit.'
                      Width = 72
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'QTD'
                      Title.Caption = 'Qtde.'
                      Width = 39
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DESCONTO'
                      Title.Caption = 'Desc.'
                      Width = 74
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VLRREAL'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'VLRTOTFIN'
                      Title.Caption = 'Total'
                      Width = 94
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'LUCMOE'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'LUCPER'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'MARCA'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'UNIDADE'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'COD_EQUIPE'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'COD_EQUIPE1'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Equipe'
                      Width = 212
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OBSERVACAO'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'COD_RESPONSAVEL'
                      Visible = False
                    end
                    item
                      Expanded = False
                      FieldName = 'NOME'
                      Title.Caption = 'Vendedor'
                      Width = 258
                      Visible = True
                    end>
                end
                object BtnInserir: TBitBtn
                  Left = 631
                  Top = 58
                  Width = 80
                  Height = 25
                  Caption = 'Inserir'
                  TabOrder = 5
                  OnClick = BtnInserirClick
                  Glyph.Data = {
                    9E010000424D9E0100000000000036000000280000000B0000000A0000000100
                    1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
                    D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
                    ECD8E9ECD8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC00
                    0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
                    D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF000000
                    00D8E9ECD8E9EC000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF00BF
                    BF00BFBF00000000D8E9EC000000000000000000000000000000BFBF00BFBF00
                    BFBF00000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000BFBF
                    00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
                    0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
                    D8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9
                    ECD8E9ECD8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC00
                    0000}
                end
                object BBExcluir: TBitBtn
                  Left = 631
                  Top = 83
                  Width = 80
                  Height = 25
                  Caption = 'Excluir'
                  TabOrder = 6
                  OnClick = BBExcluirClick
                  Glyph.Data = {
                    9E010000424D9E0100000000000036000000280000000B0000000A0000000100
                    1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
                    D8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000D8E9
                    ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC00
                    0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
                    D8E9EC000000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9
                    ECD8E9ECD8E9EC000000000000000000000000000000BFBF00BFBF00BFBF0000
                    0000000000000000000000000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00
                    BFBF00BFBF00BFBF00000000D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF
                    00BFBF00BFBF00BFBF00000000D8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
                    0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
                    D8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
                    ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC00
                    0000}
                end
                object ETotal: TColorEditFloat
                  Left = 599
                  Top = 26
                  Width = 112
                  Height = 26
                  TabStop = False
                  Color = 15329769
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  Text = '0,00'
                  ValueFormat = '##,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EValor: TColorEditFloat
                  Left = 64
                  Top = 77
                  Width = 51
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Text = '0,00'
                  ValueFormat = '##,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EQtd: TColorEditFloat
                  Left = 124
                  Top = 76
                  Width = 50
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  Text = '0,00'
                  ValueFormat = '##,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDesc: TColorEditFloat
                  Left = 183
                  Top = 76
                  Width = 62
                  Height = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  Text = '0,00'
                  OnExit = EDescExit
                  ValueFormat = '##,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDespesa: TEdit
                  Left = 8
                  Top = 26
                  Width = 577
                  Height = 24
                  TabOrder = 0
                end
              end
              object Panel3: TPanel
                Left = 9
                Top = 4
                Width = 707
                Height = 86
                BevelInner = bvLowered
                Color = 16772332
                TabOrder = 0
                object Label12: TLabel
                  Left = 364
                  Top = 5
                  Width = 46
                  Height = 16
                  Caption = 'Quant.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 435
                  Top = 6
                  Width = 58
                  Height = 16
                  Caption = 'Vlr. Unit.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 504
                  Top = 6
                  Width = 38
                  Height = 16
                  Caption = 'Desc.:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 591
                  Top = 6
                  Width = 35
                  Height = 16
                  Caption = 'Total:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 189
                  Top = 6
                  Width = 82
                  Height = 16
                  Caption = 'C'#243'd. Interno:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 33
                  Top = 6
                  Width = 58
                  Height = 16
                  Caption = 'Servi'#231'os:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial Narrow'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object LSubServico: TLabel
                  Left = 28
                  Top = 54
                  Width = 593
                  Height = 19
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Produto Teste'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object BtnProcServ: TBitBtn
                  Left = 6
                  Top = 24
                  Width = 22
                  Height = 20
                  Hint = 'Pressione para localizar o Produto'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnClick = BtnProcServClick
                  Glyph.Data = {
                    B6000000424DB60000000000000036000000280000000A000000040000000100
                    18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                    C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                    90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                    90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                    C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
                end
                object BtnInsertServ: TBitBtn
                  Left = 634
                  Top = 35
                  Width = 70
                  Height = 25
                  Hint = 
                    'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                    'na lista (ALT + I)'
                  Caption = '&Inserir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 7
                  OnClick = BtnInsertServClick
                  Glyph.Data = {
                    DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                    0400000000006800000000000000000000001000000010000000000000000000
                    BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    7000777777777777700077777707777770007777706077777000777706660777
                    7000777066666077700077066666660770007000066600007000777706660777
                    7000777706660777700077770666077770007777000007777000777777777777
                    7000}
                  Layout = blGlyphRight
                  Spacing = 10
                end
                object BtnDeleteServ: TBitBtn
                  Left = 634
                  Top = 59
                  Width = 70
                  Height = 25
                  Hint = 
                    'Pressione para remover o produto selecionado na lista da mesma (' +
                    'ALT + E)'
                  Caption = '&Excluir'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 8
                  OnClick = BtnDeleteServClick
                  Glyph.Data = {
                    DE000000424DDE0000000000000076000000280000000D0000000D0000000100
                    0400000000006800000000000000000000001000000010000000000000000000
                    BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                    7000777777777777700077770000077770007777066607777000777706660777
                    7000777706660777700070000666000070007706666666077000777066666077
                    7000777706660777700077777060777770007777770777777000777777777777
                    7000}
                  Layout = blGlyphRight
                  Spacing = 10
                end
                object EDQtdServ: TColorEditFloat
                  Left = 333
                  Top = 22
                  Width = 73
                  Height = 19
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  Text = '0,00'
                  OnExit = EDQtdServExit
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EDVlrUnitServ: TColorEditFloat
                  Left = 409
                  Top = 22
                  Width = 75
                  Height = 19
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  Text = '0,00'
                  OnEnter = EDVlrUnitServEnter
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EdDescServ: TColorEditFloat
                  Left = 487
                  Top = 22
                  Width = 51
                  Height = 19
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                  Text = '0,00'
                  OnExit = EDQtdServExit
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EdVlrtotalServ: TColorEditFloat
                  Left = 541
                  Top = 22
                  Width = 81
                  Height = 19
                  Hint = 
                    'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
                    'informe o valor em total e pressione <ENTER>'
                  Color = 15329769
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                  Text = '0,00'
                  OnKeyDown = EdVlrtotalServKeyDown
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EdCodInternoServ: TColorEditFloat
                  Left = 187
                  Top = 22
                  Width = 141
                  Height = 19
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                  Text = '0'
                  OnKeyDown = EdCodInternoServKeyDown
                  EditType = fltString
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object EdServico: TColorEditFloat
                  Left = 31
                  Top = 22
                  Width = 153
                  Height = 19
                  Ctl3D = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 13
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  Text = '0'
                  OnKeyDown = EdCodInternoServKeyDown
                  EditType = fltString
                  ValueFormat = '#,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
              end
              object GroupBox2: TGroupBox
                Left = 11
                Top = 91
                Width = 714
                Height = 155
                Caption = 'Lista de servi'#231'o da ordem'
                Color = 15329769
                Ctl3D = False
                ParentColor = False
                ParentCtl3D = False
                TabOrder = 1
                object DBGrid2: TDBGrid
                  Left = 1
                  Top = 14
                  Width = 712
                  Height = 140
                  Color = 14221052
                  Ctl3D = False
                  DataSource = DMESTOQUE.DSSlaveServ
                  FixedColor = 11039232
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clBlack
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = [fsBold]
                  OnKeyDown = DBGrid2KeyDown
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'descricao'
                      Title.Caption = 'Servi'#231'os'
                      Visible = True
                    end
                    item
                      Alignment = taRightJustify
                      Expanded = False
                      FieldName = 'QTD'
                      Title.Caption = 'Quant.'
                      Width = 56
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VLRUNIT'
                      Title.Caption = 'Unit'#225'rio (R$)'
                      Width = 87
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DESCONTO'
                      Title.Caption = 'Desc. (%)'
                      Width = 71
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TOTAL'
                      Title.Caption = 'Total ($)'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DATA'
                      Title.Caption = 'Data'
                      Visible = True
                    end>
                end
              end
            end
          end
          object EdtotalProd: TColorEditFloat
            Left = 178
            Top = 308
            Width = 98
            Height = 24
            Color = 15527167
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnExit = EdtotalProdExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdTotalserv: TColorEditFloat
            Left = 346
            Top = 308
            Width = 98
            Height = 24
            Color = 14540287
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnExit = EdTotalservExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdTotalOrd: TColorEditFloat
            Left = 624
            Top = 308
            Width = 129
            Height = 24
            Color = 12566527
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
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
          object EdTotDesp: TColorEditFloat
            Left = 451
            Top = 308
            Width = 96
            Height = 24
            Color = 13816575
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDescTOrdem: TColorEditFloat
            Left = 560
            Top = 308
            Width = 64
            Height = 24
            Color = 16777175
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDescTServ: TColorEditFloat
            Left = 282
            Top = 308
            Width = 64
            Height = 24
            Hint = 'Informe aqui os descontos para servi'#231'os'
            Color = 16777194
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Text = '0,00'
            OnExit = EdDescTServExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDescTProd: TColorEditFloat
            Left = 114
            Top = 308
            Width = 64
            Height = 24
            Hint = 'Informe aqui os descontos para produtos'
            Color = 16777211
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = '0,00'
            OnExit = EdDescTProdExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inline FrmEquipamento: TFrmBusca
        Left = 287
        Top = 13
        Width = 257
        Height = 43
        AutoScroll = False
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        OnExit = FrmEquipamentoExit
        inherited LTextoBusca: TLabel
          Width = 80
          Caption = 'Equipamento:'
          Font.Name = 'BankGothic Md BT'
        end
        inherited LUZOPEN: TShape
          Left = 230
          Width = 25
        end
        inherited LUZMINUS: TShape
          Left = 362
        end
        inherited EdDescricao: TFlatEdit
          Left = 48
          Width = 184
          Height = 20
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 233
          OnClick = FrmEquipamentoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 382
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 46
          Height = 20
          ColorFlat = 15400921
          OnKeyDown = FrmEquipamentoEDCodigoKeyDown
        end
      end
      inline FBEquipPlaca: TFrmBusca
        Left = 288
        Top = 13
        Width = 256
        Height = 43
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        TabStop = True
        OnExit = FBEquipPlacaExit
        inherited LTextoBusca: TLabel
          Width = 80
          Caption = 'Equipamento:'
          Font.Name = 'BankGothic Md BT'
        end
        inherited LUZOPEN: TShape
          Left = 230
          Width = 25
        end
        inherited LUZMINUS: TShape
          Left = 362
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 159
          Height = 20
          TabStop = False
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 233
          OnClick = FBEquipPlacaBTNOPENClick
          OnExit = FBEquipPlacaBTNOPENExit
        end
        inherited BTNMINUS: TBitBtn
          Left = 382
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 71
          Height = 20
          ColorFlat = 15400921
          OnExit = FBEquipPlacaEDCodigoExit
          OnKeyDown = FBEquipPlacaEDCodigoKeyDown
        end
      end
      inline FrmCliente: TFrmBusca
        Left = 6
        Top = 13
        Width = 280
        Height = 43
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 44
          Caption = 'Cliente:'
          Font.Name = 'BankGothic Md BT'
        end
        inherited LUZOPEN: TShape
          Left = 255
          Top = 13
          Width = 23
          Height = 23
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited EdDescricao: TFlatEdit
          Left = 49
          Width = 208
          Height = 20
        end
        inherited BTNOPEN: TBitBtn
          Left = 257
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 436
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 47
          Height = 20
          ColorFlat = 15269845
          OnKeyDown = FrmClienteEDCodigoKeyDown
        end
      end
      inline FrmVendedor: TFrmBusca
        Left = 7
        Top = 56
        Width = 292
        Height = 36
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 67
          Caption = 'Vendedor:'
        end
        inherited LUZMINUS: TShape
          Left = 258
          Top = 11
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 49
          Top = 14
          Width = 209
          Height = 20
        end
        inherited BTNOPEN: TBitBtn
          Left = 258
          Top = 14
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 384
          Top = 14
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 14
          Width = 48
          Height = 20
          ColorFlat = 15269845
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      inline FrmResponsavel: TFrmBusca
        Left = 289
        Top = 56
        Width = 258
        Height = 36
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 164
          Caption = 'Respons'#225'vel pela ordem:'
        end
        inherited LUZOPEN: TShape
          Left = 306
        end
        inherited LUZMINUS: TShape
          Left = 230
          Top = 11
        end
        inherited EdDescricao: TFlatEdit
          Left = 40
          Top = 14
          Width = 190
          Height = 20
        end
        inherited BTNOPEN: TBitBtn
          Left = 231
          Top = 14
          Width = 20
          OnClick = FrmResponsavelBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 388
          Top = 14
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 14
          Width = 39
          Height = 20
          ColorFlat = 15269845
          OnKeyDown = FrmResponsavelEDCodigoKeyDown
        end
      end
      object CBGarantia: TCheckBox
        Left = 680
        Top = 30
        Width = 90
        Height = 16
        Caption = 'GARANTIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      inline FrmFormPag1: TFrmBusca
        Left = 546
        Top = 55
        Width = 229
        Height = 43
        Color = clWhite
        ParentColor = False
        TabOrder = 6
        OnExit = FrmFormPagExit
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 184
          Width = 20
        end
        inherited LUZMINUS: TShape
          Left = 204
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 34
          Width = 151
          Height = 20
          TabStop = False
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 185
          OnClick = FrmFormPag1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 204
          OnClick = FrmFormPag1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 32
          Height = 20
          ColorFlat = 15269845
          OnKeyDown = FrmFormPag1EDCodigoKeyDown
        end
      end
      object DBBox: TDBEdit
        Left = 549
        Top = 29
        Width = 96
        Height = 21
        Color = 15138815
        DataField = 'BOX'
        DataSource = DMServ.DOrd
        TabOrder = 3
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 781
      object Label2: TLabel [0]
        Left = 415
        Top = 8
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
      object Label3: TLabel [1]
        Left = 592
        Top = 8
        Width = 15
        Height = 19
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape9: TShape [2]
        Left = 197
        Top = 3
        Width = 1
        Height = 23
      end
      object Shape10: TShape [3]
        Left = 195
        Top = 7
        Width = 1
        Height = 16
      end
      object Shape12: TShape [4]
        Left = 199
        Top = 7
        Width = 1
        Height = 16
      end
      inherited BtnGravar: TBitBtn
        TabOrder = 1
      end
      inherited BtnCancelar: TBitBtn
        TabOrder = 2
      end
      object DBNumOrd: TDBColorEdit
        Left = 448
        Top = 3
        Width = 137
        Height = 25
        Color = clActiveBorder
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = DMServ.DOrd
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorOrd: TColorEditFloat
        Left = 613
        Top = 3
        Width = 164
        Height = 25
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        Text = '0,00'
        OnExit = EdValorOrdExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnComiss: TBitBtn
        Left = 204
        Top = 2
        Width = 101
        Height = 25
        Caption = '&Comissionados'
        TabOrder = 4
        OnClick = BtnComissClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777777770FFFFFF000000007777
          777770F8888F000000007777777770FFFFFF000000007777777770F8888F0000
          00007444444440FFFFFF000000007488888880F8888F000000007477777770FF
          FFFF000000007470070070000000000000007477777777774777700000007470
          0700700747777000000074777777777747747000000074444444444447444000
          000074F44F44F44F477470000000744444444444477770000000777777777777
          777770000000}
      end
      object BtnDadosAdic: TBitBtn
        Left = 304
        Top = 2
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
          ' o painel de consulta'
        Caption = '&FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnDadosAdicClick
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
    end
  end
  object PPrecos: TPanel [4]
    Left = 321
    Top = 78
    Width = 329
    Height = 98
    BevelWidth = 3
    Color = clBackground
    TabOrder = 3
    Visible = False
    object FashionPanel3: TFashionPanel
      Left = 4
      Top = 4
      Width = 321
      Height = 90
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
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Pre'#231'o de Venda:'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label73: TLabel
        Left = 4
        Top = 19
        Width = 59
        Height = 22
        Caption = 'Varejo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 22
        Top = 40
        Width = 49
        Height = 17
        Caption = #192' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label59: TLabel
        Left = 90
        Top = 40
        Width = 56
        Height = 17
        Caption = #192' Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label71: TLabel
        Left = 175
        Top = 19
        Width = 75
        Height = 22
        Caption = 'Atacado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object Label112: TLabel
        Left = 191
        Top = 41
        Width = 49
        Height = 17
        Caption = #192' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label113: TLabel
        Left = 260
        Top = 41
        Width = 56
        Height = 17
        Caption = #192' Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label114: TLabel
        Left = 283
        Top = 80
        Width = 29
        Height = 10
        Caption = '<esc>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdVlrVarejoVista: TColorEditFloat
        Left = 2
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrVarejoPrazo: TColorEditFloat
        Left = 76
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrAtacadoVista: TColorEditFloat
        Left = 172
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrAtacadoPrazo: TColorEditFloat
        Left = 246
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  inherited PComunica: TPanel [5]
    Left = 173
    Top = 171
    Width = 495
    Height = 113
  end
  object ImageList1: TImageList
    Left = 546
    Top = 1
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000005A5A63005252520000000000ADADAD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8CAD006363
      630000000000393963002929630000000000181842007B7BA500000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300313184000000
      520000007B0008088C0018189C0000007B0031319C0029298C00B5B5B5000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010106B0000004A004242
      C6001010420010108C0039399C00101042006B6BD60018184A0052525A000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000C6C6C600FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B008484
      EF007B7BCE00292984005A5A84004242C60000005A0000006B00393942000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005252CE003939D6008C8C
      D60063636300B5B5B50052525200101029007B7BE7006B6BBD004A4A4A000000
      0000B5B5B500BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007373A50031316B007B7B
      A5007B7B7B00DEDEDE006B6B6B00393939007B7BDE0010182100393939000000
      00005A6B6B007B84840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052529C006B6B
      940042426300DEDEDE006B6B6B00000018007B7BFF002942520008393900007B
      7B00219494002929290063636300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADBD009494
      A500A5A5A500A5A5A5007B7B7B004A5A5A003152AD00219CAD00398C8C00214A
      4A0073DEDE0008424200107373000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00B5B5B5009C9C9C008CADAD007BB5B500216B6B004A6B6B0039C6
      C60063F7F70000737300007B7B00000000000000000000FFFF0000FFFF000000
      0000C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073ADAD0052DEDE008CFFFF006B6B6B00CECECE00525252002931
      310039C6C60073B5B50052949400000000000000000000FFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00296B6B007BD6D60073737300DEDEDE00636363003939
      390029ADAD00313939007B7B7B0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AA5A50084E7E700526B6B00E7E7E700636363000821
      2100298C8C004A4A4A00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADBDBD0063A5A500ADADAD009C9C9C007B7B7B007373
      73009C9C9C00B5B5B50000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C6008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00ADADAD00A5A5A500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF8FFF00000000C93F03FF00000000
      C93F00FF00000000801F007F00000000801F001F00000000801FC00100000000
      8013F800000000008013F80000000000C001E00100000000C001C00000000000
      F001800000000000F801800300000000F801C00700000000FC03C00F00000000
      FC03F01F00000000FF0FF87F0000000000000000000000000000000000000000
      000000000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 600
  end
  object FSRel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 632
    ReportForm = {18000000}
  end
  object PmRelatorio: TPopupMenu
    Left = 417
    Top = 65535
    object CompdeAbertura1: TMenuItem
      Caption = 'Comp. de Abertura'
      OnClick = CompdeAbertura1Click
    end
    object CompdeFechamento1: TMenuItem
      Caption = 'Comp. de Fechamento'
      OnClick = CompdeFechamento1Click
    end
    object Cupom1: TMenuItem
      Caption = 'Cupom'
      OnClick = Cupom1Click
    end
    object Garantia1: TMenuItem
      Caption = 'Garantia'
      OnClick = Garantia1Click
    end
  end
  object FSDSServ: TfrDBDataSet
    DataSet = DMESTOQUE.TSlaveServ
    Left = 536
  end
  object MEscolheProc: TPopupMenu
    Left = 386
    Top = 65535
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
    end
  end
  object FSDSDesp: TfrDBDataSet
    DataSet = DMESTOQUE.TDesp
    Left = 568
  end
  object PMDevolucao: TPopupMenu
    Left = 668
    object Cancelar1: TMenuItem
      Caption = 'Cancelamento Total'
      OnClick = Cancelar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CancelarFechamento1: TMenuItem
      Caption = 'Cancelar Fechamento'
      OnClick = CancelarFechamento1Click
    end
  end
  object PMFisco: TPopupMenu
    Left = 700
    object MenuItem5: TMenuItem
      Caption = 'Inserir N'#186' Fiscal'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Apagar N'#186' Fiscal'
      OnClick = MenuItem6Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Exportar: TMenuItem
      Caption = 'Exportar'
      OnClick = ExportarClick
    end
    object ExportarOrdServ1: TMenuItem
      Caption = 'Exportar Ord. Serv.'
      Enabled = False
      OnClick = ExportarOrdServ1Click
    end
  end
  object PMBtnFiscal: TPopupMenu
    Left = 84
    Top = 38
    object ConsultaNDocFiscal1: TMenuItem
      Caption = 'Consulta N'#186' Doc. Fiscal'
      OnClick = ConsultaNDocFiscal1Click
    end
    object AlteraNDocFiscal1: TMenuItem
      Caption = 'Altera N'#186' Doc. Fiscal'
      OnClick = AlteraNDocFiscal1Click
    end
    object ReimprimirNF1: TMenuItem
      Caption = 'Reimprimir NF'
      OnClick = ReimprimirNF1Click
    end
  end
  object PMDev: TPopupMenu
    Left = 741
    Top = 8
    object DevoluoParcial1: TMenuItem
      Caption = 'Devolu'#231#227'o Parcial'
      OnClick = DevoluoParcial1Click
    end
    object DevoluoTotal1: TMenuItem
      Caption = 'Devolu'#231#227'o Total'
      OnClick = DevoluoTotal1Click
    end
  end
end
