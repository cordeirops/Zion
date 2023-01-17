inherited FRelCaixa: TFRelCaixa
  Left = 352
  Top = 127
  Caption = 'FRelCaixa'
  ClientHeight = 339
  ClientWidth = 580
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PPosFinanc: TPanel [0]
    Left = 8
    Top = 15
    Width = 554
    Height = 268
    BevelOuter = bvNone
    Color = 16772332
    ParentBackground = False
    TabOrder = 8
    inline FBCaixaIni: TFrmBusca
      Left = 7
      Top = 80
      Width = 544
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Width = 84
        Caption = 'Caixa Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 518
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBCaixaIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBCaixaIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyDown = FBCaixaIniEDCodigoKeyDown
      end
    end
    inline FBCaixaFim: TFrmBusca
      Left = 7
      Top = 119
      Width = 544
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 1
      inherited LTextoBusca: TLabel
        Width = 76
        Caption = 'Caixa Final:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 503
        Width = 17
        OnClick = FBCaixaFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBCaixaFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyDown = FBCaixaFimEDCodigoKeyDown
      end
    end
    inline FBCCIni: TFrmBusca
      Left = 6
      Top = 175
      Width = 545
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 2
      inherited LTextoBusca: TLabel
        Width = 150
        Caption = 'Conta Corrente Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
        ColorFlat = clWhite
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBCCIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBCCIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        ColorFlat = clMoneyGreen
        OnKeyDown = FBCCIniEDCodigoKeyDown
      end
    end
    inline FBCCFim: TFrmBusca
      Left = 6
      Top = 215
      Width = 545
      Height = 40
      Color = 16772332
      ParentColor = False
      TabOrder = 3
      inherited LTextoBusca: TLabel
        Width = 142
        Caption = 'Conta Corrente Final:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
        ColorFlat = clWhite
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBCCFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBCCFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        ColorFlat = clMoneyGreen
        OnKeyDown = FBCCFimEDCodigoKeyDown
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 2
      Width = 249
      Height = 73
      Caption = 'Intervalo de datas para relat'#243'rio'
      Color = 16772332
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label3: TLabel
        Left = 128
        Top = 26
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDtIni: TMaskEdit
        Left = 8
        Top = 40
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EdDtFim: TMaskEdit
        Left = 128
        Top = 40
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
  end
  object GroupBox5: TGroupBox [1]
    Left = 8
    Top = 18
    Width = 249
    Height = 73
    Caption = 'Intervalo de datas para relat'#243'rio'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object Label4: TLabel
      Left = 128
      Top = 26
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIni: TMaskEdit
      Left = 8
      Top = 40
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object EdDataFim: TMaskEdit
      Left = 128
      Top = 40
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  inline FrmConta: TFrmBusca [2]
    Left = 15
    Top = 211
    Width = 545
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 45
      Caption = 'Conta:'
    end
    inherited LUZOPEN: TShape
      Left = 497
      Width = 23
      Height = 22
    end
    inherited LUZMINUS: TShape
      Left = 517
    end
    inherited EdDescricao: TFlatEdit
      Left = 130
      Width = 371
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 501
      OnClick = FrmContaBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 519
      OnClick = FrmContaBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 127
      ColorFlat = clLightGreen
      OnKeyPress = FrmContaEDCodigoKeyPress
    end
  end
  object PIndividual: TPanel [3]
    Left = 11
    Top = 92
    Width = 550
    Height = 112
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 6
    Visible = False
  end
  object PIntervalo: TPanel [4]
    Left = 10
    Top = 98
    Width = 547
    Height = 104
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    inline FrmCaixaIni: TFrmBusca
      Left = 6
      Top = 0
      Width = 550
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Width = 84
        Caption = 'Caixa Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 518
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FrmCaixaIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FrmCaixaIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyPress = FrmCaixaIniEDCodigoKeyPress
      end
    end
    inline FrmCaixaFim: TFrmBusca
      Left = 6
      Top = 47
      Width = 551
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 1
      inherited LTextoBusca: TLabel
        Width = 76
        Caption = 'Caixa Final:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FrmCaixaFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FrmCaixaFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyPress = FrmCaixaFimEDCodigoKeyPress
      end
    end
  end
  object RGOrdenar: TRadioGroup [5]
    Left = 274
    Top = 20
    Width = 135
    Height = 72
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Ordenar por '
    Color = 16772332
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Ordem Entrada'
      'Tipo Movimento')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
  end
  object PRecDesp: TPanel [6]
    Left = 8
    Top = 16
    Width = 553
    Height = 265
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 7
    inline FBEquipIni: TFrmBusca
      Left = 7
      Top = 88
      Width = 544
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Width = 133
        Caption = 'Equipamento Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 518
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBEquipIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBEquipIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyDown = FBEquipIniEDCodigoKeyDown
      end
    end
    inline FBEquipFim: TFrmBusca
      Left = 7
      Top = 127
      Width = 544
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 1
      inherited LTextoBusca: TLabel
        Width = 125
        Caption = 'Equipamento Final:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        Width = 18
        OnClick = FBEquipFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBEquipFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        OnKeyDown = FBEquipFimEDCodigoKeyDown
      end
    end
    inline FBFornecIni: TFrmBusca
      Left = 6
      Top = 174
      Width = 545
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      inherited LTextoBusca: TLabel
        Width = 94
        Caption = 'Cliente Inicial:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
        ColorFlat = clWhite
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBFornecIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBFornecIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        ColorFlat = clMoneyGreen
        OnKeyDown = FBFornecIniEDCodigoKeyDown
      end
    end
    inline FBFornecFim: TFrmBusca
      Left = 6
      Top = 217
      Width = 545
      Height = 40
      Color = clWhite
      ParentColor = False
      TabOrder = 3
      inherited LTextoBusca: TLabel
        Width = 86
        Caption = 'Cliente Final:'
      end
      inherited LUZOPEN: TShape
        Left = 500
      end
      inherited LUZMINUS: TShape
        Left = 519
      end
      inherited EdDescricao: TFlatEdit
        Left = 94
        Width = 407
        ColorFlat = clWhite
      end
      inherited BTNOPEN: TBitBtn
        Left = 502
        OnClick = FBFornecFimBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 520
        OnClick = FBFornecFimBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 91
        ColorFlat = clMoneyGreen
        OnKeyDown = FBFornecFimEDCodigoKeyDown
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 2
      Width = 249
      Height = 73
      Caption = 'Intervalo de datas para relat'#243'rio'
      Color = clWhite
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label6: TLabel
        Left = 128
        Top = 26
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EDIni: TMaskEdit
        Left = 8
        Top = 40
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EDFim: TMaskEdit
        Left = 128
        Top = 40
        Width = 113
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object RGTipoRel: TRadioGroup
      Left = 410
      Top = 2
      Width = 135
      Height = 72
      Hint = 'Escolha o tipo de filtragem'
      Color = clWhite
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Sint'#233'tico'
        'Anal'#237'tico')
      ParentColor = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object RGRecDesp: TRadioGroup
      Left = 266
      Top = 2
      Width = 135
      Height = 72
      Hint = 'Escolha o tipo de filtragem'
      Color = clWhite
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Receitas'
        'Despesas'
        'Receitas e Despesas')
      ParentColor = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = RGRecDespClick
    end
  end
  inherited GroupBox1: TGroupBox
    Top = 279
    TabOrder = 1
    inherited GroupBox2: TGroupBox
      inherited BtnImprimir: TBitBtn
        OnClick = BtnImprimirClick
      end
    end
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  inherited PComunica: TPanel [8]
    Left = 50
    Top = 114
    TabOrder = 4
  end
  inherited FSRel: TfrReport [9]
    Dataset = FDSCaixa
    Top = 26
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Top = 26
  end
  object FDSCaixa: TfrDBDataSet
    CloseDataSource = True
    DataSet = DMCAIXA.TRel
    Left = 488
    Top = 26
  end
end
