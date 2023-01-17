object FCartaCorrecaoeletronica: TFCartaCorrecaoeletronica
  Left = 463
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  ClientHeight = 377
  ClientWidth = 551
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010020000000000B00000001600000028000000100000002000
    0000010001000000000080000000000000000000000000000000000000000000
    0000FFFFFF000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
    0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
    0000FFFF0000}
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 550
    Height = 377
    Pen.Width = 2
  end
  object Shape2: TShape
    Left = 109
    Top = 1
    Width = 440
    Height = 55
  end
  object Shape3: TShape
    Left = 1
    Top = 1
    Width = 394
    Height = 55
  end
  object Label1: TLabel
    Left = 13
    Top = 89
    Width = 352
    Height = 31
    Caption = 'Carta de Corre'#231#227'o eletr'#244'nica:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 286
    Top = 8
    Width = 42
    Height = 13
    Caption = 'NFe N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 480
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Carta N'#186':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 400
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 6
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Chave:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape4: TShape
    Left = 1
    Top = 55
    Width = 548
    Height = 27
    Brush.Color = clGradientInactiveCaption
  end
  object BtnEnviar: TButton
    Left = 384
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BtnEnviarClick
  end
  object BtnCancelar: TButton
    Left = 464
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object MTexto: TMemo
    Left = 11
    Top = 121
    Width = 529
    Height = 185
    Lines.Strings = (
      
        '1234567890123456789012345678901234567890123456789012345678901234' +
        '56789012345678901234'
      
        '5678901234567890123456789012345678901234567890123456789012345678' +
        '90123456789012345678'
      
        '9012345678901234567890123456789012345678901234567890123456789012' +
        '34567890123456789012'
      
        '3456789012345678901234567890123456789012345678901234567890123456' +
        '78901234567890123456'
      
        '7890123456789012345678901234567890123456789012345678901234567890' +
        '12345678901234567890'
      
        '1234567890123456789012345678901234567890123456789012345678901234' +
        '56789012345678901234'
      
        '5678901234567890123456789012345678901234567890123456789012345678' +
        '90123456789012345678'
      
        '9012345678901234567890123456789012345678901234567890123456789012' +
        '34567890123456789012'
      
        '3456789012345678901234567890123456789012345678901234567890123456' +
        '78901234567890123456'
      
        '7890123456789012345678901234567890123456789012345678901234567890' +
        '12345678901234567890'
      
        '1234567890123456789012345678901234567890123456789012345678901234' +
        '56789012345678901234'
      '567890123456789012345678901234567890123456789012345678')
    MaxLength = 1000
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object EdNumeroNota: TEdit
    Left = 287
    Top = 24
    Width = 102
    Height = 26
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = '000000000'
  end
  object EdNumeroCarta: TEdit
    Left = 479
    Top = 24
    Width = 58
    Height = 26
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    Text = '0000'
  end
  object EdDtNota: TEdit
    Left = 399
    Top = 24
    Width = 74
    Height = 26
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = '00/00/0000'
  end
  object EdChaveNota: TEdit
    Left = 7
    Top = 24
    Width = 272
    Height = 22
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Text = '41121181057655000106559990000000113229207701'
  end
  object EdPessoa: TEdit
    Left = 7
    Top = 57
    Width = 537
    Height = 22
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 11
    Top = 313
    Width = 369
    Height = 59
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'A carta de corre'#231#227'o com data mais recente substitui as cartas '
      'de corre'#231#245'es existentes, assim a nova carta de corre'#231#227'o deve '
      'consolidar todas as corre'#231#245'es.')
    MaxLength = 1000
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
  end
end
