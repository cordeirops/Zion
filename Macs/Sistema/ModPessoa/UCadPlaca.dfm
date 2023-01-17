object FCadPlaca: TFCadPlaca
  Left = 0
  Top = 0
  Width = 599
  Height = 153
  Color = 16772332
  ParentColor = False
  TabOrder = 0
  object Label8: TLabel
    Left = 8
    Top = 51
    Width = 69
    Height = 16
    Caption = 'CNPJ/CPF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 9
    Top = 5
    Width = 42
    Height = 16
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 51
    Width = 63
    Height = 16
    Caption = 'Telefone:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 9
    Top = 101
    Width = 41
    Height = 16
    Caption = 'Placa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 128
    Top = 101
    Width = 52
    Height = 16
    Caption = 'Modelo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 323
    Top = 101
    Width = 95
    Height = 16
    Caption = 'N'#250'mero Frota:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object BtnFecha: TSpeedButton
    Left = 571
    Top = 6
    Width = 19
    Height = 19
    Cursor = crHandPoint
    Hint = 'Pressione para fechar esta tela'
    Flat = True
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000996733996733
      9967339967339967339967339967339967339967339967339967339967339967
      33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
      9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
      9967339967339967339967339967339967339967339967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673399
      6733996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967330000009967339967339967339967339967330000009967339967
      33B99D94996733000000996733B99D9499673399673399673300000099673399
      6733996733000000996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967330000009967330000009967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673300
      0000996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967330000009967330000009967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673300000099673399
      6733996733000000996733996733996733B99D94996733000000996733B99D94
      9967339967330000009967339967339967339967339967330000009967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673399
      6733996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967339967339967339967339967339967339967339967
      33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
      9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
      9967339967339967339967339967339967339967339967339967339967339967
      33996733996733000000}
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  inline FrmCidade: TFrmBusca
    Left = 317
    Top = 55
    Width = 276
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Top = -2
      Width = 50
      Caption = 'Cidade:'
    end
    inherited LUZOPEN: TShape
      Left = 235
    end
    inherited LUZMINUS: TShape
      Left = 254
    end
    inherited EdDescricao: TFlatEdit
      Left = 33
      Width = 203
    end
    inherited BTNOPEN: TBitBtn
      Left = 236
      OnClick = FrmCidadeBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 255
      Visible = False
      OnClick = FrmCidadeBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 30
      OnKeyPress = FrmCidadeEDCodigoKeyPress
    end
  end
  object RGTIPO: TRadioGroup
    Left = 327
    Top = 7
    Width = 226
    Height = 39
    Columns = 2
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '&F'#237'sica'
      '&Jur'#237'dica')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object edNome: TColorMaskEdit
    Left = 8
    Top = 24
    Width = 305
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 50
    ParentFont = False
    TabOrder = 1
    OnChange = edNomeChange
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edCNPJCPF: TColorMaskEdit
    Left = 8
    Top = 69
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 3
    OnChange = edCNPJCPFChange
    OnExit = edCNPJCPFExit
    OnKeyPress = edCNPJCPFKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edFone: TColorMaskEdit
    Left = 168
    Top = 69
    Width = 137
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 4
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edPlaca: TColorMaskEdit
    Left = 9
    Top = 119
    Width = 105
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 6
    OnChange = edPlacaChange
    OnExit = edPlacaExit
    OnKeyDown = edPlacaKeyDown
    OnKeyPress = edPlacaKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edModelo: TColorMaskEdit
    Left = 128
    Top = 119
    Width = 185
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 7
    OnChange = edModeloChange
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edNumFrota: TColorMaskEdit
    Left = 323
    Top = 119
    Width = 145
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 15
    ParentFont = False
    TabOrder = 8
    OnChange = edNumFrotaChange
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object btnConfirmar: TBitBtn
    Left = 494
    Top = 113
    Width = 75
    Height = 25
    Caption = 'GRAVAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnConfirmarClick
  end
  object cbConsumidor: TCheckBox
    Left = 96
    Top = 5
    Width = 121
    Height = 17
    Caption = 'Cliente Consumidor'
    TabOrder = 0
  end
  object CbVendaBalcao: TCheckBox
    Left = 225
    Top = 5
    Width = 121
    Height = 17
    Caption = 'Venda Balc'#227'o'
    TabOrder = 10
  end
end
