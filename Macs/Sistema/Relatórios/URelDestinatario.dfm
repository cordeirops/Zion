inherited FRelDestinatario: TFRelDestinatario
  Left = 546
  Top = 176
  Caption = ''
  ClientHeight = 330
  ClientWidth = 579
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = nil
  OnKeyDown = nil
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 75
    Top = 193
    Width = 93
    Height = 13
    Caption = 'DESTINAT'#193'RIO'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object LUZMINUS: TShape [1]
    Left = 472
    Top = 207
    Width = 21
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object LUZOPEN: TShape [2]
    Left = 452
    Top = 207
    Width = 21
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object Shape1: TShape [3]
    Left = 452
    Top = 154
    Width = 21
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object Shape2: TShape [4]
    Left = 472
    Top = 154
    Width = 21
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object Label3: TLabel [5]
    Left = 75
    Top = 140
    Width = 86
    Height = 13
    Caption = 'FORNECEDOR'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 58
    Top = 40
    TabOrder = 6
  end
  object btnOpenFornec: TBitBtn [7]
    Left = 454
    Top = 157
    Width = 19
    Height = 19
    Hint = 'Pressione para selecionar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnOpenFornecClick
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object edNomeFornec: TFlatEdit [8]
    Left = 141
    Top = 157
    Width = 310
    Height = 19
    ColorBorder = clSkyBlue
    ColorFlat = 16775666
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object edCodigoFornec: TFlatEdit [9]
    Left = 73
    Top = 157
    Width = 67
    Height = 19
    Hint = 
      'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
      '>'
    ColorBorder = clBlack
    ColorFlat = clInactiveCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edCodigoFornecKeyPress
  end
  object GroupBox5: TGroupBox [10]
    Left = 136
    Top = 33
    Width = 321
    Height = 95
    Caption = 'Data do Pedido'
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 43
      Width = 45
      Height = 13
      Caption = 'INICIAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 206
      Top = 43
      Width = 36
      Height = 13
      Caption = 'FINAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdDataIni: TMaskEdit
      Left = 16
      Top = 59
      Width = 100
      Height = 28
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
    object EdDataFin: TMaskEdit
      Left = 205
      Top = 59
      Width = 100
      Height = 28
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
    end
    object rbtAbertura: TRadioButton
      Left = 76
      Top = 20
      Width = 73
      Height = 17
      Caption = 'Abertura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rbtFechamento: TRadioButton
      Left = 168
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Fechamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  inherited GroupBox1: TGroupBox
    Left = 16
    Top = 272
    TabOrder = 10
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
  end
  object btnOpenDest: TBitBtn [12]
    Left = 454
    Top = 210
    Width = 19
    Height = 19
    Hint = 'Pressione para selecionar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnOpenDestClick
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object btnApagaDest: TBitBtn [13]
    Left = 474
    Top = 210
    Width = 19
    Height = 19
    Hint = 'Pressione para apagar '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btnApagaDestClick
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object edNomeDest: TFlatEdit [14]
    Left = 141
    Top = 210
    Width = 310
    Height = 19
    ColorBorder = clSkyBlue
    ColorFlat = 16775666
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object edCodigoDest: TFlatEdit [15]
    Left = 73
    Top = 210
    Width = 67
    Height = 19
    Hint = 
      'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
      '>'
    ColorBorder = clBlack
    ColorFlat = clInactiveCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnKeyPress = edCodigoDestKeyPress
  end
  object btnApagaFornec: TBitBtn [16]
    Left = 474
    Top = 157
    Width = 19
    Height = 19
    Hint = 'Pressione para apagar '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnApagaFornecClick
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  inherited FSRel: TfrReport
    Left = 544
    Top = 16
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 544
    Top = 56
  end
end
