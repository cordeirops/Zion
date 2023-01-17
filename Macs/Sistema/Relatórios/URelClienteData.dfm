inherited FRelClienteData: TFRelClienteData
  Left = 281
  Top = 204
  Caption = 'FRelClienteData'
  ClientHeight = 259
  ClientWidth = 577
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inline FrmPessoaIni: TFrmBusca [1]
    Left = 19
    Top = 106
    Width = 534
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 104
      Caption = 'Cliente Inicial:'
      Font.Style = [fsBold]
    end
    inherited LUZOPEN: TShape
      Left = 492
    end
    inherited LUZMINUS: TShape
      Left = 513
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 65
      Width = 425
      Height = 20
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 491
      Width = 20
      Height = 20
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 511
      Width = 20
      Height = 20
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 63
      Height = 20
      OnKeyDown = FrmPessoaIniEDCodigoKeyDown
    end
  end
  inline FrmPessoaFim: TFrmBusca [2]
    Left = 19
    Top = 151
    Width = 534
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 95
      Caption = 'Cliente Final:'
      Font.Style = [fsBold]
    end
    inherited LUZOPEN: TShape
      Left = 492
      Width = 20
    end
    inherited LUZMINUS: TShape
      Left = 513
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 65
      Width = 424
      Height = 20
      Font.Style = []
    end
    inherited BTNOPEN: TBitBtn
      Left = 491
      Width = 20
      Height = 20
      OnClick = FrmPessoaFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 511
      Width = 20
      Height = 20
      OnClick = FrmPessoaFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 63
      Height = 20
      OnKeyDown = FrmPessoaFimEDCodigoKeyDown
    end
  end
  inherited GroupBox1: TGroupBox [3]
    Top = 204
    TabOrder = 2
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 21
    Top = 31
    Width = 188
    Height = 61
    Caption = 'Intervalo de datas '
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 22
      Width = 32
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdDataIni: TMaskEdit
      Left = 6
      Top = 36
      Width = 85
      Height = 19
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object EdDataFim: TMaskEdit
      Left = 97
      Top = 36
      Width = 85
      Height = 19
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  inherited FSRel: TfrReport
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMMACS.DSRel
  end
end
