inherited FRelChequeEmit: TFRelChequeEmit
  Left = 294
  Top = 138
  Caption = 'FRelChequeEmit'
  ClientHeight = 390
  ClientWidth = 453
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 58
    Top = 74
    Width = 335
  end
  object RGSELECAO: TRadioGroup
    Left = 74
    Top = 108
    Width = 301
    Height = 99
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Items.Strings = (
      'Movimentados'
      'N'#227'o Movimentados'
      'Vencidos')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object rgAgrupar: TRadioGroup
    Left = 74
    Top = 209
    Width = 301
    Height = 33
    Caption = 'Agrupar'
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'DATA'
      'BANCO')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
    Visible = False
  end
  object DBCTACOR: TDBLookupComboBox
    Left = 58
    Top = 246
    Width = 335
    Height = 22
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    KeyField = 'COD_CTACOR'
    ListField = 'NUMCTACOR; DESCBANCO'
    ListSource = DMBANCO.DWCtaCor
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object GroupBox2: TGroupBox
    Left = 73
    Top = 319
    Width = 302
    Height = 46
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 4
    object GroupBox4: TGroupBox
      Left = 16
      Top = 6
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object BtnVisualizar: TBitBtn
        Left = 3
        Top = 8
        Width = 90
        Height = 25
        Hint = 
          'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
          'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
          ' sua impress'#227'o.'
        Caption = '&Visualizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnVisualizarClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
    end
    object GroupBox5: TGroupBox
      Left = 190
      Top = 6
      Width = 95
      Height = 35
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
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
  object GroupBox1: TGroupBox
    Left = 74
    Top = 24
    Width = 301
    Height = 92
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 45
      Width = 43
      Height = 18
      Caption = 'Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 44
      Width = 43
      Height = 18
      Caption = 'Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 164
      Top = 45
      Width = 38
      Height = 18
      Caption = 'Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 163
      Top = 44
      Width = 38
      Height = 18
      Caption = 'Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EDDATA1: TColorMaskEdit
      Left = 21
      Top = 61
      Width = 113
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EDDATA2: TColorMaskEdit
      Left = 165
      Top = 61
      Width = 113
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object RGFiltro: TRadioGroup
      Left = 4
      Top = 7
      Width = 293
      Height = 33
      Caption = 'Filtrar por '
      Color = 16772332
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Vencimento'
        'Lan'#231'amento'
        'Movimenta'#231#227'o')
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
    end
  end
  inline FrmPessoaIni: TFrmBusca
    Left = 74
    Top = 270
    Width = 303
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 6
    Visible = False
    inherited LTextoBusca: TLabel
      Width = 126
      Caption = 'Filtrar pelo Cliente:'
    end
    inherited LUZOPEN: TShape
      Left = 264
      Width = 19
    end
    inherited LUZMINUS: TShape
      Left = 282
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 32
      Width = 233
    end
    inherited BTNOPEN: TBitBtn
      Left = 264
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 282
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Left = 0
      Width = 33
      OnKeyDown = FrmPessoaIniEDCodigoKeyDown
    end
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMFINANC.DRel
    Left = 397
    Top = 137
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 395
    Top = 97
    ReportForm = {18000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSource = DMFINANC.DSALX
    Left = 386
    Top = 26
  end
  object frCompositeReport1: TfrCompositeReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 392
    Top = 56
    ReportForm = {18000000}
  end
  object FSRel1: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42402.696543541700000000
    ReportOptions.LastChange = 42461.679233587970000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 376
    Top = 208
    Datasets = <
      item
        DataSet = frxCheques
        DataSetName = 'frxCheques'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 203.905643500000000000
          Top = 11.338590000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RELAT'#195#8220'RIO DE CHEQUES')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 71.811070000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frxCheques
        DataSetName = 'frxCheques'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 200.314770240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."EMITENTE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 204.094620000000000000
          Height = 71.811023620000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 740.787880000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line3: TfrxLineView
          Height = 71.811023620000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 740.787880000000000000
          Height = 26.456692910000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 740.787880000000000000
          Height = 71.811023622047240000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 272.126160000000000000
          Height = 71.811030940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 351.496290000000000000
          Height = 71.811030940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 521.575140000000000000
          Height = 71.811030940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 432.755888430000000000
          Width = 86.929136300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCheques."VALOR"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 205.606255280000000000
          Width = 65.007864250000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."NUMCHEQUE"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 274.015689450000000000
          Width = 75.968496610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."DTLANC"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 590.740184330000000000
          Width = 147.401350240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."HISTORICO"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 589.606680000000000000
          Height = 71.811030940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 522.330735510000000000
          Width = 64.251690240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."DESTINO"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 430.866420000000000000
          Height = 71.811030940000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 351.496290000000000000
          Width = 79.748026610000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxCheques."DTMOV"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 22.677180000000000000
        Top = 79.370130000000000000
        Width = 740.409927000000000000
        object Memo11: TfrxMemoView
          Top = 3.779530000000000000
          Width = 204.094534570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Emitente')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 430.866420000000000000
          Top = 3.779530000000000000
          Width = 90.708634570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = '10'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 68.031454570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cheque')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 79.370044570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dt.Lanc.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 151.181114570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Hist'#195#179'rico')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 68.031454570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = '10'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Destino')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 351.496290000000000000
          Top = 3.779530000000000000
          Width = 79.370044570000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Dt.Mov.')
          ParentFont = False
        end
      end
    end
  end
  object frxCheques: TfrxDBDataset
    UserName = 'frxCheques'
    CloseDataSource = False
    DataSource = DMFINANC.DRel
    BCDToCurrency = False
    Left = 408
    Top = 208
  end
end
