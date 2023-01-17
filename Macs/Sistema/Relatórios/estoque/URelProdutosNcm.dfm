inherited FRelProdutosNcm: TFRelProdutosNcm
  Left = 299
  Top = 130
  ClientHeight = 239
  ClientWidth = 330
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 506
    Top = 48
    Width = 215
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 237
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 68
      Width = 313
      Height = 61
      Caption = 'Ordenar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object rbNcmAtivo: TRadioButton
        Left = 152
        Top = 36
        Width = 89
        Height = 17
        Caption = 'NCM Ativo'
        TabOrder = 0
      end
      object rbDescricao: TRadioButton
        Left = 208
        Top = 15
        Width = 89
        Height = 17
        Caption = 'Descri'#231#227'o'
        TabOrder = 1
      end
      object rbNcm: TRadioButton
        Left = 64
        Top = 36
        Width = 49
        Height = 17
        Caption = 'NCM'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rbControleInterno: TRadioButton
        Left = 24
        Top = 15
        Width = 129
        Height = 17
        Caption = 'Controle Interno'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 5
      Width = 313
      Height = 54
      Caption = 'Filtrar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cbNcmAtivo: TCheckBox
        Left = 32
        Top = 24
        Width = 97
        Height = 17
        Caption = 'NCM Ativo'
        TabOrder = 0
      end
      object cbNcmInativo: TCheckBox
        Left = 192
        Top = 24
        Width = 97
        Height = 17
        Caption = 'NCM Inativo'
        TabOrder = 1
      end
    end
    object btnVisualizar: TButton
      Left = 127
      Top = 206
      Width = 75
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 144
      Width = 313
      Height = 57
      Caption = 'Tipo Relat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object rbTPNcmInativos: TRadioButton
        Left = 56
        Top = 16
        Width = 201
        Height = 17
        Caption = 'Produtos com NCM Inativos'
        TabOrder = 0
        OnClick = rbTPNcmInativosClick
      end
      object rbTPNcmCest: TRadioButton
        Left = 4
        Top = 34
        Width = 304
        Height = 21
        Caption = 'Produtos com Substitui'#231#227'o e NCM sem CEST'
        TabOrder = 1
      end
    end
  end
  object frxRelProdutosNcm: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42375.416493368100000000
    ReportOptions.LastChange = 42377.389189722220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   TOTAL: Integer;'
      '     '
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbSetProdutos."ATIVO"> = '#39'1'#39' then'
      '  begin'
      
        '       Memo13.Text := '#39'Sim'#39';                                    ' +
        '      '
      '  end'
      '  else begin'
      '       Memo13.Text := '#39'N'#227'o'#39'  '
      '  end;'
      '  TOTAL := TOTAL + 1;                              '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  TOTAL := 0;                '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 128
    Top = 5
    Datasets = <
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Produtos com NCM Inativos, Inv'#195#161'lidos e sem CEST')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 17.007874020000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = dbSetProdutos
        DataSetName = 'dbSetProdutos'
        RowCount = 0
        object dbSetProdutosdbSetProdutos: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetProdutos."CTRLINTERNO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 94.488250000000000000
          Width = 366.614410000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetProdutos."DESCRICAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 464.882190000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetProdutos."CST"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 577.709030000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetProdutos."NCM"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 657.638220000000000000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 521.795610000000000000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = dbSetProdutos
          DataSetName = 'dbSetProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetProdutos."CEST"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total at'#195#169' aqui: [TOTAL]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ctrl. Interno')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CST')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 577.709030000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NCM')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 657.638220000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ativo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 521.795610000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CEST')
          ParentFont = False
        end
      end
    end
  end
  object dbSetProdutos: TfrxDBDataset
    UserName = 'dbSetProdutos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 160
    Top = 5
  end
end
