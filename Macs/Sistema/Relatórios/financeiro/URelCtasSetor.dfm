inherited FRelCtasSetor: TFRelCtasSetor
  Caption = 'FRelCtasSetor'
  ClientHeight = 270
  ClientWidth = 578
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 40
    Top = 88
    TabOrder = 4
  end
  object GroupBox5: TGroupBox [1]
    Left = 13
    Top = 10
    Width = 249
    Height = 56
    Caption = 'Intervalo de datas'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object Label4: TLabel
      Left = 128
      Top = 18
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIni: TMaskEdit
      Left = 8
      Top = 32
      Width = 113
      Height = 22
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object EdDataFim: TMaskEdit
      Left = 128
      Top = 32
      Width = 113
      Height = 22
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object RGTIPODT: TRadioGroup [2]
    Left = 13
    Top = 66
    Width = 249
    Height = 31
    Hint = 'Informe qual o tipo de data pelo qual deseja selecionar'
    Color = clWhite
    Columns = 3
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'Lan'#231'amento'
      'Vencimento'
      'Debito')
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object RGESCOLHA: TRadioGroup [3]
    Left = 269
    Top = 10
    Width = 288
    Height = 87
    Hint = 'Escolha o tipo de filtragem'
    Caption = 'Relat'#243'rio de '
    Color = clWhite
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      '&Pendentes'
      '&Baixadas'
      '&Caderneta')
    ParentColor = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  inline FrmVendedorIni: TFrmBusca [4]
    Left = 12
    Top = 119
    Width = 273
    Height = 37
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    inherited LTextoBusca: TLabel
      Width = 68
      Caption = 'Vendedor:'
    end
    inherited LUZOPEN: TShape
      Left = 229
    end
    inherited LUZMINUS: TShape
      Left = 248
    end
    inherited EdDescricao: TFlatEdit
      Left = 34
      Width = 197
    end
    inherited BTNOPEN: TBitBtn
      Left = 231
      OnClick = FrmVendedorIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 249
      OnClick = FrmVendedorIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 31
      OnKeyDown = FrmVendedorIniEDCodigoKeyDown
      OnKeyPress = FrmVendedorIniEDCodigoKeyPress
    end
  end
  inline FrmCidadeIni: TFrmBusca [5]
    Left = 286
    Top = 119
    Width = 273
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    inherited LTextoBusca: TLabel
      Width = 50
      Caption = 'Cidade:'
    end
    inherited LUZOPEN: TShape
      Left = 228
      Width = 23
    end
    inherited LUZMINUS: TShape
      Left = 247
    end
    inherited EdDescricao: TFlatEdit
      Left = 33
      Width = 197
      ColorFlat = clWhite
    end
    inherited BTNOPEN: TBitBtn
      Left = 230
      OnClick = FrmCidadeIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 248
      OnClick = FrmCidadeIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 31
      ColorFlat = clLightGreen
      OnKeyPress = FrmCidadeIniEDCodigoKeyPress
    end
  end
  inherited GroupBox1: TGroupBox [6]
    Top = 212
    TabOrder = 5
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  object PBoleto: TPanel
    Left = 11
    Top = 154
    Width = 205
    Height = 43
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    object LTextoBusca: TLabel
      Left = 4
      Top = 0
      Width = 46
      Height = 16
      Caption = 'Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBBanco: TDBLookupComboBox
      Left = 3
      Top = 16
      Width = 183
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      KeyField = 'COD_CTACOR'
      ListField = 'NUMCTACOR; DESCBANCO'
      ListSource = DMBANCO.DWCtaCor
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited FSRel: TfrReport
    Top = 16
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Top = 16
  end
end
