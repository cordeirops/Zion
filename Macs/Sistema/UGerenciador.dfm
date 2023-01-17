inherited FGerenciador: TFGerenciador
  Left = 356
  Top = 129
  Caption = 'Gerenciador'
  ClientWidth = 753
  KeyPreview = True
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pChaveNfe: TPanel [0]
    Left = 248
    Top = 184
    Width = 265
    Height = 113
    TabOrder = 3
    object Label19: TLabel
      Left = 40
      Top = 16
      Width = 187
      Height = 13
      Caption = 'Selecione o per'#237'odo para ajuste:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAjustar: TButton
      Left = 16
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Ajustar'
      TabOrder = 0
      OnClick = BtnAjustarClick
    end
    object BtnCancelaAjuste: TButton
      Left = 176
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelaAjusteClick
    end
    object cbPeriodoFiscal: TDBLookupComboBox
      Left = 32
      Top = 39
      Width = 201
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      KeyField = 'COD_PERIODOFISCAL'
      ListField = 'DESCRICAO'
      ListSource = DMMACS.DPeriodoFiscal
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited PComunica: TPanel
    Top = 170
  end
  object PageControl1: TPageControl
    Left = 2
    Top = 9
    Width = 748
    Height = 460
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&MONITORAMENTO'
      object Panel4: TPanel
        Left = 0
        Top = 16
        Width = 740
        Height = 412
        BevelInner = bvLowered
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 16
          Top = 16
          Width = 237
          Height = 193
          Caption = 'Formul'#225'rios Ativos'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object LWForms: TListView
            Left = 5
            Top = 18
            Width = 228
            Height = 144
            Columns = <
              item
                AutoSize = True
                Caption = 'Lojas Selecionadas'
                ImageIndex = 1
              end>
            ColumnClick = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = [fsBold]
            GridLines = True
            ParentFont = False
            TabOrder = 0
            ViewStyle = vsReport
          end
          object BitBtn1: TBitBtn
            Left = 6
            Top = 166
            Width = 227
            Height = 24
            Caption = 'Liberar form selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 209
          Width = 713
          Height = 193
          Caption = 'INSTRU'#199#213'ES AO BANCO DE DADOS'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object msql: TMemo
            Left = 2
            Top = 16
            Width = 709
            Height = 175
            Color = 15138815
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 256
          Top = 16
          Width = 237
          Height = 193
          Caption = 'M'#243'dulos Ativos'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object LWModulos: TListView
            Left = 5
            Top = 18
            Width = 228
            Height = 144
            Columns = <
              item
                AutoSize = True
                Caption = 'Lojas Selecionadas'
                ImageIndex = 1
              end>
            ColumnClick = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = [fsBold]
            GridLines = True
            ParentFont = False
            TabOrder = 0
            ViewStyle = vsReport
          end
          object BitBtn2: TBitBtn
            Left = 6
            Top = 166
            Width = 227
            Height = 24
            Caption = 'Liberar m'#243'dulo selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn2Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Comandos'
      ImageIndex = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 740
        Height = 427
        BevelInner = bvLowered
        TabOrder = 1
        object GroupBox4: TGroupBox
          Left = 7
          Top = 194
          Width = 729
          Height = 227
          Caption = '                   RESULTADO DA SQL                 '
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 3
            Top = 21
            Width = 718
            Height = 192
            Color = 15269887
            DataSource = DMMACS.DSALX
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 6
        Top = 2
        Width = 731
        Height = 191
        Caption = '   &LINHA DE COMANDO SQL      '
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object MCOMAND: TFlatMemo
          Left = 2
          Top = 21
          Width = 719
          Height = 108
          Hint = 'Insira o comando desejado e pressione F9 para executar'
          ColorBorder = clTeal
          ColorFlat = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object RGCOMMAND: TRadioGroup
          Left = 3
          Top = 131
          Width = 159
          Height = 55
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            '&Select'
            '&Exec')
          ParentFont = False
          TabOrder = 1
        end
        object BtnOpen: TBitBtn
          Left = 163
          Top = 137
          Width = 141
          Height = 25
          Caption = '&Open Command'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BtnOpenClick
        end
        object BtnClear: TBitBtn
          Left = 163
          Top = 162
          Width = 141
          Height = 24
          Caption = '&Clear Lines'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BtnClearClick
        end
        object BitBtn3: TBitBtn
          Left = 560
          Top = 137
          Width = 160
          Height = 25
          Caption = 'Cancelar Comando'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn3Click
        end
      end
    end
  end
  object QrAjustaCst: TQuickRep
    Left = 200
    Top = 666
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMESTOQUE.Alx1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 8
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          21.166666666666670000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 88
        Top = 8
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          21.166666666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 512
        Top = 8
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          21.166666666666670000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cst Antigo:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 584
        Top = 8
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          21.166666666666670000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cst Atual:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 25
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          66.145833333333330000
          1955.270833333333000000)
        Shape = qrsRectangle
      end
      object QRLabel5: TQRLabel
        Left = 702
        Top = 8
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1857.375000000000000000
          21.166666666666670000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 66
      Width = 740
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = -1
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          -2.645833333333333000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.Alx1
        DataField = 'CONTRINT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 88
        Top = -1
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          -2.645833333333333000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.Alx1
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 512
        Top = -1
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          -2.645833333333333000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.Alx1
        DataField = 'CSTANT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 584
        Top = -1
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          -2.645833333333333000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.Alx1
        DataField = 'CSTATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 694
        Top = -1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1836.208333333333000000
          -2.645833333333333000
          111.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.Alx1
        DataField = 'vendvarv'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 79
      Width = 740
      Height = 72
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        190.500000000000000000
        1957.916666666667000000)
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 0
        Top = 2
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          1955.270833333333000000)
        Shape = qrsRectangle
      end
      object LValorTributadoAnterior: TQRLabel
        Left = 8
        Top = 8
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cst Antigo:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LValorTributadoAtual: TQRLabel
        Left = 8
        Top = 32
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          84.666666666666670000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cst Antigo:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 495
    Top = 18
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 480
    Top = 58
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    CloseDataSource = True
    DataSet = DMMACS.TMP
    Left = 448
    Top = 58
  end
  object OpenDialog1: TOpenDialog
    Left = 318
    Top = 52
  end
end
