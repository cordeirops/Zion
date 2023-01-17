inherited FRelPadraoPed: TFRelPadraoPed
  Left = 340
  Top = 143
  Caption = 'FRelPadraoPed'
  ClientHeight = 381
  ClientWidth = 579
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 106
    Top = 130
    Width = 352
    Height = 58
    TabOrder = 9
  end
  object GroupBox5: TGroupBox [1]
    Left = 20
    Top = 10
    Width = 245
    Height = 92
    Caption = 'Intervalo de datas  (lan'#231'amento)'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 8
    object Label1: TLabel
      Left = 6
      Top = 40
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object Label4: TLabel
      Left = 127
      Top = 42
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIni: TMaskEdit
      Left = 6
      Top = 56
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object EdDataFim: TMaskEdit
      Left = 126
      Top = 56
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object RGESCOLHA: TRadioGroup [2]
    Left = 268
    Top = 10
    Width = 297
    Height = 43
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Relat'#243'rio de '
    Color = clWhite
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '&Abertas'
      '&Fechadas'
      '&Todas')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object RGOrdem: TRadioGroup [3]
    Left = 268
    Top = 54
    Width = 297
    Height = 48
    Caption = 'Ordena'#231#227'o'
    Color = clWhite
    Columns = 2
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Documento'
      'Data'
      'Vendedor')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  inline FrmPessoaIni: TFrmBusca [4]
    Left = 18
    Top = 108
    Width = 317
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Width = 95
      Caption = 'Pessoa Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 274
    end
    inherited LUZMINUS: TShape
      Left = 295
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 65
      Width = 208
      Height = 20
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 273
      Width = 20
      Height = 20
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 293
      Width = 20
      Height = 20
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 63
      Height = 20
      OnKeyDown = FrmPessoaIniEDCodigoKeyDown
      OnKeyPress = FrmPessoaIniEDCodigoKeyPress
    end
  end
  inline FrmVendIni: TFrmBusca [5]
    Left = 340
    Top = 108
    Width = 229
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 7
    inherited LTextoBusca: TLabel
      Width = 110
      Caption = 'Vendedor Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 186
      Width = 20
      Height = 20
    end
    inherited LUZMINUS: TShape
      Left = 207
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 42
      Width = 143
      Height = 20
      ColorFlat = 14085099
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 185
      Width = 20
      Height = 20
      OnClick = FrmVendIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 205
      Width = 20
      Height = 20
      OnClick = FrmVendIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 40
      Height = 20
      ColorFlat = 7846843
      OnKeyDown = FrmVendIniEDCodigoKeyDown
      OnKeyPress = FrmVendIniEDCodigoKeyPress
    end
  end
  inherited GroupBox1: TGroupBox [6]
    Left = 21
    Top = 327
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  inline FrmVendFim: TFrmBusca
    Left = 338
    Top = 151
    Width = 229
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    inherited LTextoBusca: TLabel
      Width = 102
      Caption = 'Vendedor Final:'
    end
    inherited LUZOPEN: TShape
      Left = 187
      Width = 20
      Height = 20
    end
    inherited LUZMINUS: TShape
      Left = 208
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 42
      Width = 143
      Height = 20
      ColorFlat = 14085099
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 185
      Width = 20
      Height = 20
      OnClick = FrmVendFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 205
      Width = 20
      Height = 20
      OnClick = FrmVendFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 40
      Height = 20
      ColorFlat = 7846843
      OnKeyDown = FrmVendFimEDCodigoKeyDown
    end
  end
  inline FrmFormPag: TFrmBusca
    Left = 19
    Top = 196
    Width = 316
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 139
      Caption = 'Forma de Pagamento'
    end
    inherited LUZOPEN: TShape
      Left = 274
      Width = 20
      Height = 20
    end
    inherited LUZMINUS: TShape
      Left = 295
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 223
      Height = 20
      ColorFlat = clWhite
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 273
      Width = 20
      Height = 20
      OnClick = FrmFormPagBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 293
      Width = 20
      Height = 20
      OnClick = FrmFormPagBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 48
      Height = 20
      ColorFlat = clLightGreen
      OnKeyDown = FrmFormPagEDCodigoKeyDown
      OnKeyPress = FrmFormPagEDCodigoKeyPress
    end
  end
  object PItensDevolvidos: TPanel
    Left = 344
    Top = 210
    Width = 174
    Height = 42
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 6
    Visible = False
    object Label5: TLabel
      Left = 23
      Top = 24
      Width = 79
      Height = 13
      Caption = 'Itens Devolvidos'
    end
    object CBItensDev: TCheckBox
      Left = 4
      Top = 9
      Width = 175
      Height = 17
      Caption = 'Mostrar Somente Pedidos com'
      Color = clWhite
      ParentColor = False
      TabOrder = 0
    end
  end
  object GBPagamento: TGroupBox
    Left = 21
    Top = 264
    Width = 546
    Height = 49
    Caption = 'Pagamento '
    Color = clWhite
    ParentColor = False
    TabOrder = 10
    object RBCarteira: TRadioButton
      Left = 355
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Carteira'
      TabOrder = 0
    end
    object RBCartao: TRadioButton
      Left = 245
      Top = 21
      Width = 59
      Height = 17
      Caption = 'Cart'#227'o'
      TabOrder = 1
    end
    object RBBanco: TRadioButton
      Left = 140
      Top = 21
      Width = 82
      Height = 17
      Caption = 'Banco'
      TabOrder = 2
    end
    object RBCheque: TRadioButton
      Left = 466
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Cheque'
      TabOrder = 3
    end
    object RBTodos: TRadioButton
      Left = 21
      Top = 21
      Width = 84
      Height = 17
      Caption = 'TODOS'
      TabOrder = 4
    end
  end
  object GPFrmPag: TGroupBox
    Left = 21
    Top = 214
    Width = 316
    Height = 48
    Caption = 'Forma de pagamento '
    Color = clWhite
    ParentColor = False
    TabOrder = 11
    Visible = False
    object RadioButton1: TRadioButton
      Left = 355
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Carteira'
      TabOrder = 0
    end
    object RBFPPrazo: TRadioButton
      Left = 245
      Top = 21
      Width = 59
      Height = 17
      Caption = #192' Prazo'
      TabOrder = 1
    end
    object RBFPVista: TRadioButton
      Left = 140
      Top = 21
      Width = 82
      Height = 17
      Caption = #192' Vista'
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 466
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Cheque'
      TabOrder = 3
    end
    object RBFPTodos: TRadioButton
      Left = 21
      Top = 21
      Width = 84
      Height = 17
      Caption = 'TODOS'
      TabOrder = 4
    end
  end
  object CBValor: TCheckBox
    Left = 348
    Top = 201
    Width = 175
    Height = 17
    Caption = 'Relat'#243'rio sem Valor'
    Color = clWhite
    ParentColor = False
    TabOrder = 13
  end
  object PEstadosMunicipios: TPanel
    Left = 16
    Top = 8
    Width = 553
    Height = 313
    TabOrder = 12
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 553
      Height = 313
    end
    object pdat: TGroupBox
      Left = 12
      Top = 8
      Width = 245
      Height = 94
      Caption = 'Intervalo de datas  (lan'#231'amento)'
      Color = clWhite
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 6
        Top = 40
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label3: TLabel
        Left = 127
        Top = 42
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDtIni: TMaskEdit
        Left = 6
        Top = 56
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EdDtFim: TMaskEdit
        Left = 126
        Top = 56
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object RGFiltraData: TRadioGroup
      Left = 264
      Top = 10
      Width = 281
      Height = 43
      Hint = 'Escolha o tipo de filtragem'
      Caption = 'Filtrar por:'
      Color = clWhite
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Data do Pedido'
        '&Data da Nota Fiscal')
      ParentColor = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object RGTipoFiltro: TRadioGroup
      Left = 264
      Top = 54
      Width = 281
      Height = 48
      Caption = 'Ordena'#231#227'o'
      Color = clWhite
      Columns = 2
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Todos  '
        'Somente Nota Fiscal    '
        'Somente Pedidos ')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    inline FrmEstadoInicial: TFrmBusca
      Left = 10
      Top = 116
      Width = 317
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      inherited LTextoBusca: TLabel
        Width = 51
        Caption = 'Estado:'
      end
      inherited LUZOPEN: TShape
        Left = 274
      end
      inherited LUZMINUS: TShape
        Left = 295
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Width = 208
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 273
        Width = 20
        Height = 20
        OnClick = FrmEstadoInicialBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 293
        Width = 20
        Height = 20
        OnClick = FrmEstadoInicialBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 63
        Height = 20
      end
    end
    inline FrmMunicipio: TFrmBusca
      Left = 10
      Top = 164
      Width = 317
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 4
      inherited LTextoBusca: TLabel
        Width = 66
        Caption = 'Municipio:'
      end
      inherited LUZOPEN: TShape
        Left = 274
      end
      inherited LUZMINUS: TShape
        Left = 295
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Width = 208
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 273
        Width = 20
        Height = 20
        OnClick = FrmMunicipioBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 293
        Width = 20
        Height = 20
        OnClick = FrmMunicipioBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 63
        Height = 20
      end
    end
    inline FrmProdutoRegiao: TFrmBusca
      Left = 10
      Top = 212
      Width = 317
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 5
      inherited LTextoBusca: TLabel
        Width = 57
        Caption = 'Produto:'
      end
      inherited LUZOPEN: TShape
        Left = 274
      end
      inherited LUZMINUS: TShape
        Left = 295
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Width = 208
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 273
        Width = 20
        Height = 20
        OnClick = FrmProdutoRegiaoBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 293
        Width = 20
        Height = 20
        OnClick = FrmProdutoRegiaoBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 63
        Height = 20
      end
    end
  end
  inherited FSRel: TfrReport
    Left = 528
    Top = 18
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 496
    Top = 18
  end
  object BackupFile1: TBackupFile
    Version = '3.00'
    BackupMode = bmAll
    CompressionLevel = clFastest
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 424
    Top = 18
  end
end
