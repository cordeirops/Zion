inherited FLancTroco: TFLancTroco
  Left = 378
  Top = 210
  Caption = 'FLancTroco'
  ClientHeight = 299
  ClientWidth = 349
  OnActivate = FormActivate
  OnCreate = nil
  OnKeyDown = nil
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 25
    Top = 120
    Width = 97
    Height = 13
    Caption = 'Valor Recebido'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 25
    Top = 163
    Width = 37
    Height = 13
    Caption = 'Troco'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 25
    Top = 77
    Width = 79
    Height = 13
    Caption = 'Valor D'#237'vida'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 146
    Top = 360
  end
  object GroupBox1: TGroupBox
    Left = 192
    Top = 43
    Width = 140
    Height = 198
    Caption = 'Tipo sa'#237'da'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Label4: TLabel
      Left = 9
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Cheque'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 59
      Width = 114
      Height = 13
      Caption = 'Cheque Terceiros'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 150
      Width = 53
      Height = 13
      Caption = 'Carteira'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 43
      Top = 96
      Width = 87
      Height = 10
      Caption = 'Enter p/ tela ch. terc.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 107
      Width = 47
      Height = 13
      Caption = 'Cr'#233'dito'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edVlrPagCheque: TColorEditFloat
      Left = 10
      Top = 31
      Width = 122
      Height = 24
      Color = clSilver
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      OnExit = edVlrPagChequeExit
      ValueFormat = '#####0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edVlrPagChequeTerc: TColorEditFloat
      Left = 10
      Top = 74
      Width = 122
      Height = 24
      Hint = 'Enter p/ tela cheque terc.'
      Color = clSilver
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '0,00'
      OnExit = edVlrPagChequeTercExit
      OnKeyDown = edVlrPagChequeTercKeyDown
      ValueFormat = '#####0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edVlrPagCarteira: TColorEditFloat
      Left = 10
      Top = 164
      Width = 122
      Height = 24
      Color = clSilver
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '0,00'
      OnExit = edVlrPagCarteiraExit
      ValueFormat = '#####0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edVlrCredito: TColorEditFloat
      Left = 10
      Top = 121
      Width = 122
      Height = 24
      Color = clSilver
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      OnExit = edVlrCreditoExit
      ValueFormat = '#####0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object edVlrTroco: TColorEditFloat
    Left = 24
    Top = 178
    Width = 122
    Height = 24
    Color = clSilver
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = '0,00'
    ValueFormat = '#,##0.00'
    ValueInteger = 0
    FocusColor = 15925247
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edVlrPago: TColorEditFloat
    Left = 24
    Top = 136
    Width = 122
    Height = 24
    Color = clSilver
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = '0,00'
    ValueFormat = '#,##0.00'
    ValueInteger = 0
    FocusColor = 15925247
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object edVlrDivida: TColorEditFloat
    Left = 24
    Top = 92
    Width = 122
    Height = 24
    Color = clSilver
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Text = '0,00'
    ValueFormat = '#,##0.00'
    ValueInteger = 0
    FocusColor = 15925247
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object btnConfima: TBitBtn
    Left = 72
    Top = 250
    Width = 97
    Height = 25
    Caption = '&Ok'
    TabOrder = 5
    OnClick = btnConfimaClick
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
  object BTNCANCELAR: TBitBtn
    Left = 200
    Top = 250
    Width = 97
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 6
    OnClick = BTNCANCELARClick
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
  object pChequeTerceiro: TPanel
    Left = 45
    Top = 29
    Width = 234
    Height = 213
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 7
    Visible = False
    object lbSaldo: TLabel
      Left = 182
      Top = 145
      Width = 47
      Height = 16
      Alignment = taRightJustify
      Caption = 'lbSaldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 115
      Top = 24
      Width = 62
      Height = 15
      Alignment = taRightJustify
      DataField = 'VALOR'
      DataSource = DMBANCO.DWChequeRec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LUZOPEN: TShape
      Left = 207
      Top = 2
      Width = 22
      Height = 23
      Brush.Color = clGradientActiveCaption
      Pen.Color = clGradientActiveCaption
      Shape = stRoundRect
      Visible = False
    end
    object Shape1: TShape
      Left = 183
      Top = 2
      Width = 23
      Height = 23
      Brush.Color = clGradientActiveCaption
      Pen.Color = clGradientActiveCaption
      Shape = stRoundRect
      Visible = False
    end
    object Label8: TLabel
      Left = 80
      Top = 146
      Width = 73
      Height = 14
      Caption = 'Somat'#243'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 48
      Top = 168
      Width = 106
      Height = 14
      Caption = 'D'#237'vida restante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbRestante: TLabel
      Left = 160
      Top = 167
      Width = 70
      Height = 16
      Alignment = taRightJustify
      Caption = 'lbRestante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 37
      Width = 227
      Height = 109
      DataSource = DMBANCO.Dalx
      FixedColor = clGradientActiveCaption
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Title.Alignment = taRightJustify
          Title.Caption = 'N'#170' Cheque'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'BANCO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Banco'
          Width = 95
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 3
      Top = 4
      Width = 178
      Height = 21
      KeyField = 'COD_CHEQUEREC'
      ListField = 'NUMCHEQUE'
      ListSource = DMBANCO.DWChequeRec
      TabOrder = 1
      OnKeyDown = DBLookupComboBox1KeyDown
    end
    object BTNMINUS: TBitBtn
      Left = 208
      Top = 4
      Width = 19
      Height = 19
      Hint = 'Pressione para apagar '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BTNMINUSClick
      Glyph.Data = {
        F6000000424DF600000000000000360000002800000007000000080000000100
        180000000000C0000000000000000000000000000000000000000000FF0000FF
        FFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFF0000FF0000FFFFFFFF0000
        FF0000FFFFFFFF000000FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000000000FF0000FF
        FFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFF0000FF0000FFFFFFFF0000
        FF0000FFFFFFFF000000FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF000000}
    end
    object BTNOPEN: TBitBtn
      Left = 185
      Top = 4
      Width = 19
      Height = 19
      Hint = 'Pressione para Inserir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BTNOPENClick
      Glyph.Data = {
        F6000000424DF600000000000000360000002800000007000000080000000100
        180000000000C000000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFA53C00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA53C00A53C00A53C
        00FFFFFFFFFFFF000000FFFFFFA53C00A53C00FFFFFFA53C00A53C00FFFFFF00
        0000A53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00000000FFFFFFFFFFFF
        FFFFFFA53C00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA53C00A53C00A53C
        00FFFFFFFFFFFF000000FFFFFFA53C00A53C00FFFFFFA53C00A53C00FFFFFF00
        0000A53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00000000}
    end
    object btnOk: TBitBtn
      Left = 204
      Top = 190
      Width = 26
      Height = 19
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnOkClick
    end
  end
end
