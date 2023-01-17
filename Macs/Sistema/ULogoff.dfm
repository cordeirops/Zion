inherited FLogoff: TFLogoff
  Left = -4
  Top = -4
  Caption = ''
  ClientHeight = 540
  ClientWidth = 800
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 113
    Top = 48
    Width = 125
    Height = 16
    Caption = 'Entre com o LOGIN:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [1]
    Left = 113
    Top = 96
    Width = 127
    Height = 16
    Caption = 'Informe sua SENHA:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 235
    TabOrder = 5
  end
  object edlogin: TColorMaskEdit
    Left = 113
    Top = 64
    Width = 249
    Height = 22
    CharCase = ecUpperCase
    Color = 15658717
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = EdSenhaKeyDown
    FocusColor = clWhite
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EdSenha: TColorMaskEdit
    Left = 113
    Top = 112
    Width = 249
    Height = 38
    CharCase = ecUpperCase
    Color = 15658717
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = EdSenhaKeyDown
    FocusColor = clWhite
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 152
    Width = 356
    Height = 129
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    OnEnter = GroupBox1Enter
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 233
      Height = 16
      Caption = 'Informe a Empresa em que vai trabalhar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 49
      Width = 150
      Height = 16
      Caption = 'Qual loja deseja acessar?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 85
      Width = 182
      Height = 16
      Caption = 'Com qual caixa deseja Operar?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EdEmpresa: TColorMaskEdit
      Left = 66
      Top = 25
      Width = 283
      Height = 22
      Hint = 
        'Press as teclas com seta para cima ou para baixo para navegar en' +
        'tre as empresas poss'#237'veis'
      Color = 14085099
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      FocusColor = clWhite
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdLoja: TColorMaskEdit
      Left = 66
      Top = 65
      Width = 283
      Height = 22
      Hint = 
        'Press as teclas com seta para cima ou para baixo para navegar en' +
        'tre as lojas poss'#237'veis'
      Color = 14211288
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      FocusColor = clWhite
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdCaixa: TColorMaskEdit
      Left = 66
      Top = 100
      Width = 283
      Height = 22
      Hint = 
        'Press as teclas com seta para cima ou para baixo para navegar en' +
        'tre os caixas poss'#237'veis'
      Color = 14211288
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      FocusColor = clWhite
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdCodEmpresa: TFlatEdit
      Left = 8
      Top = 25
      Width = 57
      Height = 20
      Hint = 
        'Pressione as teclas <SETA PARA CIMA> ou <SETA PARA BAIXO> para e' +
        'scolher a informa'#231#227'o desejada, ou apenas informe o c'#243'digo e pres' +
        'sione <ENTER>. Caso ao navegar n'#227'o apare'#231'a nenhuma informa'#231#227'o, '#233 +
        ' porque seu usu'#225'rio n'#227'o possue permiss'#227'o'
      ColorBorder = clBlack
      ColorFlat = 7846843
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnEnter = EdCodEmpresaEnter
      OnKeyDown = EdCodEmpresaKeyDown
      OnKeyPress = EdCodEmpresaKeyPress
    end
    object EdCodLoja: TFlatEdit
      Left = 8
      Top = 65
      Width = 57
      Height = 20
      Hint = 
        'Pressione as teclas <SETA PARA CIMA> ou <SETA PARA BAIXO> para e' +
        'scolher a informa'#231#227'o desejada, ou apenas informe o c'#243'digo e pres' +
        'sione <ENTER>. Caso ao navegar n'#227'o apare'#231'a nenhuma informa'#231#227'o, '#233 +
        ' porque seu usu'#225'rio n'#227'o possue permiss'#227'o'
      ColorFlat = 13750737
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnEnter = EdCodLojaEnter
      OnKeyDown = EdCodLojaKeyDown
      OnKeyPress = EdCodLojaKeyPress
    end
    object EdCodCaixa: TFlatEdit
      Left = 8
      Top = 100
      Width = 57
      Height = 20
      Hint = 
        'Pressione as teclas <SETA PARA CIMA> ou <SETA PARA BAIXO> para e' +
        'scolher a informa'#231#227'o desejada, ou apenas informe o c'#243'digo e pres' +
        'sione <ENTER>. Caso ao navegar n'#227'o apare'#231'a nenhuma informa'#231#227'o, '#233 +
        ' porque seu usu'#225'rio n'#227'o possue permiss'#227'o'
      ColorFlat = 13750737
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnEnter = EdCodCaixaEnter
      OnKeyDown = EdCodCaixaKeyDown
      OnKeyPress = EdCodCaixaKeyPress
    end
  end
  object btnok: TBitBtn
    Left = 68
    Top = 288
    Width = 89
    Height = 25
    Caption = '&OK'
    TabOrder = 3
    OnClick = btnokClick
    Glyph.Data = {
      66030000424D6603000000000000360000002800000010000000110000000100
      18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
      BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
      00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
      7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
      7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
      7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
      00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
      7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
      007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
      007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
      007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBFBFBFBFBFBF}
  end
  object BitBtn2: TBitBtn
    Left = 212
    Top = 288
    Width = 89
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
      6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
      0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
      006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
      60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
      FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
      FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
      609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
      8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
      0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
      D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
      6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
      CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
      FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
      609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
      90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
      0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
      F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
      FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
      CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
      FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
      E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
      5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
      FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
      20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000}
  end
end
