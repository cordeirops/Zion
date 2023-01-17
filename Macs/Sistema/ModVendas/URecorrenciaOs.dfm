object FRecorrenciaOs: TFRecorrenciaOs
  Left = 195
  Top = 58
  AutoScroll = False
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Recorr'#234'ncias'
  ClientHeight = 580
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 916
    Top = 561
    Width = 12
    Height = 12
    Brush.Color = 5066239
  end
  object Shape2: TShape
    Left = 839
    Top = 562
    Width = 12
    Height = 12
    Brush.Color = clMoneyGreen
  end
  object Shape4: TShape
    Left = 773
    Top = 562
    Width = 12
    Height = 12
    Brush.Color = 5169141
  end
  object Label15: TLabel
    Left = 855
    Top = 561
    Width = 52
    Height = 13
    Caption = 'A vencer'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 788
    Top = 561
    Width = 46
    Height = 13
    Caption = 'Inativas'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 933
    Top = 560
    Width = 53
    Height = 13
    Caption = 'Vencidas'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape3: TShape
    Left = 686
    Top = 562
    Width = 12
    Height = 12
    Brush.Color = 16759644
  end
  object Label3: TLabel
    Left = 703
    Top = 561
    Width = 65
    Height = 13
    Caption = 'Conclu'#237'das'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object PanelRecorrencia: TPanel
    Left = 4
    Top = 1
    Width = 985
    Height = 153
    Color = 16772332
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 320
      Top = 3
      Width = 661
      Height = 142
      Caption = 'Filtros'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object LabelIniRec: TLabel
        Left = 335
        Top = 23
        Width = 77
        Height = 20
        Caption = 'Data inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LabelFimRec: TLabel
        Left = 477
        Top = 21
        Width = 68
        Height = 20
        Caption = 'Data final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dtIniRec: TMaskEdit
        Left = 307
        Top = 47
        Width = 109
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnKeyDown = dtIniRecKeyDown
      end
      object dtFimRec: TMaskEdit
        Left = 439
        Top = 47
        Width = 109
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnKeyDown = dtFimRecKeyDown
      end
      object RadioGroup1: TRadioGroup
        Left = 11
        Top = 17
        Width = 286
        Height = 105
        Caption = 'Status'
        TabOrder = 3
      end
      object rbAtivas: TRadioButton
        Left = 24
        Top = 41
        Width = 81
        Height = 17
        Caption = 'Ativas'
        TabOrder = 0
        OnClick = rbAtivasClick
      end
      object rbInativas: TRadioButton
        Left = 24
        Top = 64
        Width = 81
        Height = 17
        Caption = 'Inativas'
        TabOrder = 1
        OnClick = rbInativasClick
      end
      object btnAplicar: TBitBtn
        Left = 559
        Top = 40
        Width = 92
        Height = 33
        Caption = 'Aplicar'
        TabOrder = 6
        OnClick = btnAplicarClick
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB122
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C
          B1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF4CB1224CB1224CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
          22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB122FFFFFFFFFFFF
          4CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB122FF
          FFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA4CB1
          224CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224C
          B122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF4CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB122
          4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4CB1224CB1224CB1224CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1224CB122FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB1224CB1224CB1
          22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF4CB122FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object rbTodas: TRadioButton
        Left = 24
        Top = 88
        Width = 113
        Height = 17
        Caption = 'Todas'
        TabOrder = 2
        OnClick = rbTodasClick
      end
      object rbVencidas: TRadioButton
        Left = 104
        Top = 41
        Width = 97
        Height = 17
        Caption = 'Vencidas'
        Checked = True
        TabOrder = 7
        TabStop = True
        OnClick = rbVencidasClick
      end
      object rbVencMes: TRadioButton
        Left = 104
        Top = 89
        Width = 161
        Height = 17
        Caption = 'A Vencer em 1 m'#234's'
        TabOrder = 8
        OnClick = rbVencMesClick
      end
      object rbVencSem: TRadioButton
        Left = 104
        Top = 65
        Width = 185
        Height = 17
        Caption = 'A vencer em 1 semana'
        TabOrder = 9
        OnClick = rbVencSemClick
      end
    end
    object btnImpRec: TBitBtn
      Left = 186
      Top = 12
      Width = 126
      Height = 31
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnImpRecClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
        00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFF
        FFFFFFFFFFFFFFFF000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000C8C8C8C5C5C5000000000000FFFFFFFF
        FFFFFFFFFFFFFFFF0D0D0D000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000CBCBCBC8C8C80000
        000F0F0FFFFFFFFFFFFFFFFFFFFFFFFF69696900000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000006C6C6CFFFFFFFFFFFFFFFFFFFFFFFFF7F7F76969690D0D
        0D00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000E0E0E6B6B6BF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
        00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object DBGridConsultaRec: TDBGrid
    Left = 2
    Top = 156
    Width = 986
    Height = 403
    TabStop = False
    Color = 15794175
    Ctl3D = False
    DataSource = DMServ.DSTalx3
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PMenuRec
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridConsultaRecDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'Num. OS:'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Cliente'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESPESA'
        Title.Caption = 'Detalhemento'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Servi'#231'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTFECH'
        Title.Caption = 'Fechado'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAREC'
        Title.Caption = 'Pr'#243'x. Recorr'#234'ncia'
        Width = 110
        Visible = True
      end>
  end
  object PMenuRec: TPopupMenu
    Left = 632
    Top = 240
    object desabilitarrec: TMenuItem
      Caption = 'Desabilitar recorr'#234'ncia'
      OnClick = desabilitarrecClick
    end
    object mnurecconcluida: TMenuItem
      Caption = 'Marcar como conclu'#237'do'
      OnClick = mnurecconcluidaClick
    end
  end
  object frxImpRec: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42261.660293622680000000
    ReportOptions.LastChange = 42317.979491134260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 56
    Datasets = <
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end
      item
        DataSet = frxDBRec
        DataSetName = 'frxDBRec'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape1: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 83.149660000000000000
          ShowHint = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 891.969080000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Recorr'#195#170'ncias de Servi'#195#167'os')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBEmpresa."fantasia"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 3.779527560000000000
          Top = 37.795300000000000000
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBEmpresa."razao_social"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 907.087200000000000000
          Top = 2.220470000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 1046.929810000000000000
        object Shape2: TfrxShapeView
          Top = 1.000000000000000000
          Width = 1046.929133860000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'N'#195#186'm. OS:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 2.000000000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente/Equipamento:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 540.472790000000000000
          Top = 2.000000000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Servi'#195#167'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 827.717070000000000000
          Top = 2.000000000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'D. Fech.:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 937.323440000000000000
          Top = 2.000000000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'D. Rec.:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRec
        DataSetName = 'frxDBRec'
        RowCount = 0
        object Shape3: TfrxShapeView
          Width = 1046.929133860000000000
          Height = 41.574830000000000000
          ShowHint = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.559060000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBRec."numero"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385826770000000000
          Top = 1.559060000000000000
          Width = 415.748146220000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBRec."nome"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 113.385670550000000000
          Top = 20.456710000000000000
          Width = 415.748158430000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBRec."descricao"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 540.472440940000000000
          Top = 1.559060000000000000
          Width = 283.464603540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxDBRec."despesa"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 827.716572050000000000
          Top = 1.511811020000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBRec."dtfech"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 937.322871260000000000
          Top = 1.511811020000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxDBRec."datarec"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBRec: TfrxDBDataset
    UserName = 'frxDBRec'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 288
    Top = 88
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 256
    Top = 88
  end
  object frxDBCidade: TfrxDBDataset
    UserName = 'frxDBCidade'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 288
    Top = 56
  end
  object frxDBLoja: TfrxDBDataset
    UserName = 'frxDBLoja'
    CloseDataSource = False
    DataSource = DMMACS.DSLoja
    BCDToCurrency = False
    Left = 256
    Top = 120
  end
end
