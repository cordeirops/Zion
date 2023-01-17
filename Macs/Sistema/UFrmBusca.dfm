object FrmBusca: TFrmBusca
  Left = 0
  Top = 0
  Width = 377
  Height = 38
  Color = clWhite
  ParentColor = False
  TabOrder = 0
  OnExit = FrameExit
  object LTextoBusca: TLabel
    Left = 1
    Top = 0
    Width = 37
    Height = 16
    Caption = 'Texto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object LUZOPEN: TShape
    Left = 327
    Top = 12
    Width = 22
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object LUZMINUS: TShape
    Left = 345
    Top = 12
    Width = 22
    Height = 24
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Shape = stRoundRect
    Visible = False
  end
  object EdDescricao: TFlatEdit
    Left = 74
    Top = 15
    Width = 255
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
    TabOrder = 3
  end
  object BTNOPEN: TBitBtn
    Left = 329
    Top = 15
    Width = 19
    Height = 19
    Hint = 'Pressione para selecionar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BTNOPENClick
    OnEnter = BTNOPENEnter
    OnExit = BTNOPENExit
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
      90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object BTNMINUS: TBitBtn
    Left = 347
    Top = 15
    Width = 19
    Height = 19
    Hint = 'Pressione para apagar '
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BTNMINUSClick
    OnEnter = BTNMINUSEnter
    OnExit = BTNMINUSExit
    Glyph.Data = {
      B6000000424DB60000000000000036000000280000000A000000040000000100
      18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
      90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
      C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
  end
  object EDCodigo: TFlatEdit
    Left = 2
    Top = 15
    Width = 70
    Height = 19
    Hint = 
      'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
      '>'
    ColorBorder = clSkyBlue
    ColorFlat = clInactiveCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EDCodigoKeyPress
  end
end
