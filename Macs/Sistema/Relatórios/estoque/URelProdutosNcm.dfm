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
    Tag = 1
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45110.975983055600000000
    ReportOptions.LastChange = 45230.974708530090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 128
    Top = 5
    Datasets = <
      item
        DataSetName = 'DBDespAdic'
      end
      item
        DataSetName = 'DBItProdOrd'
      end
      item
        DataSetName = 'DBLoja'
      end
      item
        DataSetName = 'DBOrdem'
      end>
    Variables = <
      item
        Name = ' PROPRIA'
        Value = Null
      end
      item
        Name = 'LOJA'
        Value = #39'JD BRASIL'#39
      end
      item
        Name = 'FILTROS'
        Value = #39'AQUI VAI A STRING COM O FILTRO MONTADO'#39
      end
      item
        Name = 'FILTRO'
        Value = #39'AQUI VAI A STRING COM O FILTRO MONTADO'#39
      end>
    Style = <
      item
        Name = 'Title'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 177.500000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object GroupHeader2: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        Condition = 'DBItProdOrd."COD_ORDEM"'
        object Memo38: TfrxMemoView
          Left = 7.559060000000000000
          Top = 21.015770000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 75.590551180000000000
          Top = 21.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          HAlign = haRight
          Memo.UTF8 = (
            'C'#195#179'd.Forn.')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 158.740157480000000000
          Top = 21.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 570.709030000000000000
          Top = 21.015770000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Unit'#195#161'rio')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 489.338900000000000000
          Top = 21.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Quantidade')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 634.961040000000000000
          Top = 21.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Produtos')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 4.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produtos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 91.488250000000000000
        ParentFont = False
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSetName = 'DBOrdem'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 83.149594090000000000
          Top = 3.779527559055120000
          Width = 351.804507550000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLIENTE'
          DataSetName = 'DBOrdem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."CLIENTE"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 3.779530000000000000
          Top = 69.488250000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Ve'#195#173'culo')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 83.149660000000000000
          Top = 69.488188980000000000
          Width = 631.181510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DBOrdem."PLACA"] : [DBOrdem."VEICULOENTRADA"]  |  KM: [DBOrdem.' +
              '"TOTKM"]  |  Ano: [DBOrdem."ANO"]  |  Cor: [DBOrdem."COR"]  |  [' +
              'DBOrdem."CHASSI"]  |  Chassi: [DBOrdem."CHASSI"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 442.205010000000000000
          Top = 3.779527559055120000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779527559055120000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."CPFCNPJ"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 25.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 83.149660000000000000
          Top = 25.133890000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."ENDERECO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 442.205010000000000000
          Top = 25.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 532.913730000000000000
          Top = 25.133890000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."BAIRRO"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 7.559060000000000000
          Top = 43.811070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 83.149660000000000000
          Top = 43.811070000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<DBOrdem."CIDADE">]-[<DBOrdem."UF_ESTADO">]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 442.205010000000000000
          Top = 43.811070000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 532.913730000000000000
          Top = 43.811070000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."TELREL"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 0.377952760000000000
          Width = 718.110700000000000000
          Height = 90.708720000000000000
          ShowHint = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 105.826840000000000000
        ParentFont = False
        Top = 600.945270000000000000
        Width = 718.110700000000000000
        object Memo64: TfrxMemoView
          Left = 67.448818900000000000
          Top = 57.196847950000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBOrdem."VALORTOTALPRODUTO"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 189.645640000000000000
          Top = 57.196847950000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBOrdem."VALORTOTALSERVICO"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 275.771800000000000000
          Top = 57.196847950000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[DBOrdem."ValorTotalOrdem"]')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Width = 718.110700000000000000
          Height = 3.779530000000000000
          ShowHint = False
        end
        object Memo81: TfrxMemoView
          Left = 7.559060000000000000
          Top = 9.000000000000000000
          Width = 434.645950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Pagamento: [DBOrdem."FORMAPAGAMENTO"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 464.882190000000000000
          Top = 55.795300000000000000
          Width = 241.889920000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 464.882190000000000000
          Top = 57.070866141732280000
          Width = 241.889920000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[DBOrdem."CLIENTE"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 10.559060000000000000
          Top = 57.354347790000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBOrdem."descprod"] %')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 133.842610000000000000
          Top = 57.574817790000000000
          Width = 52.913385826771700000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBOrdem."descserv"] %')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 10.692913390000000000
          Top = 37.795300000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Desc.:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 67.488250000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Produtos:')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 133.771631570000000000
          Top = 37.795300000000000000
          Width = 52.913385826771700000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Desc.:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 189.708627240000000000
          Top = 37.795300000000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Servi'#195#167'os:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 275.700736140000000000
          Top = 37.795300000000000000
          Width = 94.488188980000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total O.S.:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        DataSetName = 'DBItProdOrd'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 75.590600000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBItProdOrd."FABRICANTE"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 158.740260000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBItProdOrd."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 489.448818900000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBItProdOrd."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBItProdOrd."VALORTOTAL"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 570.708661420000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBItProdOrd."VALORUNITARIO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559055118110240000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBItProdOrd."CODIGO"]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 521.575140000000000000
        Width = 718.110700000000000000
        DataSetName = 'DBDespAdic'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 7.559060000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBDespAdic."COD_DESPADIC"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 158.740157480000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBDespAdic."SERVICOPRESTADO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 570.708661420000000000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBDespAdic."VALORUNITARIO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 491.338900000000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBDespAdic."QUANTIDADE"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' [DBDespAdic."VALORTOTAL"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 75.590551180000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBDespAdic."NOMEEQUIPE"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 49.133890000000000000
        ParentFont = False
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        Condition = 'DBDespAdic."COD_ORDEM"'
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 6.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Servi'#195#167'os')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 570.708661420000000000
          Top = 23.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Top = 23.897650000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 634.961040000000000000
          Top = 23.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 75.590551180000000000
          Top = 23.897650000000000000
          Width = 79.370078740157480000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Equipe')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 158.740157480315000000
          Top = 23.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o Servi'#195#167'o')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 7.559060000000000000
          Top = 23.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 1.377952760000000000
          Width = 718.110236220000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 145.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 89.574803150000000000
          Top = 97.133858267716500000
          Width = 362.724398210000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'VENDEDOR'
          DataSetName = 'DBOrdem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."VENDEDOR"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 97.133858267716500000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 89.709887550000000000
          Top = 78.992125984252000000
          Width = 80.355610710000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'DBOrdem'
          DisplayFormat.FormatStr = 'dd/MM/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."DTABERT"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 338.850650000000000000
          Top = 78.992125984252000000
          Width = 80.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DTFECH'
          DataSetName = 'DBOrdem'
          DisplayFormat.FormatStr = 'dd/MM/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8 = (
            '[DBOrdem."DTFECH"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 237.244280000000000000
          Top = 78.992125984252000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dt.Fechamento:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 6.692950000000000000
          Top = 78.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dt.Abertura:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 491.419456470000000000
          Top = 97.133858267716500000
          Width = 222.412564600000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'DBOrdem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Situa'#195#167#195#163'o: [DBOrdem."STATUS"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 489.619957210000000000
          Top = 78.992125984252000000
          Width = 224.490742790000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'DBOrdem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ORDEM DE SERVI'#195#8225'O N'#194#186' [DBOrdem."NUMERO"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 543.472790000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 543.472790000000000000
          Top = 19.897637800000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hora:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 642.740570000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/MM/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 641.740570000000000000
          Top = 20.031496062992100000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'HH:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Time]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 105.826840000000000000
          Top = 1.897650000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBLoja."DESCRICAO"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 105.826840000000000000
          Top = 19.897637800000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o: [DBOrdem."ENDERECO1"]')
          ParentFont = False
        end
        object imgLogoTipo: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 68.031540000000000000
          ShowHint = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo49: TfrxMemoView
          Left = 105.826840000000000000
          Top = 38.173228346456700000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro: [DBOrdem."BAIRRO1"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 105.826840000000000000
          Top = 56.314960629921300000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ: [DBOrdem."CNPJ"]   Telefone: [DBOrdem."FONE"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 173.858380000000000000
          Top = 78.992125984252000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBOrdem."HRABERT"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 7.559060000000000000
          Top = 115.275590550000000000
          Width = 710.551640000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Observa'#195#167#195#163'o: [DBOrdem."obsordem"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 641.520100000000000000
          Top = 38.173228346456700000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 543.252320000000000000
          Top = 38.173228346456700000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 76.842610000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
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
