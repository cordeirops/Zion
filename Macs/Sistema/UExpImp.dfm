inherited FExpImp: TFExpImp
  Left = 288
  Top = 188
  Caption = 'FExpImp'
  ClientHeight = 388
  ClientWidth = 643
  OldCreateOrder = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 34
    Top = 122
  end
  object ProgressBar1: TProgressBar
    Left = 65
    Top = 310
    Width = 429
    Height = 20
    TabOrder = 9
  end
  object PAguarde: TPanel
    Left = 135
    Top = 130
    Width = 250
    Height = 97
    BevelInner = bvLowered
    BevelWidth = 2
    Caption = 'A G U A R D E . . .'
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object PBalanca: TPanel
    Left = 10
    Top = 45
    Width = 536
    Height = 304
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 6
    Visible = False
    object Label13: TLabel
      Left = 392
      Top = 8
      Width = 89
      Height = 16
      Caption = 'B A L A N '#199' A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object CBTOLEDO: TFlatCheckBox
      Left = 16
      Top = 32
      Width = 193
      Height = 17
      Caption = 'TOLEDO'
      ColorCheck = 14319689
      ColorBorder = 14319689
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object BitBtn3: TBitBtn
      Left = 408
      Top = 272
      Width = 121
      Height = 25
      Caption = 'EXPORTAR >>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object Panel2: TPanel
      Left = 32
      Top = 64
      Width = 257
      Height = 91
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 2
      Visible = False
    end
    object FlatEdit1: TFlatEdit
      Left = 52
      Top = 89
      Width = 218
      Height = 18
      ColorFlat = 16772332
      ParentColor = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'C:\ORION\ARQUIVOS\CADTXT.TXT'
    end
    object CBFILIZOLA: TFlatCheckBox
      Left = 16
      Top = 72
      Width = 193
      Height = 17
      Caption = 'FILIZOLA'
      ColorCheck = 14319689
      ColorBorder = 14319689
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = CBFILIZOLAClick
    end
    object FlatEdit2: TFlatEdit
      Left = 33
      Top = 45
      Width = 210
      Height = 18
      ColorFlat = 16772332
      ParentColor = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'C:\ORION\ARQUIVOS\TXITENS.TXT'
    end
    object CBCADTXT: TFlatCheckBox
      Left = 35
      Top = 91
      Width = 14
      Height = 17
      TabOrder = 6
      TabStop = True
      OnClick = CBCADTXTClick
    end
    object CBSETORTXT: TFlatCheckBox
      Left = 35
      Top = 113
      Width = 14
      Height = 17
      TabOrder = 7
      TabStop = True
      OnClick = CBSETORTXTClick
    end
    object FlatEdit3: TFlatEdit
      Left = 52
      Top = 113
      Width = 218
      Height = 18
      ColorFlat = 16772332
      ParentColor = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = 'C:\ORION\ARQUIVOS\SETORTXT.TXT'
    end
  end
  object PPDV: TPanel
    Left = 11
    Top = 45
    Width = 537
    Height = 304
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 12
    object Label14: TLabel
      Left = 152
      Top = 12
      Width = 208
      Height = 16
      Caption = 'IMPORTA'#199#195'O E EXPORTA'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 122
      Top = 53
      Width = 65
      Height = 16
      Caption = 'Destino: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object BBExportar: TBitBtn
      Left = 82
      Top = 233
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Exporta'#231#227'o e atualiza'#231#227'o de produtos.'
      Caption = 'Exportar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBExportarClick
    end
    object BBImportar: TBitBtn
      Left = 370
      Top = 233
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Importa'#231#227'o de itens e pedidos de venda.'
      Caption = 'Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBImportarClick
    end
    object DBGrid1: TDBGrid
      Left = 121
      Top = 72
      Width = 285
      Height = 137
      Color = clMenu
      DataSource = DMCAIXA.DAlx
      FixedColor = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MARK'
          Title.Alignment = taCenter
          Title.Caption = 'X'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMCAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'm. Caixa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 176
          Visible = True
        end>
    end
    object BBLanc: TBitBtn
      Left = 227
      Top = 233
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Lan'#231'amento em caixa dos terminais de venda.'
      Caption = 'Lanc. Caixa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBLancClick
    end
    object ProgressImpExp: TProgressBar
      Left = 10
      Top = 269
      Width = 516
      Height = 20
      TabOrder = 4
    end
  end
  object PImp: TPanel
    Left = 10
    Top = 45
    Width = 538
    Height = 303
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 410
      Top = 167
      Width = 17
      Height = 12
      Caption = 'DE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 402
      Top = 191
      Width = 24
      Height = 12
      Caption = 'AT'#201':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 198
      Width = 100
      Height = 12
      Caption = 'BANCO DE ORIGEM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 392
      Top = 8
      Width = 131
      Height = 16
      Caption = 'I M P O R T A '#199' '#195' O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 404
      Top = 118
      Width = 67
      Height = 13
      Caption = 'Produto...:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 404
      Top = 99
      Width = 68
      Height = 13
      Caption = 'Loja.........:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 404
      Top = 137
      Width = 68
      Height = 13
      Caption = 'Ped. C......:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CBImpPedC: TFlatCheckBox
      Left = 16
      Top = 32
      Width = 193
      Height = 17
      Caption = 'PEDIDO DE COMPRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object EdImpDT1: TMaskEdit
      Left = 430
      Top = 159
      Width = 97
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object EdImpDT2: TMaskEdit
      Left = 430
      Top = 183
      Width = 97
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object EdOrigem: TEdit
      Left = 16
      Top = 212
      Width = 492
      Height = 21
      Color = clSkyBlue
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 200
      Top = 246
      Width = 121
      Height = 25
      Caption = 'IMPORTAR <<<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object BtnBOrigem: TBitBtn
      Left = 509
      Top = 212
      Width = 19
      Height = 19
      Caption = '...'
      TabOrder = 5
      OnClick = BtnBOrigemClick
    end
    object EdCodProd: TEdit
      Left = 474
      Top = 112
      Width = 53
      Height = 20
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object EdLoja: TEdit
      Left = 474
      Top = 93
      Width = 53
      Height = 20
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
    end
    object EdPedc: TEdit
      Left = 474
      Top = 131
      Width = 53
      Height = 20
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object CBImpProduto: TFlatCheckBox
      Left = 16
      Top = 49
      Width = 193
      Height = 17
      Caption = 'PRODUTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      TabStop = True
      OnClick = CBImpProdutoClick
    end
    object PRestProd: TPanel
      Left = 32
      Top = 72
      Width = 196
      Height = 77
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 10
      Visible = False
      object Label12: TLabel
        Left = 1
        Top = -1
        Width = 189
        Height = 12
        Caption = 'Restri'#231#245'es a Importa'#231#227'o de Produtos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CBImpPCtrlInt: TCheckBox
        Left = 1
        Top = 27
        Width = 161
        Height = 17
        Caption = 'Controle Interno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CBImpPCodFab: TCheckBox
        Left = 1
        Top = 43
        Width = 161
        Height = 17
        Caption = 'C'#243'digo de Fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object CBImpPCodBarra: TCheckBox
        Left = 1
        Top = 59
        Width = 161
        Height = 17
        Caption = 'C'#243'digo de Barras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CBImpPCahveInterna: TCheckBox
        Left = 1
        Top = 11
        Width = 161
        Height = 17
        Caption = 'Chave Interna do BD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object CBImpPendrive: TFlatCheckBox
      Left = 16
      Top = 15
      Width = 193
      Height = 17
      Caption = 'IMPORTAR DA PEN DRIVE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      TabStop = True
      OnClick = CBImpPendriveClick
    end
    object PBImportacao: TProgressBar
      Left = 10
      Top = 276
      Width = 516
      Height = 20
      TabOrder = 12
    end
  end
  object Pexp: TPanel
    Left = 10
    Top = 45
    Width = 536
    Height = 303
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 224
      Width = 104
      Height = 12
      Caption = 'BANCO DE DESTINO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 410
      Top = 193
      Width = 17
      Height = 12
      Caption = 'DE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 402
      Top = 217
      Width = 24
      Height = 12
      Caption = 'AT'#201':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 392
      Top = 8
      Width = 132
      Height = 16
      Caption = 'E X P O R T A '#199' '#195' O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object BtnBDestino: TBitBtn
      Left = 509
      Top = 238
      Width = 19
      Height = 19
      Caption = '...'
      TabOrder = 0
      OnClick = BtnBDestinoClick
    end
    object EdDT1: TMaskEdit
      Left = 430
      Top = 185
      Width = 97
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object EdDT2: TMaskEdit
      Left = 430
      Top = 209
      Width = 97
      Height = 21
      Ctl3D = True
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object EdDestino: TEdit
      Left = 16
      Top = 238
      Width = 492
      Height = 21
      Color = clSkyBlue
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'C:\ORION\DataBase\DbmacsExp.gdb'
    end
    object BitBtn1: TBitBtn
      Left = 408
      Top = 272
      Width = 121
      Height = 25
      Caption = 'EXPORTAR >>>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object CBPEDCOMPRA: TFlatCheckBox
      Left = 16
      Top = 40
      Width = 193
      Height = 17
      Caption = 'PEDIDO DE COMPRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      TabStop = True
    end
    object CBExpPendDrive: TFlatCheckBox
      Left = 16
      Top = 25
      Width = 193
      Height = 17
      Caption = 'EXPORTAR PARA PEN DRIVE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnClick = CBExpPendDriveClick
    end
  end
  object PMobile: TPanel
    Left = 11
    Top = 45
    Width = 536
    Height = 304
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 8
    object PErros: TPanel
      Left = 8
      Top = 8
      Width = 513
      Height = 281
      BevelWidth = 2
      Color = 16772332
      TabOrder = 9
      object MErros: TMemo
        Left = 8
        Top = 8
        Width = 497
        Height = 234
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 432
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
    end
    object BBAtualizar: TBitBtn
      Left = 192
      Top = 188
      Width = 120
      Height = 25
      Hint = 'Atualiza todas as tabelas selecionadas'
      Caption = 'Atualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BBAtualizarClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        00000000000000000000000000009B8255FF848947FFC8AC5AFFADC280FFCEB8
        78FF000000000000000000000000000000000000000000000000000000000000
        000000000000937654FFCF8928FF8C9B19FF1FB83EFF3CCE6BFF63DC86FF76E3
        93FF86E08CFFA4E1A2FF00000000000000000000000000000000000000000000
        00008C683EFFDB7D08FFE37D00FF919B13FF24BD48FF4BD476FFA4E79CFFB7F4
        B6FFADE89EFF6ADF8BFF9EC65DFF000000000000000000000000000000004D4D
        4DFF667A05FF447E00FFE68000FF3EA71DFF4EBE49FF55D77BFFBFF2B6FFB0F4
        B8FF9DEFACFF6ADF8BFF35CA63FF6FC861FF0000000000000000000000007F59
        22FF0F7500FF008400FF658C00FFED9B08FFFFBC46FFDBDD88FFA7EBACFF7BE4
        96FF99E190FF4DD578FF29C251FF3DA626FF00000000000000004D4D4DFF645F
        0AFF006F00FF007E00FF009000FFD99300FFFFB02DFFFFC960FF81CE69FF3DCF
        6DFF39CE69FF2BC456FF1BB436FFBB850AFFE5A247FF000000004D4D4DFF6C63
        05FF006B00FF197400FF008500FFB08800FFFD9803FFEECEA8FFEECEA8FF65B6
        3AFF1DB63AFF18B130FF1DA61DFFDA7400FFDA892CFF000000004D4D4DFF8457
        16FF0D6606FF007000FF007B00FF488400FFEECEA8FF2F6F00FF106900FFEECE
        A8FF2DA61AFF17A010FFB47E03FFD26C00FFC15B00FF000000004D4D4DFF8955
        1FFF436621FF036702FF007100FFEECEA8FF1C6800FF47E07AFF47E07AFF0069
        00FFEECEA8FFCE7800FFD26C00FFC55F00FFC67021FF000000004D4D4DFF703B
        1FFF79663DFF44641DFFEECEA8FF0D6600FF47E07AFF47E07AFF47E07AFF47E0
        7AFF046D07FFEECEA8FFC15B00FFB14B00FFC6752CFF0000000000000000703B
        1FFF703B1FFFEECEA8FF036C06FF3AD36DFF3AD36DFF3AD36DFF3AD36DFF3AD3
        6DFF3AD36DFF06730DFFEECEA8FF983F00FF0000000000000000000000004D4D
        4DFFEECEA8FF026C05FF30C960FF30C960FF30C960FF30C960FF30C960FF30C9
        60FF30C960FF30C960FF087810FFEECEA8FF0000000000000000000000004D4D
        4DFF006600FF006600FF006600FF006600FF20B940FF20B940FF20B940FF20B9
        40FF006600FF006600FF006600FF006600FF0000000000000000000000000000
        00004D4D4DFF4D4D4DFF4D4D4DFF006600FF14AD26FF14AD26FF14AD26FF14AD
        26FF006600FF4D4D4DFF4D4D4DFF000000000000000000000000000000000000
        000000000000000000004D4D4DFF006600FF07A00DFF07A00DFF07A00DFF07A0
        0DFF006600FF0000000000000000000000000000000000000000000000000000
        000000000000000000004D4D4DFF006600FF006600FF006600FF006600FF0066
        00FF006600FF0000000000000000000000000000000000000000}
    end
    object CBCliente: TCheckBox
      Left = 55
      Top = 112
      Width = 67
      Height = 17
      Caption = 'Clientes'
      TabOrder = 1
    end
    object CBProdutos: TCheckBox
      Left = 184
      Top = 112
      Width = 72
      Height = 17
      Caption = 'Produtos'
      TabOrder = 2
    end
    object CBPrazo: TCheckBox
      Left = 124
      Top = 112
      Width = 58
      Height = 17
      Caption = 'Prazo'
      TabOrder = 3
    end
    object CBCabecalhoPed: TCheckBox
      Left = 257
      Top = 112
      Width = 68
      Height = 17
      Caption = 'Pedidos'
      TabOrder = 4
    end
    object CBRecadosPed: TCheckBox
      Left = 327
      Top = 112
      Width = 125
      Height = 17
      Caption = 'Recados do Pedido'
      TabOrder = 5
    end
    object GBOpcoes: TGroupBox
      Left = 56
      Top = 24
      Width = 395
      Height = 79
      Caption = 'O P '#199' '#213' E S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object RBExportar: TRadioButton
        Left = 40
        Top = 32
        Width = 113
        Height = 17
        Caption = 'E X P O R T A R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RBExportarClick
      end
      object RBImportar: TRadioButton
        Left = 224
        Top = 32
        Width = 113
        Height = 17
        Caption = 'I M P O R T A R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RBImportarClick
      end
    end
    object BtnReceber: TBitBtn
      Left = 128
      Top = 152
      Width = 120
      Height = 25
      Caption = 'Receber Arquivos'
      TabOrder = 7
      Visible = False
      OnClick = BtnReceberClick
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E
        9A479E9A479E9A479E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A479E9A479E9A47DEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
    end
    object BtnTrabalharArquivos: TBitBtn
      Left = 256
      Top = 152
      Width = 120
      Height = 25
      Caption = 'Trabalhar Arquivos'
      TabOrder = 8
      Visible = False
      OnClick = BtnTrabalharArquivosClick
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A479E9A479E
        9A479E9A479E9A479E9A479E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A47
        9E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEF9E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEF9E9A479E9A47DEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EF9E9A479E9A479E9A479E9A479E9A479E9A47DEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        0000DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
    end
    object PBMobile: TProgressBar
      Left = 54
      Top = 263
      Width = 429
      Height = 20
      TabOrder = 10
    end
  end
  object BtnImp: TFlatButton
    Left = 86
    Top = 27
    Width = 76
    Height = 18
    Color = 13750737
    ColorFocused = clInactiveCaption
    Caption = '&Importar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ParentColor = False
    TabOrder = 2
    OnClick = BtnImpClick
  end
  object BtnExp: TFlatButton
    Left = 10
    Top = 27
    Width = 76
    Height = 18
    Color = 13750737
    ColorFocused = clInactiveCaption
    Caption = '&Exportar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ParentColor = False
    TabOrder = 1
    OnClick = BtnExpClick
  end
  object BtnBalanca: TFlatButton
    Left = 162
    Top = 27
    Width = 76
    Height = 18
    Color = 13750737
    ColorFocused = clInactiveCaption
    Caption = '&Balan'#231'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ParentColor = False
    TabOrder = 5
    OnClick = BtnBalancaClick
  end
  object BtnMobile: TFlatButton
    Left = 238
    Top = 27
    Width = 76
    Height = 18
    ColorFocused = clInactiveCaption
    Caption = '&Mobile'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BtnMobileClick
  end
  object BtnPDV: TFlatButton
    Left = 314
    Top = 27
    Width = 76
    Height = 18
    ColorFocused = clInactiveCaption
    Caption = '&PDV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BtnPDVClick
  end
  object FlatButton1: TFlatButton
    Left = 390
    Top = 27
    Width = 76
    Height = 18
    Caption = '&SINC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = FlatButton1Click
  end
  object PSinc: TPanel
    Left = 8
    Top = 46
    Width = 537
    Height = 305
    Color = 16772332
    TabOrder = 14
    object Label16: TLabel
      Left = 136
      Top = 112
      Width = 247
      Height = 13
      Caption = 'Sincronizar dados do banco de dados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FlatButton2: TFlatButton
      Left = 208
      Top = 128
      Width = 89
      Height = 25
      AllowAllUp = True
      Color = 12965593
      Caption = 'SINCRONIZA'
      ParentColor = False
      TabOrder = 0
      OnClick = FlatButton2Click
    end
  end
  object Open: TOpenDialog
    Left = 480
    Top = 26
  end
  object DBIE: TIBDatabase
    DatabaseName = 'note:C:\ORION\DataBase\DbmacsGISELE.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=3'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = TIE
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 568
  end
  object TIE: TIBTransaction
    Active = False
    DefaultDatabase = DBIE
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 608
  end
  object TAlx: TIBQuery
    Tag = 5
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    Left = 712
    Top = 24
  end
  object DAlx: TDataSource
    DataSet = TAlx
    Left = 744
    Top = 24
  end
  object TPedC: TIBQuery
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PEDCOMPRA')
    Left = 568
    Top = 74
  end
  object TItemPC: TIBQuery
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSPEDC')
    Left = 616
    Top = 73
  end
  object UPedC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_PEDCOMP,'
      '  COD_FORNEC,'
      '  VENDEDOR,'
      '  COD_USUARIO,'
      '  VALOR,'
      '  COD_FORMPAG,'
      '  DTPEDCOMP,'
      '  DESCONTO,'
      '  PRAZOENTR,'
      '  OBS,'
      '  SITUACAO,'
      '  NUMPED,'
      '  VLRPCOMIS,'
      '  PERCOMIS,'
      '  DTFECH,'
      '  COD_DESTINATARIO,'
      '  DESTINATARIO'
      'from PEDCOMPRA '
      'where'
      '  COD_PEDCOMP = :COD_PEDCOMP')
    ModifySQL.Strings = (
      'update PEDCOMPRA'
      'set'
      '  COD_PEDCOMP = :COD_PEDCOMP,'
      '  COD_FORNEC = :COD_FORNEC,'
      '  VENDEDOR = :VENDEDOR,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  VALOR = :VALOR,'
      '  COD_FORMPAG = :COD_FORMPAG,'
      '  DTPEDCOMP = :DTPEDCOMP,'
      '  DESCONTO = :DESCONTO,'
      '  PRAZOENTR = :PRAZOENTR,'
      '  OBS = :OBS,'
      '  SITUACAO = :SITUACAO,'
      '  NUMPED = :NUMPED,'
      '  VLRPCOMIS = :VLRPCOMIS,'
      '  PERCOMIS = :PERCOMIS,'
      '  DTFECH = :DTFECH,'
      '  COD_DESTINATARIO = :COD_DESTINATARIO,'
      '  DESTINATARIO = :DESTINATARIO'
      'where'
      '  COD_PEDCOMP = :OLD_COD_PEDCOMP')
    InsertSQL.Strings = (
      'insert into PEDCOMPRA'
      
        '  (COD_PEDCOMP, COD_FORNEC, VENDEDOR, COD_USUARIO, VALOR, COD_FO' +
        'RMPAG, '
      
        '   DTPEDCOMP, DESCONTO, PRAZOENTR, OBS, SITUACAO, NUMPED, VLRPCO' +
        'MIS, PERCOMIS, '
      '   DTFECH, COD_DESTINATARIO, DESTINATARIO)'
      'values'
      
        '  (:COD_PEDCOMP, :COD_FORNEC, :VENDEDOR, :COD_USUARIO, :VALOR, :' +
        'COD_FORMPAG, '
      
        '   :DTPEDCOMP, :DESCONTO, :PRAZOENTR, :OBS, :SITUACAO, :NUMPED, ' +
        ':VLRPCOMIS, '
      '   :PERCOMIS, :DTFECH, :COD_DESTINATARIO, :DESTINATARIO)')
    DeleteSQL.Strings = (
      'delete from PEDCOMPRA'
      'where'
      '  COD_PEDCOMP = :OLD_COD_PEDCOMP')
    Left = 568
    Top = 106
  end
  object UItemPC: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COD_ITENSPEDC,'
      '  COD_PEDCOMPRA,'
      '  COD_ESTOQUE,'
      '  QTDEPROD,'
      '  VALUNIT,'
      '  VALORTOTAL,'
      '  DATA,'
      '  DESCPRO,'
      '  ATUEST,'
      '  ALIQICMS,'
      '  FRETE,'
      '  EMBPROD,'
      '  VLRIPI,'
      '  COD_LOTE,'
      '  BASEICMS,'
      '  VLRICMS,'
      '  BASEICMSSUBS,'
      '  VLRICMSSUBS,'
      '  ALIQIPI,'
      '  REDUCBASEICMS'
      'from ITENSPEDC '
      'where'
      '  COD_ITENSPEDC = :COD_ITENSPEDC')
    ModifySQL.Strings = (
      'update ITENSPEDC'
      'set'
      '  COD_ITENSPEDC = :COD_ITENSPEDC,'
      '  COD_PEDCOMPRA = :COD_PEDCOMPRA,'
      '  COD_ESTOQUE = :COD_ESTOQUE,'
      '  QTDEPROD = :QTDEPROD,'
      '  VALUNIT = :VALUNIT,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  DATA = :DATA,'
      '  DESCPRO = :DESCPRO,'
      '  ATUEST = :ATUEST,'
      '  ALIQICMS = :ALIQICMS,'
      '  FRETE = :FRETE,'
      '  EMBPROD = :EMBPROD,'
      '  VLRIPI = :VLRIPI,'
      '  COD_LOTE = :COD_LOTE,'
      '  BASEICMS = :BASEICMS,'
      '  VLRICMS = :VLRICMS,'
      '  BASEICMSSUBS = :BASEICMSSUBS,'
      '  VLRICMSSUBS = :VLRICMSSUBS,'
      '  ALIQIPI = :ALIQIPI,'
      '  REDUCBASEICMS = :REDUCBASEICMS'
      'where'
      '  COD_ITENSPEDC = :OLD_COD_ITENSPEDC')
    InsertSQL.Strings = (
      'insert into ITENSPEDC'
      
        '  (COD_ITENSPEDC, COD_PEDCOMPRA, COD_ESTOQUE, QTDEPROD, VALUNIT,' +
        ' VALORTOTAL, '
      
        '   DATA, DESCPRO, ATUEST, ALIQICMS, FRETE, EMBPROD, VLRIPI, COD_' +
        'LOTE, BASEICMS, '
      '   VLRICMS, BASEICMSSUBS, VLRICMSSUBS, ALIQIPI, REDUCBASEICMS)'
      'values'
      
        '  (:COD_ITENSPEDC, :COD_PEDCOMPRA, :COD_ESTOQUE, :QTDEPROD, :VAL' +
        'UNIT, :VALORTOTAL, '
      
        '   :DATA, :DESCPRO, :ATUEST, :ALIQICMS, :FRETE, :EMBPROD, :VLRIP' +
        'I, :COD_LOTE, '
      
        '   :BASEICMS, :VLRICMS, :BASEICMSSUBS, :VLRICMSSUBS, :ALIQIPI, :' +
        'REDUCBASEICMS)')
    DeleteSQL.Strings = (
      'delete from ITENSPEDC'
      'where'
      '  COD_ITENSPEDC = :OLD_COD_ITENSPEDC')
    Left = 616
    Top = 105
  end
  object Alx1: TIBQuery
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from PEDCOMPRA')
    UpdateObject = UPedC
    Left = 568
    Top = 146
  end
  object Alx2: TIBQuery
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSPEDC')
    Left = 600
    Top = 145
  end
  object Alx3: TIBQuery
    Database = DBIE
    Transaction = TIE
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ITENSPEDC')
    UpdateObject = UItemPC
    Left = 632
    Top = 145
  end
  object DataSource1: TDataSource
    DataSet = Alx1
    Left = 576
    Top = 194
  end
  object FsRelExpImp: TfrReport
    Dataset = FDSExpImp
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 242
    Top = 85
    ReportForm = {18000000}
  end
  object FDSExpImp: TfrDBDataSet
    DataSource = DMENTRADA.DAlx
    Left = 242
    Top = 125
  end
end
