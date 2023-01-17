object FPagamento: TFPagamento
  Left = 255
  Top = 16
  Width = 792
  Height = 588
  Caption = 'Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 16
    Top = 37
    Width = 741
    Height = 28
    Brush.Color = clActiveCaption
    Pen.Color = clSilver
    Pen.Width = 2
  end
  object lTitulo: TLabel
    Left = 21
    Top = 43
    Width = 730
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'Titulo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 16
    Top = 66
    Width = 366
    Height = 28
    Brush.Color = clSkyBlue
    Pen.Color = clWhite
    Pen.Width = 2
  end
  object lTotalPagar: TLabel
    Left = 20
    Top = 74
    Width = 357
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'TOTAL A PAGAR: R$ 1500,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape3: TShape
    Left = 16
    Top = 94
    Width = 365
    Height = 28
    Brush.Color = clSkyBlue
    Pen.Color = clWhite
    Pen.Width = 2
  end
  object Shape4: TShape
    Left = 392
    Top = 66
    Width = 366
    Height = 28
    Brush.Color = clMoneyGreen
    Pen.Color = clWhite
    Pen.Width = 2
  end
  object Shape5: TShape
    Left = 392
    Top = 94
    Width = 366
    Height = 28
    Brush.Color = clMoneyGreen
    Pen.Color = clWhite
    Pen.Width = 2
  end
  object lTotalPago: TLabel
    Left = 20
    Top = 101
    Width = 356
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'TOTAL A PAGAR: R$ 1500,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lFalta: TLabel
    Left = 396
    Top = 74
    Width = 357
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'FALTA: 50,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btnTroco: TSpeedButton
    Left = 730
    Top = 96
    Width = 25
    Height = 25
    Cursor = crHandPoint
    Flat = True
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF2EEED806055CEC1BDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFEFEAE99A8178B8A6A0997F7680605586685EAD99
      92997F76EAE5E3FFFFFFFFFFFFFBFCF6CFDB94B7C85EAFC24CAFC24CAFC24CAF
      C24CAFC24CAFC24CAFC24CAFC24CAFC24CAFC24CADBD4D806055806055806055
      816156806055806055806055F2EEEDFFFFFFFEFEFCB9CA63A7BC3AA7BC3AA7BC
      3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA3B23D81
      6254836459CFC5BFE9E6E2D2C9C384665B806055EFEAE9FFFFFFE0E8BAA7BC3A
      A7BC3AA7BC3AA7BC3BBCCC6AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC
      3A999C44836853806055AA968DF2F0EDFFFFFFF5F3F1AF9C94806055886B60CD
      C0BCCEDA92A7BC3AA7BC3AAEC24AE6ECC7F2F5E2CDD98FA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3A9B9F42846952806055B09E96F4F2F0FFFFFFF7F5F4B6A5
      9D806055886B5FD3C8C4CBD78AA7BC3AA7BC3AD8E1A7C5D37DAABE40EBEFD1C2
      D075A7BC3AA7BC3AA7BC3ADBE4AFE4EAC2E4EAC2D7D8B480605585665CDBD3CE
      EAE7E3DDD6D187685E806055D3D3AFFFFFFFCBD78AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3AAFC24BF0F3DDB8C961A7BC3AA7BC3AB1C350B5C759B5C759ABB45880
      605580605580605586685D806055806055806055CDCCA9FFFFFFCBD78AA7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AB5C75AD2DD9AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3A9FA84089764F94904789744F80605583675392894989764FCAC7A6FF
      FFFFCBD78AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA2B13D806055989A44A7BC
      3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3AA7BC3AA7BC3AA8BD3CA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3A
      A3B43CA6BA3BA7BC3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3AA7BC3ACBD8
      8BF8F9EFB9CA62A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3A
      A7BC3AD8E1A7E1E8BBB9C961F1F4DFB1C451A7BC3AA7BC3AA7BC3AE2E9BDECF1
      D5ECF1D5ECF1D5ECF1D5ECF1D5ECF1D5ECF0D4B3C554A7BC3AA7BC3AE3EAC1FF
      FFFFCBD78AA7BC3AA7BC3AAEC149A7BC3AA7BC3ABDCD6BEEF2D8ACC045A7BC3A
      A7BC3AAABF42ADC046ADC046ADC046ADC046ADC046ADC046ACC046A7BC3AA7BC
      3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AC7
      D583DCE5B2A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3AA7BC3AA7BC3AA8BD3DA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3A
      A7BC3AA7BC3AA7BC3AABBF44A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AE3EAC1FF
      FFFFCBD78AA7BC3AA7BC3AA8BD3CD4DE9EFAFBF4BECE6FA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3ADCE4B1D7E0A5B2C453F1F4DFB6
      C85CA7BC3AA7BC3AA7BC3AE5ECC6F2F5E1F2F5E1F2F5E1F2F5E1F2F5E1F2F5E1
      F1F4E0B3C554A7BC3AA7BC3AE3EAC1FFFFFFCBD78AA7BC3AA7BC3AA7BC3BA7BC
      3AA7BC3AB8C95FF1F4DFB0C34DA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AE3EAC1FFFFFFCDD990A7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AC1D075DBE4AFA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AE6ECC7FF
      FFFFDEE6B5A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC
      3AA7BC3BF6F8ECFFFFFFFCFDF9B5C759A7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3A
      A7BC3AA7BC3AA7BC3ACBD78AFFFFFFFFFFFFFFFFFFF7F9EEC7D482AFC24CA7BC
      3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7BC3AA7
      BC3AA7BC3AA7BC3AA7BC3BB4C657D5DFA0FEFEFCFFFFFFFFFFFF}
    OnClick = btnTrocoClick
  end
  object lTroco: TLabel
    Left = 396
    Top = 101
    Width = 331
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'TROCO: 0,00'
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label43: TLabel
    Left = 26
    Top = 125
    Width = 185
    Height = 16
    AutoSize = False
    Caption = 'Caixa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LTrocoStatusCaixa: TLabel
    Left = 27
    Top = 168
    Width = 185
    Height = 16
    AutoSize = False
    Caption = 'F E C H A D O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label45: TLabel
    Left = 275
    Top = 125
    Width = 177
    Height = 16
    AutoSize = False
    Caption = 'Banco:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LTrocoStatusBanco: TLabel
    Left = 275
    Top = 168
    Width = 177
    Height = 16
    AutoSize = False
    Caption = 'F E C H A D O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object pControlDinheiro: TPanel
    Left = 16
    Top = 289
    Width = 742
    Height = 249
    TabOrder = 8
    object Shape7: TShape
      Left = 1
      Top = 1
      Width = 740
      Height = 247
      Brush.Color = clBtnFace
      Pen.Color = clActiveCaption
      Pen.Width = 2
    end
    object Label17: TLabel
      Left = 22
      Top = 21
      Width = 230
      Height = 18
      Alignment = taCenter
      Caption = 'Valor pago em Dinheiro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 18
      Top = 78
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edDinheiroValor: TFloatEdit
      Left = 16
      Top = 40
      Width = 233
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      OnExit = edDinheiroValorExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edDinheiroHistorico: TColorMaskEdit
      Left = 16
      Top = 96
      Width = 473
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object pControlDuplicata: TPanel
    Left = 16
    Top = 289
    Width = 742
    Height = 249
    TabOrder = 9
    object Shape9: TShape
      Left = 1
      Top = 1
      Width = 739
      Height = 247
      Brush.Color = clBtnFace
      Pen.Color = clHighlight
      Pen.Width = 2
    end
    object Label19: TLabel
      Left = 63
      Top = 33
      Width = 110
      Height = 18
      Alignment = taCenter
      Caption = 'Vezes de R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 26
      Top = 58
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 271
      Top = 33
      Width = 170
      Height = 18
      Alignment = taCenter
      Caption = 'Vencendo todo dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 487
      Top = 33
      Width = 110
      Height = 18
      Alignment = taCenter
      Caption = 'de cada m'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edDuplicataNumero: TFloatEdit
      Left = 24
      Top = 24
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edDuplicataHistorico: TColorMaskEdit
      Left = 24
      Top = 76
      Width = 577
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edDuplicataValor: TFloatEdit
      Left = 177
      Top = 24
      Width = 81
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edDuplicataVencimento: TFloatEdit
      Left = 442
      Top = 24
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object btnGeraDuplicatas: TBitBtn
      Left = 608
      Top = 76
      Width = 110
      Height = 25
      Caption = 'Gerar Duplicatas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnGeraDuplicatasClick
    end
    object dbgDuplicatas: TDBGrid
      Left = 24
      Top = 107
      Width = 694
      Height = 129
      Color = clCream
      Ctl3D = False
      DataSource = MDO.DView
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgDuplicatasDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPARCELA'
          Title.Caption = 'Documento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'Boleto'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
        end>
    end
    object BitBtn8: TBitBtn
      Left = 608
      Top = 6
      Width = 110
      Height = 25
      Caption = 'Apagar todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn8Click
    end
  end
  object PTroco: TPanel
    Left = 30
    Top = 134
    Width = 621
    Height = 308
    BevelWidth = 2
    Color = clSkyBlue
    TabOrder = 20
    Visible = False
    OnExit = PEditaParcelaExit
    object Shape21: TShape
      Left = 3
      Top = 3
      Width = 615
      Height = 302
      Brush.Color = clMoneyGreen
      Pen.Color = clWhite
      Pen.Width = 2
    end
    object Shape23: TShape
      Left = 232
      Top = 47
      Width = 382
      Height = 194
      Brush.Color = clInactiveCaption
      Pen.Color = clActiveCaption
      Pen.Width = 3
    end
    object Shape22: TShape
      Left = 8
      Top = 48
      Width = 220
      Height = 193
      Brush.Color = clInactiveCaption
      Pen.Color = clActiveCaption
      Pen.Width = 3
    end
    object Label44: TLabel
      Left = 456
      Top = 62
      Width = 70
      Height = 14
      Caption = 'N'#186' Cheque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 24
      Top = 60
      Width = 185
      Height = 31
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dinheiro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label49: TLabel
      Left = 8
      Top = 12
      Width = 602
      Height = 23
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Aponte como ser'#225' feito o troco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LTrocoTotalCheque: TLabel
      Left = 240
      Top = 220
      Width = 169
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LTrocoTotalGeral: TLabel
      Left = 352
      Top = 251
      Width = 259
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn9: TBitBtn
      Left = 452
      Top = 275
      Width = 80
      Height = 25
      Caption = 'G R A V A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 532
      Top = 275
      Width = 80
      Height = 25
      Caption = 'C A N C E L A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn7Click
    end
    object EdTrocoPesquisaCheque: TColorMaskEdit
      Left = 456
      Top = 77
      Width = 147
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdTrocoDinheiro: TColorEditFloat
      Left = 24
      Top = 92
      Width = 185
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = EdTrocoDinheiroExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBGChequeTroco: TDBGrid
      Left = 240
      Top = 104
      Width = 364
      Height = 114
      Color = clCream
      Ctl3D = False
      DataSource = DMMACS.DSALX
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGChequeTrocoDrawColumnCell
      OnDblClick = DBGChequeTrocoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'MARK'
          Title.Caption = 'X'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Title.Caption = 'Cheque'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMITENTE'
          Title.Caption = 'Emitente'
          Visible = True
        end>
    end
    object BitBtn11: TBitBtn
      Left = 240
      Top = 86
      Width = 105
      Height = 17
      Caption = 'DESMARCAR TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn11Click
    end
  end
  object pControlCartaoDebito: TPanel
    Left = 16
    Top = 289
    Width = 741
    Height = 249
    TabOrder = 12
    object Shape16: TShape
      Left = 0
      Top = 1
      Width = 740
      Height = 247
      Brush.Color = clBtnFace
      Pen.Color = clMaroon
      Pen.Width = 2
    end
    object Label29: TLabel
      Left = 22
      Top = 21
      Width = 310
      Height = 18
      Alignment = taCenter
      Caption = 'Valor Pago no Cart'#227'o de D'#233'bito:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 18
      Top = 70
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 18
      Top = 124
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Operadora:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label32: TLabel
      Left = 18
      Top = 181
      Width = 220
      Height = 18
      Alignment = taCenter
      Caption = 'N'#250'mero de Autoriza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 257
      Top = 165
      Width = 35
      Height = 12
      Alignment = taCenter
      Caption = '<ENTER>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label48: TLabel
      Left = 18
      Top = 228
      Width = 525
      Height = 14
      Alignment = taCenter
      Caption = 
        'Informe a Operadora e o N'#186' da Autoriza'#231#227'o do Lan'#231'amento em Cart'#227 +
        'o de D'#233'bito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object edDebitoValor: TFloatEdit
      Left = 16
      Top = 40
      Width = 313
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edDebitoHistorico: TColorMaskEdit
      Left = 16
      Top = 88
      Width = 473
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edDebitoCartao: TColorMaskEdit
      Left = 16
      Top = 143
      Width = 280
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '<ENTER>'
      OnKeyDown = edDebitoCartaoKeyDown
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edDebitoAutorizacao: TColorMaskEdit
      Left = 16
      Top = 198
      Width = 280
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object pControlCartaoCredito: TPanel
    Left = 16
    Top = 289
    Width = 741
    Height = 249
    TabOrder = 13
    object Shape18: TShape
      Left = 0
      Top = 1
      Width = 740
      Height = 248
      Brush.Color = clBtnFace
      Pen.Color = clGreen
      Pen.Width = 2
    end
    object Label33: TLabel
      Left = 63
      Top = 33
      Width = 70
      Height = 18
      Alignment = taCenter
      Caption = 'X de R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 26
      Top = 58
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 219
      Top = 33
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = ', todo dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 359
      Top = 33
      Width = 130
      Height = 18
      Alignment = taCenter
      Caption = ', de cada m'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 226
      Top = 58
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Operadora:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 402
      Top = 58
      Width = 180
      Height = 18
      Alignment = taCenter
      Caption = 'N'#186' de Autoriza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 355
      Top = 97
      Width = 35
      Height = 12
      Alignment = taCenter
      Caption = '<ENTER>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edCreditoNumero: TFloatEdit
      Left = 24
      Top = 24
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edCreditoHistorico: TColorMaskEdit
      Left = 24
      Top = 76
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edCreditoValor: TFloatEdit
      Left = 136
      Top = 24
      Width = 81
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edCreditoVencimento: TFloatEdit
      Left = 323
      Top = 24
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object BitBtn3: TBitBtn
      Left = 600
      Top = 76
      Width = 122
      Height = 26
      Caption = 'Gerar Cr'#233'ditos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object EdCreditoOperadora: TColorMaskEdit
      Left = 224
      Top = 76
      Width = 169
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '<ENTER>'
      OnKeyDown = EdCreditoOperadoraKeyDown
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdCreditoAutorizacao: TColorMaskEdit
      Left = 400
      Top = 76
      Width = 193
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBGCreditos: TDBGrid
      Left = 24
      Top = 107
      Width = 694
      Height = 129
      Color = clCream
      Ctl3D = False
      DataSource = MDO.DView
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGCreditosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPARCELA'
          Title.Caption = 'Documento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMBOLETO'
          Title.Caption = 'N. Autoriza'#231#227'o'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 608
      Top = 6
      Width = 110
      Height = 25
      Caption = 'Apagar todas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
    end
  end
  object pControlCheque: TPanel
    Left = 16
    Top = 289
    Width = 741
    Height = 249
    TabOrder = 10
    object Shape11: TShape
      Left = 0
      Top = 1
      Width = 740
      Height = 247
      Brush.Color = clBtnFace
      Pen.Color = clNavy
      Pen.Width = 2
    end
    object Label23: TLabel
      Left = 63
      Top = 20
      Width = 110
      Height = 18
      Alignment = taCenter
      Caption = 'Vezes de R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 26
      Top = 39
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 263
      Top = 20
      Width = 170
      Height = 18
      Alignment = taCenter
      Caption = 'Vencendo todo dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 479
      Top = 20
      Width = 110
      Height = 18
      Alignment = taCenter
      Caption = 'de cada m'#234's'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label46: TLabel
      Left = 26
      Top = 228
      Width = 392
      Height = 14
      Alignment = taCenter
      Caption = 'Duplo clique para editar e informar o n'#250'mero dos cheques'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label50: TLabel
      Left = 25
      Top = 85
      Width = 336
      Height = 14
      Alignment = taCenter
      Caption = 'Somente cheques com n'#250'meros ser'#227'o contabilizados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object edChequeNumero: TFloatEdit
      Left = 24
      Top = 11
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edChequeHistorico: TColorMaskEdit
      Left = 24
      Top = 57
      Width = 577
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edChequeValor: TFloatEdit
      Left = 177
      Top = 11
      Width = 81
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edChequeVencimento: TFloatEdit
      Left = 436
      Top = 11
      Width = 33
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object btnGeraCheques: TBitBtn
      Left = 608
      Top = 57
      Width = 110
      Height = 25
      Caption = 'Gerar Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnGeraChequesClick
    end
    object BitBtn6: TBitBtn
      Left = 608
      Top = 4
      Width = 110
      Height = 25
      Caption = 'Apagar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object DBGCheque: TDBGrid
      Left = 24
      Top = 99
      Width = 694
      Height = 129
      Color = clCream
      Ctl3D = False
      DataSource = MDO.DView
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGChequeDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPARCELA'
          Title.Caption = 'Documento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHEQUE'
          Title.Caption = 'Cheque'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Caption = 'Vencimento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Visible = True
        end>
    end
  end
  object pControlBanco: TPanel
    Left = 16
    Top = 289
    Width = 741
    Height = 249
    TabOrder = 11
    object Shape13: TShape
      Left = 1
      Top = 1
      Width = 738
      Height = 247
      Brush.Color = clBtnFace
      Pen.Color = clAqua
      Pen.Width = 2
    end
    object Label27: TLabel
      Left = 22
      Top = 21
      Width = 230
      Height = 18
      Alignment = taCenter
      Caption = 'Valor da Transfer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 18
      Top = 78
      Width = 100
      Height = 18
      Alignment = taCenter
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edBancoValor: TFloatEdit
      Left = 16
      Top = 40
      Width = 233
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object edBancoHistorico: TColorMaskEdit
      Left = 16
      Top = 96
      Width = 473
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object PEditaParcela: TPanel
    Left = 38
    Top = 392
    Width = 697
    Height = 134
    BevelWidth = 2
    Color = clSkyBlue
    TabOrder = 17
    Visible = False
    OnExit = PEditaParcelaExit
    object Shape14: TShape
      Left = 3
      Top = 3
      Width = 691
      Height = 128
      Brush.Color = clMoneyGreen
      Pen.Color = clWhite
      Pen.Width = 2
    end
    object Label2: TLabel
      Left = 16
      Top = 12
      Width = 90
      Height = 17
      Caption = 'Documento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 136
      Top = 12
      Width = 63
      Height = 17
      Caption = 'Boleto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 250
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Vencimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 364
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Refer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 548
      Top = 12
      Width = 54
      Height = 17
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 16
      Top = 60
      Width = 90
      Height = 17
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn4: TBitBtn
      Left = 528
      Top = 98
      Width = 80
      Height = 25
      Caption = 'G R A V A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 608
      Top = 98
      Width = 80
      Height = 25
      Caption = 'C A N C E L A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object EdDocumentoEditaParcela: TColorMaskEdit
      Left = 16
      Top = 30
      Width = 110
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdBoletoEditaParcela: TColorMaskEdit
      Left = 136
      Top = 30
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVencimentoEditaParcela: TColorMaskEdit
      Left = 250
      Top = 30
      Width = 104
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdReferenciaEditaParcela: TColorMaskEdit
      Left = 364
      Top = 30
      Width = 105
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdValorEditaParcela: TColorEditFloat
      Left = 478
      Top = 30
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdHistoricoEditaParcela: TColorMaskEdit
      Left = 16
      Top = 79
      Width = 401
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object PEditaCredito: TPanel
    Left = 38
    Top = 392
    Width = 697
    Height = 134
    BevelWidth = 2
    Color = clSkyBlue
    TabOrder = 19
    Visible = False
    OnExit = PEditaParcelaExit
    object Shape20: TShape
      Left = 3
      Top = 3
      Width = 691
      Height = 128
      Brush.Color = clMoneyGreen
      Pen.Color = clWhite
      Pen.Width = 2
    end
    object Label15: TLabel
      Left = 16
      Top = 12
      Width = 90
      Height = 17
      Caption = 'Documento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 136
      Top = 12
      Width = 135
      Height = 17
      Caption = 'N. Autoriza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 290
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Vencimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 404
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Refer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label41: TLabel
      Left = 588
      Top = 12
      Width = 54
      Height = 17
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 16
      Top = 60
      Width = 90
      Height = 17
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 98
      Width = 80
      Height = 25
      Caption = 'G R A V A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn7: TBitBtn
      Left = 608
      Top = 98
      Width = 80
      Height = 25
      Caption = 'C A N C E L A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn7Click
    end
    object EdDocumentoEditaCredito: TColorMaskEdit
      Left = 16
      Top = 30
      Width = 110
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdAutorizacaoEditaCredito: TColorMaskEdit
      Left = 136
      Top = 30
      Width = 147
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVencimentoEditaCredito: TColorMaskEdit
      Left = 290
      Top = 30
      Width = 104
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 2
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdReferenciaEditaCredito: TColorMaskEdit
      Left = 404
      Top = 30
      Width = 105
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdValorEditaCredito: TColorEditFloat
      Left = 518
      Top = 30
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdHistoricoEditaCredito: TColorMaskEdit
      Left = 16
      Top = 79
      Width = 401
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object POperadoraCartao: TPanel
    Left = 80
    Top = 432
    Width = 281
    Height = 86
    BevelWidth = 2
    TabOrder = 15
    OnExit = POperadoraCartaoExit
    object dbgCartao: TDBGrid
      Left = 4
      Top = 4
      Width = 274
      Height = 78
      BorderStyle = bsNone
      DataSource = DMFINANC.DCartao
      Options = [dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = dbgCartaoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Width = 230
          Visible = True
        end>
    end
  end
  object pBotaoDinheiro: TPanel
    Left = 16
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Shape6: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clActiveCaption
      Pen.Width = 2
    end
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        FE140000424DFE14000000000000360000002800000032000000230000000100
        180000000000C8140000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF577480558199538DAE54849E57768559
        696CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF509BC84C
        B4F74CB5F94CB5F94CB5F94EB8FA4FBBFA4EB8FA4CB5F94CB5F94CB5F94CB5F9
        4FA3D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4CB5F851BDFB55C5FC56C6FC56C6FD
        55C5FD56C8FD58CBFE5ACFFF5BD0FF59CDFE57C9FD55C5FD52C0FB4DB6F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF5296BE4FBBFA4EB8FA4CB5F94CB5F94CB5F94CB5F94CB5F94CB5
        F94CB5F94FB8FA5EBFFA54C1FB59CCFE5BD0FF5ACEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EA9E24DB7
        F951BDFB53C1FC54C4FC56C8FD58CAFE58CAFE55C6FD52C1FB50BDFB50BCFB4F
        BCFA4EB9FA4CB5F956C6FD5BD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2
        E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9
        D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D254C3FC5ACFFF5BD0FF58CBFE51
        BFFB4FB8FA4CB5F94CB5F94CB5F94CB5F94DB7FA4CB6F94CB5F94CB5F94CB5F9
        4DB6F957AEE04EA9E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF9
        F7F6FFFFFFFFFFFFCCEDFE5BD0FF59CDFE58C5FC4DB6F94DB8F94EB9FA4EB8FA
        4DB7F94EB9FA51BDFB53C1FC55C4FC55C6FC56C7FE55C6FD54C3FC50BDFB4CB5
        F9C2E6FDFFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFE0EC
        A2DCEA94DCEA94DCEA94DCEA94DCEA94DCEA94DCEA94DCEA94DCEA94E8E9CDE3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBE2EAB0DCEA94DCEA94
        D7E89869C4E84CB6F94CB5F94CB6F94EB9FA50BDFB52C0FB53C2FC51BFFB4FBB
        FB4DB8FA4CB6F94CB5F94EB6F952BFFB5BCFFF5BD0FF59CCFE7ECADEFFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C4DB4CC4DB4CC4
        DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CE1E5B6E3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4C8CC99D4FBBFA56C7
        FD5ACDFE59CDFE53C2FC50BCFB4EB9FA4CB6F94CB5F94CB5F94CB5F94CB5F94C
        B5F94DB6F94DB6F951BAFA55C5FC5ACFFF8AD3BAFFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C4DB4CD5E580F2F7D8F2F7D8F2F7D8
        F2F7D8F2F7D8F2F7D8F2F7D8EFEDE2E3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBF1F2DDF2F7D8F2F7D889D3EF5BD0FF5BD0FF57C9FE4DB6F94D
        B8FA50BDFB52C0FC54C4FC56C8FD58CBFE5ACDFE58CAFE56C7FD54C3FC52C0FB
        50BCFB4DB6F952B8F2BCDB74FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFCBDF62C6DC51FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF2
        F3E0E5EFB0E5EFB0D4F0E45ED1FF5BD0FF56C1FB56C6FD5BCFFF5BD0FF5BD0FF
        5BD0FF5CD0FF5BD0FF5BD0FF5BD0FF5BD0FF67D4FF5BD0FF5BD0FF5ACFFF54C3
        FC95CDA3FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF
        62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4C
        C4DB4CBFDF7C9EE2F463CEFE5BD0FF5BD0FF6AD4FFC6EFFFD8F4FFC8EFFFE7F8
        FFA6E5FF7AD9FFA4E5FFF6FCFF8DDEFF63D2FF5BD0FF5BD0FF96D4A8FFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4CC4DB4CC4DB4CC8DD
        57E1F3D981DBFF5BD0FF5DD1FF7EDAFFADE7FF63D2FF67D4FFAEE8FFA0E4FF96
        E1FFA5E5FF66D3FF5CD0FF5CD0FF80D4C3C9DF64FFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBD2E081D4E57EE0ECA2C4DB4CC4DB4CC4DB4CCDE169FEFFFDDE
        F6FFBBECFFA7E6FF92E0FF7DDAFF69D4FF5CD0FF6CD5FF81DBFF96E1FFABE7FF
        BFEDFFE8F9FFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF0
        F2DBFEFEFCFFFFFEEFF5CED1E375C4DB4CC4DB4CE8F1B8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC
        52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF
        62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEF4CAD5E57FE7E8C8E3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF3F3E3E6EFB2EAF2BE
        EEF5CCF4F8DDC4DB4CC4DB4CD2E375FFFFFFFFFFFFFFFFFFEFF5CFD7E684D5E5
        7FEEF4CAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEEF4CAC4DB4CC4DB4CE1E5B6E3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E082D5E57FE2EDA6DEEB9AFEFEFCC7DD
        56C4DB4CC8DD57FFFFFFFFFFFFF1F7D6C4DB4CC4DB4CC4DB4CC4DB4CEEF4CAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD5E57FC4DB4CC4DB4CE1E5B6E3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBD4E086E3EEABF9FCEEFFFFFEEBF3C3C4DB4CC4DB4CC4DB4CF9
        FBECFFFFFFD9E88AC4DB4CC4DB4CC4DB4CC4DB4CD5E57FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E684C4DB
        4CC4DB4CE1E5B6E3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF7
        F5EEFFFFFFF5F9E0D7E786C5DB4EC4DB4CC4DB4CC4DB4CF9FCEEFFFFFFDAE98F
        C4DB4CC4DB4CC4DB4CC4DB4CD7E684FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC
        52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF
        62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5CFC4DB4CC4DB4CE1E5B6E3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF3F3E3DAE88DE2EDA6
        C4DB4CC4DB4CC4DB4CC4DB4CC8DE59FFFFFFFFFFFFF3F8DAC4DB4CC4DB4CC4DB
        4CC4DB4CEFF5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F7D6D9E88AE8E9CBE3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBF3F3E1D9E88BE6EFB2DEEB9BD6E683C4DB
        4CC4DB4CD2E478FFFFFFFFFFFFFFFFFFF3F8DADAE98FD9E88AF1F7D6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBF2F3E0FFFFFFFFFFFFF8FBEBDFEC9FC4DB4CC4DB4CEAF2BFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFCBDF62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2
        E081D8E78AE3EEA9C4DB4DC4DB4CC4DB4CD0E270FFFFFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC
        52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF
        62C6DC52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4C
        C4DB4CC4DB4CCADF5EF4F8DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C6DC52FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4CC4DB4CD1E373F9FB
        EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DC52CBDF62FFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF62C5DC50FFFFFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBF4F4E7E9F1BCE9F1BCF7FAE8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEC5DC50CBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2FFFFFFCBDF62C4DB4CDAE88DEDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4
        C8EDF4C8EEECDDE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBED
        F0D2EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8
        EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8EDF4C8DAE88DC4DB
        4CCBDF62FFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFCBDF
        62C4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CE1E5B6E3
        D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBD2E081C4DB4CC4DB4C
        C4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB
        4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CC4DB4CCBDF62FFFFFFE3
        D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFE3D9D2FFFFFFE3EEABE0ECA0E0ECA0E0
        ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0EAEAD0E3D9D2EEE8E5EEE9E6
        EEE9E6EEE9E6EEE9E6E8E1DCE7E0DBE5EBB8E0ECA0E0ECA0E0ECA0E0ECA0E0EC
        A0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0
        ECA0E0ECA0E0ECA0E0ECA0E0ECA0E0ECA0E3EEABFFFFFFE3D9D2FFFFFFFFFFFF
        0000FFFFFFFFFFFFE3D9D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F0EEE3D9D2EEE8E5EEE9E6EEE9E6EEE9E6EEE9
        E6E8E1DCE7E0DBF9F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFF
        E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9
        D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3
        D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2
        E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9
        D2E3D9D2E3D9D2E3D9D2FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      OnClick = SpeedButton1Click
    end
    object lDinheiro: TLabel
      Left = 4
      Top = 65
      Width = 110
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Dinheiro'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lTotalDinheiro: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pBotaoDuplicata: TPanel
    Left = 140
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Shape8: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clHighlight
      Pen.Width = 2
    end
    object SpeedButton2: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        A21B0000424DA21B00000000000036000000280000003B000000270000000100
        1800000000006C1B0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FAF3EEFAF3EEFAF3EEFAF3EEE9E0D2BDAF8A
        A59464A1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA190
        5DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1
        905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905DA1905D
        A1905DA1905DA1905DA1905DA1905DA1905DA1905DAB9B6DCABDA0F4EDE5FAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE00
        0000FAF3EEFAF3EEF8F1EBB6A77F7D67217B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E877333D9CEB8FAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000FAF3EEFAF3EEB0A1767B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7F6925DCD2BEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EE000000FAF3EEDACFBA7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E8B7638
        F5EEE7FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000FAF3
        EE9D8B577B651E7B651E7B651E7B651E7B651F7F6A257F6A257F6A257F6A257F
        6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A25
        7F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A
        257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F6A257F
        6A257E68237B651E7B651E7B651E7B651E7B651ECABDA0FAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F7EFE97E69247B651E7B651E7B65
        1E867130E5DBCBF9F2EDFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEF8F1EBC5B8977B651E7B
        651E7B651E7B651EA79767FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAC9C6EFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEF8F1EC806B267B651E7B651E7B651E9D8B55FA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E
        7B651E7B651E7B651EAF9F73FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEF9F2ED826D297B651E7B651E7B651E9D8B55FAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73
        FAF3EEFAF3EEDBD1BC887434887434927E44FAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEDAD0BB887434887434917E42FAF3EEFAF3EEF9F2ED826D297B651E7B65
        1E7B651E9D8B55FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE00
        0000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E
        7B651E867130FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EED7CCB67B651E7B651E
        85702EFAF3EEFAF3EEF9F2ED826D297B651E7B651E7B651E9D8B55FAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B
        651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EED7CCB67B651E7B651E85702EFAF3EEFAF3EEF9F2ED
        826D297B651E7B651E7B651E9D8B55FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFA
        F3EED8CDB67B651E7B651E867130FAF3EEC6B899A18F5CFAF3EEBFB18DA99869
        FAF3EEC0B28F9F8D589F8D589F8D589F8D58F6EFE8FAF3EEFAF3EEB7A8819F8D
        589F8D58D8CCB6F2EBE39F8D58CEC2A6FAF3EEA594639F8D589F8D58E3D9C9D7
        CCB67B651E7B651E85702EFAF3EEFAF3EEF9F2ED826D297B651E7B651E7B651E
        9D8B55FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9
        DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E86
        7130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E
        7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B65
        1EBDAF8AFAF3EE846F2D7B651E7B651EDBD0BBD7CCB67B651E7B651E85702EFA
        F3EEFAF3EEF9F2ED826D297B651E7B651E7B651E9D8B55FAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B65
        1EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A2787E6823FA
        F3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EEE7FAF3EE
        FAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8AFAF3EE846F2D7B65
        1E7B651EDBD0BBD7CCB67B651E7B651E85702EFAF3EEFAF3EEF9F2ED826D297B
        651E7B651E7B651E9D8B55FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CD
        B67B651E7B651E867130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA
        996A7B651E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651E
        CBBEA0F0E8DF7B651EBDAF8AFAF3EE846F2D7B651E7B651EDBD0BBD7CCB67B65
        1E7B651E85702EFAF3EEFAF3EEF9F2ED826D297B651E7B651E7B651E9D8B55FA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E
        7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3
        EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B
        651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8A
        FAF3EE846F2D7B651E7B651EDBD0BBD7CCB67B651E7B651E85702EFAF3EEFAF3
        EEF9F2EDCCC0A3CDC1A5C8BB9DB9AA84BCAE89FAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73
        FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A2787E6823FAF3EEA897
        67897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D
        8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8AFAF3EE846F2D7B651E7B651E
        DBD0BBD7CCB6846F2DB7A880E7DDCFFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE00
        0000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E
        7B651E867130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B65
        1E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0
        E8DF7B651EBDAF8AFAF3EE846F2D7B651E7B651EDBD0BBF0E8DEF3EBE3FAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B
        651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A278
        7E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EE
        E7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8AFAF3EE84
        6F2D7B651E8D793BECE4D8FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFA
        F3EED8CDB67B651E7B651E867130FAF3EEB2A2787E6823FAF3EEA89767897535
        FAF3EEAA996A7B651E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B65
        1E7B651ECBBEA0F0E8DF7B651EBDAF8AFAF3EE846F2D95834AF0E8DEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEF6E8CBEECA5F
        F2D78FF9F2EDFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9
        DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E86
        7130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E
        7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B65
        1EBDAF8AFAF3EE9A8851F1E9E0FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEEECA62E9B619E9B619F0D17BF9F2EDFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B65
        1EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A2787E6823FA
        F3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EEE7FAF3EE
        FAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8AFAF3EEEEE5DBFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEEEC859E9B619E9B619E9B619F0D17BF9F2EDFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CD
        B67B651E7B651E867130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA
        996A7B651E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651E
        CBBEA0F0E8DF7B651EBDAF8AFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEEEC859E9B619E9B619E9
        B619E9B619F0D27BF9F2EDFAF3EEFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E
        7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3
        EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B
        651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DF7B651EBDAF8A
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEEEC859E9B619E9B619E9B619E9B619E9B619F0D17BF9
        F2EDFAF3EEFAF3EEFAF3EE000000F1E9DF7B651E7B651E7B651E7B651EAF9F73
        FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A2787E6823FAF3EEA897
        67897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D
        8B567B651E7B651ECBBEA0F0E8DF7B651ED3C8AFFAF3EEFAF3EEFAF3EEFAF3EE
        F7E9CCEFCE6FEFCD6BEFCD6BEFCD6BEFCD6BEFCD6BEFCD6BEFCD6BEFCD6BEABC
        31E9B619E9B619E9B619E9B619E9B619E9B619F0D17BF9F2EDFAF3EEFAF3EE00
        0000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E
        7B651E867130FAF3EEB2A2787E6823FAF3EEA89767897535FAF3EEAA996A7B65
        1E7B651E7B651E7B651EF5EEE7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0
        E8DF897536F8F1EBFAF3EEFAF3EEFAF3EEFAF3EEEDC655E9B619E9B619E9B619
        E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B6
        19E9B619E9B619E9B619F0D17BF9F2EDFAF3EE000000F1E9DF7B651E7B651E7B
        651E7B651EAF9F73FAF3EEFAF3EED8CDB67B651E7B651E867130FAF3EEB2A278
        7E6823FAF3EEA89767897535FAF3EEAA996A7B651E7B651E7B651E7B651EF5EE
        E7FAF3EEFAF3EE9D8B567B651E7B651ECBBEA0F0E8DFB4A57CFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEECC348E9B619E9B619E9B619E9B619E9B619E9B619E9B619
        E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B6
        19EFCF72F9F2EC000000F1E9DF7B651E7B651E7B651E7B651EAF9F73FAF3EEFA
        F3EEE6DDCEB1A277B1A277B8A982FAF3EED1C5ABB3A47AFAF3EECBBEA1B9AB84
        FAF3EECCBFA3B1A277B1A277B1A277B1A277F7F0EAFAF3EEFAF3EEC5B797B1A2
        77B1A277DFD4C1F4ECE5E2D8C7FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEECC348E9
        B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619
        E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619EECC69000000F2EA
        E17B651E7B651E7B651E7B651EA59463FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEECC348E9B619E9B619E9B619E9B619E9
        B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619
        E9B619E9B619E9B619E9B619E9B619000000F9F1EC846F2D7B651E7B651E7B65
        1E7C6721BDAF8AD6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6
        CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3
        D6CBB3D6CBB3D6CBB3D6CBB3D6CBB3D8CDB6FAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEECC348E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9
        B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619
        E9B71D000000FAF3EEAA9A6C7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E
        7B651E7E6924FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEECC348E9B619E9B6
        19E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9
        B619E9B619E9B619E9B619E9B619E9B619E9B821F4E0AF000000FAF3EEE7DDCF
        7F69247B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651EF2EAE2FAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEECC348E9B619E9B619E9B619E9B619E9B619E9B6
        19E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9
        B619E9B822F5E3B8FAF3EE000000FAF3EEFAF3EEC7BB9C7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651E7B651E7B651E7B651E7B651EE0D6C4FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        EFCE6EE9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B619E9B6
        19E9B619E9B619E9B619E9B619E9B619E9B619E9B822F5E3B8FAF3EEFAF3EE00
        0000FAF3EEFAF3EEFAF3EED5CAB3927F457B651E7B651E7B651E7B651E7B651E
        7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B65
        1E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B651E7B
        651EC3B695FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEF9F1E8F5E2B2F4E0ADF4E0AD
        F4E0ADF4E0ADF4E0ADF4E0ADF4E0ADF4E0ADECC245E9B619E9B619E9B619E9B6
        19E9B619E9B822F5E3B8FAF3EEFAF3EEFAF3EE000000FAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEE5DBCCCDC1A5C7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9B
        C7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA
        9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BC7BA9BDACFB9FAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEEEC859E9B619E9B619E9B619E9B619E9B822F5E3B8FAF3EEFAF3
        EEFAF3EEFAF3EE000000FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEEEC859E9B619
        E9B619E9B619E9B822F5E3B8FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000FAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEEEC859E9B619E9B619E9B822F5E3B8FAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EE000000FAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3
        EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFA
        F3EEF0D076E9B619E9B822F5E3B8FAF3EEFAF3EEFAF3EEFAF3EEFAF3EEFAF3EE
        FAF3EE000000}
      OnClick = SpeedButton2Click
    end
    object lDuplicata: TLabel
      Left = 4
      Top = 65
      Width = 110
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Duplicata'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lTotalDuplicata: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pBotaoCheque: TPanel
    Left = 264
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Shape10: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clNavy
      Pen.Width = 2
    end
    object SpeedButton3: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        66140000424D6614000000000000360000002800000032000000220000000100
        18000000000030140000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF5E4A325E4A325E4A325E4A
        325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E
        4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A32
        5E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A
        325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E
        4A325E4A32FFFFFF0000FFFFFF5E4A32E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6
        E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0
        E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3
        E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6
        E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E05E4A32FFFFFF
        0000FFFFFF5E4A32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E4A32FFFFFF0000FFFFFF5E4A32
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C3
        BE77BAF6B2D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5E4A32FFFFFF0000FFFFFF5E4A32FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8D1FE5BD0FF5BD0FF73
        BFFFECF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5E4A32FFFFFF0000FFFFFF5E4A32EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2ED
        E6E2EDE6E2EDE6E2EDE6E2EDE6E2E8E4E35FC1FD5BD0FF5BD0FF5CC6FFA2C4F1
        EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6
        E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2ED
        E6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E25E4A32FFFFFF
        0000FFFFFF5E4A32E7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDA
        E7DFDAE7DFDAE7DFDAB4CAE85BCFFF5BD0FF5BD0FF5BD0FF84A8F4E3DCDBE7DF
        DAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7
        DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDA
        E7DFDAE7DFDAE7DFDAE7DFDAE7DFDAE7DFDA5E4A32FFFFFF0000FFFFFF5E4A32
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E67ABCFA5BD0FF5BD0FF599AFF5870FF7789FADCDBE9EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6E5E4E85E
        C3FE599AFF5870FF5870FF5870FF6479FDC7C9EDEEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE8E5EBE5E1EBE5E1EB
        E5E1EBE5E1EBE5E1EBE5E1EBE5E1EBE5E1EBE5E1EBE5E1C8CFE95D74FE5870FF
        5870FF5870FF5870FF5A71FFA6AEEFEBE5E1EDE8E4EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF
        0000FFFFFF5E4A32EEE9E6EEE9E6ECE7E3E5DCD6E5DCD6E5DCD6E5DCD6E5DCD6
        E5DCD6E5DCD6E5DCD6E5DCD6E5DCD6E5DCD6B3B5E55870FF5870FF5870FF5870
        FF5870FF5870FF8894F1E6E1E1EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E699A5F45870FF5870FF5870FF5870FF5870FF58
        70FF7E8FF9E6E2E7EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6ECE7E67E8EF95870FF5870FF5870FF5870FF5870FF5870FF7587FA
        E0DEE8EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9E6EEE8E5EEE8E5EE
        E8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5EEE8E5
        E2DEE7697EFC5870FF5870FF5870FF5870FF5870FF5870FF6D81FCDAD9E9EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF
        0000FFFFFF5E4A32EEE9E6EEE9E6ECE6E2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2
        E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2E3D9D2C8C4DB5F75
        FD5870FF5870FF5870FF5870FF5870FF5870FF667BFDD2D2EBEEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6C6C9ED5C73FE5870FF58
        70FF5870FF5870FF5870FF5870FF6077FEC8CBECEEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6BABFEF5970FF5870FF5870FF5870FF
        5870FF5870FF5870FF5C73FEBEC2EEEEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6
        EEE9E6EEE9E6EEE9E6EEE9E6ADB5F15870FF5870FF5870FF5870FF5870FF5870
        FF5870FF5971FFACBBF1EDE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF
        0000FFFFFF5E4A32EEE9E6EEE9E6ECE6E2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2
        E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2E2D8
        D2E2D8D2E2D8D299A1EA5870FF5870FF5870FF5870FF5870FF5870FF587AFF5B
        C2FF7CC1F9EEE9E6CEE4EB9DDBF4E5DCD7E2D8D2E2D8D2E2D8D2E2D8D2E2D8D2
        E2D8D2E2D8D2E2D8D2E4DBD6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32
        EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6919EF55870FF5870FF5870FF5870FF587AFF5BC2FF5BCAFF5983FF98A3F4
        DFE6E860D1FEC8E3ECEEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E65E4A32FFFFFF0000FFFFFF5E4A32EEE9E6EEE9E6EEE9
        E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6ECE7E68594F8
        5870FF5870FF5879FF5BC2FF5BCAFF5983FF5870FF5870FF8C9AF69DDAF47CD6
        F9EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EEE9E6EE
        E9E65E4A32FFFFFF0000FFFFFF5E4A32E7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7
        E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DB
        E7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE2DCDC7989F75879FF5BC1
        FF5BCAFF5983FF5870FF5870FF5870FF5870FF8C9CF261D1FD9BD7EEE3E0DCE7
        E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DBE7E0DB5E4A32FFFFFF
        0000FFFFFF5E4A32EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2
        EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6
        E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2E2DEE460BDFE5BCAFF5983FF5870FF58
        70FF5870FF5870FF5870FF5870FF8FA7F471D3FB72D3FAC9E1E9EDE6E2EDE6E2
        EDE6E2EDE6E2EDE6E2EDE6E2EDE6E2EDE6E25E4A32FFFFFF0000FFFFFF5E4A32
        FFFFFFFCFDF7F0F6D2F9FBEAF9FBEDF8FBEAF7FAE7F9FBECF8FBE9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD1E9FF6790FF5870FF5870FF5870FF5870FF5870FF
        5870FF5870FF5870FFB4C1FFA8E6FF5DD1FF8FDFFFFBFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5E4A32FFFFFF0000FFFFFF5E4A32FFFFFFF6F9E3D7E7
        87E6F0B4DBE992DFEC9EDAE98FDBE991F0F6D1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3E7FF647AFF5870FF5870FF5870FF5870FF5870FF5870FF5870
        FF5971FFC4CDFFE1F7FF65D3FFC1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5E4A32FFFFFF0000FFFFFF5E4A32FFFFFFFBFDF4EAF2C1FDFEF8F4F8DEF3
        F7D9F6F9E4F6F9E3F4F8DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDADFFF6278FF5870FF5870FF5870FF5870FF5870FF5870FF5870FF5F76FFEC
        F0FF72D6FFB6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E4A32FFFFFF
        0000FFFFFF5E4A32E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0
        E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3
        E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0CCCEE665
        7BFC5870FF5870FF5870FF5870FF5870FF5870FF5870FF7095FA65D1FDD5E1E4
        E6E3E0E6E3E0E6E3E0E6E3E0E6E3E0E6E3E05E4A32FFFFFF0000FFFFFF5E4A32
        5E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A
        325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325E
        4A325E4A325E4A325E4A325E4A325E4A325E4A325E4A325D4F4D596BE35870FF
        5870FF5870FF5870FF5870FF5870FF5870FF5C656D5E4A325E4A325E4A325E4A
        325E4A325E4A325E4A325E4A32FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5969D85870FF5870FF5870
        FF5870FF5870FF5870FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A63BA5870FF5870FF5870FF5870FF5A
        A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5968D3596DE55AA1F45BD0FF5BD0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BC3EC5BC7F1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      OnClick = SpeedButton3Click
    end
    object lCheque: TLabel
      Left = 4
      Top = 65
      Width = 110
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lTotalCheque: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pBotaoBanco: TPanel
    Left = 388
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    object Shape12: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clAqua
      Pen.Width = 2
    end
    object SpeedButton4: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        B6220000424DB6220000000000003600000028000000400000002E0000000100
        18000000000080220000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFDFDFDFBFCFBFBFCFBFCFDFCFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
        FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFDFDFEFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF0F1F1
        D1D5D4C7CBCAD3D7D6DFE4E3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E4E8E7E9EDECF8F9F9FFFFFFF2F3F3C7CBCA
        C6CAC9D4D9D8E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7F9FAFAD5D7D6C6CAC9
        C8CCCBE2E7E6E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7EBEEEDC9CDCCC6CAC9
        CDD2D1E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E5E9E8C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E4E2CAE6D58AE5DEB6E3E8E7E3E8E7E5DC
        B0E6D58AE4E3D0E3E8E7E4E4D3E6D58AE5DCACE6D58AE5D99FE3E8E7E3E8E7E3
        E5D9E6D58AE5DAA2E5DCADE6D58AE3E6DEE3E8E7E5DBA9E6D58AE4E0C2E3E8E7
        E4DFBAE6D796E6D383E5D99FE4E2CBE3E8E7E5D89CE6D58AE3E7E4E3E8E7E3E8
        E7E3E8E7E5D89CE6D58AE6D58AE6D58AE6D58AE6D796E3E6DEE6D58AE5DAA4E3
        E8E7E3E8E7E5DAA4E6D58AE3E6DFE3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E4E0BFE7CD66E5DAA2E3E8E7E3E8E7E5D8
        9AE7CD66E4E1C7E3E8E7E4DEB7E7CD66E5DDB1E6D384E7CD68E5DBA9E5DBAAE6
        D690E7CD66E5DDB1E6D796E7CD66E3E5DBE4E4D3E7CD68E7CD66E5DDB2E5DDB1
        E7CD66E6D17AE5D797E7CF6FE7CE6BE3E5D9E6D27EE7CD66E3E7E3E3E8E7E3E8
        E7E3E8E7E6D27EE7CD66E7D076E7D076E7D076E6D384E3E5DBE7CD66E6D58AE3
        E8E7E3E8E7E7D074E7CF71E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E4E0BFE7CD66E5DAA2E3E8E7E3E8E7E5D8
        9AE7CD66E4DEB7E4E3CEE6D384E7CD66E4E3CFE5DEB5E7CD66E7CE6CE7CF72E7
        CD67E7CE6AE3E6DEE6D796E7CD66E3E5DBE6D58EE7CD66E7CD66E5DDB2E5DCAD
        E6D692E4E4D3E3E7E3E6D488E7CD66E4E1C6E6D27EE7CD66E3E7E3E3E8E7E3E8
        E7E3E8E7E6D27EE7CD66E3E8E7E3E8E7E3E8E7E3E8E7E3E5DBE7CD66E6D384E4
        E4D3E5DEB5E7CD66E6D58EE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E4E0BFE7CD66E5DAA2E3E8E7E3E8E7E5D8
        9AE7CD66E7CD66E7CD66E7CD66E5D797E3E8E7E3E7E0E7CE6BE6D58DE3E5DAE7
        CD67E6D690E3E8E7E6D796E7CD66E4DFBCE7CD66E6D58CE7CD66E5DDB2E3E8E7
        E4E2C8E6D58DE7CE6BE7CD66E6D178E3E8E5E6D27EE7CD66E7CD66E7CD66E7CF
        72E3E8E7E6D27EE7CD66E6D27EE6D27EE6D27EE4DEB9E3E5DBE7CD66E7CD66E7
        CD66E7CD66E7CE69E4E4D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E4E0BFE7CD66E5DAA2E3E8E7E3E8E7E5D8
        9AE7CD66E5DCAEE4E1C6E6D58CE7CD67E4E3CEE3E8E7E6D795E7CE6AE5DBAAE7
        CD66E4E0C1E3E8E7E6D796E7CD66E6D178E6D27EE4DFBEE7CD66E5DDB2E4E4D3
        E7CD67E7CE69E6D58AE5DDB2E3E7E2E3E8E7E6D27EE7CD66E5DDB0E5DDB2E4DE
        B7E3E8E7E6D27EE7CD66E5D89AE5D89AE5D89AE4E1C6E3E5DBE7CD66E6D381E4
        E1C7E4DEB8E7CD67E6D68FE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E5D9E4E0C3E5DAA6E7CD66E6D692E4E0C3E4E3D0E5D8
        9AE7CD66E4DEB7E4E3D1E6D692E7CD66E4E0C0E3E8E7E4E1C5E7CD66E7CE6BE7
        D072E3E8E5E3E8E7E6D796E7CD66E7CD66E4E1C6E4E0BFE7CD66E5DDB2E5DCAD
        E7CD66E5DAA5E3E6DFE6D58AE6D280E3E7E3E6D27EE7CD66E4E3D0E4E4D3E4E4
        D3E3E7E0E6D27EE7CD66E4E4D3E4E4D3E4E4D3E3E5D7E3E5DBE7CD66E6D384E4
        E4D3E4E1C4E7CD68E6D27FE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E5DEB6E7CD66E7CD66E7CD66E7CD66E7CD66E6D796E5D8
        9AE7CD66E7CD66E7CD66E7CD66E6D27FE3E8E6E3E8E7E3E8E6E7D075E7CD66E5
        D9A1E3E8E7E3E8E7E6D796E7CD66E6D58DE3E8E7E4E0BFE7CD66E5DDB2E4E5D7
        E7D074E7CD66E7CD67E7CD66E5D89CE3E8E7E6D27EE7CD66E7CD66E7CD66E7CD
        66E4DFBAE6D27EE7CD66E7CD66E7CD66E7CD66E6D382E3E5DBE7CD66E7CD66E7
        CD66E7CD66E7CE69E4DFBEE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E5D9E4E0C3E4E0C3E4E0C3E4E0C3E4E0C3E4E3D0E4E4
        D2E4E0C3E4E0C3E4E0C3E4E4D4E3E8E7E3E8E7E3E8E7E3E8E7E4E3D0E4E0C3E3
        E6DCE3E8E7E3E8E7E4E3D0E4E0C3E3E6DBE3E8E7E3E6DCE4E0C3E3E5D8E3E8E7
        E3E8E5E4E2CAE4DEB8E3E5D9E3E8E7E3E8E7E4E2CAE4E0C3E4E0C3E4E0C3E4E0
        C3E3E5DBE4E2CAE4E0C3E4E0C3E4E0C3E4E0C3E4E2CBE3E7E4E4E0C3E4E0C3E4
        E0C3E4E1C8E3E7E2E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7BABEE47577DF7577DF7577DF7577DF7577DF7577DF7577
        DF7577DF7577DF7577DF9C9FE2E3E8E7C0B484B29F5DB29F5DB29F5DB29F5DB9
        AA72CEC8ABE0E4DFE3E8E7D0CCB2B29F5DB29F5DD3D1BBE3E8E7E3E8E7E3E8E7
        DFE3DDB2A05EB29F5DC0B587CCC6A7B29F5DB29F5DE2E6E3E3E8E7E3E8E7C7BF
        99B29F5DB29F5DD4D2BCE3E8E7B8A86FB29F5DBDB07CE3E8E7E3E8E7E3E8E7C6
        BD95B29F5DB29F5DC2B78BE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E79EA1E22B2BD92B2BD92B2BD92B2BD92B2BD92B2BD92B2B
        D92B2BD92B2BD92B2BD96A6BDEE3E8E7A79040906E00906E00906E00906E0090
        6E00906E00927105C9C19EDBDCCF916F03906E00B09D59E3E8E7E3E8E7E3E8E7
        C6BE97906E00906E00C2B78BBCAF7A906E00906E00E0E4E0E3E8E7DDDFD69575
        0E906E00906E00C9C29FE3E8E79A7D1C906E00A28832E3E8E7E3E8E7D7D7C693
        7207906E00937207D6D5C3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7B8BCE47071DE7071DE7071DE7071DE7071DE7071DE7071
        DE7071DE7071DE7071DE979AE1E3E8E7A79040906E0094730AB7A76CB7A76CAD
        9952927105906E00987A17E3E8E7A89142906E00937208A28832A28832A28832
        987916906E00937207DEE1D9BCAF7A906E00906E00E0E4E0E3E8E7B3A263906E
        00906E00906E00C9C29FE3E8E79A7D1C906E00A28832E3E8E7E3E8E6A58D3A90
        6E00906E00BFB282E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7A79040906E00977915E3E8E7E3E8E7E3
        E8E7AC984F906E00906E00DEE0D9C7BF99906E00906E00906E00906E00906E00
        906E00906E00AD9951E3E8E7BCAF7A906E00906E00E0E4E0D7D6C5927005906E
        00906E00906E00C9C29FE3E8E79A7D1C906E009C7F21E1E5E2C2B88C906E0090
        6E00A58D3AE3E8E6E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7B8BCE47071DE7071DE7071DE7071DE7071DE7071DE7071
        DE7071DE7071DE7071DE979AE1E3E8E7A79040906E00977812D9D9CAD9D9CACE
        C9AD997C1A906E009D8225E3E8E7E1E5E196760F906E00AB964BD3D1BCBCAF7A
        906E00906E00CCC7A8E3E8E7BCAF7A906E00906E00E0E4E0AA9448906E009D81
        23906E00906E00C9C29FE3E8E79A7D1C906E00906E00A9934795760E906E0094
        740CD9D9CBE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E79EA1E22B2BD92B2BD92B2BD92B2BD92B2BD92B2BD92B2B
        D92B2BD92B2BD92B2BD96A6BDEE3E8E7A79040906E00906E00906E00906E0090
        6E00906E009D8123D2CFB7E3E8E7E3E8E7B2A05F906E00997B19E3E8E6AE9A54
        906E00997B19E2E7E5E3E8E7BCAF7A906E00906E00CCC7A8906E00927105C8C1
        9D906E00906E00C9C29FE3E8E79A7D1C906E00906E00906E00906E00906E00C3
        B98EE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7BABEE47577DF7577DF7577DF7577DF7577DF7577DF7577
        DF7577DF7577DF7577DF9C9FE2E3E8E7A79040906E00937309B4A365B4A365A3
        8A35906E009C8022D9DACCE3E8E7E3E8E7D1CEB6906E00906E00CFCBB196760F
        906E00B7A86EE3E8E7E3E8E7BCAF7A906E00906E009F842A906E00B6A569D3D1
        BC906E00906E00C9C29FE3E8E79A7D1C906E00937309906E00906E009C8022E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7A79040906E00977915E3E8E7E3E8E7DE
        E0D9916F02906E00B6A66BE3E8E7E3E8E7E3E8E79D8225906E00A1872F906E00
        906E00D7D6C5E3E8E7E3E8E7BCAF7A906E00906E00906E00977812DEE1D9D3D1
        BC906E00906E00C9C29FE3E8E79A7D1C906E00A28832B8A96F906E00906E00B7
        A76CE3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7B8BCE47071DE7071DE7071DE7071DE7071DE7071DE7071
        DE7071DE7071DE7071DE979AE1E3E8E7A79040906E0094740BBCAF7ABCAF7AAB
        954A906E00906E00B3A263E3E8E7E3E8E7E3E8E7BDB07C906E00906E00906E00
        A38934E3E8E7E3E8E7E3E8E7BCAF7A906E00906E00906E00C0B587E3E8E7D3D1
        BC906E00906E00C9C29FE3E8E79A7D1C906E00A28832E3E8E6AD9951906E0090
        6E00BCAE79E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E79EA1E22B2BD92B2BD92B2BD92B2BD92B2BD92B2BD92B2B
        D92B2BD92B2BD92B2BD96A6BDEE3E8E7A79040906E00906E00906E00906E0090
        6E00906E0095760ED3D1BBE3E8E7E3E8E7E3E8E7DBDCD0916F03906E00906E00
        C2B78BE3E8E7E3E8E7E3E8E7BCAF7A906E00906E009E8226E2E7E4E3E8E7D3D1
        BC906E00906E00C9C29FE3E8E79A7D1C906E00A28832E3E8E7E1E5E1A48B3690
        6E00906E00C1B688E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7BCC0E47B7DDF7B7DDF7B7DDF7B7DDF7B7DDF7B7DDF7B7D
        DF7B7DDF7B7DDF7B7DDF9FA2E2E3E8E7C1B78AB4A365B4A365B4A365B4A365BC
        AE79CBC5A5DCDED5E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7BEB180B4A365B4A365
        DEE1D9E3E8E7E3E8E7E3E8E7CDC8AAB4A365B4A365D0CCB2E3E8E7E3E8E7DADB
        CFB4A365B4A365D4D2BEE3E8E7BAAC75B4A365BFB282E3E8E7E3E8E7DDDFD6B5
        A567B4A365B5A567DCDDD3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C6CAC9C6CAC9
        CFD4D3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C9CDCCC6CAC9
        CDD2D1E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E5E9E8D5D7D6C6CAC9
        C8CCCBE2E7E6E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7EBEEEDF2F3F3C7CBCA
        C6CAC9D4D9D8E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7F9FAFAFFFFFFF0F1F1
        D1D5D4C7CBCAD3D7D6DFE4E3E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E4E8E7E9EDECF8F9F9FFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDFBFCFBFBFCFBFCFDFCFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFD
        FDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFE
        FDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFDFEFDFD
        FEFDFDFEFDFDFEFDFDFEFDFDFEFDFEFEFEFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton4Click
    end
    object lBanco: TLabel
      Left = 4
      Top = 65
      Width = 110
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lTotalBanco: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pBotaoDebito: TPanel
    Left = 513
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object Shape15: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clMaroon
      Pen.Width = 2
    end
    object SpeedButton5: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        36300000424D3630000000000000360000002800000040000000400000000100
        18000000000000300000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE1E1E1B7B7B6ABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABB7B7B6E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1
        5757562121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120575756E1E1E1FFFFFFF0F0F0383837
        212120222221505150676968696B6A696B6A696B6A696B6A696B6A696B6A696B
        6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A69
        6B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A
        696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B
        6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A69
        6B6A696B6A696B6A696B6A565857232322212120383837F0F0F07E7E7E212120
        414140B2B5B4DEE3E2E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7CACECD4647462121207E7E7E454544212120
        8B8E8DCCD1D0E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E79EA1A0212120454544232322212120
        BEC2C1D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7D9DEDD888A895D5F5E3738
        373C3C3B5E5F5E999C9BE1E6E5A2A6A56163623F3F3E3435345A5C5B828483D4
        D8D7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7DADFDE212120232322212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E2E7E69B9F9E888B8A888B8A888B8A888B8A888B
        8A888B8A888B8A888B8A888B8A888B8A888B8A888B8A979A99DEE3E2E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7B2B6B5393A392121202121202121
        2021212021212021212024252421212021212021212021212021212021212032
        3332A7AAA9E3E8E7E3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7C0C4C32121202121202121202121202121202121
        20212120212120212120212120212120212120212120212120A9ADACE3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7B5B9B8222222212120201A4B1D0BA41C05
        CD1C06C41E12812121202121202121201E54761B85CA1B8FDB1C76B11F435921
        2120212120A5A9A8E3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E1E6E58F92917C7E7D7C7E7D7C7E7D7C7E7D7C7E
        7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D8B8D8CDCE1E0E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7DBDFDE3C3C3B2121201E13751B00E81B00EA1B00
        EA1B00EA201C3C212120212120212120202B311A9FF61A9FF71A9FF71A9FF61D
        618D212120313130D3D8D7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7909392212120201B481B01E61B00EA1B00EA1B00
        EA1C07BD2121202121200E46A42121212121201D6FA61A9FF71A9FF71A9FF71A
        9FF71F445B2121207E807FE3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7C2C6C5ACB0AFACB0AFACB0AFACB0AFACB0
        AFACB0AFACB0AFACB0AFACB0AFACB0AFACB0AFACB0AFBDC1C0E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E76769682121201D0D9B1B00EA1B00EA1B00EA1B00
        EA1E13762121201E2735015FFF1C2B442121201F48621A9FF71A9FF71A9FF71A
        9FF71C79B7212120555655E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7C4C8C72121202121202121202121202121202121
        20212120212120212120212120212120212120212120212120AFB2B1E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E74142412121201C06C21B00EA1B00EA1B00EA1B00
        EA201B4921212019325C015FFF15387421212020313B1A9FF71A9FF71A9FF71A
        9FF71B92E12121202F2F2EE3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7DCE1E06769685152515152515152515152515152
        51515251515251515251515251515251515251515251626362D3D8D7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E74C4D4C2121201D09B61B00EA1B00EA1B00EA1B00
        EA1F19542121201A2E4F015FFF1734642121202037451A9FF71A9FF71A9FF71A
        9FF71B8AD42121203A3B3AE3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E77375742121201E10881B00EA1B00EA1B00EA1B00
        EA1E10872121201F242B015FFF1E27362121201E51721A9FF71A9FF71A9FF71A
        9FF71D6EA3212120616362E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7DFE4E3D7DCDBD7DCDBD7DCDBD7DCDBD7DC
        DBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBDEE3E2E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7A6AAA9212120211F2C1C04D41B00EA1B00EA1B00
        EA1B03D62121212121201A30562121202121201C84C81A9FF71A9FF71A9FF71A
        97EA202E37212120949796E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7CCD1D02C2D2C2121202121202121202121202121
        20212120212120212120212120212120212120212120292928BBBFBEE3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E75C5E5D212120201B471C05CB1B00EA1B00
        EA1B00EA1F16662121202121202121201F40551A9FF71A9FF71A9FF71B91DF1F
        40552121204C4D4CE1E6E5E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7D3D8D74041402C2D2C2C2D2C2C2D2C2C2D2C2C2D
        2C2C2D2C2C2D2C2C2D2C2C2D2C2C2D2C2C2D2C2C2D2C3C3C3BC5C9C8E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7D2D6D5393A392121202120271F16651E0F
        8D1E1182201950212120212120212120203B4C1E5C841D67981E4E6E21292D21
        2120323231C7CBCAE3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7D9DEDD6F71702222212121202121
        202121202121202828274E4F4E2C2C2B21212021212021212021212021212063
        6564D4D8D7E3E8E7E3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7C9CDCC9EA1A07577
        76787B7A9B9E9DCED3D2E3E8E7D4D8D79EA1A07C7E7D7274739A9D9CC4C8C7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7DDE2E1212120212120212120212120
        B7BBBAC6CAC9D7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DC
        DBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7
        DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDB
        D7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DC
        DBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7
        DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD2D6D5212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2626252727262727262727262727262727262727262727262727262727262727
        2627272627272627272627272627272627272627272627272627272627272627
        2726272726272726272726272726272726272726272726272726272726272726
        2727262727262727262727262727262727262727262727262727262727262727
        2627272627272627272627272627272627272627272627272627272627272627
        2726272726272726272726272726272726272726212120212120212120212120
        D8D8D8EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8212120212120212120212120
        D8D8D8EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8212120212120212120212120
        D8D8D8EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8212120212120212120212120
        60605F6666656D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D
        6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D
        6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C
        6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D
        6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D
        6D6C6D6D6C6D6D6C6D6D6C6D6D6C6D6D6C6B6B6A212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        42372B45392C493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B
        2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D49
        3B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D
        493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B
        2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D493B2D49
        3B2D493B2D493B2D493B2D493B2D493B2D483A2D212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        5342305845325E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E4934
        5E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49345E49345E49345E
        49345E49345E49345E49345E49345E49345C4833212120212120212120212120
        2222202322202322212322212322212322212322212322212322212322212322
        2123222123222123222123222123222123222123222123222123222123222123
        2221232221232221232221232221232221232221232221232221232221232221
        2322212322212322212322212322212322212322212322212322212322212322
        2123222123222123222123222123222123222123222123222123222123222123
        2221232221232221232221232221232221232221212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120535352212120212120
        B7BBBAC6CAC9D7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DC
        DBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7
        DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDB
        D7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DC
        DBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7
        DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBD7DCDBFEFEFE212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7939695A4A4A4212120212120
        C1C5C4D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7DFE4E3242423252524232322212120
        BEC2C1D1D5D4E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7DADFDE212120232322454544212120
        8B8E8DCCD1D0E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E79EA1A02121204545447E7E7E212120
        414140B2B5B4DEE3E2E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7
        E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8
        E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3E8E7E3
        E8E7E3E8E7E3E8E7E3E8E7E3E8E7CACECD4647462121207E7E7EF0F0F0383837
        212120222221505150676968696B6A696B6A696B6A696B6A696B6A696B6A696B
        6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A69
        6B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A
        696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B
        6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A696B6A69
        6B6A696B6A696B6A696B6A565857232322212120383837F0F0F0FFFFFFE1E1E1
        5757562121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120212120212120212120212120212120
        2121202121202121202121202121202121202121202121202121202121202121
        2021212021212021212021212021212021212021212021212021212021212021
        2120212120212120212120212120212120575756E1E1E1FFFFFFFFFFFFFFFFFF
        FFFFFFE1E1E1B7B7B6ABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB
        ABABABABABABABABABABABB7B7B6E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton5Click
    end
    object lDebito: TLabel
      Left = 4
      Top = 65
      Width = 111
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'D'#233'bito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lTotalDebito: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object pBotaoCredito: TPanel
    Left = 638
    Top = 185
    Width = 120
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 7
    object Shape17: TShape
      Left = 1
      Top = 1
      Width = 117
      Height = 102
      Brush.Color = clBtnFace
      Pen.Color = clGreen
      Pen.Width = 2
    end
    object SpeedButton6: TSpeedButton
      Left = 3
      Top = 3
      Width = 113
      Height = 60
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        36300000424D3630000000000000360000002800000040000000400000000100
        18000000000000300000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCF8FBF7EDFBF7EDFCF8EEFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9
        EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFD
        F9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EF
        FDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9
        EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFD
        F9EFFDF9EFFDF9EFFDF9EFFDF9EFFEFDF9FFFFFFFFFFFFFFFFFFFFFFFFEFDFBA
        CF9D32C48909CF8F03DC9701DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900E09B05E6AE34F7E6C0FFFFFFF2E3C3C38807
        C38705D19002DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9A02F8E9C8D2A440C38705
        C48804DE9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900E8B545C68D11C38705
        CA8C04DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900E19F0EC38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900D090068762237E5D277E5D277E5D277E5D277E5D
        277E5D277E5D277E5D277E5D277E5D277E5D277E5D277F5D27AF7B13DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900B27D125E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E49347A5A29DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DE9800BC830EB27D12B27D12B27D12B27D12B27D
        12B27D12B27D12B27D12B27D12B27D12B27D12B27D12B37E12D39205DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DC9701B78010AF7B13AF7B13AF7B13AF7B13AF7B
        13AF7B13AF7B13AF7B13AF7B13AF7B13AF7B13AF7B13AF7C13CF8F06DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900B17D125E49345E49345E49345E49345E49345E49
        345E49345E49345E49345E49345E49345E49345E49345E4934795A29DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900D291058E67218662248662248662248662248662
        24866224866224866224866224866224866224866224876223B37E12DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DA9506B87A2F905B5F8E5A60AF7439D3900EDF9900DF99
        00DF9900D3990FAF9A3C8E9B668F9B64B89A31DA9906DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DD970382506F2105E31B00EA1B00EA1B00EA1B00EA2508DE82506FD394
        0F829C75249FEA1A9FF71A9FF71A9FF71A9FF7209FEF829C75DD9903DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        CD8B164420B91B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1F06E53F6D
        BA1E9DF01A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF7439EC4CC9A17DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900CE9B136FA67C68A9886DB28F43ADC73CAC
        CF64B29C6DB3906DB3906DB3906DB3906DB3906FB38EB6A234DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        552EA41B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA395FC0015F
        FF3976C21A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF7559DADDF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990085A36517AEDE16BAEE15C7FF17AAFF17A6
        FF15C1FF15C7FF15C7FF15C7FF15C7FF15C7FF15C7FF52B9B2DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900976156
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA3E44BC015FFF015F
        FF015FFF3E87C21A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF796
        9B5BDF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF99007DA46F17ADDE16B9EE15C5FF17AAFF17A6
        FF15C1FF15C7FF15C7FF15C6FF15C5FF15C5FF15C5FF4BB9BBDF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99004C26AF
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA3661C3015FFF015F
        FF015FFF3673C51A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF74B
        9EBADF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990052A1A61892DE189CEE17A6FF17A6FF17A6
        FF15C1FF15C7FF15C1FF17A8FF17A6FF17A6FF17A6FF26ACEBDF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DE98012608DD
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1864E5015FFF015F
        FF015FFF1866E51A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF725
        9FE9DE9901DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990052A1A61892DE189CEE17A6FF17A6FF17A6
        FF15C1FF15C7FF16BBFF17A6FF17A6FF17A6FF17A6FF26ACEBDF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C6851E1B00EA
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA2915D9015FFF015FFF015F
        FF015FFF015FFF2898E41A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A
        9FF7C69A20DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF99007EA46D17ADDE16BAEE15C6FF17AAFF17A6
        FF15C1FF15C7FF16BBFF17A6FF16B0FF15C6FF15C6FF4CBAB9DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900D894081D02E7
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1D03E70A61F4015FFF015F
        FF015FFF0A62F41C9EF41A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71C
        9FF4D89909DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990069A28818A0DE17ABEE16B6FF17A8FF17A6
        FF15C1FF15C7FF16BBFF17A6FF17ABFF16B6FF16B6FF3AB3D2DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99003E1BC1
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA2D64CD015FFF015F
        FF015FFF2D6FCE1A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF73D
        9ECBDF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990052A1A61892DE189CEE17A6FF17A6FF17A6
        FF15C1FF15C7FF16BBFF17A6FF17A6FF17A6FF17A6FF26ACEBDF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900734481
        1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA3F55BA015FFF015F
        FF015FFF3F7EBD1A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF772
        9C89DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF990064A28D189DDE17A8EE16B3FF17A8FF17A6
        FF15C1FF15C7FF16BBFF17A6FF17AAFF16B3FF16B3FF36B1D6DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900D5910C
        3212CE1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA230CE02064DC015F
        FF2068DC229CEB1A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF7319EDAD5
        990DDF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF99007FA46B17AEDE16BBEE15C7FF17AAFF17A6
        FF15C1FF15C7FF16BBFF17A6FF16B0FF15C7FF15C7FF4DBAB8DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        AC713D2004E41B00EA1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA3022CF1865
        E53094D81A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71A9FF71F9FF1AB9B41DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900A3A04418AEDC16B7E915C7FF17AAFF17A6
        FF15C1FF15C7FF16BBFF17A6FF16B0FF15C7FF15C7FF6FB28DDF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900BD7F28411EBC1B00EA1B00EA1B00EA1B00EA1B00EA1B00EA411DBD9A82
        53409EC81A9FF71A9FF71A9FF71A9FF71A9FF71A9FF7419EC7BD9A2BDF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900D19B0FCA9B18CB9C18BD9E2BBB9E
        2EC99D1CCC9D18C69D20BB9E2EC19E26CC9D18CE9D16DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DC97049C65507143834722B64622B7693D8C9A6353DD9802DF99
        00DD9902999B57699D94459EC1469EC0719C8B9C9B54DC9904DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C38705C38705
        CB8D03DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900C68D11C38705
        CA8C04DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900E19F0ED2A440C38705
        C48804DE9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900E8B545F2E3C3C38807
        C38705D19002DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9A02F8E9C8FFFFFFEFDFBA
        CF9D32C48909CF8F03DC9701DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900
        DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF99
        00DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF9900DF
        9900DF9900DF9900DF9900DF9900E09B05E6AE34F7E6C0FFFFFFFFFFFFFFFFFF
        FFFFFFFDFCF8FBF7EDFBF7EDFCF8EEFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9
        EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFD
        F9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EF
        FDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9
        EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFDF9EFFD
        F9EFFDF9EFFDF9EFFDF9EFFDF9EFFEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton6Click
    end
    object lCredito: TLabel
      Left = 4
      Top = 65
      Width = 110
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object lTotalCredito: TLabel
      Left = 5
      Top = 85
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object btnRecalcular: TBitBtn
    Left = 598
    Top = 123
    Width = 160
    Height = 33
    Caption = '[F5]  -  Recalcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btnRecalcularClick
    Glyph.Data = {
      B60A0000424DB60A00000000000036000000280000001F0000001C0000000100
      180000000000800A0000C40E0000C40E00000000000000000000FAF3EEFAF3EE
      F9F2EDFAF3EEF9F2EDF9F2EDF9F2EDF9F2EDF9F2EDF9F2EDF9F2EDF9F2EDF8EB
      D9F6DCADF6D391F5CE86F6D18DF6D9A5F8E9D2F9F2EDF9F2EDF9F2EDF9F2EDF9
      F2EDF9F2EDF9F2EDF9F2EDF9F2EDF9F2EDFAF3EEFAF3EE000000FAF3EEFAF3EE
      F8F1ECF5EFEAF8F2EDF5EEE9F9F2EDF5EEE9F9F2EDF5EADEF5CF89EEAF30EFA0
      00EE9F00EE9F00EF9F00ED9E00EFA000EC9E01F1AC24F0C674F8E9D4F5EEEAF9
      F2EDF5EEEAF8F1ECF6EFEAF7F0EBF7F1ECF8F2EDFAF3EE000000FAF3EEF9F2ED
      F8F1ECF7F0EBF5EEEAF8F1ECF4EEE9F9F0E9F0C97FF0A510EC9D01EFA104EEB0
      36F2C163F2CB81F3CE8AF3CD86F0C26AF1B53FECA008EFA000EC9F07F3C365F4
      E8DAF8F1ECF5EEEAF8F1ECF5EFEAF7F0EBF9F2EDFAF3EE000000FAF3EEFAF3EE
      F7F0EBF6EFEAF7F0ECF5EEE9F7E8D2EDAE33F0A000ECA10CF4C771F3E6D3F8F1
      ECF5EEE9F7F0EBF6EFEBF6F0EBF7F0EBF5EEEAF7EDE0F0CC86F1A91BEB9E01F1
      A919F2DBB4F8F1EDF4EEE9F8F1ECF7F0EBF9F2EDFAF3EE000000FAF3EEF9F2ED
      F8F1ECF7F0EBF6EFEAF6E1BEEDA618EFA000EEB74CF8EAD7F4EDE8F8F1EDF4EE
      E9F8F1ECF5EFEAF7F0EBF6EFEAF6EFEAF7F0EBF5EFEAF8F1ECF4EBE1F3C66EEB
      9E03F0A207F1D4A0F8F1ECF5EEE9F7F0EBF9F2EDFAF3EE000000FAF3EEFAF3EE
      F6EFEBF6F0EBF5E6CEEEA412EFA000F0C471F8F1ECF4EDE8F9F2EDF4EDE9F9F2
      EDF4EEE9F8F1ECF5EEEAF7F0EBF6F0EBF6EFEBF7F0EBF5EEE9F8F1ECF4EDE9F6
      D7A0EB9F07F0A307F2DCB7F8F1ECF6EFEAF9F2EDFAF3EE000000FAF3EEF9F2ED
      F9F2EDF6EFEAF0B43EEE9F00F1C26AF8F1ECF5EEEAF8F1ECF4EDE8F9F2EDF4ED
      E8F9F2EDF4EEE9F8F1ECF5EEE9F7F0EBF6EFEBF6F0EBF7F0EBF5EEE9F8F1ECF4
      EEE9F6D69DEB9E02F1AA1DF3E9DCF8F1ECF9F2EDFAF3EE000000FAF3EEFAF3EE
      F6EFEAF4D294ED9E01F0B541F7EFE8F5EFEAF7F0ECF5EEE9F0E9E4CFC9C6DBD5
      D1F3EDE8F8F1ECF5EEEAF8EDE0F1C87AF2C979F2C776F2C879F3C877F1C779F5
      DBACF4EEE9F3C367EB9D01F3C161F5EEEAF9F2EDFAF3EE000000FAF3EEF9F2ED
      F9F0E8EDA71AEFA207F5E6CFF6F0EBF7F0EBF1EAE68B87853938384443433333
      334E4D4CBDB8B5F8F1EDF3E5D0F0A612EC9F03F0B33AF0B43EEFB33CF1B43DF1
      CB84F8F1ECF4E9DDF0A713EB9E04F7E6CBF9F2EDFAF3EE000000FAF3EEF9F2ED
      F3D59EEFA000EFBB56F8F1ECF6EFEAF6F0EB83807E3333334B4A4AB7B2AF807D
      7B363636353535C4BFBCF9F2EDF3DFC0F0A511F0BC58F7F0EAF6F0EBF6EFEBF7
      F0EBF5EEE9F8F1ECF0C778F0A000F0C26AF9F2EDFAF3EE000000FAF3EEF9F2ED
      F3BB4CEC9D01F6DBAEF5EEE9F7F0EBD6D1CD343434353535DED8D3AAA6A39894
      919894913333335F5D5CF4EDE8F8F1ECF3DEBBF0A612F0B94EF7EEE5F6EFEBF6
      EFEAF7F0EBF5EEEAF7EAD7EC9F05F1A919F9F2ECFAF3EE000000FAF3EEF9F2ED
      EEA411F0A307F4EBE3F8F1ECF5EEE9A09C99333333333333605E5D8F8B89B3AF
      AC999693333333343434F1EBE6F4EDE8F8F1EDF3E0C2F0A715EFB440F6EEE6F6
      F0EBF6EFEAF7F0ECF5EEE9F1B234EC9E01F8E7CCFAF3EE000000FAF3EEF8EBD8
      F0A000EDAD2EF9F2EDF4EDE8F8F1EC9C9996333333333333A6A29FE8E1DD8987
      84393939333333333333DFD9D5F9F2EDF4EDE9F9F0E8EEB544F0A510F5E8D7F7
      F0EBF6F0EBF6EFEBF7F0EBF0BF60F0A000F6DAA9FAF3EE000000FAF3EEF8E4C3
      ED9F00F2B947F4EDE9F9F2EDF4EEE9CAC5C1333333333333DBD5D1928F8D8986
      8476737233333351504F6C6A697A7876F4EADEEEB442F0A91AF3E0C1F7F0ECF5
      EFEAF7F0EBF6EFEBF6EFEAF3CA7CEC9E01F6D394FAF3EE000000FAF3EEF8E2BF
      EFA000EEB84DF9F2EDF4EDE8F9F2EDF4EEE9676664333333656362CEC8C5A7A3
      A03D3D3D333333AFAAA7575655333333948A7AF1AE28F3E3CCF8F1ECF5EEEAF8
      F1ECF6EFEAF7F0EBF6F0EBF1CA7FEFA000F5D190FAF3EE000000FAF3EEF8E6CB
      EE9F00F2B53DF4EDE9F9F2EDF4EDE8F9F2EDE4DEDA6361603333335453523333
      333838389C9895938F8DAAA6A3333333474646F2D9AFF5D290F0CE8DF5D290F3
      DEBDF8F1ECF5EEEAF7F0EBF2C673ED9E01F6D69CFAF3EE000000FAF3EEF9EFE5
      EEA003EDA71BF8F1ECF4EEE9F9F2EDF4EDE8F8F1EDF4EDE8B2ADAA827F7D8581
      7FA39F9CCBC6C2DBD5D16D6B6A333333333333EAC786EDAD2EF1B02EEDAE2FF4
      CB7CF5EEE9F7F0ECF5EFEAF1B94CEF9F00F7E0B8FAF3EE000000FAF3EEF9F2ED
      F0AF2DEFA000F4E4CCF8F1ECF4EDE8F9F2EDF4EDE9F9F2EDA6A29F3333333333
      33D8D2CEB3AFAC585755484746333333393838F2EBE6F9F2EDF4EDE8F9F2EDF4
      EDE8F8F1ECF5EEEAF8F0EAEEA515EEA005F9EFE3FAF3EE000000FAF3EEFAF3EE
      F2C671ED9E01F3CE86F5EEE9F8F1ECF4EDE8F9F2EDF4EDE8E3DDD83737373333
      33C6C1BDB6B2AEC3BEBB716F6D3333336F6D6CF8F1ECF4EEE9F9F2EDF4EDE9F9
      F2EDF4EDE8F8F1EDF2D9AFEFA000F0B33CF9F2EDFAF3EE000000FAF3EEF9F2ED
      F7E5CAEEA003EEAC29F7F0E9F5EEE9F8F1ECF4EDE9F9F2EDF4EDE89E9A983333
      333D3D3C9D9996686564333333444443DAD4D0F5EFEAF8F1ECF4EEE9F8F1EDF4
      EDE8F9F2EDF4EDE9F2B744EC9E01F4D499F9F2EDFAF3EE000000FAF3EEFAF3EE
      F6EFEBF1BB52EE9F00F2CF8EF8F1ECF4EEE9F8F1EDF4EDE8F9F2EDF4EDE9BBB6
      B3605E5D3939394242417E7C7AE2DCD8F6EFEBF7F0EBF5EEE9F8F1ECF4EDE9F9
      F2EDF4EDE8F6DCADEB9D01F1AC23F6EEE7F9F2EDFAF3EE000000FAF3EEF9F2ED
      F9F2EDF5E7D2EEA40FEEA30BF4E0BFF8F1ECF5EEEAF8F1ECF4EDE8F8F1EDF4ED
      E8F8F1ECF5EEE9F7F0ECF5EFEAF7F0EBF6EFEBF6EFEAF7F0EBF5EEE9F8F1ECF4
      EEE9F8ECDBEDA820F0A101F2D8ACF8F1ECF9F2EDFAF3EE000000FAF3EEFAF3EE
      F6EFEAF7F0EBF3D195EE9F00EFA615F4E2C6F8F1ECF4EEE9F9F2EDF4EDE9F9F2
      EDF4EDE8F8F1ECF5EEEAF8F1ECF6EFEAF7F0EBF6F0EBF6EFEAF8F1ECF5EEEAF8
      EDDFEDAF33F0A000EFC36FF9F2EDF5EEEAF9F2EDFAF3EE000000FAF3EEF9F2ED
      F9F2EDF5EEE9F7F0ECF1C165EE9F00EFA613F3DDB7F8F1ECF4EEE9F8F1EDF4ED
      E8F9F2EDF4EDE8F8F1EDF4EEE9F8F1ECF5EEEAF7F0EBF6F0EBF6EFEAF6E7D0EE
      AD2CEFA000EEB544F9F1EAF4EDE8F9F2EDF9F2EDFAF3EE000000FAF3EEF9F2ED
      F6EFEAF8F1ECF5EEEAF7F0EAF1C777ED9F03EEA106F1C36EF7EAD7F5EEEAF8F1
      ECF4EDE8F9F2EDF4EDE9F8F1ECF5EEE9F7F0ECF5EFEAF6EDE2F3CD86EDA412EE
      9F00EFB84DF8EEE3F4EEE9F9F2EDF5EEE9F9F2EDFAF3EE000000FAF3EEF9F2ED
      F9F2EDF4EEE9F8F1ECF5EEE9F7F0EBF4DBB0EEA719EE9F00EDA007F2BD56F2D6
      A3F8EBD9F4EDE8F9F2EDF4EDE8F8EEE1F3D9ADF3C265EDA411EE9F00EEA20BF2
      CE8AF8F1ECF5EEEAF8F1ECF4EDE8F9F2EDF9F2EDFAF3EE000000FAF3EEF9F2ED
      F6EFEAF9F2EDF4EDE9F8F1EDF5EEE9F7F0EBF5EADCF2C46CEFA40EEC9E01EFA0
      00EC9E01F0A40CECA61AF1A611EB9D02F0A000EC9D01EFA105F0BC56F5E5CDF6
      F0EBF6EFEAF7F0ECF5EEE9F8F1ECF5EEE9F9F2EDFAF3EE000000FAF3EEFAF3EE
      F9F2EDF7F0EBF9F2EDF7F0EBF9F2EDF7F0EBF9F2EDF7F0EBF8EFE4F5D7A2F3C2
      64F2B43CF0AC23F1A919F0AA1FF2B335F2BF5DF6D497F6EAD9F9F2EDF7F1ECF9
      F2EDF8F1ECF9F2EDF8F1ECF8F1ECF9F2EDF9F2EDFAF3EE000000}
    Spacing = 16
  end
  object btnFinalizar: TBitBtn
    Left = 512
    Top = 1
    Width = 246
    Height = 35
    Caption = 'F I N A L I Z A R '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = btnFinalizarClick
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF6FBFFBCE4FC99D5FB75C7FA56BAF867C1F988CEFAA9DCFCD9F0FEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFEBF7FE62BFF94CB6F84CB6F84EB9F951BEFA4FBCF94DB7
      F84CB6F84DB6F8B0DFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACDDFC51BEFA52C0FB4FBBF94EB8F9
      4DB7F84DB8F84EBAF951BEFA54C3FB57BBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BD4FB4DB9F94C
      B6F84CB6F84EB9F951BEFA4FBCF94DB7F84CB6F84CB6F853C2FBFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF92D6FC51BEFA52C0FB4FBCF94EB9F94DB7F84DB8F84EBAF951BEFA54C3FB50
      BAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF8AD4FC4DB8F94CB6F84CB6F84DB8F850BDFA4FBAF94CB6
      F84CB6F84CB6F853C2FBFFFFFFFFFFFFFFFFFFFFFFFFE8F1BAE7F0B5F3F8DBF4
      F8DDF4F8DDF4F8DDF4F8DDF4F8DDF4F8DD85D0F150BDFA52C1FB50BDFA4EB9F9
      4DB8F94DB8F94FBBF951BFFA53C2FB52BBF9FFFFFFFFFFFFFFFFFFDBE990C4DB
      4CC4DB4CC4DB4CC5DC50C6DC54C7DD58C8DD5CC8DD5CC8DD5C75C7CA4EBAF94C
      B6F84CB6F84DB7F850BCFA4EBAF94CB6F84CB6F84CB6F855C3FBFFFFFFFFFFFF
      FFFFFEC6DC52C4DB4CC4DB4CC7DC55C5DC51CADE62C6DC53C5DC51D0E176DAE6
      9A85CEE150BDFA52C1FB50BCFA4EB9F94DB8F84DB8F94FBBF951BFFA53C2FC51
      BAF8FFFFFFFFFFFFE9F2BEC9DD5DD4E387D8E595F0F1ECE4EBBFCCDF6AC7DD58
      D7E592DBE7A1D1E27C7AC9C14EBAF94CB6F84CB6F84DB7F850BCFA4EBAF94CB6
      F84CB6F84CB6F854C3FBFFFFFFFEFEFBCCE063E1E9B4F2F2F2F2F2F2F2F2F2F2
      F2F2F2F2F1E3EABBCBDF67C8DD5CD6E48C88CFEF50BDFA55C5FC53C2FB51BFFA
      53C1FB51BEFA53C1FB54C4FB54C4FC51BAF8FFFFFFE7F1B7CBDF66F1F2F0F2F2
      F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F1E1EAB6CADE637ECAB958CAFD4C
      B6F84CB7F855C6FC58CAFD57C8FD53C1FB4CB6F850BDFA58CAFDFDFEFACADF60
      E2EABAF2F2F2F2F2F2F2F2F2E9EED2F2F2F2F2F2F2EFF1E8DFE8ACD7E490EAEE
      D6B1E0CD56C7FC4CB6F84CB6F857C9FD58CBFD53C2FB4EB9F94CB6F84EBAF974
      D6F7E5EFB0C4DB4CE1E9B3F2F2F2F2F2F2F1F2F0D6E48EF1F1EDF0F1EBCEE072
      CEE16CDBE992CDDF6BF0F1EEAFE3F65EC8F751BFFA52C1FB56C6FC54C2FB51BD
      FA54C2F974D1D7DBF1D8CCE065C4DB4CC5DC51F2F2F1F2F2F2F2F2F2F2F2F2F2
      F2F2D9E698C4DB4CDBE992F0F6D1CFE26EE7ECC9F2F2F2F2F2F2E5EEEEBBE2C0
      95D7A6A4DBA2CEE7CFC8DE64C4DB4CF0F6D2D7E685C4DB4CC7DD58F1F2F0F2F2
      F2F2F2F2F2F2F2F2F2F2D1E27CE0ECA0F6F9E4F9FBEBCEE169EDF0E2F2F2F2F2
      F2F2F2F2F2F2F2F2DAE69DC4DB4CC4DB4DC4DB4CC4DB4CF1F6D3FFFFFEEAF2BF
      C8DD5ACBDE65E2EAB8F2F2F1F2F2F2F2F2F2CFE073ECF3C5E6EFB2C4DB4DCCDF
      68F2F2F2F1F2EFF2F2F2F2F2F2F2F2F2DCE7A3C4DB4CC4DB4CC4DB4CD0E271FD
      FEF9FFFFFFFFFFFFFEFEFCE8F1BACADF60CCDF69E3EBBDF2F2F2E8EDCFD4E47C
      DCEA96CEE06DEEF0E3F2F2F2DAE69DE5ECC3F2F2F2F2F2F2F1F2F0CDE06EC9DD
      5DDDEB99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFBE6F0B5CADF5ECD
      E06DE5EBC2ECEFDEEBEED8F0F1EAF2F2F2F2F2F2F1F2EFF2F2F2F2F2F2F2F2F2
      EEF0E5C6DC54C4DB4CECF3C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFDFEF9E5EFAFC9DE5BCEE072E6ECC8F2F2F2F2F2F2F2F2F2F2F2F2F2
      F2F2F2F2F2F2F2F2D9E597C4DB4CC4DB4DFAFCF0FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDF7E3EEA9C8DD58D0E177E8ED
      CDF2F2F2F2F2F2F2F2F2F2F2F2EDF0E1C6DC53D5E67FE7F1B7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCFDF4E1EDA4C7DD55D1E27CE9EDD0DBE69DC7DD57C8DD5ADAE88DFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCF2DFEC9FC6DC53C4DB4CC4DB4CC5DC4F
      F7FAE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCEEDD
      EB99C9DE5BE2EDA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Spacing = 16
  end
  object edCaixaSelecionado: TEdit
    Left = 24
    Top = 142
    Width = 200
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
  end
  object btnProcuraCaixa: TBitBtn
    Left = 224
    Top = 142
    Width = 27
    Height = 27
    Cursor = crHandPoint
    TabOrder = 0
    OnClick = btnProcuraCaixaClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF0F8FE66B5F9D9EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE57ADF95BB7F971CBF9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE55AC
      F84DB1F864C6F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF0F8FE55ACF944AEF764C6F9F1FAFEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE57ADF94CB1F864C6
      F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFD52A2E159B5F764C6F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3ECD8DBC88CD1B86DD0B86CDAC78CF1EAD4B7A36D747B515EBAE1F1FAFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE6D9B1CEB868D1DA87D2EB97DBF2A8DAE9A0D0
      BD6EAD9241B7A36DFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDD9CEB868
      D2EC98DBF7ACE7FDC1EAFFC7EAFFC7E9FCC2DCCD88F5F0DDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDCCA91D1D986DBF7ACEAFFC7EAFFC7EAFFC7EAFFC7EA
      FFC7E4EBADE5D7A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2BA71D2E996
      E6FDC1EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7E8F8BFDDCC8AFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD2BA71DAF0A5EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7EA
      FFC7E8F8BEDECC8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCCA91DAE69D
      EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7E4EAACE5D7A4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4EEDCCFBB6CE7FAC0EAFFC7EAFFC7EAFFC7EAFFC7E8
      F9C0DCCD88F6F1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE2C2
      DCCC88E4E8AAE8F6BCE8F7BCE4E9ABDCCC87EDE4C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3E3E6D9A8DFCD8EDFCD8EE6D8A7F6
      F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object edBancoSelecionado: TEdit
    Left = 272
    Top = 142
    Width = 200
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 22
  end
  object btnProcuraBanco: TBitBtn
    Left = 472
    Top = 142
    Width = 27
    Height = 27
    Cursor = crHandPoint
    TabOrder = 1
    OnClick = btnProcuraBancoClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF0F8FE66B5F9D9EFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE57ADF95BB7F971CBF9FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE55AC
      F84DB1F864C6F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF0F8FE55ACF944AEF764C6F9F1FAFEFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FE57ADF94CB1F864C6
      F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFEFD52A2E159B5F764C6F9F1FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3ECD8DBC88CD1B86DD0B86CDAC78CF1EAD4B7A36D747B515EBAE1F1FAFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFE6D9B1CEB868D1DA87D2EB97DBF2A8DAE9A0D0
      BD6EAD9241B7A36DFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDD9CEB868
      D2EC98DBF7ACE7FDC1EAFFC7EAFFC7E9FCC2DCCD88F5F0DDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDCCA91D1D986DBF7ACEAFFC7EAFFC7EAFFC7EAFFC7EA
      FFC7E4EBADE5D7A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2BA71D2E996
      E6FDC1EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7E8F8BFDDCC8AFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD2BA71DAF0A5EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7EA
      FFC7E8F8BEDECC8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCCA91DAE69D
      EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7EAFFC7E4EAACE5D7A4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4EEDCCFBB6CE7FAC0EAFFC7EAFFC7EAFFC7EAFFC7E8
      F9C0DCCD88F6F1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE2C2
      DCCC88E4E8AAE8F6BCE8F7BCE4E9ABDCCC87EDE4C1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3E3E6D9A8DFCD8EDFCD8EE6D8A7F6
      F2E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object PEditaCheque: TPanel
    Left = 38
    Top = 392
    Width = 697
    Height = 134
    BevelWidth = 2
    Color = clSkyBlue
    TabOrder = 18
    Visible = False
    OnExit = PEditaParcelaExit
    object Shape19: TShape
      Left = 3
      Top = 3
      Width = 691
      Height = 128
      Brush.Color = clMoneyGreen
      Pen.Color = clWhite
      Pen.Width = 2
    end
    object Label8: TLabel
      Left = 16
      Top = 12
      Width = 90
      Height = 17
      Caption = 'Documento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 136
      Top = 12
      Width = 63
      Height = 17
      Caption = 'Cheque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 250
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Vencimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 364
      Top = 12
      Width = 99
      Height = 17
      Caption = 'Refer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 548
      Top = 12
      Width = 54
      Height = 17
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 16
      Top = 60
      Width = 90
      Height = 17
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BtnGravarChequeEditado: TBitBtn
      Left = 608
      Top = 74
      Width = 80
      Height = 25
      Caption = 'G R A V A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnGravarChequeEditadoClick
    end
    object BtnCancelarChequeEditado: TBitBtn
      Left = 608
      Top = 98
      Width = 80
      Height = 25
      Caption = 'C A N C E L A R'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object EdChequeEditadoDocumento: TColorMaskEdit
      Left = 16
      Top = 30
      Width = 110
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdChequeEditadoCheque: TColorMaskEdit
      Left = 136
      Top = 30
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdChequeEditadoVencimento: TColorMaskEdit
      Left = 250
      Top = 30
      Width = 104
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdChequeEditadoReferencia: TColorMaskEdit
      Left = 364
      Top = 30
      Width = 105
      Height = 24
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdChequeEditadoValor: TColorEditFloat
      Left = 478
      Top = 30
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdChequeEditadoHistorico: TColorMaskEdit
      Left = 16
      Top = 79
      Width = 337
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    inline FrmBuscaBanco: TFrmBusca
      Left = 364
      Top = 64
      Width = 237
      Height = 40
      AutoScroll = False
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      inherited LTextoBusca: TLabel
        Width = 55
        Height = 13
        Caption = 'Banco:'
        Font.Height = -15
        Font.Name = 'Courier'
        Font.Style = [fsBold]
      end
      inherited EdDescricao: TFlatEdit
        Left = 1
        Width = 212
        Height = 24
        ColorFlat = 15395583
        Font.Height = -15
        Font.Name = 'Courier'
      end
      inherited BTNOPEN: TBitBtn
        Left = 214
        Width = 22
        Height = 24
        OnClick = FrmBuscaBancoMultBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 296
        Hint = 'Pressione para apagar o banco'
        Visible = False
      end
      inherited EDCodigo: TFlatEdit
        Left = 250
        Width = 55
        ColorFlat = 14803455
      end
    end
  end
end
