inherited FRelEstrutResult: TFRelEstrutResult
  Left = 24
  Top = 130
  Caption = 'Estrutura de Resultados'
  ClientHeight = 357
  ClientWidth = 569
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DRLabel1: TDRLabel [0]
    Left = 84
    Top = 74
    Width = 161
    Height = 16
    Caption = 'Intervalo entre Datas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object Label1: TLabel [1]
    Left = 84
    Top = 90
    Width = 69
    Height = 16
    Caption = 'Dt. Inicial:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel [2]
    Left = 228
    Top = 90
    Width = 61
    Height = 16
    Caption = 'Dt. Final:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [3]
    Left = 8
    Top = 88
    Width = 88
    Height = 13
    Caption = 'Contas a Pagar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label8: TLabel [4]
    Left = 600
    Top = 8
    Width = 163
    Height = 16
    Caption = 'Resultados para Caixa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [5]
    Left = 600
    Top = 130
    Width = 168
    Height = 16
    Caption = 'Resultados para Banco:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [6]
    Left = 600
    Top = 252
    Width = 201
    Height = 16
    Caption = 'Resultados para Ctas Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [7]
    Left = 600
    Top = 372
    Width = 219
    Height = 16
    Caption = 'Resultados para Ctas Receber:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel [8]
    Left = 8
    Top = 8
    Width = 554
    Height = 344
    Caption = 'Nenhum Registro Encontrado! '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Visible = False
  end
  inherited PComunica: TPanel
    Left = 108
    Top = 122
    Width = 359
    Color = clWhite
    TabOrder = 9
    object LBloco: TLabel
      Left = 6
      Top = 60
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 74
      Width = 349
      Height = 19
      Ctl3D = False
      DataSource = DMCONTA.DPlnCta
      Options = []
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CLASSIFICACAO'
          Visible = True
        end>
    end
  end
  object PTitulo: TPanel [10]
    Left = 56
    Top = 88
    Width = 458
    Height = 41
    TabOrder = 8
    Visible = False
  end
  object DBGridRelEst: TDBGrid [11]
    Left = 16
    Top = 51
    Width = 537
    Height = 298
    Color = 15794175
    DataSource = DMCONTA.DRel
    FixedColor = clSkyBlue
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBGridRelEstDrawColumnCell
    OnDblClick = DBGridRelEstDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CLASSIFICACAO'
        Title.Caption = 'Classifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPREV'
        Title.Caption = 'Previsto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRREAL'
        Title.Caption = 'Realizado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object DBGridCtaRec: TDBGrid [12]
    Left = 600
    Top = 392
    Width = 560
    Height = 100
    Color = 15794175
    DataSource = DMENTRADA.DAlx
    FixedColor = clSkyBlue
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dtref'
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENC'
        Title.Caption = 'Data Vencimento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMDOC'
        Title.Caption = 'Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object DBGridCtaPagar: TDBGrid [13]
    Left = 600
    Top = 268
    Width = 560
    Height = 100
    Color = 15794175
    DataSource = DMBANCO.Dalx
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'dtref'
        Title.Caption = 'Refer'#234'ncia'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENC'
        Title.Caption = 'Data Vencimento'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end>
  end
  object DBGridBanco: TDBGrid [14]
    Left = 600
    Top = 146
    Width = 560
    Height = 100
    Color = 15794175
    DataSource = DMCAIXA.DAlx
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'dtref'
        Title.Caption = 'Refer'#234'ncia'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOOP'
        Title.Caption = 'Opera'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTMOV'
        Title.Caption = 'Data Movimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Width = 339
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORSERV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor Servi'#231'o'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor Produto'
        Width = 83
        Visible = True
      end>
  end
  object DBGridCaixa: TDBGrid [15]
    Left = 600
    Top = 24
    Width = 560
    Height = 100
    Color = 15794175
    DataSource = DMCONTA.DAlx
    FixedColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'dtrefer'
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Valor'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPCAI'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTREFER'
        Title.Caption = 'Data Refer'#234'ncia'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HISTORICO'
        Title.Caption = 'Hist'#243'rico'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC'
        Title.Caption = 'Documento'
        Width = 80
        Visible = True
      end>
  end
  object RGTipoEstrut: TRadioGroup [16]
    Left = 84
    Top = 13
    Width = 401
    Height = 41
    Color = clWhite
    Columns = 2
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      'Regime de Caixa'
      'Regime de Compet'#234'ncia')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object EdLocClassific: TEdit [17]
    Left = 8
    Top = 24
    Width = 132
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    Text = 'Localizar'
    Visible = False
    OnEnter = EdLocClassificEnter
    OnKeyUp = EdLocClassificKeyUp
  end
  object EdLoc: TEdit [18]
    Left = 144
    Top = 24
    Width = 321
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Text = 'Localizar'
    Visible = False
    OnEnter = EdLocEnter
    OnKeyUp = EdLocKeyUp
  end
  inherited GroupBox1: TGroupBox
    Left = 77
    Top = 294
    Width = 415
    TabOrder = 7
    inherited GroupBox2: TGroupBox
      inherited BtnImprimir: TBitBtn
        Caption = '&Detalhar'
        OnClick = BtnImprimirClick
      end
    end
    inherited GroupBox3: TGroupBox
      Left = 163
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 315
    end
  end
  inline FrmBuscaConta1: TFrmBusca [20]
    Left = 84
    Top = 139
    Width = 401
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 130
      Caption = 'Totalizadora Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 350
      Width = 23
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 370
      Visible = True
    end
    inherited EdDescricao: TFlatEdit
      Width = 279
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 353
      OnClick = FrmBuscaConta1BTNOPENClick
    end
    inherited EDCodigo: TFlatEdit [5]
      ColorFlat = clLightGreen
      OnKeyPress = FrmBuscaConta1EDCodigoKeyPress
    end
    inherited BTNMINUS: TBitBtn [6]
      Left = 371
      OnClick = FrmBuscaConta1BTNMINUSClick
    end
  end
  inline FrmBuscaConta2: TFrmBusca [21]
    Left = 83
    Top = 183
    Width = 410
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 122
      Caption = 'Totalizadora Final:'
    end
    inherited LUZOPEN: TShape
      Left = 350
      Width = 23
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 370
      Visible = True
    end
    inherited EdDescricao: TFlatEdit
      Width = 279
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 353
      OnClick = FrmBuscaConta2BTNOPENClick
    end
    inherited EDCodigo: TFlatEdit [5]
      ColorFlat = clLightGreen
      OnKeyPress = FrmBuscaConta2EDCodigoKeyPress
    end
    inherited BTNMINUS: TBitBtn [6]
      Left = 371
      OnClick = FrmBuscaConta2BTNMINUSClick
    end
  end
  object RGTipoRel: TRadioGroup
    Left = 92
    Top = 223
    Width = 383
    Height = 36
    Color = clWhite
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Anal'#237'tico'
      'Sint'#233'tico')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
  end
  object CBVISUCTAVAL: TCheckBox
    Left = 126
    Top = 272
    Width = 311
    Height = 17
    Caption = 'Visualizar apenas contas com valores'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object BtnVoltar1: TBitBtn
    Left = 536
    Top = 464
    Width = 56
    Height = 28
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    Visible = False
    OnClick = BtnVoltar1Click
  end
  object EdDTIni: TColorMaskEdit
    Left = 84
    Top = 106
    Width = 121
    Height = 22
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EdDtFim: TColorMaskEdit
    Left = 228
    Top = 106
    Width = 121
    Height = 22
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object BtImpCaixa: TButton
    Left = 1112
    Top = 125
    Width = 50
    Height = 19
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    Visible = False
    OnClick = BtImpCaixaClick
  end
  object BtImpBanco: TButton
    Left = 1112
    Top = 248
    Width = 50
    Height = 19
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    Visible = False
    OnClick = BtImpBancoClick
  end
  object BtImpRec: TButton
    Left = 1112
    Top = 490
    Width = 50
    Height = 19
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Visible = False
    OnClick = BtImpRecClick
  end
  object BtImpPg: TButton
    Left = 1112
    Top = 368
    Width = 50
    Height = 19
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    Visible = False
    OnClick = BtImpPgClick
  end
  object BitBtn1: TBitBtn
    Left = 516
    Top = 16
    Width = 56
    Height = 28
    Caption = 'Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    Visible = False
    OnClick = BitBtn1Click
  end
  inherited FSRel: TfrReport
    Left = 468
    Top = 26
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 436
    Top = 26
  end
  object FrRelDet: TfrReport
    Dataset = FRDsDet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 544
    Top = 24
    ReportForm = {18000000}
  end
  object FRDsDet: TfrDBDataSet
    Left = 512
    Top = 24
  end
  object FRRelBanco: TfrReport
    Dataset = FRDsBanco
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 544
    Top = 56
    ReportForm = {18000000}
  end
  object FRDsBanco: TfrDBDataSet
    Left = 512
    Top = 56
  end
  object FRRelReceb: TfrReport
    Dataset = FRDsReceb
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 544
    Top = 88
    ReportForm = {18000000}
  end
  object FRDsReceb: TfrDBDataSet
    Left = 512
    Top = 88
  end
  object FRRelPagar: TfrReport
    Dataset = FRDsPagar
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 544
    Top = 120
    ReportForm = {18000000}
  end
  object FRDsPagar: TfrDBDataSet
    Left = 512
    Top = 120
  end
end
