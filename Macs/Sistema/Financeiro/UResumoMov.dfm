inherited FResumoMov: TFResumoMov
  Left = 309
  Top = 85
  Caption = 'FResumoMov'
  ClientHeight = 594
  ClientWidth = 601
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 674
    Top = 130
    Width = 369
    Height = 115
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 585
    Height = 577
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowFrame
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Movimenta'#231#227'o Di'#225'ria'
      object Shape6: TShape
        Left = 289
        Top = 334
        Width = 280
        Height = 25
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Shape7: TShape
        Left = 289
        Top = 58
        Width = 280
        Height = 296
        Brush.Color = 16644082
        Pen.Color = clDefault
      end
      object Shape3: TShape
        Left = 289
        Top = 42
        Width = 280
        Height = 25
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Shape10: TShape
        Left = 290
        Top = 50
        Width = 278
        Height = 304
        Brush.Color = 16644082
        Pen.Color = 16644082
      end
      object Label54: TLabel
        Left = 310
        Top = 281
        Width = 259
        Height = 13
        Caption = 
          'Pago............................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label55: TLabel
        Left = 296
        Top = 301
        Width = 273
        Height = 13
        Caption = 
          'Saldo...........................................................' +
          '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape2: TShape
        Left = 6
        Top = 42
        Width = 280
        Height = 25
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Shape1: TShape
        Left = 6
        Top = 8
        Width = 561
        Height = 25
        Brush.Color = clInactiveCaptionText
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object LMov1: TDRLabel
        Left = 17
        Top = 15
        Width = 273
        Height = 13
        AutoSize = False
        Caption = 'Movimenta'#231#227'o Di'#225'ria - 18/07/1980'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HiColor = clBlue
        LoColor = clNavy
        Border = boNone
        Ctl3D = False
        BlinkInterval = 300
        Blink = blNone
        Deep = 1
      end
      object Shape4: TShape
        Left = 285
        Top = 8
        Width = 1
        Height = 25
        Brush.Color = clInactiveCaptionText
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object LMov2: TDRLabel
        Left = 312
        Top = 15
        Width = 248
        Height = 13
        AutoSize = False
        Caption = 'Mov. entre  -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HiColor = clBlue
        LoColor = clNavy
        Border = boNone
        Ctl3D = False
        BlinkInterval = 300
        Blink = blNone
        Deep = 1
      end
      object Shape5: TShape
        Left = 6
        Top = 334
        Width = 280
        Height = 25
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Shape8: TShape
        Left = 6
        Top = 58
        Width = 280
        Height = 296
        Brush.Color = 16644082
        Pen.Color = clDefault
      end
      object Shape9: TShape
        Left = 7
        Top = 50
        Width = 278
        Height = 304
        Brush.Color = 16644082
        Pen.Color = 16644082
      end
      object Label19: TLabel
        Left = 15
        Top = 339
        Width = 273
        Height = 13
        Caption = 'Saldo Caixa do Dia.........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 15
        Top = 48
        Width = 270
        Height = 13
        Caption = 'Vendas Total Geral........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LVGeral: TLabel
        Left = 257
        Top = 48
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label2: TLabel
        Left = 27
        Top = 66
        Width = 258
        Height = 13
        Caption = 'Venda de Mercadoria..................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LVMercadoria: TLabel
        Left = 257
        Top = 66
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 28
        Top = 80
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LVendMercVista: TLabel
        Left = 261
        Top = 80
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 28
        Top = 94
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LVMercPrazo: TLabel
        Left = 261
        Top = 94
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label5: TLabel
        Left = 27
        Top = 114
        Width = 260
        Height = 13
        Caption = 'Venda de Servi'#231'os......................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LVServico: TLabel
        Left = 257
        Top = 114
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label6: TLabel
        Left = 28
        Top = 128
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LVServVista: TLabel
        Left = 261
        Top = 128
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label7: TLabel
        Left = 28
        Top = 142
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LVServPrazo: TLabel
        Left = 261
        Top = 142
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Shape11: TShape
        Left = 9
        Top = 155
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 15
        Top = 163
        Width = 272
        Height = 13
        Caption = 'Compras de Mercadorias.................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LCMercadoria: TLabel
        Left = 257
        Top = 163
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label9: TLabel
        Left = 28
        Top = 177
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCMercVista: TLabel
        Left = 261
        Top = 177
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label10: TLabel
        Left = 28
        Top = 191
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCMercPrazo: TLabel
        Left = 261
        Top = 191
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Shape12: TShape
        Left = 9
        Top = 204
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Label11: TLabel
        Left = 15
        Top = 211
        Width = 271
        Height = 13
        Caption = 'Contas a Receber..........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LCtaRec: TLabel
        Left = 257
        Top = 211
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label12: TLabel
        Left = 28
        Top = 225
        Width = 258
        Height = 13
        Caption = 
          'A Receber.......................................................' +
          '..............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCtaRecArec: TLabel
        Left = 261
        Top = 225
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label13: TLabel
        Left = 28
        Top = 239
        Width = 259
        Height = 13
        Caption = 
          'Recebido........................................................' +
          '...............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCtaRecrec: TLabel
        Left = 261
        Top = 239
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label14: TLabel
        Left = 15
        Top = 253
        Width = 272
        Height = 13
        Caption = 'Contas a Pagar..............................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LCtaPag: TLabel
        Left = 257
        Top = 253
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label15: TLabel
        Left = 28
        Top = 267
        Width = 257
        Height = 13
        Caption = 
          'A Pagar.........................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCtaPagApag: TLabel
        Left = 261
        Top = 267
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label16: TLabel
        Left = 28
        Top = 281
        Width = 259
        Height = 13
        Caption = 
          'Pago............................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LCtaPagpag: TLabel
        Left = 261
        Top = 281
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label17: TLabel
        Left = 15
        Top = 301
        Width = 273
        Height = 13
        Caption = 
          'Saldo...........................................................' +
          '.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LSaldoCta: TLabel
        Left = 257
        Top = 301
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Shape13: TShape
        Left = 9
        Top = 314
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Label18: TLabel
        Left = 15
        Top = 323
        Width = 270
        Height = 13
        Caption = 'Saldo Caixa Geral..........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LSaldoCXGeral: TLabel
        Left = 257
        Top = 323
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LSaldoCXDia: TLabel
        Left = 257
        Top = 339
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVGeral: TLabel
        Left = 534
        Top = 48
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVMercadoria: TLabel
        Left = 534
        Top = 66
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVendMercVista: TLabel
        Left = 534
        Top = 80
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVMercPrazo: TLabel
        Left = 534
        Top = 94
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVServico: TLabel
        Left = 534
        Top = 114
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVServVista: TLabel
        Left = 534
        Top = 128
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMVServPrazo: TLabel
        Left = 534
        Top = 142
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCMercadoria: TLabel
        Left = 534
        Top = 163
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCMercVista: TLabel
        Left = 534
        Top = 177
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCMercPrazo: TLabel
        Left = 534
        Top = 191
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaRec: TLabel
        Left = 534
        Top = 211
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaRecArec: TLabel
        Left = 534
        Top = 225
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaRecrec: TLabel
        Left = 534
        Top = 238
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaPag: TLabel
        Left = 534
        Top = 252
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaPagApag: TLabel
        Left = 534
        Top = 266
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMCtaPagpag: TLabel
        Left = 534
        Top = 281
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object LMSaldoCta: TLabel
        Left = 534
        Top = 299
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Color = 16644082
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object Label39: TLabel
        Left = 299
        Top = 48
        Width = 270
        Height = 13
        Caption = 'Vendas Total Geral........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 307
        Top = 66
        Width = 258
        Height = 13
        Caption = 'Venda de Mercadoria..................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 311
        Top = 80
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 310
        Top = 94
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 309
        Top = 114
        Width = 260
        Height = 13
        Caption = 'Venda de Servi'#231'os......................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 311
        Top = 128
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 310
        Top = 142
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape14: TShape
        Left = 295
        Top = 155
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Label46: TLabel
        Left = 297
        Top = 163
        Width = 272
        Height = 13
        Caption = 'Compras de Mercadorias.................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label47: TLabel
        Left = 311
        Top = 177
        Width = 258
        Height = 13
        Caption = 
          'A Vista.........................................................' +
          '..................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 310
        Top = 191
        Width = 259
        Height = 13
        Caption = 
          'A Prazo.........................................................' +
          '.................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape15: TShape
        Left = 295
        Top = 204
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Label49: TLabel
        Left = 298
        Top = 211
        Width = 271
        Height = 13
        Caption = 'Contas a Receber..........................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 311
        Top = 225
        Width = 258
        Height = 13
        Caption = 
          'A Receber.......................................................' +
          '..............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label51: TLabel
        Left = 310
        Top = 239
        Width = 259
        Height = 13
        Caption = 
          'Recebido........................................................' +
          '...............'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label52: TLabel
        Left = 297
        Top = 253
        Width = 272
        Height = 13
        Caption = 'Contas a Pagar..............................................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label53: TLabel
        Left = 312
        Top = 267
        Width = 257
        Height = 13
        Caption = 
          'A Pagar.........................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Shape16: TShape
        Left = 295
        Top = 314
        Width = 274
        Height = 3
        Pen.Color = clSilver
        Shape = stRoundRect
      end
      object Shape17: TShape
        Left = 6
        Top = 362
        Width = 116
        Height = 20
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Label56: TLabel
        Left = 15
        Top = 365
        Width = 99
        Height = 13
        Caption = 'Saldos em Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape18: TShape
        Left = 6
        Top = 474
        Width = 64
        Height = 20
        Brush.Color = 16644082
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Label20: TLabel
        Left = 15
        Top = 477
        Width = 47
        Height = 13
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object REBanco: TRichEdit
        Left = 6
        Top = 378
        Width = 558
        Height = 87
        Color = 16644082
        Ctl3D = True
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object EdDt1: TColorMaskEdit
        Left = 400
        Top = 12
        Width = 75
        Height = 18
        AutoSize = False
        Color = clInactiveCaption
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyPress = EdDt1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDt2: TColorMaskEdit
        Left = 485
        Top = 12
        Width = 75
        Height = 18
        AutoSize = False
        Color = clInactiveCaption
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = EdDt1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object ReEstoque: TRichEdit
        Left = 6
        Top = 490
        Width = 299
        Height = 46
        Color = 16644082
        Ctl3D = True
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object Panel1: TPanel
        Left = 312
        Top = 488
        Width = 257
        Height = 40
        Color = clWhite
        TabOrder = 4
        object Label22: TLabel
          Left = 6
          Top = 3
          Width = 227
          Height = 13
          Hint = 
            '= Caixa Geral + Saldo Geral de Banco + Contas a receber + Estoqu' +
            'e em Valor de Custo'
          Caption = 'Patrim'#244'nio em Valor de Custo...............'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
        object LSaldocomValordeCusto: TLabel
          Left = 223
          Top = 3
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = '0,00'
          Color = 16644082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        object LSaldocomValordeCompra: TLabel
          Left = 223
          Top = 19
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = '0,00'
          Color = 16644082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        object Label21: TLabel
          Left = 4
          Top = 19
          Width = 229
          Height = 13
          Hint = 
            '= Caixa Geral + Saldo Geral de Banco + Contas a receber + Estoqu' +
            'e em Valor de Compra'
          Caption = 'Patrim'#244'nio em Valor de Compra.............'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ctas Pagar / Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label23: TLabel
        Left = 8
        Top = 40
        Width = 127
        Height = 16
        Caption = 'Contas '#224' Receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape19: TShape
        Left = 6
        Top = 8
        Width = 563
        Height = 25
        Brush.Color = clInactiveCaptionText
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object DRLabel1: TDRLabel
        Left = 311
        Top = 15
        Width = 234
        Height = 13
        AutoSize = False
        Caption = 'Venc. entre -'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HiColor = clBlue
        LoColor = clNavy
        Border = boNone
        Ctl3D = False
        BlinkInterval = 300
        Blink = blNone
        Deep = 1
      end
      object lbVencimentos: TDRLabel
        Left = 16
        Top = 15
        Width = 305
        Height = 13
        AutoSize = False
        Caption = 'Contas Vencendo e Vencidas - 18/07/1980'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HiColor = clBlue
        LoColor = clNavy
        Border = boNone
        Ctl3D = False
        BlinkInterval = 300
        Blink = blNone
        Deep = 1
      end
      object Shape20: TShape
        Left = 301
        Top = 8
        Width = 1
        Height = 25
        Brush.Color = clInactiveCaptionText
        Pen.Color = clDefault
        Shape = stRoundRect
      end
      object Label24: TLabel
        Left = 8
        Top = 288
        Width = 110
        Height = 16
        Caption = 'Contas '#224' Pagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTotalRec: TLabel
        Left = 480
        Top = 256
        Width = 81
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = 'tot receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object lbTotPagar: TLabel
        Left = 502
        Top = 520
        Width = 67
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Caption = 'tot pagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object DBReceber: TDBGrid
        Left = 8
        Top = 56
        Width = 561
        Height = 193
        Color = 16644082
        DataSource = DMESTOQUE.DSAlx3
        FixedColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBReceberDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPARC'
            Title.Caption = 'N'#186' Parcela'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENC'
            Title.Caption = 'Dt. Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 361
            Visible = True
          end>
      end
      object DBPagar: TDBGrid
        Left = 8
        Top = 304
        Width = 561
        Height = 209
        Color = 16644082
        DataSource = DMESTOQUE.DSAlx4
        FixedColor = clGray
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindow
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBPagarDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPARC'
            Title.Caption = 'N'#186' Parcela'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENC'
            Title.Caption = 'Dt. Vencimento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 318
            Visible = True
          end>
      end
      object edData1: TColorMaskEdit
        Left = 400
        Top = 12
        Width = 75
        Height = 18
        AutoSize = False
        Color = clInactiveCaption
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyPress = EdDt1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object edData2: TColorMaskEdit
        Left = 485
        Top = 12
        Width = 75
        Height = 18
        AutoSize = False
        Color = clInactiveCaption
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = edData2KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
end
