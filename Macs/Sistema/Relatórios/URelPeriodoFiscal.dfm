inherited FRelPeriodoFiscal: TFRelPeriodoFiscal
  Left = 453
  Top = 264
  Caption = 'FRelPeriodoFiscal'
  ClientHeight = 198
  ClientWidth = 448
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pAguarde: TPanel [0]
    Left = 8
    Top = 40
    Width = 433
    Height = 81
    BevelInner = bvLowered
    Caption = 'Estamos gerando seu relat'#243'rio. Por favor aguarde.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  inherited PComunica: TPanel
    Left = 31
    Top = 24
    Width = 378
  end
  object pEmail: TFashionPanel [2]
    Left = 42
    Top = 19
    Width = 377
    Height = 170
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 4
    Visible = False
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
    Title = 'Enviar e-mail para contabilidade'
    LineWidth = 0
    LineColor = clBlack
    Theme = ttCustom
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 92
      Height = 13
      Caption = 'E-mail contador:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 65
      Height = 13
      Caption = 'Mensagem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 92
      Top = 56
      Width = 265
      Height = 11
      Caption = 'Para informar mais de um e-mail para o destinat'#225'rio use virgula.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnEnviarOk: TBitBtn
      Left = 112
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = BtnEnviarOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnCancelaEnvio: TBitBtn
      Left = 198
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelaEnvioClick
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
    object EdEmail: TEdit
      Left = 16
      Top = 35
      Width = 345
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edMensagem: TMemo
      Left = 16
      Top = 79
      Width = 345
      Height = 61
      Lines.Strings = (
        '')
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox [3]
    Left = 32
    Top = 55
    Width = 377
    Height = 78
    Caption = 'Per'#237'odo escolhido para o fechamento do m'#234's'
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 20
      Width = 345
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      KeyField = 'COD_PERIODOFISCAL'
      ListField = 'DESCRICAO'
      ListSource = DMMACS.DPeriodoFiscal
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 46
      Width = 130
      Height = 22
      DataField = 'DTINICIAL'
      DataSource = DMMACS.DPeriodoFiscal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 232
      Top = 46
      Width = 130
      Height = 22
      DataField = 'DTFINAL'
      DataSource = DMMACS.DPeriodoFiscal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited GroupBox1: TGroupBox
    Left = 15
    Top = 148
    Width = 412
    inherited GroupBox3: TGroupBox
      Left = 159
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 311
    end
  end
  object pOrigemXml: TPanel [5]
    Left = 32
    Top = 7
    Width = 377
    Height = 46
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 5
    Visible = False
    object Label3: TLabel
      Left = 2
      Top = 3
      Width = 137
      Height = 16
      Caption = 'Origem arquivos XML'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object cbOrigemXml: TComboBox
      Left = 2
      Top = 20
      Width = 135
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Pasta local'
      Items.Strings = (
        'Pasta local'
        'Banco de dados')
    end
  end
  inherited FSRel: TfrReport
    Left = 392
    Top = 65534
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 360
    Top = 65534
  end
  object FSDanfe: TfrReport
    Dataset = FMzrNfe.FSDBDanfe
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 264
    Top = 65528
    ReportForm = {18000000}
  end
  object FSDBDanfe: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 232
    Top = 65528
  end
  object FrxNfce: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43339.643578669000000000
    ReportOptions.LastChange = 43340.412138900460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Top = 2
    Datasets = <
      item
        DataSet = dataSetEmp
        DataSetName = 'dataSetEmp'
      end
      item
        DataSet = dataSetGeralRel
        DataSetName = 'dataSetGeralRel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        DataSet = dataSetGeralRel
        DataSetName = 'dataSetGeralRel'
        RowCount = 0
        Stretched = True
        object Memo45: TfrxMemoView
          Left = 671.756340000000000000
          Top = 0.779530000000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_FRETE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 18.897637800000000000
          Top = 0.629870000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetGeralRel."CODIGO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 70.677165350000000000
          Top = 0.629870000000000000
          Width = 105.826840000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetGeralRel."DESCRICAO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 178.771653540000000000
          Top = 0.629870000000000000
          Width = 30.236220470000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."CST"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 210.519685040000000000
          Top = 0.629870000000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."CFOP"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 250.582677170000000000
          Top = 0.629870000000000000
          Width = 30.236220470000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."UNIDADE"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 283.023810000000000000
          Top = 0.629870000000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 322.708661420000000000
          Top = 0.629870000000000000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetGeralRel."NCM"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 376.377952760000000000
          Top = 0.629870000000000000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 430.047244090000000000
          Top = 0.629870000000000000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_TOTAL"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 483.338582680000000000
          Top = 0.629870000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_ICMS"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 534.362204720000000000
          Top = 0.629870000000000000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_ICMS_ST"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 587.653543310000000000
          Top = 0.629870000000000000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_IPI"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 627.716535430000000000
          Top = 0.629870000000000000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_DESCONTO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 39.685056460000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Condition = 'dataSetGeralRel."ID"'
        object Memo31: TfrxMemoView
          Left = 671.756340000000000000
          Top = 22.677165350000000000
          Width = 41.574803150000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Frete')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 2.779530000000000000
          Top = 3.779530000000000000
          Width = 154.960629920000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetGeralRel."OPERACAO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 159.740260000000000000
          Top = 3.779530000000000000
          Width = 64.251968500000000000
          Height = 17.007874015748000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."DATA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 226.393700790000000000
          Top = 3.779530000000000000
          Width = 49.133858270000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."NUMERO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 277.417317950000000000
          Top = 3.779530000000000000
          Width = 37.795278030000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."SERIE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 320.881884880000000000
          Top = 3.779530000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."MODELO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 374.795278030000000000
          Top = 3.779530000000000000
          Width = 71.811008980000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetGeralRel."VALOR_FISCAL"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 448.629909060000000000
          Top = 3.779530000000000000
          Width = 49.133858270000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetGeralRel."TIPO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 500.409414650000000000
          Top = 3.779530000000000000
          Width = 215.433105040000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetGeralRel."STATUS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 18.897637800000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 70.708720000000000000
          Top = 22.677165354330700000
          Width = 105.826840000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 178.653680000000000000
          Top = 22.677165354330700000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CST')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 210.669450000000000000
          Top = 22.677165354330700000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CFOP')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 250.685220000000000000
          Top = 22.677165354330700000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Und')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 283.039580000000000000
          Top = 22.677165354330700000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qtd')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 322.834880000000000000
          Top = 22.677165354330700000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NCM')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 376.527830000000000000
          Top = 22.677165354330700000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. un')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 430.220780000000000000
          Top = 22.677165354330700000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 483.354670000000000000
          Top = 22.677165354330700000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ICMS')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 534.488560000000000000
          Top = 22.677165354330700000
          Width = 51.023622050000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ICMS ST')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 587.622450000000000000
          Top = 22.677165354330700000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'IPI')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 627.740570000000000000
          Top = 22.677165350000000000
          Width = 41.574803150000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Desc')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDashDot
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo46: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779527559055118000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDashDotDot
          Diagonal = True
        end
        object Memo47: TfrxMemoView
          Left = 283.086614170000000000
          Top = 3.779527559055118000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 671.622047240000000000
          Top = 3.779527559055118000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_FRETE">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 376.440944880000000000
          Top = 3.779527559055118000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_UNITARIO">,MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 430.110236220000000000
          Top = 3.779527559055118000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 483.401574800000000000
          Top = 3.779527559055118000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_ICMS">,MasterData1)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 534.425196850000000000
          Top = 3.779527559055118000
          Width = 51.023622050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_ICMS_ST">,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 587.716535430000000000
          Top = 3.779527559055118000
          Width = 37.795275590000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_IPI">,MasterData1)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 627.779527560000000000
          Top = 3.779527559055118000
          Width = 41.574803150000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dataSetGeralRel."VALOR_DESCONTO">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 20.787401570000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 2.779530000000000000
          Top = 2.779530000000000000
          Width = 154.960730000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Opera'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 159.519790000000000000
          Top = 2.779530000000000000
          Width = 64.251968500000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Emiss'#195#163'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 226.551330000000000000
          Top = 2.779530000000000000
          Width = 49.133890000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 277.464750000000000000
          Top = 2.779530000000000000
          Width = 37.795278030000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'S'#195#169'rie')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 321.039580000000000000
          Top = 2.779530000000000000
          Width = 47.244094490000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Modelo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 374.953000000000000000
          Top = 2.779530000000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 448.543600000000000000
          Top = 2.779530000000000000
          Width = 49.133858270000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tipo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 500.457020000000000000
          Top = 2.779530000000000000
          Width = 215.433210000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo55: TfrxMemoView
          Left = 3.559060000000000000
          Top = 1.559060000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dataSetEmp."FANTASIA"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 568.708907950000000000
          Top = 0.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Data: [Date]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 568.708907950000000000
          Top = 20.677180000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hora: [Time]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 568.708907950000000000
          Top = 42.354360000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page#]/[TotalPages#]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 153.960730000000000000
          Top = 49.692950000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rela'#195#167#195#163'o notas fiscais/produtos')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 3.669293780000000000
          Top = 23.677180000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dataSetEmp."FONE"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 73.811070000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object dataSetEmp: TfrxDBDataset
    UserName = 'dataSetEmp'
    CloseDataSource = False
    DataSet = DMESTOQUE.Alx4
    BCDToCurrency = False
    Top = 35
  end
  object dataSetGeralRel: TfrxDBDataset
    UserName = 'dataSetGeralRel'
    CloseDataSource = False
    DataSet = DMESTOQUE.Alx1
    BCDToCurrency = False
    Top = 67
  end
  object exportar: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Top = 98
  end
  object dataSetAlx4: TfrxDBDataset
    UserName = 'dataSetAlx4'
    CloseDataSource = False
    DataSet = DMESTOQUE.Alx4
    BCDToCurrency = False
    Left = 448
    Top = 5
  end
  object dataSetCfop: TfrxDBDataset
    UserName = 'dataSetCfop'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 480
    Top = 5
  end
  object dataSetCfop2: TfrxDBDataset
    UserName = 'dataSetCfop2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 448
    Top = 37
  end
  object dataSetEmpresa: TfrxDBDataset
    UserName = 'dataSetEmpresa'
    CloseDataSource = False
    DataSet = DMMACS.TEmpresa
    BCDToCurrency = False
    Left = 448
    Top = 69
  end
  object dataSetPessoaJ: TfrxDBDataset
    UserName = 'dataSetPessoaJ'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 480
    Top = 165
  end
  object dataSetProdutos: TfrxDBDataset
    UserName = 'dataSetProdutos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 448
    Top = 133
  end
  object dataSetLoja: TfrxDBDataset
    UserName = 'dataSetLoja'
    CloseDataSource = False
    DataSet = DMMACS.TLoja
    BCDToCurrency = False
    Left = 448
    Top = 165
  end
  object dataSetSaida: TfrxDBDataset
    UserName = 'dataSetSaida'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 480
    Top = 133
  end
  object dataSetTmp: TfrxDBDataset
    UserName = 'dataSetTmp'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 448
    Top = 101
  end
  object dataSetTransp: TfrxDBDataset
    UserName = 'dataSetTransp'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 480
    Top = 101
  end
  object dataSetGeral: TfrxDBDataset
    UserName = 'dataSetGeral'
    CloseDataSource = False
    DataSet = DMESTOQUE.Alx1
    BCDToCurrency = False
    Left = 480
    Top = 69
  end
  object dataSetCidade: TfrxDBDataset
    UserName = 'dataSetCidade'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 480
    Top = 37
  end
  object MessXml: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    ContentType = ' '
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 100
    Top = 65532
  end
  object SMTPxml: TIdSMTP
    SASLMechanisms = <>
    Left = 132
    Top = 65532
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 160
    Top = 65530
  end
  object compacta: TZipMaster
    AddOptions = []
    AddStoreSuffixes = [assGIF, assPNG, assZ, assZIP, assZOO, assARC, assLZH, assARJ, assTAZ, assTGZ, assLHA, assRAR, assACE, assCAB, assGZ, assGZIP, assJAR, assJPG, assJPEG, ass7Zp, assMP3, assWMV, assWMA, assDVR, assAVI]
    ConfirmErase = False
    DLL_Load = False
    ExtrOptions = []
    KeepFreeOnAllDisks = 0
    KeepFreeOnDisk1 = 0
    LanguageID = 0
    MaxVolumeSizeKb = 0
    NoReadAux = False
    SFXOptions = []
    SFXOverwriteMode = ovrAlways
    SpanOptions = []
    Trace = False
    Unattended = False
    UseUTF8 = False
    Verbose = False
    Version = '1.9.1.0023'
    WriteOptions = []
    Left = 416
    Top = 88
  end
end
