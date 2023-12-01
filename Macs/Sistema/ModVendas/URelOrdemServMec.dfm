inherited FRelOrdemMecanica: TFRelOrdemMecanica
  Left = 253
  Top = 165
  Caption = 'Relat'#243'rios'
  ClientHeight = 435
  ClientWidth = 521
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnKeyPress = EdDataKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbbPeriodoAbertura: TGroupBox [0]
    Left = 12
    Top = 14
    Width = 245
    Height = 63
    Caption = 'Intervalo de datas  (Abertura)'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object lblDtInicialAbe: TLabel
      Left = 6
      Top = 16
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object lblDtFinalAbe: TLabel
      Left = 127
      Top = 18
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIniAbe: TMaskEdit
      Left = 6
      Top = 32
      Width = 107
      Height = 26
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnChange = EdDataChange
      OnExit = EdDataExit
      OnKeyPress = EdDataKeyPress
    end
    object EdDataFimAbe: TMaskEdit
      Left = 126
      Top = 32
      Width = 111
      Height = 26
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnChange = EdDataChange
      OnExit = EdDataExit
      OnKeyPress = EdDataKeyPress
    end
  end
  object gbbPeriodoFechamento: TGroupBox [1]
    Left = 268
    Top = 14
    Width = 245
    Height = 63
    Caption = 'Intervalo de datas  (Fechamento)'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object lblDtInicialFec: TLabel
      Left = 6
      Top = 16
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object lblDtFinalFec: TLabel
      Left = 127
      Top = 18
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIniFec: TMaskEdit
      Left = 6
      Top = 32
      Width = 111
      Height = 26
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnChange = EdDataChange
      OnExit = EdDataExit
      OnKeyPress = EdDataKeyPress
    end
    object EdDataFimFec: TMaskEdit
      Left = 126
      Top = 32
      Width = 111
      Height = 26
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      OnChange = EdDataChange
      OnExit = EdDataExit
      OnKeyPress = EdDataKeyPress
    end
  end
  object gbbPesquisarPor: TGroupBox [2]
    Left = 136
    Top = 92
    Width = 237
    Height = 101
    Caption = 'Pesquisar por '
    TabOrder = 3
    object cbbAbertas: TCheckBox
      Left = 20
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Abertas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = cbbOutrasClick
    end
    object cbbCanceladas: TCheckBox
      Left = 20
      Top = 60
      Width = 97
      Height = 17
      Caption = 'Canceladas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cbbOutrasClick
    end
    object cbbFechadas: TCheckBox
      Left = 128
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Fechadas'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = cbbOutrasClick
    end
    object cbbTodas: TCheckBox
      Left = 128
      Top = 60
      Width = 97
      Height = 17
      Caption = 'Todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = cbbTodasClick
    end
  end
  inline FrmBuscaCliente: TFrmBusca [3]
    Left = 12
    Top = 208
    Width = 489
    Height = 38
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 45
      Caption = 'Cliente'
    end
    inherited LUZOPEN: TShape
      Left = 443
    end
    inherited LUZMINUS: TShape
      Left = 461
    end
    inherited EdDescricao: TFlatEdit
      Left = 84
      Width = 357
    end
    inherited BTNOPEN: TBitBtn
      Left = 445
      OnClick = FrmBuscaClienteBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 463
      OnClick = FrmBuscaClienteBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 79
      OnKeyDown = FrmBuscaClienteEDCodigoKeyDown
    end
  end
  inherited PComunica: TPanel
    Left = 22
    Top = 168
    Height = 57
  end
  inline FrmBuscaVendedor: TFrmBusca
    Left = 12
    Top = 260
    Width = 489
    Height = 38
    Color = clWhite
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Width = 61
      Caption = 'Vendedor'
    end
    inherited LUZOPEN: TShape
      Left = 443
    end
    inherited LUZMINUS: TShape
      Left = 461
    end
    inherited EdDescricao: TFlatEdit
      Left = 84
      Width = 357
    end
    inherited BTNOPEN: TBitBtn
      Left = 445
      OnClick = FrmBuscaVendedorBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 463
      OnClick = FrmBuscaVendedorBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 79
      OnKeyDown = FrmBuscaVendedorEDCodigoKeyDown
    end
  end
  object gbbOrdenacao: TGroupBox
    Left = 8
    Top = 308
    Width = 505
    Height = 61
    Caption = 'Ordena'#231#227'o'
    Color = clWhite
    ParentColor = False
    TabOrder = 6
    object rbbCadastro: TRadioButton
      Left = 8
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Cadastro'
      Checked = True
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      TabStop = True
    end
    object rbbAlfabetica: TRadioButton
      Left = 100
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Alfab'#233'tica'
      Color = clWhite
      ParentColor = False
      TabOrder = 1
    end
    object rbbNrOrdem: TRadioButton
      Left = 196
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Nr.Ordem'
      Color = clWhite
      ParentColor = False
      TabOrder = 2
    end
    object rbbDtAbertura: TRadioButton
      Left = 296
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Dt.Abertura'
      Color = clWhite
      ParentColor = False
      TabOrder = 3
    end
    object rbbDtFechamento: TRadioButton
      Left = 396
      Top = 24
      Width = 101
      Height = 17
      Caption = 'Dt.Fechamento'
      Color = clWhite
      ParentColor = False
      TabOrder = 4
    end
  end
  object gbbAcoes: TGroupBox
    Left = 7
    Top = 376
    Width = 505
    Height = 46
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 7
    object GroupBox3: TGroupBox
      Left = 5
      Top = 6
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object BtnImprimir: TBitBtn
        Left = 3
        Top = 8
        Width = 90
        Height = 25
        Hint = 
          'Pressione este bot'#227'o para enviar o relat'#243'rio diretamente para im' +
          'press'#227'o, sem que ele seja pr'#233' - visualizado.'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnImprimirClick
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
    end
    object GroupBox4: TGroupBox
      Left = 203
      Top = 7
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object BtnGerarPdf: TBitBtn
        Left = 3
        Top = 8
        Width = 90
        Height = 25
        Hint = 'Pressione este bot'#227'o para salvar o relat'#243'rio em formato PDF'
        Caption = '&Salvar PDF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnGerarPdfClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343C74343C74343C74343C74343C743
          43C74343C74343C74343C74343C74343C74343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF4343C7FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFECECF9C9C9EFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFA1A1E34343C79F9FE2FFFFFFFFFFFFFFFFFFE6E6F8F9F9FDFFFF
          FF4343C7FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFF8F8FD9C9CE24A4AC977
          77D7A0A0E37272D54343C78F8FDEFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFA1A1E35E5ECF4848C98585DB9393DFDCDCF5FFFF
          FF4343C7FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFECECF946
          46C88D8DDDFFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFFFFFFF5B5BCEB7B7EAFFFFFFFFFFFFFFFFFFFFFF
          FF4343C7FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFF5F5FC44
          44C79999E1FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFFDFDFE8080D9D1D1F1FFFFFFFFFFFFFFFFFFFFFF
          FF4343C7FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF4343C74343C74343C74343C74343C7FFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343C7D9D9FFCFCFFB5D5D
          CF7070D4FFFFFFFFFFFFFFFFFFFFFFFF4343C7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF4343C7CFCFFB5C5CD06B6BD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          4343C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343C75A5ACF6D6DD4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343C74343C74343C74343C74343C743
          43C74343C74343C76666D2FEFEFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox5: TGroupBox
      Left = 405
      Top = 6
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object BtnCancelar: TBitBtn
        Left = 3
        Top = 8
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
  object frxRelatorio: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.949923715280000000
    ReportOptions.LastChange = 45110.949923715280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 84
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 476
    Top = 84
  end
  object frxDBOrdem: TfrxDBDataset
    UserName = 'DBOrdem'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 86
    Top = 92
  end
  object frxDBItProdOrd: TfrxDBDataset
    UserName = 'DBItProdOrd'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 84
    Top = 152
  end
  object frxDBDespAdic: TfrxDBDataset
    UserName = 'DBDespAdic'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 434
    Top = 152
  end
  object frxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'MRZ Zion'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 24
    Top = 92
  end
  object frxDBLoja: TfrxDBDataset
    UserName = 'DBLoja'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 20
    Top = 156
  end
end
