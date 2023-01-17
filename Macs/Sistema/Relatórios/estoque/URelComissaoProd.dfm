inherited FRelComissaoProd: TFRelComissaoProd
  Left = 265
  Top = 193
  Caption = 'Relat'#243'rio Comiss'#227'o Produto'
  ClientHeight = 268
  ClientWidth = 573
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 74
    Top = 416
    TabOrder = 6
  end
  inline FrmPessoaIni: TFrmBusca [1]
    Left = 24
    Top = 111
    Width = 454
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 110
      Caption = 'Vendedor Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 405
      Width = 19
    end
    inherited LUZMINUS: TShape
      Left = 422
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 310
    end
    inherited BTNOPEN: TBitBtn
      Left = 404
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 422
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      ColorBorder = clBlack
      OnKeyPress = FrmPessoaIniEDCodigoKeyPress
    end
  end
  inline FrmPessoaFim: TFrmBusca [2]
    Left = 24
    Top = 158
    Width = 454
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 102
      Caption = 'Vendedor Final:'
    end
    inherited LUZOPEN: TShape
      Left = 406
      Width = 20
    end
    inherited LUZMINUS: TShape
      Left = 424
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 94
      Width = 310
    end
    inherited BTNOPEN: TBitBtn
      Left = 405
      OnClick = FrmPessoaFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 423
      OnClick = FrmPessoaFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 91
      ColorBorder = clBlack
      OnKeyPress = FrmPessoaFimEDCodigoKeyPress
    end
  end
  inherited GroupBox1: TGroupBox [3]
    Top = 211
    TabOrder = 5
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  object GroupBox5: TGroupBox
    Left = 24
    Top = 20
    Width = 245
    Height = 72
    Caption = 'Intervalo de datas'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
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
  object RGESCOLHA: TRadioGroup
    Left = 272
    Top = 20
    Width = 143
    Height = 72
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Pedido de Venda '
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Ambos'
      'Aberto'
      'Fechado')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object RGOrdenar: TRadioGroup
    Left = 418
    Top = 20
    Width = 143
    Height = 72
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Ordenar por '
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Data'
      'Pedido'
      'Produto')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  inherited FSRel: TfrReport
    Left = 264
    Top = 96
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 232
    Top = 96
  end
end
