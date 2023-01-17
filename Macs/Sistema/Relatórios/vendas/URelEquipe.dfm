inherited FRelEquipe: TFRelEquipe
  Left = 316
  Top = 25
  Caption = 'FRelEquipe'
  ClientHeight = 334
  ClientWidth = 579
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 433
    Top = 60
    Width = 37
    Height = 13
    Caption = 'PLACA:'
    Color = 16772332
    ParentColor = False
  end
  object LUZMINUS: TShape [1]
    Left = 500
    Top = 75
    Width = 20
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  inherited PComunica: TPanel
    Left = 66
    Top = 144
  end
  object GroupBox5: TGroupBox [3]
    Left = 8
    Top = 26
    Width = 245
    Height = 72
    Caption = 'Intervalo de datas '
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 20
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object Label4: TLabel
      Left = 127
      Top = 22
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIni: TMaskEdit
      Left = 6
      Top = 36
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
      Left = 126
      Top = 36
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
  object RGESCOLHA: TRadioGroup [4]
    Left = 256
    Top = 26
    Width = 154
    Height = 72
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Ordens de Servi'#231'o '
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '&Abertas'
      '&Fechadas')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  inline FrmEquipeIni: TFrmBusca [5]
    Left = 12
    Top = 133
    Width = 546
    Height = 37
    Color = 16772332
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 92
      Caption = 'Equipe Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 503
      Width = 19
    end
    inherited LUZMINUS: TShape
      Left = 520
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 407
    end
    inherited BTNOPEN: TBitBtn
      Left = 502
      Top = 16
      Height = 18
      OnClick = FrmEquipeIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 520
      OnClick = FrmEquipeIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      OnExit = FrmEquipeIniEDCodigoExit
      OnKeyDown = FrmEquipeIniEDCodigoKeyDown
    end
  end
  inline FrmEquipeFim: TFrmBusca [6]
    Left = 12
    Top = 170
    Width = 548
    Height = 37
    Color = 16772332
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Width = 84
      Caption = 'Equipe Final:'
    end
    inherited LUZOPEN: TShape
      Left = 503
      Width = 20
    end
    inherited LUZMINUS: TShape
      Left = 521
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 407
    end
    inherited BTNOPEN: TBitBtn
      Left = 502
      OnClick = FrmEquipeFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 520
      OnClick = FrmEquipeFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      OnExit = FrmEquipeFimEDCodigoExit
      OnKeyDown = FrmEquipeFimEDCodigoKeyDown
    end
  end
  inherited GroupBox1: TGroupBox [7]
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  inline FrmPessoaIni: TFrmBusca
    Left = 13
    Top = 215
    Width = 546
    Height = 36
    Color = 16772332
    ParentColor = False
    TabOrder = 6
    inherited LTextoBusca: TLabel
      Width = 94
      Caption = 'Cliente Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 503
      Width = 19
    end
    inherited LUZMINUS: TShape
      Left = 520
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 407
    end
    inherited BTNOPEN: TBitBtn
      Left = 502
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 520
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      OnExit = FrmPessoaIniEDCodigoExit
      OnKeyDown = FrmPessoaIniEDCodigoKeyDown
    end
  end
  inline FrmPessoaFim: TFrmBusca
    Left = 12
    Top = 249
    Width = 552
    Height = 40
    Color = 16772332
    ParentColor = False
    TabOrder = 7
    inherited LTextoBusca: TLabel
      Width = 86
      Caption = 'Cliente Final:'
    end
    inherited LUZOPEN: TShape
      Left = 503
      Width = 20
    end
    inherited LUZMINUS: TShape
      Left = 521
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 407
    end
    inherited BTNOPEN: TBitBtn
      Left = 502
      OnClick = FrmPessoaFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 520
      OnClick = FrmPessoaFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      OnExit = FrmPessoaFimEDCodigoExit
      OnKeyDown = FrmPessoaFimEDCodigoKeyDown
    end
  end
  object EDPlaca: TColorMaskEdit
    Left = 433
    Top = 77
    Width = 65
    Height = 21
    EditMask = 'AAA-0000;1;_'
    MaxLength = 8
    TabOrder = 9
    Text = '   -    '
    OnExit = EDPlacaExit
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object BTNMINUS: TBitBtn
    Left = 500
    Top = 78
    Width = 19
    Height = 19
    Hint = 'Pressione para apagar '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = BTNMINUSClick
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object RGTipoData: TRadioGroup
    Left = 8
    Top = 98
    Width = 244
    Height = 32
    Hint = 'Escolha o tipo de filtragem'
    Color = clWhite
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Abertura'
      'Fechamento')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
  end
  inherited FSRel: TfrReport
    Left = 336
    Top = 112
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 376
    Top = 112
  end
end
