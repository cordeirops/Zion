inherited FLanCHPadrao: TFLanCHPadrao
  Left = 256
  Top = 109
  ActiveControl = TCConsultCH
  Caption = 'FLanCHPadrao'
  ClientHeight = 448
  ClientWidth = 640
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 9
    Width = 620
    Height = 430
    object PLanUnic: TPanel [0]
      Left = 2
      Top = 31
      Width = 616
      Height = 397
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 3
      object Label7: TLabel
        Left = 35
        Top = 144
        Width = 89
        Height = 20
        Caption = 'Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 35
        Top = 196
        Width = 81
        Height = 20
        Caption = 'N'#186' Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 35
        Top = 248
        Width = 66
        Height = 20
        Caption = 'Hist'#243'rico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 163
        Top = 144
        Width = 41
        Height = 20
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inline FrmBusca1: TFrmBusca
        Left = 32
        Top = 32
        Width = 504
        Height = 40
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 160
          Caption = 'Conta para lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 455
        end
        inherited LUZMINUS: TShape
          Left = 473
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 383
        end
        inherited BTNOPEN: TBitBtn
          Left = 456
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 474
          Hint = 'Pressione para apagar o banco'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object DBDTVENC: TDBColorEdit
        Left = 35
        Top = 163
        Width = 120
        Height = 22
        Ctl3D = False
        DataField = 'DTVENC'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = DBDTVENCExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBNUMCHEQUEEMIT: TDBColorEdit
        Left = 35
        Top = 216
        Width = 200
        Height = 22
        Ctl3D = False
        DataField = 'NUMCHEQUE'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 35
        Top = 267
        Width = 558
        Height = 22
        Ctl3D = False
        DataField = 'DTVENC'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 163
        Top = 163
        Width = 120
        Height = 22
        Ctl3D = False
        DataField = 'DTVENC'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object RGMOVIMENTO: TRadioGroup
        Left = 35
        Top = 293
        Width = 265
        Height = 48
        Caption = 'Este lan'#231'amento j'#225' foi movimentado'
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'SIM'
          'N'#195'O')
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    inherited Panel4: TPanel
      Top = 31
      Width = 616
      Height = 369
    end
    object PLancmult: TPanel [2]
      Left = 2
      Top = 31
      Width = 616
      Height = 397
      BevelInner = bvLowered
      Color = 13750737
      TabOrder = 2
      object LTextoBusca: TLabel
        Left = 17
        Top = 64
        Width = 79
        Height = 18
        Caption = 'Hist'#243'rico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 17
        Top = 112
        Width = 83
        Height = 18
        Caption = 'Vlr. Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 113
        Top = 112
        Width = 80
        Height = 18
        Caption = 'N'#186' Folhas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 201
        Top = 112
        Width = 81
        Height = 18
        Caption = 'Intervalo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 289
        Top = 112
        Width = 93
        Height = 18
        Caption = '1'#186' Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 400
        Top = 170
        Width = 209
        Height = 25
        Caption = '&Gerar Lan'#231'amentos'
        TabOrder = 6
        Glyph.Data = {
          66030000424D6603000000000000360000002800000010000000110000000100
          18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
          00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
          7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
          7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
          7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
          7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
          007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
          007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
          007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF}
      end
      object DBGParc: TDBGrid
        Left = 7
        Top = 203
        Width = 602
        Height = 190
        Ctl3D = False
        DataSource = DMBANCO.DMovBanco
        ParentCtl3D = False
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMCHEQUE'
            Title.Caption = 'N'#186' Cheque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENC'
            Title.Caption = 'Prev. Mov.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Width = 64
            Visible = True
          end>
      end
      inline FrmBusca2: TFrmBusca
        Left = 16
        Top = 16
        Width = 593
        Height = 40
        Color = 13750737
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 160
          Caption = 'Conta para lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 545
        end
        inherited LUZMINUS: TShape
          Left = 569
        end
        inherited EdDescricao: TFlatEdit
          Left = 97
          Width = 447
        end
        inherited BTNOPEN: TBitBtn
          Left = 544
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 566
          Hint = 'Pressione para apagar o banco'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 94
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object EdHistorico: TFlatEdit
        Left = 17
        Top = 82
        Width = 584
        Height = 22
        ColorBorder = clBlack
        ColorFlat = 15794169
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object EdVlrTotal: TColorEditFloat
        Left = 16
        Top = 130
        Width = 89
        Height = 22
        Color = 15794169
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdNumFolha: TSpinEdit
        Left = 112
        Top = 128
        Width = 57
        Height = 26
        Hint = 
          'N'#186' de folhas, lan'#231'amentos ou parcelas a serem geradas pelo siste' +
          'ma'
        Color = 15794169
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Value = 2
      end
      object EdIntervalo: TSpinEdit
        Left = 200
        Top = 128
        Width = 57
        Height = 26
        Hint = 
          'Intervalo de dias de um cheque para outro em caso de cheques pr'#233 +
          '-datados. Caso n'#227'o ser pr'#233'-datado informe zero.'
        Color = 15794169
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Value = 0
      end
      object EdPrimeiroCH: TMaskEdit
        Left = 289
        Top = 130
        Width = 96
        Height = 22
        Color = 15794169
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 616
    end
  end
  inherited PComunica: TPanel
    Left = 77
    Top = 115
  end
  inherited PConsulta: TPanel [2]
    Left = 11
    Top = 10
    Width = 613
    Height = 428
    inherited DBGridCadastroPadrao: TDBGrid [0]
      Left = 15
      Top = 104
      Width = 573
      Height = 273
    end
    object Panel2: TPanel [1]
      Left = -6
      Top = 29
      Width = 618
      Height = 363
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 3
      object TCConsultCH: TFlatTabControl
        Left = 8
        Top = 46
        Width = 603
        Height = 317
        Tabs.Strings = (
          'Vencidos'
          'Movimentados'
          'N'#227'o Movimentados')
        TabOrder = 0
        OnTabChanged = TCConsultCHTabChanged
        object PNMov: TPanel
          Left = 1
          Top = 17
          Width = 601
          Height = 297
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 2
          object DBGNMOV: TDBGrid
            Left = 1
            Top = 0
            Width = 599
            Height = 294
            Color = 15794175
            Ctl3D = False
            FixedColor = 11039232
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
          end
        end
        object PMov: TPanel
          Left = 1
          Top = 16
          Width = 601
          Height = 297
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 1
          object DBGMOV: TDBGrid
            Left = 1
            Top = 1
            Width = 599
            Height = 294
            Color = 15794175
            Ctl3D = False
            FixedColor = 11039232
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
          end
        end
        object PVenc: TPanel
          Left = 1
          Top = 17
          Width = 601
          Height = 297
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 0
          object DBGVENC: TDBGrid
            Left = 1
            Top = 1
            Width = 599
            Height = 294
            Color = 15794175
            Ctl3D = False
            FixedColor = 11039232
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
          end
        end
      end
      object PPesquisa: TPanel
        Left = 8
        Top = 2
        Width = 610
        Height = 40
        BevelOuter = bvNone
        Color = 16772332
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        object GroupBox6: TGroupBox
          Left = 4
          Top = 2
          Width = 98
          Height = 38
          Caption = 'N'#186' Cheque'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object EDNUMCHQ: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 89
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnKeyDown = EDNUMCHQKeyDown
            OnKeyPress = EDNUMCHQKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox10: TGroupBox
          Left = 107
          Top = 2
          Width = 93
          Height = 38
          Caption = 'Lan'#231'am.'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object EDLANC: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 85
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = EDNUMCHQKeyDown
            OnKeyPress = EDLANCKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox11: TGroupBox
          Left = 205
          Top = 2
          Width = 93
          Height = 38
          Caption = 'Venc'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object EDVENC: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 85
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = EDNUMCHQKeyDown
            OnKeyPress = EDVENCKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox8: TGroupBox
          Left = 401
          Top = 2
          Width = 208
          Height = 38
          Caption = 'Hist'#243'rico'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          object EDHIST: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 199
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EDNUMCHQKeyDown
            OnKeyPress = EDHISTKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object EDMOV: TGroupBox
          Left = 303
          Top = 2
          Width = 93
          Height = 38
          Caption = 'Mov.'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object EdDtMov: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 84
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = EDNUMCHQKeyDown
            OnKeyPress = EdDtMovKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
    end
    inherited GroupBox1: TGroupBox [2]
      Left = -1
      Top = -22
      Width = 605
      inherited EdNome: TFlatEdit
        Width = 487
      end
      inherited BtnSelecionar: TBitBtn
        Left = 494
      end
    end
    inherited Painel: TPanel [3]
      Left = 0
      Top = 0
      Width = 609
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    object EDTotal: TFloatEdit
      Left = 430
      Top = 397
      Width = 182
      Height = 30
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0,00'
      ValueFormat = '#,##0.00'
      ValueInteger = 0
    end
  end
  object PMNovo: TPopupMenu
    Left = 254
    Top = 117
    object Lanamentonico1: TMenuItem
      Caption = 'Lan'#231'amento '#218'nico'
      OnClick = Lanamentonico1Click
    end
    object LanamentoMltiplo1: TMenuItem
      Caption = 'Lan'#231'amento M'#250'ltiplo'
      OnClick = LanamentoMltiplo1Click
    end
  end
  object PMREL: TPopupMenu
    Left = 395
    Top = 34
    object RelatriodeCheques1: TMenuItem
      Caption = 'Relat'#243'rio de Cheques'
      OnClick = RelatriodeCheques1Click
    end
  end
end
