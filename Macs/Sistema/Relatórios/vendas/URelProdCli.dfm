inherited FRelProdCli: TFRelProdCli
  Left = 218
  Top = 163
  Caption = 'FRelProdCli'
  ClientHeight = 456
  ClientWidth = 626
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape3: TShape [0]
    Left = 13
    Top = 108
    Width = 598
    Height = 1
  end
  object Shape5: TShape [1]
    Left = 11
    Top = 167
    Width = 601
    Height = 1
  end
  object Shape1: TShape [2]
    Left = 19
    Top = 164
    Width = 586
    Height = 1
  end
  object Shape2: TShape [3]
    Left = 19
    Top = 170
    Width = 586
    Height = 1
  end
  object LTextoBusca: TLabel [4]
    Left = 358
    Top = 177
    Width = 89
    Height = 16
    Caption = 'Marca Inicial:'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel [5]
    Left = 358
    Top = 225
    Width = 81
    Height = 16
    Caption = 'Marca Final:'
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Shape4: TShape [6]
    Left = 19
    Top = 277
    Width = 586
    Height = 1
  end
  object Shape6: TShape [7]
    Left = 19
    Top = 280
    Width = 586
    Height = 1
  end
  object Shape7: TShape [8]
    Left = 19
    Top = 338
    Width = 586
    Height = 1
  end
  object Shape8: TShape [9]
    Left = 19
    Top = 341
    Width = 586
    Height = 1
  end
  object Label2: TLabel [10]
    Left = 309
    Top = 14
    Width = 25
    Height = 20
    Caption = 'De:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel [11]
    Left = 408
    Top = 32
    Width = 9
    Height = 20
    Caption = #225
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 130
    Top = 584
    TabOrder = 16
  end
  inline FrmGrupo1: TFrmBusca [13]
    Left = 13
    Top = 60
    Width = 292
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 14
    inherited LTextoBusca: TLabel
      Top = -2
      Width = 87
      Caption = 'Grupo Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmGrupo1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmGrupo1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmGrupo1EDCodigoKeyPress
    end
  end
  inline FrmGrupo2: TFrmBusca [14]
    Left = 309
    Top = 61
    Width = 298
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    inherited LTextoBusca: TLabel
      Top = -2
      Width = 79
      Caption = 'Grupo Final:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmGrupo2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmGrupo2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmGrupo2EDCodigoKeyPress
    end
  end
  inherited GroupBox1: TGroupBox [15]
    Top = 397
    Width = 599
    TabOrder = 13
    inherited GroupBox3: TGroupBox
      Left = 258
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 499
    end
  end
  inline FrmSubGrupo2: TFrmBusca
    Left = 310
    Top = 118
    Width = 299
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    inherited LTextoBusca: TLabel
      Width = 104
      Caption = 'SubGrupo Final:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 271
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 254
      OnClick = FrmSubGrupo2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 272
      Top = 16
      Height = 18
      OnClick = FrmSubGrupo2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmSubGrupo2EDCodigoKeyPress
    end
  end
  inline FrmSubGrupo1: TFrmBusca
    Left = 14
    Top = 117
    Width = 294
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 3
    inherited LTextoBusca: TLabel
      Width = 112
      Caption = 'SubGrupo Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmSubGrupo1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmSubGrupo1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmSubGrupo1EDCodigoKeyPress
    end
  end
  inline FrmProduto1: TFrmBusca
    Left = 14
    Top = 184
    Width = 298
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 5
    inherited LTextoBusca: TLabel
      Width = 100
      Caption = 'Produto Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmProduto1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmProduto1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmProduto1EDCodigoKeyPress
    end
  end
  inline FrmProduto2: TFrmBusca
    Left = 14
    Top = 227
    Width = 295
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 6
    inherited LTextoBusca: TLabel
      Width = 92
      Caption = 'Produto Final:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmProduto2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmProduto2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      OnKeyPress = FrmProduto2EDCodigoKeyPress
    end
  end
  object CBMARCAINI: TComboBox
    Left = 356
    Top = 195
    Width = 204
    Height = 24
    Color = 16772332
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
  end
  object CBMARCAFIM: TComboBox
    Left = 356
    Top = 242
    Width = 204
    Height = 24
    Color = 16772332
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
  inline FrmSubProduto1: TFrmBusca
    Left = 13
    Top = 289
    Width = 296
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 9
    inherited LTextoBusca: TLabel
      Width = 125
      Caption = 'SubProduto Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 252
    end
    inherited LUZMINUS: TShape
      Left = 271
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 254
      OnClick = FrmSubProduto1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 272
      OnClick = FrmSubProduto1BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnKeyPress = FrmSubProduto1EDCodigoKeyPress
    end
  end
  inline FrmSubProduto2: TFrmBusca
    Left = 311
    Top = 290
    Width = 294
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 10
    inherited LTextoBusca: TLabel
      Width = 117
      Caption = 'SubProduto Final:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmSubProduto2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmSubProduto2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnKeyPress = FrmSubProduto2EDCodigoKeyPress
    end
  end
  inline FrmCliente1: TFrmBusca
    Left = 13
    Top = 350
    Width = 293
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 11
    inherited LTextoBusca: TLabel
      Width = 94
      Caption = 'Cliente Inicial:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmBusca1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmClienteBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnExit = FrmCliente1EDCodigoExit
      OnKeyPress = FrmCliente1EDCodigoKeyPress
    end
  end
  inline FrmCliente2: TFrmBusca
    Left = 310
    Top = 350
    Width = 294
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 12
    inherited LTextoBusca: TLabel
      Width = 86
      Caption = 'Cliente Final:'
    end
    inherited LUZOPEN: TShape
      Left = 251
    end
    inherited LUZMINUS: TShape
      Left = 270
    end
    inherited EdDescricao: TFlatEdit
      Left = 50
      Width = 202
      ColorFlat = 15658719
    end
    inherited BTNOPEN: TBitBtn
      Left = 253
      OnClick = FrmCliente2BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 271
      OnClick = FrmCliente2BTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 47
      ColorFlat = 14606014
      OnExit = FrmCliente2EDCodigoExit
      OnKeyPress = FrmCliente2EDCodigoKeyPress
    end
  end
  object RGPedido: TRadioGroup
    Left = 16
    Top = 15
    Width = 234
    Height = 40
    Caption = 'Pedido de Venda '
    Color = clWhite
    Columns = 3
    Items.Strings = (
      'Aberto'
      'Fechado')
    ParentColor = False
    TabOrder = 15
  end
  object EDData1: TColorMaskEdit
    Left = 310
    Top = 32
    Width = 89
    Height = 22
    Color = 15658719
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EdData2: TColorMaskEdit
    Left = 428
    Top = 32
    Width = 89
    Height = 22
    Color = 15658719
    Ctl3D = False
    EditMask = '!99/99/0000;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
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
  inherited FSRel: TfrReport
    Left = 152
    Top = 80
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 112
    Top = 80
  end
end
