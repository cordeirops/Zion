inherited FRelProdutos: TFRelProdutos
  Caption = ''
  ClientHeight = 396
  ClientWidth = 579
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 58
    Top = 56
  end
  inherited GroupBox1: TGroupBox
    Left = 16
    Top = 340
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  inline FrmProduto1: TFrmBusca [2]
    Left = 107
    Top = 15
    Width = 356
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    inherited LTextoBusca: TLabel
      Width = 110
      Caption = 'Produto Inicial:'
      Font.Style = [fsBold]
    end
    inherited LUZOPEN: TShape
      Left = 315
    end
    inherited LUZMINUS: TShape
      Left = 334
    end
    inherited EdDescricao: TFlatEdit
      Left = 70
      Width = 247
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 317
      OnClick = FrmProduto1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 335
      OnClick = FrmProduto1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 67
      ColorFlat = 14606014
      CharCase = ecUpperCase
      OnKeyDown = FrmProduto1EDCodigoKeyDown
    end
  end
  inline FrmProduto2: TFrmBusca [3]
    Left = 107
    Top = 63
    Width = 356
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 101
      Caption = 'Produto Final:'
      Font.Style = [fsBold]
    end
    inherited LUZOPEN: TShape
      Left = 315
    end
    inherited LUZMINUS: TShape
      Left = 334
    end
    inherited EdDescricao: TFlatEdit
      Left = 70
      Width = 247
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 317
      OnClick = FrmProduto2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 335
      OnClick = FrmProduto2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 67
      ColorFlat = 14606014
      CharCase = ecUpperCase
      OnKeyDown = FrmProduto2EDCodigoKeyDown
    end
  end
  object groupData: TGroupBox
    Left = 117
    Top = 120
    Width = 335
    Height = 73
    Caption = 'Intervalo de datas'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 40
      Top = 20
      Width = 44
      Height = 16
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 20
      Width = 36
      Height = 16
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edDataInicial: TcxDateEdit
      Left = 11
      Top = 37
      Width = 121
      Height = 24
      Style.BorderColor = clMenu
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 0
    end
    object edDataFinal: TcxDateEdit
      Left = 195
      Top = 37
      Width = 121
      Height = 24
      TabOrder = 1
    end
  end
  inline FrmCliente: TFrmBusca
    Left = 114
    Top = 212
    Width = 345
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 6
    inherited LTextoBusca: TLabel
      Width = 56
      Caption = 'Cliente:'
      Font.Style = [fsBold]
    end
    inherited LUZOPEN: TShape
      Left = 296
    end
    inherited LUZMINUS: TShape
      Left = 314
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 247
    end
    inherited BTNOPEN: TBitBtn
      Left = 297
      OnClick = FrmClienteBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 315
      OnClick = FrmClienteBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyDown = FrmClienteEDCodigoKeyDown
    end
  end
  object gbStatus: TGroupBox
    Left = 120
    Top = 272
    Width = 329
    Height = 57
    Caption = 'Trazer ordens...'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object cbAberta: TCheckBox
      Left = 32
      Top = 26
      Width = 73
      Height = 17
      Caption = 'Abertas'
      TabOrder = 0
    end
    object cbFechada: TCheckBox
      Left = 208
      Top = 26
      Width = 97
      Height = 17
      Caption = 'Fechadas'
      TabOrder = 1
    end
  end
  inherited FSRel: TfrReport
    Left = 584
    Top = 8
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 616
    Top = 8
  end
  object FrxRel: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42045.617912951400000000
    ReportOptions.LastChange = 42046.660706296290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'xParcialQtdeVendido, xParcialTotalVenda: Real;'
      'xParcialTotalComp: Real;'
      '//      '
      'xTotalQtdeVendido, xVlrTotalVenda: Real;'
      'xVlrTotalComp: Real;'
      '//'
      
        'xParcialLucro, xTotalLucro: Real;                               ' +
        '                                           '
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  xParcialQtdeVendido := 0;  '
      '  xParcialTotalVenda := 0;  '
      '  xParcialTotalComp := 0;'
      
        '  xParcialLucro := 0;                                           ' +
        ' '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  xParcialQtdeVendido := xParcialQtdeVendido + <dbSetProdutos."Q' +
        'TD">;'
      
        '  //TOTALIZADOR PARCIAL DO VALOR DE COMPRA                      ' +
        '            '
      
        '  xParcialTotalComp := xParcialTotalComp + <dbSetProdutos."VLRTO' +
        'TALCOMPRA">;'
      
        '  //TOTALIZADOR PARCIAL DO VALOR DE VENDA                       ' +
        '          '
      
        '  xParcialTotalVenda := xParcialTotalVenda + <dbSetProdutos."VLR' +
        'TOTALVENDA">;'
      
        '  //TOTALIZADOR PARCIAL DO LUCRO                                ' +
        '                                               '
      
        '  xParcialLucro := xParcialLucro + <dbSetProdutos."LUCROAPROXIMA' +
        'DO">;      '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  xTotalQtdeVendido := xTotalQtdeVendido + xParcialQtdeVendido;'
      '  //TOTALIZADOR GERAL DO VALOR DE COMPRA             ;'
      '  xVlrTotalComp := xVlrTotalComp + xParcialTotalComp;'
      '  //TOTALIZADOR GERAL DO VALOR DE VENDA                  '
      '  xVlrTotalVenda := xVlrTotalVenda + xParcialTotalVenda;'
      '  //TOTALIZADOR GERAL DO LUCRO'
      '  xTotalLucro := xTotalLucro + xParcialLucro;      '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  mmTotalQtde.Text := FormatFloat('#39'0'#39', xTotalQtdeVendido);'
      
        '  //                                                            ' +
        '                 '
      
        '  mmTotalCompra.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xVlrT' +
        'otalComp);  '
      
        '  //                                                            ' +
        '                 '
      
        '  mmTotalVenda.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xVlrTo' +
        'talVenda);'
      '  //'
      
        '  mmTotalLucro.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTotal' +
        'Lucro);      '
      'end;'
      ''
      'begin'
      '   xTotalQtdeVendido := 0;  '
      '   xVlrTotalComp := 0;  '
      '   xVlrTotalVenda := 0;'
      '   xTotalLucro := 0;                     '
      'end.')
    Left = 504
    Top = 65528
    Datasets = <
      item
        DataSet = dbSetAux
        DataSetName = 'dbSetAux'
      end
      item
        DataSet = dbSetProdutos
        DataSetName = 'dbSetProdutos'
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
      object ReportTitle1: TfrxReportTitle
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Relat'#195#179'rio de Custo dos Produtos Vendidos')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 20.677180000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetAux."TMP2"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'verdana'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetAux."TMP1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 89.708720000000000000
          Width = 718.110700000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Pedido de Venda/Relat'#195#179'rios/Custos de Produtos Vendidos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 105.826840000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Child = FrxRel.Child1
        Condition = 'dbSetProdutos."COD_SUBPRODUTO"'
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            
              '[dbSetProdutos."CONTRINT"] | [dbSetProdutos."DESCRICAO"] | Vlr. ' +
              'Comp.: [dbSetProdutos."CUSTO" #n%2,2n] | Vlr. Venda: [dbSetProdu' +
              'tos."VENDA" #n%2,2n]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = dbSetProdutos
        DataSetName = 'dbSetProdutos'
        RowCount = 0
        object Memo9: TfrxMemoView
          Left = 148.716576930000000000
          Top = 2.000000000000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetProdutos."QTD"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 403.968574720000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetProdutos."VLRUNITVENDA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 506.236220470000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetProdutos."VLRTOTALVENDA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 15.456695350000000000
          Top = 1.889763780000000000
          Width = 64.251968500000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetProdutos."NUMERO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.488186540000000000
          Top = 1.889763780000000000
          Width = 60.472438500000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetProdutos."DATA"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 194.535560000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetProdutos."VLRUNITCOMPRA"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 296.582870000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetProdutos."VLRTOTALCOMPRA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 612.283860000000000000
          Top = 1.889763780000000000
          Width = 102.047244090000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetProdutos."LUCROAPROXIMADO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Memo14: TfrxMemoView
          Left = 148.874015750000000000
          Width = 37.795275590000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<dbSetProdutos."QTD">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 506.236220470000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbSetProdutos."VLRTOTALVENDA">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 296.629921260000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbSetProdutos."VLRTOTALCOMPRA">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 612.283860000000000000
          Width = 102.047244090000000000
          Height = 13.228346460000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<dbSetProdutos."LUCROAPROXIMADO">,MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 117.165430000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo18: TfrxMemoView
          Left = 442.205010000000000000
          Top = 18.000000000000000000
          Width = 272.126160000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Totalizador Geral:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 442.204724409448800000
          Top = 39.677180000000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 442.204724409448800000
          Top = 77.480290550000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Tot. Venda:')
          ParentFont = False
        end
        object mmTotalQtde: TfrxMemoView
          Left = 593.386210000000000000
          Top = 39.677180000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object mmTotalVenda: TfrxMemoView
          Left = 593.386210000000000000
          Top = 77.480290550000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 442.204724409448800000
          Top = 58.582664960000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Tot. Compra:')
          ParentFont = False
        end
        object mmTotalCompra: TfrxMemoView
          Left = 593.386210000000000000
          Top = 58.582664960000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 442.205010000000000000
          Top = 94.488250000000000000
          Width = 147.401670000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Lucro Aprox.:')
          ParentFont = False
        end
        object mmTotalLucro: TfrxMemoView
          Left = 593.385826770000000000
          Top = 94.488250000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 148.543348580000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qtde.:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 404.078696220000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Unit. Venda:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 506.236220470000000000
          Width = 98.267716540000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Tot. Venda:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 15.456710000000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 83.488264650000000000
          Width = 60.472440940000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 194.094620000000000000
          Width = 98.267718980000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Unit. Compra:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 296.519648430000000000
          Width = 98.267718980000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Tot. Compra:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Width = 102.047246540000000000
          Height = 13.228346460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8 = (
            'Lucro Aproximado:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          Top = 6.779530000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          Top = 8.779530000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'verdana'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'MZR Sistemas - Gest'#195#163'o com equilibrio e seguran'#195#167'a')
          ParentFont = False
        end
      end
    end
  end
  object dbSetProdutos: TfrxDBDataset
    UserName = 'dbSetProdutos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 488
    Top = 24
  end
  object dbSetAux: TfrxDBDataset
    UserName = 'dbSetAux'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 520
    Top = 24
  end
end
