inherited FPadraoBaixaContas: TFPadraoBaixaContas
  Left = 359
  Top = 63
  Caption = '0'
  ClientHeight = 470
  ClientWidth = 588
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 255
    Top = 8
    Width = 59
    Height = 13
    Caption = 'Vencimento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [1]
    Left = 356
    Top = 8
    Width = 34
    Height = 13
    Caption = 'D'#233'bito:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [2]
    Left = 476
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Valor Devido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [3]
    Left = 16
    Top = 8
    Width = 54
    Height = 13
    Caption = 'N'#186' Parcela:'
    Transparent = True
  end
  object Label3: TLabel [4]
    Left = 133
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Documento:'
    Transparent = True
  end
  object Label17: TLabel [5]
    Left = 468
    Top = 60
    Width = 109
    Height = 20
    Caption = 'Valor Final:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LVlrCred: TLabel [6]
    Left = 504
    Top = 444
    Width = 58
    Height = 14
    Caption = 'LVlrCred'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel [7]
    Left = 422
    Top = 444
    Width = 80
    Height = 14
    Caption = 'Vlr. Cr'#233'dito:'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel [8]
    Left = 12
    Top = 287
    Width = 66
    Height = 19
    Caption = 'Hist'#243'rico'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object PCartoes: TPanel [9]
    Left = 47
    Top = 310
    Width = 423
    Height = 154
    BevelOuter = bvNone
    BevelWidth = 3
    Color = clActiveCaption
    TabOrder = 16
    TabStop = True
    Visible = False
    object lCartoesDescricao: TLabel
      Left = 8
      Top = 1
      Width = 156
      Height = 16
      Caption = 'Cart'#227'o D'#233'bito/Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCartoesSair: TLabel
      Left = 7
      Top = 143
      Width = 151
      Height = 10
      Caption = '<ENTER> Seleciona - <ESC> Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBCartoes: TDBGrid
      Left = 5
      Top = 17
      Width = 412
      Height = 123
      Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
      Color = 16121836
      Ctl3D = False
      DataSource = DMFINANC.DCartao
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBCartoesKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'BANDEIRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Bandeira'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'Cart'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCINI'
          Title.Alignment = taRightJustify
          Title.Caption = 'de'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCFIN'
          Title.Alignment = taRightJustify
          Title.Caption = 'a'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAXA'
          Title.Alignment = taRightJustify
          Title.Caption = 'Taxa'
          Width = 28
          Visible = True
        end>
    end
  end
  object PDESCONTO: TPanel [10]
    Left = 11
    Top = 48
    Width = 222
    Height = 57
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 1
    Visible = False
    object Label7: TLabel
      Left = 4
      Top = 4
      Width = 94
      Height = 13
      Caption = 'Desconto (%):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 110
      Top = 4
      Width = 88
      Height = 13
      Caption = 'Desconto ($):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdDesc: TColorEditFloat
      Left = 4
      Top = 19
      Width = 94
      Height = 24
      Color = 15658717
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
      OnExit = EdDescExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EDDESCMOEDA: TColorEditFloat
      Left = 108
      Top = 19
      Width = 101
      Height = 24
      Color = 15658717
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = EDDESCMOEDAExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  inherited PComunica: TPanel
    Left = 50
    Top = 88
    TabOrder = 12
  end
  object PJUROS: TPanel
    Left = 11
    Top = 48
    Width = 390
    Height = 57
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 0
    Visible = False
    object Label9: TLabel
      Left = 4
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Multa (%):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 114
      Top = 4
      Width = 63
      Height = 13
      Caption = 'Multa ($):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 200
      Top = 4
      Width = 65
      Height = 13
      Caption = 'Juros(%):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 304
      Top = 4
      Width = 63
      Height = 13
      Caption = 'Juros ($):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LAvisoMulta: TLabel
      Left = 7
      Top = 42
      Width = 157
      Height = 12
      Alignment = taCenter
      Caption = 'Aplicados ao dia de vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BitBtn1Click
    end
    object LTipoJuros: TLabel
      Left = 276
      Top = 42
      Width = 38
      Height = 12
      Alignment = taCenter
      Caption = 'Simples'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = BitBtn1Click
    end
    object EdMulta: TColorEditFloat
      Left = 4
      Top = 19
      Width = 69
      Height = 24
      Color = 15658717
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
      OnExit = EdMultaExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdMultaMoeda: TColorEditFloat
      Left = 82
      Top = 19
      Width = 95
      Height = 24
      Color = 15658717
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = EdMultaMoedaExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdJuro: TColorEditFloat
      Left = 196
      Top = 19
      Width = 69
      Height = 24
      Color = 15658717
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
      OnExit = EdJuroExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdJuroMoeda: TColorEditFloat
      Left = 274
      Top = 19
      Width = 95
      Height = 24
      Color = 15658717
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
      OnExit = EdJuroMoedaExit
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object Panel1: TPanel
    Left = 10
    Top = 108
    Width = 570
    Height = 170
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 3
    TabStop = True
    object Label16: TLabel
      Left = 5
      Top = 116
      Width = 221
      Height = 19
      Caption = 'Moeda Utilizada no Movimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 448
      Top = 5
      Width = 121
      Height = 22
      Caption = 'Valor Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 5
      Top = 6
      Width = 146
      Height = 19
      Caption = 'Forma de pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LTotMostraCheque: TLabel
      Left = 250
      Top = 47
      Width = 101
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object PMultiplo: TPanel
      Left = 2
      Top = 49
      Width = 328
      Height = 167
      BevelWidth = 3
      Color = clInactiveCaptionText
      TabOrder = 8
      Visible = False
      OnExit = PMultiploExit
      object Shape1: TShape
        Left = 272
        Top = 9
        Width = 22
        Height = 24
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object Shape2: TShape
        Left = 293
        Top = 9
        Width = 22
        Height = 24
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object CBMultConta: TComboBox
        Left = 113
        Top = 9
        Width = 151
        Height = 24
        Hint = 'Selecione a forma de pagamento'
        AutoDropDown = True
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Carteira'
        OnExit = CBMultContaExit
        OnKeyPress = CBMultContaKeyPress
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Banco')
      end
      object BtnAddConta: TBitBtn
        Left = 275
        Top = 12
        Width = 18
        Height = 20
        Hint = 'Pressione para inserir o pagamento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnAddContaClick
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
      object BtnRemConta: TBitBtn
        Left = 295
        Top = 11
        Width = 18
        Height = 21
        Hint = 'Pressione para remover o pagamento selecionado'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnRemContaClick
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
      object DBGrid3: TDBGrid
        Left = 9
        Top = 42
        Width = 308
        Height = 95
        Ctl3D = False
        DataSource = DMMACS.DTMP
        FixedColor = clInfoBk
        Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'VLR1'
            Title.Caption = 'Valor'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC1'
            Title.Caption = '  Pagam.'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC3'
            Title.Caption = 'Banco'
            Width = 120
            Visible = True
          end>
      end
      object EdValorMul: TColorEditFloat
        Left = 10
        Top = 8
        Width = 93
        Height = 26
        Hint = 'Informe o valor do pagamento'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '0.00'
        ValueInteger = 0
        FocusColor = 15925247
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object cxButton1: TcxButton
        Left = 263
        Top = 137
        Width = 34
        Height = 25
        Hint = 'Pressione para fechar pagamento m'#250'ltiplo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = cxButton1Click
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFC891FFC891
          FFC891FFC891FFC891FFCC92FFCF94DDB792D3B29584858A8C8A8C8A898A797D
          80D6B28DD4AF8BFFD293FFCA91FFC891FFC891FFC891FFC891FFC891FFC891FF
          C891FFD398DAB28F9080813C40480B1311181C18161B161D211D847A8475737C
          7B8187948B82E6BA8EFFCC92FFC891FFC891FFC891FFC891FFC891FFD89DC188
          6B0C231E002C00005E00008E00008A00008B00008500002B000132013E2A3E8D
          8C91757A7FEDBD8EFFCC92FFC891FFC891FFC891FFD89DAC7E62004800007D00
          0089000084000080000080000080000081000088000084000078002628268682
          88757A7FE7BA8DFFCA91FFC891FFD298C6887000470000890000810000800000
          8000007F00007B00007E000080000080000080000084000074002628268D8C91
          948B82FFD293FFCB93FFC092001A00008C00008000008000008000007E00007C
          005AA85A248824007D000080000080000080000084000078003E2A3E7B8187D4
          AF8BFFD59B574631007400008200008000008000007F00007600AAC0AAFFFFFF
          A9CCA9007600007F0000800000800000800000840001320175737CD6B28DFFE0
          A432221B008900008000008000007E00007600AEC0AEFFFFFFFFFFFFFFFFFF1E
          8B1E007D00008000008000008000008800002B00847A84797D80B68468005500
          008400008000007F00007C00AABFAAFFFFFFE6E6E6D8E3D8FFFFFFC7D1C70073
          000080000080000080000081000085001D211D8A898AB17F6500580000840000
          8000007B0061AA61FFFFFFFFFFFF22862286B286FFFFFFFFFFFF278627007D00
          008000008000008000008B00161B168C8A8CB280660058000084000080000080
          00007B00007000007200007C00006B00FFFFFFFFFFFFAED0AE007800007F0000
          8000008000008A00181C1884858AAC7B63005A00008400008000008000008000
          00800000800000800000790076B376FFFFFFFFFFFF0E830E007D000080000080
          00008E000B1311D3B295E4AC820E400700850000800000800000800000800000
          8000008000007E000B7E0BEEF3EEFFFFFFBED0BE007300008000008400005E00
          3C4048DDB793FFDDA2271F16008C000080000080000080000080000080000080
          0000800000780082AE82FFFFFFFFFFFF459845007C00008900002C00908081FF
          CF94FFD097AF8563004900008500008000008000008000008000008000008000
          007F00007C0062B06261B161219121007F00007D000C231EDAB28FFFCC92FFC9
          92FFC8950E2D0800830000810000800000800000800000800000800000800000
          7F00007A00007A00007D00008900004800C1886BFFD398FFC891FFC891FFCD94
          FFC0930A31050083000085000080000080000080000080000080000080000080
          00008200008C00004700AC7E62FFD89DFFC891FFC891FFC891FFC891FFCE95FF
          C0930E2D07004900008C00008500008400008400008400008400008900007400
          001A00C68870FFD89DFFC891FFC891FFC891FFC891FFC891FFC891FFCD94FFC8
          95AF8564271F160E4008005A0000580000580000550031221C574631FFC092FF
          D298FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC992FFD097
          FFDDA1E5AC82AD7B62B38065B17F65B68467FFE0A4FFD59BFFCB93FFC891FFC8
          91FFC891FFC891FFC891}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        UseSystemPaint = False
      end
    end
    object EDVALORPAGO: TColorEditFloat
      Left = 401
      Top = 24
      Width = 165
      Height = 30
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = EDVALORPAGOExit
      ValueFormat = '0.00'
      ValueInteger = 0
      FocusColor = 15925247
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBMOEDA: TDBLookupComboBox
      Left = 4
      Top = 134
      Width = 229
      Height = 21
      Color = clWhite
      DropDownRows = 30
      DropDownWidth = 600
      KeyField = 'COD_MOEDA'
      ListField = 'MOEDA; ORIGEM'
      TabOrder = 3
      TabStop = False
    end
    inline FrmConta: TFrmBusca
      Left = 2
      Top = 63
      Width = 519
      Height = 43
      Color = 16772332
      ParentColor = False
      TabOrder = 2
      inherited LTextoBusca: TLabel
        Width = 164
        Height = 19
        Caption = 'Conta para Lan'#231'amento:'
        Font.Height = -17
        Font.Name = 'Times New Roman'
      end
      inherited LUZOPEN: TShape
        Left = 463
        Top = 17
      end
      inherited LUZMINUS: TShape
        Left = 481
        Top = 17
      end
      inherited EdDescricao: TFlatEdit
        Left = 98
        Top = 19
        Width = 367
        Height = 21
        Font.Height = -12
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 465
        Top = 20
        OnClick = FrmContaBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 483
        Top = 20
        OnClick = FrmContaBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 19
        Width = 96
        Height = 21
        Font.Height = -12
        Font.Style = []
        OnKeyPress = FrmContaEDCodigoKeyPress
      end
    end
    object DBCOB: TComboBox
      Left = 5
      Top = 24
      Width = 181
      Height = 24
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnClick = DBCOBClick
      OnExit = DBCOBExit
      OnKeyPress = DBCOBKeyPress
      Items.Strings = (
        'Carteira'
        'Pix'
        'Banco'
        'Cheque'
        'Chq. Terc.'
        'Boleto'
        'Cr'#233'dito')
    end
    object CBImpRecibo: TCheckBox
      Left = 480
      Top = 146
      Width = 127
      Height = 17
      Caption = 'Imp Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object CBCheque: TCheckBox
      Left = 288
      Top = 136
      Width = 144
      Height = 19
      Caption = 'Imprimir Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object PMostraCta: TPanel
      Left = 186
      Top = 7
      Width = 190
      Height = 45
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 7
      Visible = False
      object DBText1: TDBText
        Left = 8
        Top = 16
        Width = 41
        Height = 17
        Alignment = taRightJustify
        DataField = 'NUMAGENCIA'
        DataSource = DMBANCO.DWCtaCor
      end
      object DBText2: TDBText
        Left = 8
        Top = 29
        Width = 181
        Height = 17
        DataField = 'DESCBANCO'
        DataSource = DMBANCO.DWCtaCor
      end
      object Label1: TLabel
        Left = 51
        Top = 16
        Width = 5
        Height = 13
        Caption = '/'
      end
      object DBText3: TDBText
        Left = 58
        Top = 16
        Width = 105
        Height = 17
        DataField = 'NUMCTACOR'
        DataSource = DMBANCO.DWCtaCor
      end
    end
    object PBanco: TPanel
      Left = 3
      Top = 47
      Width = 374
      Height = 95
      BevelWidth = 3
      Enabled = False
      TabOrder = 6
      Visible = False
      OnExit = PBancoExit
      object DBGCTA: TDBGrid
        Left = 5
        Top = 6
        Width = 364
        Height = 83
        Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
        Color = 16121836
        Ctl3D = False
        DataSource = DMBANCO.DWCtaCor
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGCTAKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMAGENCIA'
            Title.Caption = 'Ag'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCTACOR'
            Title.Caption = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCBANCO'
            Title.Caption = 'Banco'
            Width = 214
            Visible = True
          end>
      end
    end
  end
  object EdVenc: TEdit
    Left = 253
    Top = 23
    Width = 99
    Height = 21
    Color = 16250871
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    Text = '18/17/1980'
  end
  object EdValor: TColorEditFloat
    Left = 476
    Top = 23
    Width = 102
    Height = 21
    Color = 15527167
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    Text = '0,00'
    ValueFormat = '0.00'
    ValueInteger = 0
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 440
    Width = 80
    Height = 24
    Caption = 'Ok'
    TabOrder = 7
    OnClick = BitBtn1Click
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
    Left = 312
    Top = 440
    Width = 80
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 8
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
  object EdParcela: TEdit
    Left = 11
    Top = 23
    Width = 118
    Height = 21
    Color = 16250871
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object EdDocumento: TEdit
    Left = 132
    Top = 23
    Width = 118
    Height = 21
    Color = 16250871
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object EDValorJurMulta: TColorEditFloat
    Left = 404
    Top = 80
    Width = 173
    Height = 28
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = '0,00'
    ValueFormat = '0.00'
    ValueInteger = 0
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object DBHISTORICO: TDBEdit
    Left = 11
    Top = 307
    Width = 570
    Height = 21
    TabOrder = 4
  end
  object EDDeb: TColorMaskEdit
    Left = 356
    Top = 22
    Width = 92
    Height = 21
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 10
    Text = '  /  /    '
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object QRReciboGFinal: TQuickRep
    Left = 940
    Top = 348
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMFINANC.TAlx
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Ruler = False
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 4
    PrinterSettings.OutputBin = Manual
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBRecFin: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 439
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBRecFinBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText54: TQRDBText
        Left = 4
        Top = 8
        Width = 733
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          10.583333333333330000
          21.166666666666670000
          1939.395833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TITULOPRIM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText55: TQRDBText
        Left = 6
        Top = 30
        Width = 731
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TITULOSEC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape28: TQRShape
        Left = 3
        Top = 115
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 3
        Top = 112
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape30: TQRShape
        Left = 3
        Top = 47
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRShape31: TQRShape
        Left = 3
        Top = 77
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRLabel69: TQRLabel
        Left = 16
        Top = 212
        Width = 223
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          560.916666666666700000
          590.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REFERENTE: PAGTO DOCUMENTO '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 16
        Top = 179
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A IMPORT'#194'NCIA DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel71: TQRLabel
        Left = 16
        Top = 128
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RECEBEMOS DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape32: TQRShape
        Left = 3
        Top = 262
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape33: TQRShape
        Left = 1
        Top = 412
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel73: TQRLabel
        Left = 0
        Top = 51
        Width = 745
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RECIBO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 16
      end
      object QRLabel74: TQRLabel
        Left = 16
        Top = 88
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DOCUMENTO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel75: TQRLabel
        Left = 544
        Top = 88
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR: R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 16
        Top = 273
        Width = 174
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          722.312500000000000000
          460.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Toledo, 01 de Janeiro de 2005'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel77: TQRLabel
        Left = 0
        Top = 353
        Width = 745
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '________________________________________________________'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel78: TQRLabel
        Left = 0
        Top = 370
        Width = 745
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A S S I N A T U R A'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText56: TQRDBText
        Left = 129
        Top = 128
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 128
        Top = 144
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText57: TQRDBText
        Left = 190
        Top = 145
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          383.645833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel80: TQRLabel
        Left = 128
        Top = 161
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Munic'#237'pio:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText58: TQRDBText
        Left = 192
        Top = 161
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NOME1'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText60: TQRDBText
        Left = 590
        Top = 161
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'UF_ESTADO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel81: TQRLabel
        Left = 542
        Top = 161
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estado:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText61: TQRDBText
        Left = 611
        Top = 128
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'CPFCNPJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 542
        Top = 128
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF/CNPJ:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLImportanciaF: TQRLabel
        Left = 152
        Top = 179
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          473.604166666666700000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A IMPORT'#194'NCIA DE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel85: TQRLabel
        Left = 622
        Top = 89
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel85'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText59: TQRDBText
        Left = 244
        Top = 212
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          560.916666666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NUMDOC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRRDocumentos: TQRRichText
        Left = 27
        Top = 232
        Width = 704
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRDataRec4: TQRLabel
        Left = 676
        Top = 60
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1788.583333333333000000
          158.750000000000000000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '[TIME]'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 3
        Top = 414
        Width = 734
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          7.937500000000000000
          1095.375000000000000000
          1942.041666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TMP3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
  end
  object PCartao: TPanel
    Left = 250
    Top = 290
    Width = 190
    Height = 45
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 13
    Visible = False
    object Label19: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 13
      Caption = 'N'#186' Cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdNumCartao: TEdit
      Left = 8
      Top = 21
      Width = 161
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object pPerguntaVlrMaior: TPanel
    Left = 10
    Top = 333
    Width = 569
    Height = 96
    BevelInner = bvLowered
    TabOrder = 14
    Visible = False
    object Label20: TLabel
      Left = 5
      Top = 4
      Width = 475
      Height = 14
      Caption = 
        'O valor pago difere do valor total da conta.  Qual decis'#227'o desej' +
        'a tomar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbProxParc: TCheckBox
      Left = 15
      Top = 53
      Width = 339
      Height = 17
      Caption = 'Retirar a diferen'#231'a no valor da  pr'#243'xima parcela.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cbProxParcClick
    end
    object cbConvertMulta: TCheckBox
      Left = 15
      Top = 35
      Width = 237
      Height = 17
      Caption = 'Converter a diferen'#231'a em multa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbConvertMultaClick
    end
    object cbLancTroco: TCheckBox
      Left = 16
      Top = 72
      Width = 185
      Height = 17
      Caption = 'Lan'#231'ar troco/cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cbLancTrocoClick
    end
  end
  object pPerguntaVlrMenor: TPanel
    Left = 163
    Top = 333
    Width = 568
    Height = 96
    BevelInner = bvLowered
    TabOrder = 17
    Visible = False
    object Label23: TLabel
      Left = 5
      Top = 4
      Width = 475
      Height = 14
      Caption = 
        'O valor pago difere do valor total da conta.  Qual decis'#227'o desej' +
        'a tomar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbNewParc: TCheckBox
      Left = 20
      Top = 31
      Width = 293
      Height = 17
      Caption = 'Converter a diferen'#231'a em outra parcela. '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbNewParcClick
    end
    object cbBaixaValorPago: TCheckBox
      Left = 20
      Top = 49
      Width = 209
      Height = 17
      Caption = 'Baixar apenas o valor pago.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cbBaixaValorPagoClick
    end
  end
  object PChqTerceiro: TPanel
    Left = 196
    Top = 131
    Width = 217
    Height = 166
    BevelWidth = 3
    Color = clInactiveCaptionText
    Enabled = False
    TabOrder = 18
    Visible = False
    OnExit = PChqTerceiroExit
    object LUZOPEN: TShape
      Left = 168
      Top = 6
      Width = 22
      Height = 24
      Brush.Color = clGradientActiveCaption
      Pen.Color = clGradientActiveCaption
      Shape = stRoundRect
      Visible = False
    end
    object LUZMINUS: TShape
      Left = 189
      Top = 6
      Width = 22
      Height = 24
      Brush.Color = clGradientActiveCaption
      Pen.Color = clGradientActiveCaption
      Shape = stRoundRect
      Visible = False
    end
    object LTotalChq: TDRLabel
      Left = 8
      Top = 140
      Width = 116
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      HiColor = clBlue
      LoColor = clNavy
      Border = boNone
      Ctl3D = True
      BlinkInterval = 300
      Blink = blNone
      Deep = 1
    end
    object DBText4: TDBText
      Left = 24
      Top = 30
      Width = 134
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALOR'
      DataSource = DMBANCO.DWChequeRec
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTNOPEN: TBitBtn
      Left = 171
      Top = 9
      Width = 19
      Height = 19
      Hint = 'Pressione para Inserir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object BTNMINUS: TBitBtn
      Left = 190
      Top = 9
      Width = 19
      Height = 19
      Hint = 'Pressione para apagar '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = FrmContaBTNMINUSClick
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
    object DBGrid1: TDBGrid
      Left = 6
      Top = 45
      Width = 205
      Height = 94
      Ctl3D = False
      DataSource = DMBANCO.Dalx
      FixedColor = clInfoBk
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCHEQUE'
          Title.Caption = 'N'#186' Cheque:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor:'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO'
          Title.Caption = 'Banco:'
          Visible = True
        end>
    end
    object BitBtn3: TBitBtn
      Left = 190
      Top = 142
      Width = 19
      Height = 19
      Hint = 'Pressione para apagar '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000FFC891FFC891
        FFC891FFC891FFC891FFCC92FFCF94DDB792D3B29584858A8C8A8C8A898A797D
        80D6B28DD4AF8BFFD293FFCA91FFC891FFC891FFC891FFC891FFC891FFC891FF
        C891FFD398DAB28F9080813C40480B1311181C18161B161D211D847A8475737C
        7B8187948B82E6BA8EFFCC92FFC891FFC891FFC891FFC891FFC891FFD89DC188
        6B0C231E002C00005E00008E00008A00008B00008500002B000132013E2A3E8D
        8C91757A7FEDBD8EFFCC92FFC891FFC891FFC891FFD89DAC7E62004800007D00
        0089000084000080000080000080000081000088000084000078002628268682
        88757A7FE7BA8DFFCA91FFC891FFD298C6887000470000890000810000800000
        8000007F00007B00007E000080000080000080000084000074002628268D8C91
        948B82FFD293FFCB93FFC092001A00008C00008000008000008000007E00007C
        005AA85A248824007D000080000080000080000084000078003E2A3E7B8187D4
        AF8BFFD59B574631007400008200008000008000007F00007600AAC0AAFFFFFF
        A9CCA9007600007F0000800000800000800000840001320175737CD6B28DFFE0
        A432221B008900008000008000007E00007600AEC0AEFFFFFFFFFFFFFFFFFF1E
        8B1E007D00008000008000008000008800002B00847A84797D80B68468005500
        008400008000007F00007C00AABFAAFFFFFFE6E6E6D8E3D8FFFFFFC7D1C70073
        000080000080000080000081000085001D211D8A898AB17F6500580000840000
        8000007B0061AA61FFFFFFFFFFFF22862286B286FFFFFFFFFFFF278627007D00
        008000008000008000008B00161B168C8A8CB280660058000084000080000080
        00007B00007000007200007C00006B00FFFFFFFFFFFFAED0AE007800007F0000
        8000008000008A00181C1884858AAC7B63005A00008400008000008000008000
        00800000800000800000790076B376FFFFFFFFFFFF0E830E007D000080000080
        00008E000B1311D3B295E4AC820E400700850000800000800000800000800000
        8000008000007E000B7E0BEEF3EEFFFFFFBED0BE007300008000008400005E00
        3C4048DDB793FFDDA2271F16008C000080000080000080000080000080000080
        0000800000780082AE82FFFFFFFFFFFF459845007C00008900002C00908081FF
        CF94FFD097AF8563004900008500008000008000008000008000008000008000
        007F00007C0062B06261B161219121007F00007D000C231EDAB28FFFCC92FFC9
        92FFC8950E2D0800830000810000800000800000800000800000800000800000
        7F00007A00007A00007D00008900004800C1886BFFD398FFC891FFC891FFCD94
        FFC0930A31050083000085000080000080000080000080000080000080000080
        00008200008C00004700AC7E62FFD89DFFC891FFC891FFC891FFC891FFCE95FF
        C0930E2D07004900008C00008500008400008400008400008400008900007400
        001A00C68870FFD89DFFC891FFC891FFC891FFC891FFC891FFC891FFCD94FFC8
        95AF8564271F160E4008005A0000580000580000550031221C574631FFC092FF
        D298FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC992FFD097
        FFDDA1E5AC82AD7B62B38065B17F65B68467FFE0A4FFD59BFFCB93FFC891FFC8
        91FFC891FFC891FFC891}
    end
    object DBCBCHEQUE: TDBLookupComboBox
      Left = 8
      Top = 8
      Width = 153
      Height = 21
      KeyField = 'COD_CHEQUEREC'
      ListField = 'NUMCHEQUE'
      ListSource = DMBANCO.DWChequeRec
      TabOrder = 4
    end
  end
end
