inherited FECF: TFECF
  Left = 208
  Top = 166
  Caption = 'FECF'
  ClientHeight = 411
  ClientWidth = 756
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 146
  end
  object GroupBox1: TGroupBox
    Left = 11
    Top = 10
    Width = 281
    Height = 249
    Caption = 'Cupom'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object Shape3: TShape
      Left = 5
      Top = 84
      Width = 135
      Height = 63
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label1: TLabel
      Left = 13
      Top = 86
      Width = 38
      Height = 12
      Caption = 'Valor%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape5: TShape
      Left = 5
      Top = 148
      Width = 135
      Height = 63
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label2: TLabel
      Left = 106
      Top = 150
      Width = 27
      Height = 12
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 23
      Top = 150
      Width = 61
      Height = 12
      Caption = 'Indice Pag.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape6: TShape
      Left = 141
      Top = 84
      Width = 135
      Height = 63
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label4: TLabel
      Left = 201
      Top = 86
      Width = 72
      Height = 12
      Caption = 'Ind'#237'ce do item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn5: TBitBtn
      Left = 8
      Top = 24
      Width = 129
      Height = 25
      Caption = 'Abre Cupom'
      TabOrder = 0
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 56
      Width = 129
      Height = 25
      Caption = 'Vende Item'
      TabOrder = 1
      OnClick = BitBtn6Click
    end
    object BitBtn9: TBitBtn
      Left = 8
      Top = 119
      Width = 129
      Height = 25
      Caption = '&Inicia Fechamento'
      TabOrder = 5
      OnClick = BitBtn9Click
    end
    object BitBtn7: TBitBtn
      Left = 8
      Top = 183
      Width = 129
      Height = 25
      Caption = '&Pagamento'
      TabOrder = 8
      OnClick = BitBtn7Click
    end
    object BitBtn10: TBitBtn
      Left = 8
      Top = 215
      Width = 129
      Height = 25
      Caption = '&Fecha Cupom'
      TabOrder = 9
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 144
      Top = 56
      Width = 129
      Height = 25
      Caption = '&Cancela Ultimo Item'
      TabOrder = 11
      OnClick = BitBtn11Click
    end
    object BitBtn13: TBitBtn
      Left = 144
      Top = 24
      Width = 129
      Height = 25
      Caption = '&Cancela Cupom'
      TabOrder = 10
      OnClick = BitBtn13Click
    end
    object BitBtn18: TBitBtn
      Left = 144
      Top = 152
      Width = 129
      Height = 25
      Caption = 'Abre Gaveta'
      TabOrder = 14
      OnClick = BitBtn18Click
    end
    object BitBtn23: TBitBtn
      Left = 144
      Top = 184
      Width = 129
      Height = 25
      Caption = '&Status do Papel'
      TabOrder = 15
      OnClick = BitBtn23Click
    end
    object EDVlrDesc: TColorEditFloat
      Left = 9
      Top = 99
      Width = 41
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object CBDesc: TCheckBox
      Left = 61
      Top = 88
      Width = 71
      Height = 17
      Caption = 'Desconto'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object CBAcrec: TCheckBox
      Left = 61
      Top = 103
      Width = 75
      Height = 17
      Caption = 'Acr'#233'scimo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EdVlrPag: TColorEditFloat
      Left = 86
      Top = 163
      Width = 49
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdIndicPag: TColorEditFloat
      Left = 9
      Top = 163
      Width = 75
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdIndicCancItem: TColorEditFloat
      Left = 191
      Top = 99
      Width = 82
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BitBtn14: TBitBtn
      Left = 144
      Top = 119
      Width = 129
      Height = 25
      Caption = '&Cancela Item Gen'#233'rico'
      TabOrder = 13
      OnClick = BitBtn14Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 11
    Top = 266
    Width = 281
    Height = 73
    Caption = 'Movimenta'#231#227'o financeira'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Label5: TLabel
      Left = 35
      Top = 13
      Width = 27
      Height = 12
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 245
      Top = 13
      Width = 27
      Height = 12
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn8: TBitBtn
      Left = 8
      Top = 46
      Width = 129
      Height = 25
      Caption = '&Suprimento'
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn15: TBitBtn
      Left = 144
      Top = 46
      Width = 129
      Height = 25
      Caption = '&Sangria'
      TabOrder = 3
      OnClick = BitBtn15Click
    end
    object EdVlrSup: TColorEditFloat
      Left = 8
      Top = 25
      Width = 55
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrSangria: TColorEditFloat
      Left = 218
      Top = 25
      Width = 55
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object GroupBox4: TGroupBox
    Left = 296
    Top = 10
    Width = 281
    Height = 89
    Caption = 'Recebimentos'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 3
    object Label7: TLabel
      Left = 23
      Top = 24
      Width = 53
      Height = 12
      Caption = 'Indic. tot.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 106
      Top = 24
      Width = 27
      Height = 12
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn19: TBitBtn
      Left = 8
      Top = 56
      Width = 129
      Height = 25
      Caption = '&Recebimento'
      TabOrder = 2
      OnClick = BitBtn19Click
    end
    object BitBtn20: TBitBtn
      Left = 144
      Top = 56
      Width = 129
      Height = 25
      Caption = '&Autentica'#231#227'o'
      TabOrder = 3
      OnClick = BitBtn20Click
    end
    object EdIndicRec: TColorEditFloat
      Left = 9
      Top = 36
      Width = 68
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrRec: TColorEditFloat
      Left = 80
      Top = 36
      Width = 55
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object GroupBox5: TGroupBox
    Left = 296
    Top = 114
    Width = 281
    Height = 106
    Caption = 'Comandos'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 4
    object Label12: TLabel
      Left = 10
      Top = 28
      Width = 47
      Height = 16
      Caption = 'PORTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 6
      Top = 48
      Width = 131
      Height = 25
      Caption = '&Abre Porta (COM)'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 144
      Top = 48
      Width = 129
      Height = 25
      Caption = '&Leitura X'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn12: TBitBtn
      Left = 144
      Top = 76
      Width = 129
      Height = 25
      Caption = '&Redu'#231#227'o Z'
      TabOrder = 4
      OnClick = BitBtn12Click
    end
    object BitBtn3: TBitBtn
      Left = 6
      Top = 76
      Width = 131
      Height = 25
      Caption = '&Fecha Porta (COM)'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object CBPORTA: TComboBox
      Left = 64
      Top = 23
      Width = 69
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = 'COM1'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4')
    end
  end
  object GroupBox6: TGroupBox
    Left = 296
    Top = 226
    Width = 280
    Height = 57
    Caption = 'Adiciona Aliquota'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
    object Label13: TLabel
      Left = 7
      Top = 21
      Width = 95
      Height = 12
      Caption = '(0) ICMS - (1) ISS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 135
      Top = 21
      Width = 61
      Height = 12
      Caption = 'Al'#237'quota(%)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 204
      Top = 32
      Width = 68
      Height = 20
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object AddAliqIndic: TColorEditFloat
      Left = 8
      Top = 32
      Width = 94
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object AddAliq: TColorEditFloat
      Left = 104
      Top = 32
      Width = 94
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object GroupBox3: TGroupBox
    Left = 583
    Top = 10
    Width = 161
    Height = 388
    Caption = 'Informa'#231#245'es/Comandos'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 6
    object Shape7: TShape
      Left = 5
      Top = 81
      Width = 150
      Height = 64
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label9: TLabel
      Left = 26
      Top = 83
      Width = 51
      Height = 12
      Caption = 'Redu'#231'. Ini'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 86
      Top = 83
      Width = 55
      Height = 12
      Caption = 'Redu'#231'. Fin.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape8: TShape
      Left = 5
      Top = 147
      Width = 150
      Height = 64
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label11: TLabel
      Left = 66
      Top = 151
      Width = 75
      Height = 12
      Caption = 'Forma de Pag.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn4: TBitBtn
      Left = 6
      Top = 16
      Width = 145
      Height = 25
      Caption = '&N'#250'mero do Cupom'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn16: TBitBtn
      Left = 8
      Top = 48
      Width = 145
      Height = 25
      Caption = '&Flags Fiscais'
      TabOrder = 1
      OnClick = BitBtn16Click
    end
    object BitBtn17: TBitBtn
      Left = 8
      Top = 118
      Width = 145
      Height = 25
      Caption = '&Leitura Memoria Fiscal'
      TabOrder = 4
      OnClick = BitBtn17Click
    end
    object BitBtn21: TBitBtn
      Left = 8
      Top = 184
      Width = 145
      Height = 25
      Caption = '&Formas de Pagamento'
      TabOrder = 6
      OnClick = BitBtn21Click
    end
    object BitBtn22: TBitBtn
      Left = 8
      Top = 216
      Width = 145
      Height = 25
      Caption = 'Hor'#225'rio de Ver'#227'o'
      TabOrder = 7
      OnClick = BitBtn22Click
    end
    object EdRedIni: TColorEditFloat
      Left = 19
      Top = 96
      Width = 60
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '1'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueNumeric = 1.000000000000000000
      ValueInteger = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdRedFin: TColorEditFloat
      Left = 82
      Top = 96
      Width = 60
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '1'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueNumeric = 1.000000000000000000
      ValueInteger = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdFormPag: TEdit
      Left = 16
      Top = 164
      Width = 127
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
    end
    object BitBtn24: TBitBtn
      Left = 8
      Top = 240
      Width = 145
      Height = 25
      Caption = '&Al'#237'quotas'
      TabOrder = 8
      OnClick = BitBtn24Click
    end
    object BitBtn26: TBitBtn
      Left = 8
      Top = 264
      Width = 145
      Height = 25
      Caption = '&Dados da '#250'ltima Redu'#231#227'o'
      TabOrder = 9
      OnClick = BitBtn26Click
    end
    object BitBtn27: TBitBtn
      Left = 8
      Top = 288
      Width = 145
      Height = 25
      Caption = '&Data e Hora'
      TabOrder = 10
      OnClick = BitBtn27Click
    end
    object BitBtn28: TBitBtn
      Left = 8
      Top = 312
      Width = 145
      Height = 25
      Caption = '&Data do movimento'
      TabOrder = 11
      OnClick = BitBtn28Click
    end
    object BitBtn29: TBitBtn
      Left = 8
      Top = 336
      Width = 145
      Height = 25
      Caption = 'C&omandos'
      TabOrder = 12
      OnClick = BitBtn29Click
    end
    object BitBtn30: TBitBtn
      Left = 8
      Top = 360
      Width = 145
      Height = 25
      Caption = '&EAN13'
      TabOrder = 13
      OnClick = BitBtn30Click
    end
  end
end
