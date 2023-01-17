inherited FFiscal: TFFiscal
  Left = 248
  Top = 150
  Caption = 'FFiscal'
  ClientHeight = 487
  ClientWidth = 713
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 722
    Top = 170
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 11
    Top = 10
    Width = 693
    Height = 29
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 0
    object Label23: TLabel
      Left = 526
      Top = 8
      Width = 24
      Height = 19
      Caption = 'N'#186':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 560
      Top = 3
      Width = 130
      Height = 24
    end
    object DBText1: TDBText
      Left = 564
      Top = 7
      Width = 120
      Height = 17
      Alignment = taRightJustify
      DataField = 'PROX_NF'
      DataSource = DMMACS.DsEmpresa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape3: TShape
      Left = 198
      Top = 3
      Width = 1
      Height = 23
    end
    object Shape5: TShape
      Left = 196
      Top = 7
      Width = 1
      Height = 16
    end
    object Shape6: TShape
      Left = 200
      Top = 7
      Width = 1
      Height = 16
    end
    object BtnGravar: TBitBtn
      Left = 2
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
        'izadas'
      Caption = 'Gravar - F5'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnGravarClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFF606060505050707070707070FFFFFFFFFFFF7070707070706F6F6F707070
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF808080A0A0
        A07F7F7F5F5F5F4040403F3030604F4F8F6F6F9070706F5F5F3F30302F2F2FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA0AFAFD0D0D0FFFFF0E0F0D0
        FFF0E0EFC09FC0807FF0AFAFFFC0C0FFDFDFFFEFEFD0C0C04F3F3F2F2F2FFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFB0B0B0D0CFCFF0EFD020AF202FAF209F
        9F60FF9FA0FFA0A0FFAFAFFFBFBFFFEFEFFFFFFFD0C0C03F3030707070FFFFFF
        FFFFFF000000FFFFFFFFFFFFB0B0B0EFE0E0F0E0CF30C04000A0009F9F70FFB0
        BFFFA0A0FFB0BFFFBFD0FFF0F0FFFFFFFFFFFF7F6060303030FFFFFFFFFFFF00
        0000FFFFFFFFFFFFB0B0B0EFE0E0F0E0BF50E06F1FB02FCFAF9FFFCFCFFFCFCF
        E0C0D0C0B0AFF0E0E0FFF0F0FFF0F0C0A0A02F2F2FFFFFFFFFFFFF000000FFFF
        FFFFFFFFB0B0B0EFEFEFF0DFB05FE0B030A0CFC0A0BFFFCFCFFFDFDFE0D0DFBF
        A09FEFCFCFFFCFCFFFCFCFCFA0A03F3F3FFFFFFFFFFFFF000000FFFFFFFFFFFF
        B0B0B0F0DFB0F0D0AF60AFF03F90FFA0A0C0FFF0F0FFFFFFFFF0FFF0BFDFFFC0
        CFFF9F9FFFB0B0BF8080707070FFFFFFFFFFFF000000FFFFFFFFFFFFD0A06FF0
        AF50FFD0A0F0CF9FDFC0A0CFA09FEFEFEFFFFFFFFFF0F0FFCFD0FFB0B0FFA0A0
        FF9F9F806060FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFCFAF8FE0B08FFFC0
        70FFBF5FFFC06FFFB06FD0A080EFE0EFFFF0F0FFDFDFFFCFCFFFB0B0B07F7FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBFBFC0DFD0C0FFC070FFCF80
        FFC07FFFBF6FF0B050D09F5FE0B09FE0BFAFB090909F7F7FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0D0D0EFE0DFE0D0C0EFEFF0EFEFEFEF
        E0E0E0E0DFE0D0B0E0BF80E0B070706060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFDFCFCFDFC0BFB08070B08080BF8F8FC09F9FCFA0
        AFDFCFD0EFF0FFE0E0EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFDFCFCFDFD0C0FFCF90FFC08FFFC09FF0BFA0EFB0A0E0B0A0EFC0C0
        FFEFEFFFEFEF5050504F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFDFCFCFF0CF90FFC08FFFCFA0FFCFAFFFCFB0FFD0BFFFD0C0CFAFAFEFDFDFFF
        FFFFC0C0C0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFCFCF
        DFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCF
        CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object BtnCancelar: TBitBtn
      Left = 96
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
        ' o painel de consulta'
      Caption = 'Cancelar - F7'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnCancelarClick
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
    object BtnRecalculoFiscal: TBitBtn
      Left = 208
      Top = 2
      Width = 121
      Height = 25
      Caption = 'Recalcular'
      TabOrder = 2
      OnClick = BtnRecalculoFiscalClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btnPreVisDANFE: TBitBtn
      Left = 335
      Top = 2
      Width = 122
      Height = 25
      Hint = 
        'Pressione para Pr'#233' Visualizar a DANFE. Apenas apareceram as info' +
        'rma'#231#245'es salvas anteriormente.'
      Caption = 'Pr'#233' Visualiza'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnClick = btnPreVisDANFEClick
      Glyph.Data = {
        96030000424D9603000000000000360000002800000010000000120000000100
        18000000000060030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080
        8080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080808080805050503F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F7F7F
        7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF8080805050503F3F3FF0F0F0B0B0B09F
        8080AF8080B0B0B0E0E0E0B0B0B04F4F4F3F3F3F7F7F7FFFFFFFFFFFFF3F3F3F
        3F3F3FEFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEF
        EFB0B0B07F7F7FFFFFFFFFFFFFAFAFAFFFFFFFF0F0F0DFDFDF9090907F7F7F9F
        9F9FB0B0B0A0A0A09090908F8F8F8F8F8F5F5F5F7F7F7FFFFFFFFFFFFFA0A0A0
        DFDFDFA0A0A09F9F9FCFCFCFAFAFAF8F8F8F808080808080A0A0A0BFBFBF70A0
        805050507F7F7FFFFFFFFFFFFF707070A0A0A0DFDFDFDFDFDFDFDFDFDFDFDFE0
        E0E0CFCFCFBFBFBF9F9F9F8F8F8F6F7F6F4F4F4F808080FFFFFFFFFFFF9F9F9F
        E0E0E0DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCF
        CF6F6F6FFFFFFFFFFFFFFFFFFF8F8F8FD0D0D0C0C0C0AFAFAFA0A0A0CFCFCFF0
        F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF707070FFFFFFFFFFFFFFFFFFFFFFFF
        A0A0A0CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBF7070707070
        70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA0FFD0C0FFD0C0FFD0CFEF
        DFD0E0E0E0E0E0E06F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAF8F90FFDFB0FFDFBFFFDFBFFFD0B0FFD0AF605F5FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB09F8FFFE0CFFFE0CFFFE0CFFF
        E0CFFFE0C0705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDFBFB0FFEFDFFFEFDFFFEFDFFFEFDF705F5FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F90FFF0EFFFF0EFFFF0EFFFF0EFFF
        F0EF705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AF8F90AF8F90AF8F90AF8F90AF8F90AF8F90FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel4: TPanel
    Left = 11
    Top = 39
    Width = 693
    Height = 437
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 1
    object LTextoBusca: TLabel
      Left = 393
      Top = 7
      Width = 94
      Height = 16
      Caption = 'Data Emiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 494
      Top = 7
      Width = 90
      Height = 16
      Caption = 'Data Ent/Sai:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 594
      Top = 7
      Width = 36
      Height = 16
      Caption = 'Hora:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 62
      Width = 86
      Height = 13
      Caption = 'Base de ICMS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 114
      Top = 62
      Width = 78
      Height = 13
      Caption = 'Vlr. de ICMS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 218
      Top = 62
      Width = 100
      Height = 13
      Caption = 'Base ICMS Subs:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 342
      Top = 104
      Width = 96
      Height = 13
      Caption = 'Vlr. ICMS Subs.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 102
      Width = 70
      Height = 13
      Caption = 'Vlr. Seguro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 219
      Top = 102
      Width = 73
      Height = 13
      Caption = 'Outras Des.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 461
      Top = 63
      Width = 79
      Height = 13
      Caption = 'Vlr. Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 115
      Top = 102
      Width = 46
      Height = 13
      Caption = 'Vlr. IPI:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 569
      Top = 54
      Width = 77
      Height = 18
      Caption = 'Vlr. Nota:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 341
      Top = 61
      Width = 109
      Height = 16
      Caption = 'Vlr. icms Isento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 570
      Top = 102
      Width = 26
      Height = 13
      Caption = 'ISS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 462
      Top = 102
      Width = 55
      Height = 13
      Caption = 'Vlr. Serv.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 12
      Top = 152
      Width = 128
      Height = 16
      Caption = 'Dados Adicionais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 440
      Top = 152
      Width = 147
      Height = 16
      Caption = 'Reservado Ao Fisco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inline FrmCfop: TFrmBusca
      Left = 10
      Top = 8
      Width = 383
      Height = 39
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      OnExit = FrmCfopExit
      inherited LTextoBusca: TLabel
        Width = 225
        Caption = 'C.F.O.P:   Natureza da Opera'#231#227'o:'
      end
      inherited LUZOPEN: TShape
        Left = 335
      end
      inherited LUZMINUS: TShape
        Left = 354
      end
      inherited EdDescricao: TFlatEdit
        Left = 56
        Width = 281
        Font.Height = -9
      end
      inherited BTNOPEN: TBitBtn
        Left = 337
        OnClick = FrmBusca1BTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 355
        OnClick = FrmCfopBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 55
        OnKeyDown = FrmCfopEDCodigoKeyDown
      end
    end
    object EdDtEmissao: TDateTimePicker
      Left = 392
      Top = 23
      Width = 91
      Height = 21
      Date = 0.626324861113971600
      Time = 0.626324861113971600
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EdDtEntSai: TDateTimePicker
      Left = 493
      Top = 23
      Width = 92
      Height = 21
      Date = 0.626324861113971600
      Time = 0.626324861113971600
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EdHora: TDateTimePicker
      Left = 593
      Top = 23
      Width = 92
      Height = 21
      Date = 38636.626324861110000000
      Time = 38636.626324861110000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
    end
    object EdBaseICMS: TColorEditFloat
      Left = 11
      Top = 76
      Width = 86
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrICMS: TColorEditFloat
      Left = 114
      Top = 76
      Width = 80
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdBaseICMSSubs: TColorEditFloat
      Left = 218
      Top = 76
      Width = 101
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrICMSSubs: TColorEditFloat
      Left = 342
      Top = 116
      Width = 108
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrSeguro: TColorEditFloat
      Left = 12
      Top = 116
      Width = 86
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdOutrasDesp: TColorEditFloat
      Left = 219
      Top = 116
      Width = 101
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrProd: TColorEditFloat
      Left = 461
      Top = 76
      Width = 99
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrIPI: TColorEditFloat
      Left = 115
      Top = 116
      Width = 80
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVlrNota: TColorEditFloat
      Left = 569
      Top = 72
      Width = 116
      Height = 26
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object GroupBox2: TGroupBox
      Left = 12
      Top = 310
      Width = 675
      Height = 119
      Caption = 'TRANSPORTADOR/VOLUMES TRANSPORTADOS'
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
      object Label8: TLabel
        Left = 9
        Top = 35
        Width = 68
        Height = 16
        Caption = 'Vlr. Frete:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 372
        Top = 34
        Width = 51
        Height = 16
        Caption = 'Quant.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 435
        Top = 34
        Width = 56
        Height = 16
        Caption = 'Esp'#233'cie:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 505
        Top = 34
        Width = 46
        Height = 16
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 608
        Top = 35
        Width = 55
        Height = 16
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 74
        Width = 77
        Height = 16
        Caption = 'Peso Bruto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 88
        Top = 74
        Width = 87
        Height = 16
        Caption = 'Peso L'#237'quido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 186
        Top = 74
        Width = 87
        Height = 16
        Caption = 'Placa Veiculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 280
        Top = 21
        Width = 91
        Height = 11
        Alignment = taCenter
        AutoSize = False
        Caption = 'FRETE POR CONTA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 287
        Top = 75
        Width = 23
        Height = 16
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 327
        Top = 75
        Width = 42
        Height = 16
        Caption = 'ANTT:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object CBFreteComp: TCheckBox
        Left = 10
        Top = 16
        Width = 249
        Height = 17
        Caption = 'O Frete comp'#245'e o total da Nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CBFreteCompClick
      end
      inline FrmTransp: TFrmBusca
        Left = 95
        Top = 37
        Width = 277
        Height = 33
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Width = 103
          Height = 14
          Caption = 'Transportadora:'
          Font.Height = -12
        end
        inherited LUZOPEN: TShape
          Left = 250
          Top = 11
          Width = 19
          Height = 20
        end
        inherited LUZMINUS: TShape
          Left = 106
        end
        inherited EdDescricao: TFlatEdit
          Left = 53
          Top = 14
          Width = 194
        end
        inherited BTNOPEN: TBitBtn
          Left = 248
          Top = 14
          OnClick = FrmTranspBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 103
          Visible = False
          OnClick = FrmTranspBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 14
          Width = 47
          OnKeyDown = FrmTranspEDCodigoKeyDown
        end
      end
      object EdVlrFrete: TColorEditFloat
        Left = 9
        Top = 50
        Width = 80
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaptionText
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object RBEmitente: TRadioButton
        Left = 373
        Top = 18
        Width = 65
        Height = 17
        Caption = 'EMITENTE'
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object RBDestinatario: TRadioButton
        Left = 443
        Top = 19
        Width = 81
        Height = 17
        Caption = 'DESTINAT'#193'RIO'
        Checked = True
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        TabStop = True
      end
      object EdQuantidade: TColorEditFloat
        Left = 372
        Top = 50
        Width = 56
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaptionText
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdPesoBruto: TColorEditFloat
        Left = 8
        Top = 90
        Width = 75
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaptionText
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdPesoLiquido: TColorEditFloat
        Left = 89
        Top = 90
        Width = 92
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaptionText
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdEspecie: TColorMaskEdit
        Left = 435
        Top = 50
        Width = 62
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDMarca: TColorMaskEdit
        Left = 505
        Top = 50
        Width = 96
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 25
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdNumero: TColorMaskEdit
        Left = 609
        Top = 50
        Width = 57
        Height = 21
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 25
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDPlacaVeiculo: TColorMaskEdit
        Left = 186
        Top = 90
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        OnKeyDown = EDPlacaVeiculoKeyDown
        OnKeyPress = EDPlacaVeiculoKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdUf: TColorMaskEdit
        Left = 287
        Top = 91
        Width = 30
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        OnKeyPress = EdUfKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDANTT: TColorMaskEdit
        Left = 327
        Top = 91
        Width = 149
        Height = 21
        Hint = 'Registro Nacional de Transportador de Carga'
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 20
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyPress = EDANTTKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object EDVLRICMSISENTO: TColorEditFloat
      Left = 341
      Top = 76
      Width = 108
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = clInactiveCaptionText
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object cbCFOPProdutos: TCheckBox
      Left = 199
      Top = 43
      Width = 198
      Height = 17
      Hint = 'Marque se deseja utilizar a CFOP da nota em todos os produtos'
      Caption = 'Utilizar CFOP em todos os produtos'
      TabOrder = 15
      Visible = False
      OnClick = cbCFOPProdutosClick
    end
    object MDadosAd01: TMemo
      Left = 12
      Top = 168
      Width = 421
      Height = 33
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Nota Fiscal emitida por Empresa Optante pelo Simples Paran'#225
        'N'#227'o Gera Cr'#233'dito de Icms')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 16
    end
    object MDadosAd02: TMemo
      Left = 12
      Top = 200
      Width = 421
      Height = 32
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Ordem N'#186': 8854'
        'Teste 02')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object MDadosAd03: TMemo
      Left = 12
      Top = 231
      Width = 421
      Height = 32
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Linha em branco 01'
        'Linha em branco 02'
        'Linha em branco 03'
        'Linha em branco 04')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 18
    end
    object MReservFisco01: TMemo
      Left = 440
      Top = 168
      Width = 242
      Height = 46
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Nota Fiscal emitida por Empresa '
        'Optante pelo '
        'Simples Parana'
        'N'#227'o Gera Cr'#233'dito de Icms')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
    end
    object MReservFisco02: TMemo
      Left = 440
      Top = 213
      Width = 242
      Height = 33
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Ordem N'#186': 8854'
        'Teste 02')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
    end
    object MReservFisco03: TMemo
      Left = 440
      Top = 245
      Width = 242
      Height = 61
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Linha em branco 01'
        'Linha em branco 02'
        'Linha em branco 03'
        'Linha em branco 04')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 21
    end
    object MDadosAd04: TMemo
      Left = 12
      Top = 262
      Width = 421
      Height = 42
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        'Linha em branco 01'
        'Linha em branco 02'
        'Linha em branco 03'
        'Linha em branco 04')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
  end
  object EDVlrISS: TColorEditFloat
    Left = 582
    Top = 155
    Width = 108
    Height = 21
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = '0,00'
    ValueFormat = '##,##0.00'
    ValueInteger = 0
    FocusColor = clInactiveCaptionText
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDVlrTotServ: TColorEditFloat
    Left = 471
    Top = 155
    Width = 101
    Height = 21
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = '0,00'
    ValueFormat = '##,##0.00'
    ValueInteger = 0
    FocusColor = clInactiveCaptionText
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
end
