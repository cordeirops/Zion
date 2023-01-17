inherited FPedidoPadrao: TFPedidoPadrao
  Left = 243
  Top = 6
  Caption = ' '
  ClientHeight = 614
  ClientWidth = 811
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PItensVendaAg: TPanel [0]
    Left = 200
    Top = 256
    Width = 425
    Height = 313
    BevelWidth = 2
    Color = clWhite
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 6
    Visible = False
    object FashionPanel7: TFashionPanel
      Left = 3
      Top = 2
      Width = 418
      Height = 310
      BevelOuter = bvNone
      Caption = '$00FFECEC'
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Venda Agrupada'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label91: TLabel
        Left = 7
        Top = 35
        Width = 4
        Height = 16
        Color = 14277119
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object BtConfirmar: TBitBtn
        Left = 128
        Top = 264
        Width = 81
        Height = 25
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtConfirmarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BtCancela: TBitBtn
        Left = 216
        Top = 264
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BtCancelaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object GridItenAg: TDBGrid
        Left = 6
        Top = 56
        Width = 393
        Height = 161
        DataSource = DMENTRADA.DAlx
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = GridItenAgDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_SUBPRODUTO'
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object PPrecos: TPanel [1]
    Left = 345
    Top = 246
    Width = 329
    Height = 98
    BevelWidth = 3
    Color = clBackground
    TabOrder = 5
    object FashionPanel3: TFashionPanel
      Left = 4
      Top = 4
      Width = 321
      Height = 90
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Pre'#231'o de Venda:'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label73: TLabel
        Left = 4
        Top = 19
        Width = 59
        Height = 22
        Caption = 'Varejo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 22
        Top = 40
        Width = 49
        Height = 17
        Caption = #192' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 90
        Top = 40
        Width = 56
        Height = 17
        Caption = #192' Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 175
        Top = 19
        Width = 75
        Height = 22
        Caption = 'Atacado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 191
        Top = 41
        Width = 49
        Height = 17
        Caption = #192' Vista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 260
        Top = 41
        Width = 56
        Height = 17
        Caption = #192' Prazo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label79: TLabel
        Left = 283
        Top = 80
        Width = 29
        Height = 10
        Caption = '<esc>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdVlrVarejoVista: TColorEditFloat
        Left = 2
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        OnKeyPress = EdVlrVarejoVistaKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrVarejoPrazo: TColorEditFloat
        Left = 76
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        OnKeyPress = EdVlrVarejoVistaKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrAtacadoVista: TColorEditFloat
        Left = 172
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        OnKeyPress = EdVlrVarejoVistaKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrAtacadoPrazo: TColorEditFloat
        Left = 246
        Top = 56
        Width = 70
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = '0,00'
        OnKeyPress = EdVlrVarejoVistaKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object PFinanceiro: TPanel [2]
    Left = 189
    Top = 264
    Width = 497
    Height = 279
    BevelWidth = 4
    Color = clBlack
    TabOrder = 4
    Visible = False
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 267
      BevelOuter = bvNone
      Caption = '$00FFECEC'
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label25: TLabel
        Left = 8
        Top = 29
        Width = 116
        Height = 20
        Caption = 'Pagamento em :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LTotMostraCheque: TLabel
        Left = 80
        Top = 103
        Width = 101
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object PMostraCta: TPanel
        Left = 187
        Top = 68
        Width = 286
        Height = 45
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 8
        Visible = False
        object DBText1: TDBText
          Left = 8
          Top = 15
          Width = 41
          Height = 12
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
        object Label39: TLabel
          Left = 51
          Top = 15
          Width = 5
          Height = 13
          Caption = '/'
        end
        object DBText3: TDBText
          Left = 58
          Top = 15
          Width = 105
          Height = 12
          DataField = 'NUMCTACOR'
          DataSource = DMBANCO.DWCtaCor
        end
        object lbNumeroCartao: TLabel
          Left = 144
          Top = 2
          Width = 49
          Height = 13
          Caption = 'N'#186' Cart'#227'o:'
          Visible = False
        end
        object edNumeroCartao: TEdit
          Left = 144
          Top = 16
          Width = 121
          Height = 21
          MaxLength = 15
          TabOrder = 0
          Visible = False
          OnKeyPress = edNumeroCartaoKeyPress
        end
      end
      object PChqTerceiro: TPanel
        Left = 188
        Top = 26
        Width = 217
        Height = 166
        BevelWidth = 3
        Color = clInactiveCaptionText
        Enabled = False
        TabOrder = 9
        Visible = False
        OnExit = PChqTerceiroExit
        object Shape1: TShape
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
        object DBText7: TDBText
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
        object DBGrid2: TDBGrid
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
        object BtnFechaChqTerc: TBitBtn
          Left = 190
          Top = 142
          Width = 19
          Height = 19
          Hint = 'Pressione para apagar '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnFechaChqTercClick
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
          ListField = 'NUMCHEQUE; VALOR'
          ListSource = DMBANCO.DWChequeRec
          TabOrder = 4
        end
      end
      object Panel7: TPanel
        Left = 310
        Top = 71
        Width = 163
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 3
        object LTextoBusca: TLabel
          Left = 1
          Top = -3
          Width = 155
          Height = 20
          Caption = 'Data de Fechamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
          Left = 3
          Top = 16
          Width = 97
          Height = 22
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object PBanco: TPanel
        Left = 194
        Top = 33
        Width = 283
        Height = 89
        BevelWidth = 3
        Enabled = False
        TabOrder = 4
        Visible = False
        object DBGCTA: TDBGrid
          Left = 5
          Top = 6
          Width = 273
          Height = 76
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 50
        Width = 176
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Carteira'
        OnClick = CBPagamentoClick
        OnExit = CBPagamentoExit
        OnKeyPress = CBPagamentoKeyPress
        Items.Strings = (
          'teste')
      end
      inline FrmConta: TFrmBusca
        Left = 7
        Top = 82
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Width = 164
          Caption = 'Conta para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 426
          Top = 39
        end
        inherited LUZMINUS: TShape
          Left = 450
          Top = 39
        end
        inherited EdDescricao: TFlatEdit
          Left = 2
          Top = 42
          Width = 423
          TabOrder = 1
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
          TabOrder = 2
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
          TabOrder = 3
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 151
          OnKeyPress = FrmContaEDCodigoKeyPress
        end
      end
      object GBFRETE: TGroupBox
        Left = 10
        Top = 150
        Width = 465
        Height = 105
        Caption = 'DADOS REFERENTE AO FRETE'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Visible = False
        object Label45: TLabel
          Left = 25
          Top = 60
          Width = 108
          Height = 16
          Caption = 'Pagamento em :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object PBanco1: TPanel
          Left = 158
          Top = 11
          Width = 283
          Height = 89
          BevelWidth = 3
          Enabled = False
          TabOrder = 2
          Visible = False
          object DBGCTA1: TDBGrid
            Left = 5
            Top = 6
            Width = 273
            Height = 76
            Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
            Color = 16121836
            Ctl3D = False
            DataSource = DMBANCO.DWCtaCor
            Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
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
        inline FrmFormPagFrete: TFrmBusca
          Left = 23
          Top = 17
          Width = 418
          Height = 43
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Width = 139
            Caption = 'Forma de Pagamento'
          end
          inherited LUZOPEN: TShape
            Left = 393
            Width = 23
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 313
          end
          inherited EdDescricao: TFlatEdit
            Width = 317
            ColorFlat = clWhite
          end
          inherited BTNOPEN: TBitBtn
            Left = 392
            OnClick = FrmFormPagFreteBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 310
            Visible = False
          end
          inherited EDCodigo: TFlatEdit
            ColorFlat = clLightGreen
            OnKeyDown = FrmFormPagFreteEDCodigoKeyDown
          end
        end
        object CBPagamento1: TComboBox
          Left = 26
          Top = 75
          Width = 125
          Height = 24
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = 'Carteira'
          Items.Strings = (
            'Carteira'
            'Cheque'
            'Cart'#227'o')
        end
        object PMostraCta1: TPanel
          Left = 156
          Top = 65
          Width = 286
          Height = 36
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 3
          Visible = False
          object DBText4: TDBText
            Left = 8
            Top = 7
            Width = 41
            Height = 12
            Alignment = taRightJustify
            DataField = 'NUMAGENCIA'
            DataSource = DMBANCO.DWCtaCor
          end
          object DBText5: TDBText
            Left = 8
            Top = 21
            Width = 181
            Height = 17
            DataField = 'DESCBANCO'
            DataSource = DMBANCO.DWCtaCor
          end
          object Label46: TLabel
            Left = 51
            Top = 7
            Width = 6
            Height = 12
            Caption = '/'
          end
          object DBText6: TDBText
            Left = 58
            Top = 7
            Width = 105
            Height = 12
            DataField = 'NUMCTACOR'
            DataSource = DMBANCO.DWCtaCor
          end
        end
      end
      object BtnMoedaOK: TBitBtn
        Left = 150
        Top = 150
        Width = 75
        Height = 25
        Caption = '&Ok'
        TabOrder = 6
        OnClick = BtnMoedaOKClick
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
      object BtnMoedaCancelar: TBitBtn
        Left = 262
        Top = 150
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 7
        OnClick = BtnMoedaCancelarClick
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
      object CBGeraFinanceiro: TCheckBox
        Left = 162
        Top = 101
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object PComissaoBanca: TPanel [3]
    Left = 248
    Top = 264
    Width = 297
    Height = 83
    Color = clActiveCaption
    TabOrder = 7
    object FashionPanel8: TFashionPanel
      Left = 2
      Top = 2
      Width = 293
      Height = 79
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Comiss'#227'o'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object btComBanca: TBitBtn
        Left = 160
        Top = 36
        Width = 81
        Height = 25
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btComBancaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object EdVlrComissaoBanca: TColorEditFloat
        Left = 62
        Top = 33
        Width = 87
        Height = 25
        Color = 14277119
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 8421631
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  inherited PComunica: TPanel [4]
    Left = 120
    Top = 251
    Width = 545
    Height = 121
  end
  object PTroco: TPanel [5]
    Left = 248
    Top = 224
    Width = 289
    Height = 161
    Caption = 'PTroco'
    Color = clGradientActiveCaption
    TabOrder = 3
    object FashionPanel9: TFashionPanel
      Left = 2
      Top = 2
      Width = 285
      Height = 157
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Pedido de Venda'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label87: TLabel
        Left = 10
        Top = 40
        Width = 96
        Height = 16
        Caption = 'Valor Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label88: TLabel
        Left = 10
        Top = 72
        Width = 83
        Height = 16
        Caption = 'Valor Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label89: TLabel
        Left = 10
        Top = 104
        Width = 45
        Height = 16
        Caption = 'Troco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label90: TLabel
        Left = 252
        Top = 144
        Width = 29
        Height = 10
        Caption = '<esc>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdValorPedido: TColorEditFloat
        Left = 182
        Top = 42
        Width = 83
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorPago: TColorEditFloat
        Left = 182
        Top = 74
        Width = 83
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorTroco: TColorEditFloat
        Left = 182
        Top = 106
        Width = 83
        Height = 22
        Color = 12713921
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  inherited PConsulta: TPanel [6]
    Left = 13
    Top = 51
    Width = 724
    Height = 548
    inherited GroupBox1: TGroupBox
      inherited EdNome: TFlatEdit
        Left = 112
        Width = 529
        TabOrder = 1
      end
      inherited BtnSelecionar: TBitBtn
        TabOrder = 2
      end
      object EdNumPed: TFlatEdit
        Left = 4
        Top = 19
        Width = 105
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#186' Ped'
        OnKeyDown = EdNumPedKeyDown
      end
    end
    object PFiltrarParcelas: TPanel [1]
      Left = 224
      Top = 152
      Width = 313
      Height = 193
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 4
      Visible = False
      object LbDataInicio: TLabel
        Left = 18
        Top = 108
        Width = 61
        Height = 14
        Caption = 'Data Inicio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LbDataFim: TLabel
        Left = 138
        Top = 108
        Width = 51
        Height = 14
        Caption = 'Data Fim:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LBCodPessoa: TLabel
        Left = 299
        Top = 110
        Width = 5
        Height = 13
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRelDanfe: TLabel
        Left = 18
        Top = 12
        Width = 203
        Height = 19
        Caption = 'Configurar Relat'#243'rio NFe'
        Font.Charset = ANSI_CHARSET
        Font.Color = 5902352
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RBDataFiltro: TcxRadioGroup
        Left = 16
        Top = 48
        Width = 289
        Height = 49
        Hint = 'Selecione o por qual tipo de Data deseja filtrar'
        Alignment = alTopLeft
        Caption = 'Filtro'
        ParentFont = False
        ParentShowHint = False
        Properties.Columns = 3
        Properties.Items = <>
        ShowHint = True
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.TransparentBorder = False
        TabOrder = 0
      end
      object EDDataInicio: TcxTextEdit
        Left = 16
        Top = 124
        Width = 89
        Height = 21
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 10
        TabOrder = 1
        OnExit = EDDataInicioExit
        OnKeyPress = EDDataInicioKeyPress
      end
      object EDDataFim: TcxTextEdit
        Left = 136
        Top = 124
        Width = 97
        Height = 21
        Properties.Alignment.Horz = taRightJustify
        Properties.MaxLength = 10
        TabOrder = 2
        OnExit = EDDataFimExit
        OnKeyPress = EDDataFimKeyPress
      end
      object BtnFecharPainelFiltro: TtfXPButton
        Left = 289
        Top = 4
        Width = 18
        Height = 15
        Hint = 'Fechar Painel de Filtro'
        OnClick = BtnFecharPainelFiltroClick
        ShowHint = True
        Colors.BorderColor = 16772332
        Colors.BackColor = 16772332
        Colors.BackHiColor = 16772332
        Colors.ShadowColor = 16772332
        Glyph.Data = {
          07544269746D617006030000424D060300000000000036000000280000000F00
          00000F0000000100180000000000D0020000C40E0000C40E0000000000000000
          0000996733996733996733996733996733996733996733996733996733996733
          996733996733996733996733996733000000996733B99D94B99D94B99D94B99D
          94B99D94B99D94B99D94B99D94B99D94B99D94B99D94B99D94B99D9499673300
          0000996733B99D94996733996733996733996733996733996733996733996733
          996733996733996733B99D94996733000000996733B99D949967339967339967
          33996733996733996733996733996733996733996733996733B99D9499673300
          0000996733B99D94996733996733000000996733996733996733996733996733
          000000996733996733B99D94996733000000996733B99D949967339967339967
          33000000996733996733996733000000996733996733996733B99D9499673300
          0000996733B99D94996733996733996733996733000000996733000000996733
          996733996733996733B99D94996733000000996733B99D949967339967339967
          33996733996733000000996733996733996733996733996733B99D9499673300
          0000996733B99D94996733996733996733996733000000996733000000996733
          996733996733996733B99D94996733000000996733B99D949967339967339967
          33000000996733996733996733000000996733996733996733B99D9499673300
          0000996733B99D94996733996733000000996733996733996733996733996733
          000000996733996733B99D94996733000000996733B99D949967339967339967
          33996733996733996733996733996733996733996733996733B99D9499673300
          0000996733B99D94996733996733996733996733996733996733996733996733
          996733996733996733B99D94996733000000996733B99D94B99D94B99D94B99D
          94B99D94B99D94B99D94B99D94B99D94B99D94B99D94B99D94B99D9499673300
          0000996733996733996733996733996733996733996733996733996733996733
          996733996733996733996733996733000000}
        GlyphLayout = glLeft
      end
      object BtnVisualizarRel: TBitBtn
        Left = 215
        Top = 159
        Width = 86
        Height = 25
        BiDiMode = bdLeftToRight
        Caption = '&Visualizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object rbOrdenarNfe: TcxRadioGroup
        Left = 18
        Top = 150
        Width = 185
        Height = 36
        Alignment = alTopLeft
        Caption = 'Ordenar'
        Properties.Columns = 2
        Properties.Items = <>
        TabOrder = 5
      end
      object cbMiniDanfe: TcxCheckBox
        Left = 242
        Top = 109
        Width = 61
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = 'DANFE'
        TabOrder = 4
      end
      object cbNFeClientes: TcxCheckBox
        Left = 242
        Top = 129
        Width = 61
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = 'Clientes'
        TabOrder = 7
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid [2]
      Top = 137
      Height = 400
      TabOrder = 3
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
    end
    inherited Painel: TPanel [3]
      TabOrder = 2
      inherited BtnNovo: TBitBtn
        Width = 105
      end
      inherited BtnApagar: TBitBtn
        Left = 106
        Width = 105
        Enabled = False
      end
      inherited BtnConsultar: TBitBtn
        Left = 210
        Width = 105
      end
      inherited BtnRelatorio: TBitBtn
        Left = 314
        Width = 105
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 418
        Width = 105
      end
      object BtnFechaPed: TBitBtn
        Left = 522
        Top = 2
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha o pedido selecionado na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnFechaPedClick
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000C0C0C000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00C0C0C00000C0C0C0C0C0C000FF0000FF0000FF
          0000FF0000FF0000000000000000000000000000FF0000FF0000FF0000FF0000
          FF00C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000000000FF0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000FF00000000000000000000
          00000000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          BFBFBFBFBFBFBFBFBF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF
          00BFBFBFBFBFBFC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0BFBFBFBFBFBFBFBF
          BFC0C0C000FF0000000000000000000000000000FF00BFBFBFBFBFBFBFBFBFBF
          BFBFC0C0C0C0C0C00000C0C0C0C0C0C000FF0000FF0000FF0000FF0000FF0000
          FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0007F0000FF0000FF0000FF00000000000000
          00FF0000FF0000FF00007F00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C08080807F7F7F7F7F00007F0000FF0000FF0000FF0000FF007F7F007F7F
          7F000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          80FF00007F00007F000000FF0000FF007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F
          00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F00007F00007F0000
          7F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0808080808080FF00007F00007F00007F00007F00007F00007F00007F7F
          7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          807F0000FF00007F00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080807F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F8080807F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      end
    end
    object GBFiltragem: TGroupBox
      Left = 2
      Top = 96
      Width = 697
      Height = 57
      Caption = 'Filtragem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object CbFiltroPedidosFechados: TCheckBox
        Left = 22
        Top = 19
        Width = 201
        Height = 14
        Cursor = crHandPoint
        Caption = 'Mostrar Pedidos Fechados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = CbFiltroPedidosFechadosClick
      end
      object cxGroupBox1: TcxGroupBox
        Left = 499
        Top = 10
        Width = 198
        Height = 41
        Alignment = alTopLeft
        Caption = 'Filtrar pela data'
        ParentFont = False
        TabOrder = 1
        object btnApagarFiltroData: TSpeedButton
          Left = 167
          Top = 15
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = 'Clique aqui para limpar o filtro por datas'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000F4F4F4E5E5E5
            D0D0D0C1C1C1B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
            B9B9B9B9B9B9B9B9B9B9C1C1C1D0D0D00000F2F2F2FCFCFCFCFCFCFCFCFCFCFC
            FCFCFCFCFCFCFCC3C3C38080807B7B7BB9B9B992ADE0225AC20442BA1E58C083
            A3DAFCFCFCC1C1C10000F1F1F1FCFCFCFCFCFCFCFCFCE4E4E4F3F3F3FAFAFA89
            8989BDBDBDB2B2B2405F932664CA2076E60478EA0063DD064CBE83A3DAB9B9B9
            0000F1F1F1FCFCFCFCFCFCB1B1B16D6D6D727272EEEEEE8F8F8FCBCBCBC7C7C7
            0E47B1629DF4177EFF0075F80075EE0267E11D58BFB9B9B90000F1F1F1FCFCFC
            D0D0D0BCBCBCDEDEDEA6A6A6868686838383C4C4C4C2C2C20341BCAECDFEFFFF
            FFFFFFFFFFFFFF177EEF0442BAB9B9B90000F1F1F1FCFCFCD3D3D3A4A4A4D5D5
            D5C5C5C5CBCBCBD1D1D1C9C9C9C7C7C71D55BC8DB5F64C92FF1076FF2086FF3F
            8AEB235AC0B9B9B90000F1F1F1FCFCFCFCFCFCD2D2D2C5C5C5C1C1C1C5C5C5C7
            C7C7AAAAAAA7A7A77490C23A74D18DB5F7B8D6FE71A8F52D6CCB91ACE0B9B9B9
            0000F1F1F1B2B2B2999999A4A4A4CFCFCFC6C6C6CCCCCCB2B2B2E1E1E1E0E0E0
            A5A5A57390C22159C00441BC0E47B0375690737373B9B9B90000F1F1F1BFBFBF
            E2E2E2D2D2D2C6C6C6CDCDCDB1B1B1E0E0E0FCFCFCFCFCFCE1E1E1A8A8A8C2C2
            C2B7B7B7C0C0C0D2D2D25F5F5FB9B9B90000F1F1F1C2C2C2E9E9E9D6D6D6C9C9
            C9CECECEA5A5A5DCDCDCFCFCFCFCFCFCE1E1E1ACACACC4C4C4BABABAC6C6C6DD
            DDDD696969B9B9B90000F1F1F1D1D1D1C9C9C9C2C2C2D8D8D8CDCDCDBCBCBC9D
            9D9DD8D8D8DADADAA5A5A5C3C3C3C2C2C2CDCDCD949494929292999999B9B9B9
            0000F1F1F1FCFCFCFCFCFCDFDFDFD4D4D4CCCCCCC9C9C9BABABA9C9C9CA1A1A1
            C2C2C2C6C6C6C1C1C1B7B7B7C0C0C0FCFCFCFCFCFCB9B9B90000F1F1F1FCFCFC
            E2E2E2C2C2C2DCDCDCD4D4D4D9D9D9DBDBDBD6D6D6D4D4D4D9D9D9D2D2D2CBCB
            CBC8C8C8797979B6B6B6FCFCFCB9B9B90000F1F1F1FCFCFCE5E5E5DCDCDCEDED
            EDDBDBDBC4C4C4BCBCBCD6D6D6D4D4D4AEAEAEAFAFAFCBCBCBE7E7E7B7B7B7C4
            C4C4FCFCFCB9B9B90000F2F2F2FCFCFCFCFCFCE0E0E0CCCCCCCFCFCFF5F5F5C7
            C7C7DEDEDEDDDDDDB7B7B7F3F3F3B4B4B4A8A8A8C5C5C5FCFCFCFCFCFCC1C1C1
            0000F4F4F4FCFCFCFCFCFCFCFCFCF4F4F4F8F8F8FCFCFCCBCBCBE5E5E5E4E4E4
            B3B3B3FAFAFAF8F8F8EFEFEFFCFCFCFCFCFCFCFCFCD0D0D00000F8F8F8FCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCE8E8E8D2D2D2D1D1D1E3E3E3FCFCFCFCFC
            FCFCFCFCFCFCFCFCFCFCFCFCFCE5E5E50000FBFBFBF8F8F8F4F4F4F2F2F2F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
            F1F1F2F2F2F4F4F40000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnApagarFiltroDataClick
        end
        object EdDtFiltro01: TMaskEdit
          Left = 10
          Top = 16
          Width = 75
          Height = 22
          Cursor = crHandPoint
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '  /  /    '
          OnKeyPress = EdDtFiltro01KeyPress
        end
        object edDtFiltro02: TMaskEdit
          Left = 90
          Top = 16
          Width = 76
          Height = 22
          Cursor = crHandPoint
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Text = '  /  /    '
          OnKeyPress = edDtFiltro02KeyPress
        end
      end
      object ControleFrete: TGroupBox
        Left = 216
        Top = 8
        Width = 249
        Height = 41
        Caption = 'Controle Frete'
        TabOrder = 2
        object Entregue: TRadioButton
          Left = 8
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Entregue'
          TabOrder = 0
        end
        object Entregar: TRadioButton
          Left = 88
          Top = 16
          Width = 97
          Height = 17
          Caption = 'P/Entregar'
          TabOrder = 1
        end
        object Todos: TRadioButton
          Left = 184
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Todos'
          TabOrder = 2
        end
      end
    end
  end
  inherited PCadastro: TPanel
    Left = 13
    Top = 51
    Width = 777
    Height = 547
    Color = clWhite
    object Label2: TLabel [0]
      Left = 623
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
    object PFisco: TPanel [1]
      Left = 400
      Top = 32
      Width = 368
      Height = 252
      Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
      BevelWidth = 2
      Color = 14933717
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnExit = PFiscoExit
      object Label47: TLabel
        Left = 64
        Top = 165
        Width = 52
        Height = 13
        Caption = 'VLR. IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 8
        Width = 337
        Height = 111
        Caption = 'DADOS DE FRETE'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label43: TLabel
          Left = 8
          Top = 38
          Width = 100
          Height = 13
          Caption = 'CONHECIMENTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 152
          Top = 37
          Width = 70
          Height = 13
          Caption = 'VLR. FRETE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object EdFisVlrFrete: TColorEditFloat
          Left = 120
          Top = 50
          Width = 101
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit1: TDBColorEdit
          Left = 8
          Top = 50
          Width = 101
          Height = 22
          DataField = 'NUMCONHEC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
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
          TabOrder = 2
        end
        inline FrmTransp: TFrmBusca
          Left = 6
          Top = 75
          Width = 326
          Height = 33
          Color = 14933717
          ParentColor = False
          TabOrder = 3
          inherited LTextoBusca: TLabel
            Width = 102
            Height = 14
            Caption = 'Transportadora:'
            Font.Height = -12
          end
          inherited LUZOPEN: TShape
            Left = 308
            Width = 18
            Height = 17
            Visible = True
          end
          inherited LUZMINUS: TShape
            Left = 106
          end
          inherited EdDescricao: TFlatEdit
            Left = 71
            Top = 14
            Width = 234
          end
          inherited BTNOPEN: TBitBtn
            Left = 306
            Top = 14
            OnClick = FrmTranspBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 103
            Visible = False
          end
          inherited EDCodigo: TFlatEdit
            Top = 14
            Width = 69
            OnKeyDown = FrmTranspEDCodigoKeyDown
          end
        end
      end
      object BitBtn6: TBitBtn
        Left = 228
        Top = 216
        Width = 88
        Height = 25
        Cancel = True
        Caption = '&Cancelar'
        TabOrder = 2
        OnClick = BitBtn6Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn10: TBitBtn
        Left = 48
        Top = 216
        Width = 88
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
          'izadas'
        Caption = '&Salvar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn10Click
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
      object EdVlrIpi: TColorEditFloat
        Left = 16
        Top = 27
        Width = 101
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmCFOP: TFrmBusca
        Left = 22
        Top = 123
        Width = 326
        Height = 33
        Color = 14933717
        ParentColor = False
        TabOrder = 4
        inherited LTextoBusca: TLabel
          Width = 46
          Height = 14
          Caption = 'C.F.O.P.'
          Font.Height = -12
        end
        inherited LUZOPEN: TShape
          Left = 308
          Width = 18
          Height = 17
          Visible = True
        end
        inherited LUZMINUS: TShape
          Left = 106
        end
        inherited EdDescricao: TFlatEdit
          Left = 71
          Top = 14
          Width = 234
        end
        inherited BTNOPEN: TBitBtn
          Left = 306
          Top = 14
          OnClick = FrmCFOPBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 103
          Top = -30
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 14
          Width = 69
        end
      end
    end
    inherited Panel1: TPanel [2]
      Width = 407
      TabOrder = 2
      object Shape3: TShape [0]
        Left = 198
        Top = 3
        Width = 1
        Height = 23
      end
      object Shape5: TShape [1]
        Left = 196
        Top = 7
        Width = 1
        Height = 16
      end
      object Shape6: TShape [2]
        Left = 200
        Top = 7
        Width = 1
        Height = 16
      end
      inherited BtnCancelar: TBitBtn [3]
        Left = 97
      end
      inherited BtnGravar: TBitBtn [4]
      end
      object BtnDadosAdic: TBitBtn
        Left = 204
        Top = 2
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
          ' o painel de consulta'
        Caption = '&FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnDadosAdicClick
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B8030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6060606060606060
          6060606060606060606060606060606060606060606060606060606060606060
          6060FFFFFFFFFFFF0000FFFFFF60606060CFDF009FCF2090C020A0CF20A0CF20
          A0CF30AFCF30AFCF30BFDF40BFD040BFD040BFD06F9FBF606060FFFFFFFFFFFF
          0000FFFFFF409FBF60CFDF0F70A02F90BF2F90BF2F90BF2F90BF2F90BF2F90BF
          2F90BF2F90BF2F90BF2F90BF2F90BF4080A0606060FFFFFF0000FFFFFF409FBF
          60CFDF2F8FB0B0FFFFB0FFFFB0FFFFAFFFFF90EFF090EFF090EFF0AFFFFFAFFF
          FFAFFFFF40AFC0606060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CF70B0CFC0FF
          FFC0FFFFCFCFAFA0604FA0604FA0604F506F6F10A0D0B0FFFFB0FFFF4080A060
          6060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CFBFE0EFD0FFFFCFCFAFAF40009F
          30009F3000A03F10BF5030706F6F40BFD0B0FFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF409FBF40AFC0BFE0EFE0F0E0AF4000AF4000904F00106000AF4000
          A03F008F502F30809FB0FFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B0
          30AFCFCFE0EFF0D090BF5000D06F006F70000F8000BF6F00A05F004F70007F70
          4F8FDFEF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B030AFCFD0E0EFE0AF
          60D07000508F00AF8F00E09000EF80001F70000060004F5F00A0E0FF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF3090B02F90BFD0E0EFF0EFB08F8F0020BF402F
          C050FFCF6FFF9000AF8F001F700030702FEFFFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF308FB01F90BFD0E0EFFFFFEF20BF404FD070AFEFAFCFF0B0F0B04F
          D090004F7000AFCFAFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF308FB0
          0080B0D0E0EFFFFFFFBFEFC090D070CFF0B0D0E0904FC050EF8000CFA050FFFF
          FFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF2F8FB00080B0D0E0EFFFFF
          FFFFFFFFF0F0CFD0E0908FDF806FCF6FF0D090FFFFFFFFFFFFFFFFFF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF2F8FB0007FB0D0E0EFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBF606060FFFFFFFFFFFF
          0000FFFFFF308FB000609F1F8FB01F90BF1F90BF1F90BF1F90BF1F90BF1F90BF
          1F90BF1F90BF1F90BF1F90BF6F9FBF606060FFFFFFFFFFFF0000FFFFFFFFFFFF
          5090C0B0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DF
          EFBFE0F06F9FBFFFFFFFFFFFFFFFFFFF0000}
      end
    end
    object EdNumeroPedido: TEdit [3]
      Left = 649
      Top = 3
      Width = 128
      Height = 24
      Color = 16775658
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    inherited Panel4: TPanel [4]
      Width = 773
      Height = 507
      object Label10: TLabel
        Left = 272
        Top = 68
        Width = 161
        Height = 16
        Caption = 'Forma de Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 12
        Top = 108
        Width = 39
        Height = 16
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 92
        Top = 108
        Width = 45
        Height = 16
        Caption = 'Desc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 202
        Top = 108
        Width = 67
        Height = 16
        Caption = 'Prz Entr.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 275
        Top = 108
        Width = 33
        Height = 16
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 10
        Top = 69
        Width = 75
        Height = 16
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object luzvendedor: TShape
        Left = 247
        Top = 82
        Width = 22
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Visible = False
      end
      object luzformpag: TShape
        Left = 449
        Top = 82
        Width = 22
        Height = 21
        Brush.Color = clRed
        Pen.Color = clRed
        Visible = False
      end
      object LVlrComissao: TLabel
        Left = 651
        Top = 2
        Width = 118
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr. Comiss'#227'o..: 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object LDescPer: TLabel
        Left = 92
        Top = 127
        Width = 14
        Height = 13
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LDescMoe: TLabel
        Left = 145
        Top = 127
        Width = 8
        Height = 13
        Caption = '$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 618
        Top = 32
        Width = 15
        Height = 19
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelValorFrete: TLabel
        Left = 646
        Top = 76
        Width = 34
        Height = 13
        Caption = 'Frete:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LabelValorOutros: TLabel
        Left = 709
        Top = 76
        Width = 43
        Height = 13
        Caption = 'Outros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LabelValorIcmsSubstituicao: TLabel
        Left = 700
        Top = 109
        Width = 73
        Height = 13
        Caption = 'Icms Subst.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LabelValorIpi: TLabel
        Left = 646
        Top = 109
        Width = 44
        Height = 13
        Caption = 'Vlr. IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object PSelectCliente: TPanel
        Left = 10
        Top = 21
        Width = 535
        Height = 50
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        OnExit = PSelectClienteExit
        object Label4: TLabel
          Left = 4
          Top = 15
          Width = 48
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 60
          Top = 15
          Width = 67
          Height = 13
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 172
          Top = 15
          Width = 41
          Height = 13
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LUZOPEN: TShape
          Left = 508
          Top = 26
          Width = 22
          Height = 21
          Brush.Color = clRed
          Pen.Color = clRed
          Visible = False
        end
        object LAtacadista: TLabel
          Left = 434
          Top = 15
          Width = 69
          Height = 13
          Caption = 'Atacadista'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object LSelectPessoa: TLabel
          Left = 2
          Top = 0
          Width = 178
          Height = 13
          Caption = 'Selecione uma pessoa para o pedido:'
        end
        object PPesCad: TPanel
          Left = 59
          Top = 28
          Width = 446
          Height = 22
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 1
          object DbCpf: TEdit
            Left = 0
            Top = 0
            Width = 111
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DbNomeCli: TEdit
            Left = 112
            Top = 0
            Width = 334
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object EdCodCli: TEdit
          Left = 4
          Top = 28
          Width = 54
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, informe o cliente padr'#227'o consumidor'
          Color = 16777192
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '0'
          OnExit = EdCodCliExit
          OnKeyDown = EdCodCliKeyDown
        end
        object EdCPF: TEdit
          Left = 59
          Top = 28
          Width = 111
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16777192
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object EdNomeCli: TEdit
          Left = 171
          Top = 28
          Width = 334
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16777192
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object BtnProcPess: TBitBtn
          Left = 507
          Top = 28
          Width = 22
          Height = 21
          TabOrder = 2
          OnClick = BtnProcPessClick
          OnEnter = BtnProcPessEnter
          OnExit = EdCodCliExit
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
      end
      object PCadVendedor: TPanel
        Left = 10
        Top = 84
        Width = 215
        Height = 22
        BevelOuter = bvNone
        Color = clWhite
        Enabled = False
        TabOrder = 0
        Visible = False
        OnExit = PCadVendedorExit
        object dbvendedor: TEdit
          Left = 0
          Top = 0
          Width = 209
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object PGarantia: TPanel
        Left = 481
        Top = 104
        Width = 120
        Height = 41
        BevelOuter = bvNone
        Color = 13750737
        TabOrder = 12
        object CBGarantia: TCheckBox
          Left = 5
          Top = 16
          Width = 97
          Height = 17
          Caption = 'GARANTIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object EDCODFORMPAG: TColorEditFloat
        Left = 272
        Top = 85
        Width = 33
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '0'
        OnKeyDown = EDCODFORMPAGKeyDown
        EditType = fltInteger
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDFORMPAG: TColorEditFloat
        Left = 303
        Top = 85
        Width = 146
        Height = 19
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 14
        Text = '0,00'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnProcFormPag: TBitBtn
        Left = 449
        Top = 85
        Width = 20
        Height = 19
        Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnProcFormPagClick
        OnEnter = BtnProcFormPagEnter
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdCodVend: TColorEditFloat
        Left = 10
        Top = 84
        Width = 68
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnKeyDown = EdCodVendKeyDown
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDNOMEVENDEDOR: TColorEditFloat
        Left = 79
        Top = 84
        Width = 170
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        Text = '0,00'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnProcVend: TBitBtn
        Left = 246
        Top = 84
        Width = 22
        Height = 20
        TabOrder = 3
        OnClick = BtnProcVendClick
        OnEnter = BtnProcVendEnter
        OnExit = BtnProcVendExit
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdDescMoeda: TFloatEdit
        Left = 154
        Top = 123
        Width = 43
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '0,00'
        OnEnter = EdDescMoedaEnter
        OnExit = EdDescMoedaExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
      object DBPRAZOENT: TDBColorEdit
        Left = 200
        Top = 123
        Width = 70
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo: TMemo
        Left = 312
        Top = 112
        Width = 166
        Height = 48
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBDATA: TColorMaskEdit
        Left = 10
        Top = 123
        Width = 78
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 6
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorPed: TColorEditFloat
        Left = 639
        Top = 27
        Width = 130
        Height = 25
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Text = '0,00'
        OnExit = EdValorPedExit
        OnKeyPress = EdValorPedKeyPress
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorOutros: TColorEditFloat
        Left = 700
        Top = 91
        Width = 73
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 16
        Text = '0,00'
        OnExit = EdValorOutrosExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValoIcmsSubstituicao: TColorEditFloat
        Left = 700
        Top = 124
        Width = 73
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        Text = '0,00'
        OnExit = EdValoIcmsSubstituicaoExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorIpi: TColorEditFloat
        Left = 646
        Top = 124
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 18
        Text = '0,00'
        OnExit = EdValorIpiExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDDescPed: TFloatEdit
        Left = 106
        Top = 123
        Width = 43
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '0,00'
        OnEnter = EDDescPedEnter
        OnExit = EDDescPedExit
        OnKeyPress = EDDescPedKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
      object EdValorFrete: TColorEditFloat
        Left = 646
        Top = 91
        Width = 50
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 19
        Text = '0,00'
        OnExit = EdValorFreteExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object FPLista: TFashionPanel
        Left = 5
        Top = 145
        Width = 764
        Height = 360
        BevelOuter = bvNone
        Caption = 'FPLista'
        Color = 14933717
        TabOrder = 13
        OnEnter = FPListaEnter
        OnExit = FPListaExit
        RoundRect = True
        About = 'Orion Software'
        ShadowDepth = 2
        ShadowSpace = 5
        ShowShadow = False
        ShadowColor = clBlack
        TitleColor = 12615680
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Title = 'Lista de Produtos do Pedido:'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object PConvertEmb: TPanel
          Left = 313
          Top = 17
          Width = 333
          Height = 125
          BevelWidth = 3
          Color = clBackground
          TabOrder = 3
          Visible = False
          OnExit = EDQuantidadeExit
          object FashionPanel4: TFashionPanel
            Left = 4
            Top = 4
            Width = 325
            Height = 117
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 0
            RoundRect = True
            About = 'Orion Software'
            ShadowDepth = 2
            ShadowSpace = 5
            ShowShadow = False
            ShadowColor = clBlack
            TitleColor = clSkyBlue
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            Title = 'Convers'#227'o Unit'#225'ria para Embalagens'
            LineWidth = 0
            LineColor = clBlack
            Theme = ttCustom
            object lbQntEmb: TLabel
              Left = 10
              Top = 22
              Width = 36
              Height = 16
              Caption = 'Qnt.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label82: TLabel
              Left = 11
              Top = 67
              Width = 77
              Height = 16
              Caption = 'Qnt. Emb.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label83: TLabel
              Left = 128
              Top = 22
              Width = 64
              Height = 16
              Caption = 'Unidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbUnidadeVendaEmbalagem: TLabel
              Left = 128
              Top = 70
              Width = 114
              Height = 16
              Caption = 'Unidade Venda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnAbrirUnidades: TcxButton
              Left = 298
              Top = 25
              Width = 19
              Height = 18
              Hint = 'Visualizar Unidades'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = False
              OnClick = btnAbrirUnidadesClick
              Layout = blGlyphBottom
              LookAndFeel.Kind = lfUltraFlat
              UseSystemPaint = False
            end
          end
          object edQntEmb: TColorEditFloat
            Left = 14
            Top = 43
            Width = 105
            Height = 26
            Color = 15263999
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
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
          object edQntUnitEmb: TColorEditFloat
            Left = 16
            Top = 91
            Width = 105
            Height = 26
            Color = 16053503
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object cxButton1: TcxButton
            Left = 288
            Top = 90
            Width = 34
            Height = 25
            Hint = 'Pressione para fechar pagamento m'#250'ltiplo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
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
          object CBUnidEmb: TDBLookupComboBox
            Left = 131
            Top = 43
            Width = 145
            Height = 24
            Color = 16053503
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COD_UNIDADE'
            ListField = 'SIGLA_UNID'
            ListSource = DMESTOQUE.DSUnidade
            ParentFont = False
            TabOrder = 2
          end
          object cbUnidVendaFixo: TDBLookupComboBox
            Left = 131
            Top = 91
            Width = 145
            Height = 24
            Color = 16053503
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COD_UNIDADE'
            ListField = 'SIGLA_UNID'
            ParentFont = False
            TabOrder = 5
            TabStop = False
          end
        end
        object PConversaoUnitaria: TPanel
          Left = 338
          Top = 26
          Width = 341
          Height = 121
          BevelWidth = 3
          Color = clBackground
          TabOrder = 4
          Visible = False
          OnExit = EDQuantidadeExit
          object FPConversaoUnitaria: TFashionPanel
            Left = 4
            Top = 4
            Width = 333
            Height = 113
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 2
            RoundRect = True
            About = 'Orion Software'
            ShadowDepth = 2
            ShadowSpace = 5
            ShowShadow = False
            ShadowColor = clBlack
            TitleColor = clSkyBlue
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            Title = 'Convers'#227'o Unit'#225'ria'
            LineWidth = 0
            LineColor = clBlack
            Theme = ttCustom
            object lbConversaoUnitVenda: TLabel
              Left = 170
              Top = 22
              Width = 36
              Height = 16
              Caption = 'Qnt.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbConverUnitariaVenda: TLabel
              Left = 8
              Top = 22
              Width = 24
              Height = 16
              Caption = 'De:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbConversaoUnitariaPara: TLabel
              Left = 8
              Top = 64
              Width = 38
              Height = 16
              Caption = 'Para:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnVisualizarConvUnit: TcxButton
              Left = 306
              Top = 25
              Width = 19
              Height = 18
              Hint = 'Visualizar Convers'#245'es Unit'#225'rias'
              Caption = '>>'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = False
              OnClick = btnVisualizarConvUnitClick
              Layout = blGlyphBottom
              LookAndFeel.Kind = lfUltraFlat
              UseSystemPaint = False
            end
          end
          object edQntConvertVenda: TColorEditFloat
            Left = 174
            Top = 43
            Width = 105
            Height = 26
            Color = 15263999
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQntConvert: TColorEditFloat
            Left = 173
            Top = 84
            Width = 106
            Height = 26
            Color = 16053503
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
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
          object btnOkConversaoUnitaria: TcxButton
            Left = 293
            Top = 82
            Width = 34
            Height = 25
            Hint = 'Pressione para fechar pagamento m'#250'ltiplo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
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
          object cbConvUnitVendaConv: TDBLookupComboBox
            Left = 11
            Top = 86
            Width = 145
            Height = 24
            Color = 16053503
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COD_UNIDADE'
            ListField = 'DESC_UNID'
            ListFieldIndex = 1
            ParentFont = False
            TabOrder = 1
          end
          object cbUnidConvVenda: TDBLookupComboBox
            Left = 11
            Top = 46
            Width = 145
            Height = 24
            Color = 16053503
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COD_UNIDADE'
            ListField = 'DESC_UNID'
            ListFieldIndex = 1
            ListSource = DMESTOQUE.DSUnidade
            ParentFont = False
            TabOrder = 0
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 21
          Width = 759
          Height = 143
          BevelInner = bvLowered
          Color = 14933717
          TabOrder = 0
          OnEnter = Panel2Enter
          object Label18: TLabel
            Left = 345
            Top = 9
            Width = 54
            Height = 16
            Caption = 'Quant.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 419
            Top = 9
            Width = 68
            Height = 16
            Caption = 'Vlr. Unit.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 508
            Top = 9
            Width = 45
            Height = 16
            Caption = 'Desc.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 621
            Top = 9
            Width = 41
            Height = 16
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LEstoque: TLabel
            Left = 665
            Top = 2
            Width = 87
            Height = 16
            Hint = 'Estoque F'#237'sico'
            Alignment = taCenter
            AutoSize = False
            Caption = '000000000000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object LLocalEdit: TLabel
            Left = 557
            Top = 66
            Width = 29
            Height = 13
            Caption = 'Local:'
            Visible = False
          end
          object pPesqBarraInterno: TPanel
            Left = 29
            Top = 7
            Width = 289
            Height = 47
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 1
            object Label15: TLabel
              Left = 4
              Top = 1
              Width = 82
              Height = 16
              Caption = 'C'#243'd. Barra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object PCodInterno: TPanel
              Left = 165
              Top = 0
              Width = 115
              Height = 41
              BevelOuter = bvNone
              Color = 14933717
              Enabled = False
              TabOrder = 1
              Visible = False
              object Label17: TLabel
                Left = 3
                Top = 3
                Width = 108
                Height = 16
                Caption = 'Contr. Interno:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodInterno: TColorEditFloat
                Left = 2
                Top = 19
                Width = 113
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0'
                OnExit = EDCodInternoExit
                OnKeyDown = EDCodInternoKeyDown
                EditType = fltString
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodFab: TPanel
              Left = 167
              Top = 0
              Width = 115
              Height = 41
              BevelOuter = bvNone
              Color = 14933717
              TabOrder = 2
              object Label1: TLabel
                Left = 1
                Top = 3
                Width = 92
                Height = 16
                Caption = 'C'#243'd. Fabric.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodFab: TColorMaskEdit
                Left = 0
                Top = 19
                Width = 113
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = EDCodFabExit
                OnKeyDown = EDCodFabKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object EDCodBarra: TEdit
              Left = 4
              Top = 19
              Width = 157
              Height = 23
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              MaxLength = 13
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyDown = EDCodBarraKeyDown
            end
            object BtnEscolheProc: TBitBtn
              Left = 280
              Top = 36
              Width = 9
              Height = 10
              Hint = 'Pressione para alterar o modo de procura (Alt+P)'
              Caption = '&P'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BtnEscolheProcClick
            end
          end
          object PVendItem: TPanel
            Left = 126
            Top = 56
            Width = 555
            Height = 52
            Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
            BevelWidth = 2
            Color = 14933717
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            Visible = False
            OnExit = PVendItemExit
            object GroupBox6: TGroupBox
              Left = 6
              Top = 4
              Width = 469
              Height = 41
              Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
              Caption = 'Vendedor deste item:'
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object BitBtn7: TBitBtn
                Left = 439
                Top = 15
                Width = 25
                Height = 23
                Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BitBtn7Click
                Glyph.Data = {
                  B6000000424DB60000000000000036000000280000000A000000040000000100
                  18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                  C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                  90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                  90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                  C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
              end
              object DbVendedorItem: TColorMaskEdit
                Left = 98
                Top = 15
                Width = 340
                Height = 24
                Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'BankGothic Md BT'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DbCodVendedorItem: TColorMaskEdit
                Left = 4
                Top = 15
                Width = 93
                Height = 24
                Hint = 'Para abandonar este pa'#237'nel pressione ESC.'
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'BankGothic Md BT'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnKeyDown = DbCodVendedorItemKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object BitBtn4: TBitBtn
              Left = 480
              Top = 16
              Width = 65
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn4Click
            end
          end
          object PQuantDescarte: TPanel
            Left = 339
            Top = 54
            Width = 113
            Height = 59
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 9
            Visible = False
            object Label60: TLabel
              Left = 1
              Top = -2
              Width = 112
              Height = 16
              Caption = 'Qtd. Descarte:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object BtLote: TButton
              Left = 16
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Lote'
              TabOrder = 0
            end
          end
          object PLabelConvertion: TPanel
            Left = 347
            Top = 48
            Width = 76
            Height = 24
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 19
            object LQtdConvert: TLabel
              Left = 3
              Top = 3
              Width = 69
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object PQtdConvert: TPanel
            Left = 426
            Top = 28
            Width = 118
            Height = 48
            BevelWidth = 2
            Color = 16772332
            TabOrder = 18
            Visible = False
            OnExit = PQtdConvertExit
            object Label62: TLabel
              Left = 9
              Top = 2
              Width = 100
              Height = 16
              Caption = 'Quant. Conv.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdQtdConvert: TColorEditFloat
              Left = 5
              Top = 21
              Width = 106
              Height = 22
              Color = 15657982
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnKeyDown = EdQtdConvertKeyDown
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PSelectLote: TPanel
            Left = 802
            Top = 3
            Width = 285
            Height = 95
            BevelWidth = 2
            TabOrder = 17
            Visible = False
            object GDBLote: TDBGrid
              Left = 4
              Top = 3
              Width = 277
              Height = 89
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              Color = 16772055
              Ctl3D = False
              DataSource = DMESTOQUE.DSAlx
              FixedColor = 11039232
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clSilver
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnKeyPress = GDBLoteKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'LOTE'
                  Title.Caption = 'Lote'
                  Width = 130
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENCIMENTO'
                  Title.Caption = 'Venc.'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Quant.'
                  Width = 50
                  Visible = True
                end>
            end
          end
          object PInfoExp: TPanel
            Left = 770
            Top = 3
            Width = 191
            Height = 85
            BevelWidth = 2
            TabOrder = 21
            Visible = False
            OnExit = PInfoExpExit
            object PFashionInfoExport: TFashionPanel
              Left = 2
              Top = 3
              Width = 186
              Height = 77
              BevelOuter = bvNone
              Caption = 'PFashionInfoExport'
              Color = 14933717
              TabOrder = 0
              RoundRect = True
              About = 'Orion Software'
              ShadowDepth = 2
              ShadowSpace = 5
              ShowShadow = False
              ShadowColor = clBlack
              TitleColor = 12615680
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              Title = 'Dados para exporta'#231#227'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttBlue
              object LQuantInfoExport: TLabel
                Left = 32
                Top = 27
                Width = 39
                Height = 13
                Caption = 'Quant.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LInfoExport: TLabel
                Left = 32
                Top = 40
                Width = 65
                Height = 13
                Caption = 'Exporta'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EdQuantExp: TColorEditFloat
                Left = 33
                Top = 54
                Width = 91
                Height = 22
                Color = clInactiveCaption
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                MaxLength = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnExit = EDQuantidadeExit
                OnKeyPress = EdQuantExpKeyPress
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object BtnInfoExport: TBitBtn
                Left = 129
                Top = 48
                Width = 27
                Height = 26
                TabOrder = 1
                OnClick = BtnInfoExportClick
                Glyph.Data = {
                  6E040000424D6E04000000000000360000002800000013000000120000000100
                  1800000000003804000000000000000000000000000000000000D8E9ECD8E9EC
                  D8E9ECD8E9ECF0EBE8DDDCDAD5D6D8DCDAD8E6E4E2D8E9ECD8E9ECD8E9ECD8E9
                  ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECF9
                  F9F6ABA9A06C675D736F628D8A7B9D9A8B9A978A6D695E5A554A4F4C4257564F
                  A3A3A0F7F7F6D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECF4F4F294938A6E69
                  5CA29C8FC5C3B7D6D6CFE0DFDADDDDDABFC1BCA3A39D83817B69655B4D4A428F
                  8E89F5F4F5D8E9ECD8E9EC000000D8E9ECD8E9EC9F9E96737162B4B2A8D8D9D4
                  ECF0F0F1F2F7F0EFEEEFEEEAF3F3F2F4F4F1D6D7CFA1A0987370664B49419E9F
                  9BD8E9ECD8E9EC000000D8E9ECCECFCC716E64B3ADA1D9D9D7EFF5F7E1D4C7CF
                  A87CD4A059DCB15CDAC07EE0D8C4F0F0EDE1E3DDA09F976A695F56564DD7D5D6
                  D8E9EC000000D8E9EC8F8D87939084D4D2CBEFF1F4D7C6ADA56B3169390B9F5C
                  0DBE6F156D501C97885BD3D0BCEFF0EED4D4D289877E5B584D979391D8E9EC00
                  0000EAE8E679756CB2B0A7E3E4E2DCDDDAA9733DD77718854612984D0DC46112
                  381A05BA914FEADFC0D8D8D1ECEBEAA7A49E716D646F6B67EFF0F0000000CBC9
                  C87D7F78C6CBC7EFF1F1B3A28EB86414DC7618CE6C15964D11784210774A1DE2
                  983DF1CF9ADBD6C4EEEFEBBBBBB57B776D625E59E0E1E2000000B1B2AE7A5741
                  CA9E77ECECE98F7762C76205D96F11D76D13A5551443260EC48035E9A448EDBA
                  74D9C7A1E7E5E0C6C7C2726F64625E58DCDDDD000000AEB3B0722300D86419EA
                  E6DC887667B84E00D66609DB6F118A44104F2E12DB933CE4A04CEDA64FD1AE77
                  E8E4E2C2C3C069675C625F58E2E2E1000000D0D5D6653215D26213E6D4C0ABA7
                  A28D3500DC6106C05905552A09965518AC6E2BEE9E3FE69839CAA277EFF2EEA5
                  A7A462605574716AF1F1F0000000F0F3F45F5041AA5C13E2BD97DCE6E6714A34
                  A83B00742B0669340EC56818623711B36D1DBA772FD2C2B2EBEFEBA6A299625E
                  549D9B95D8E9EC000000D8E9EC9895936D4218D8AA75E7E6DAC4C7CB5F3D3252
                  1600933F00AD50087B320070421AB7A495F2F2F1DAD8D4AAA7986B665DD8D7D5
                  D8E9EC000000D8E9ECEAECEB5A5345926B44E7C5A1EBE4DBD2E0E49C99988A71
                  5F8A6C55A48373CEC8C4EBF5F0DEDED9BBB4AC706B5FA1A098D8E9ECD8E9EC00
                  0000D8E9ECD8E9ECC3C7C55042358E663AD99F62EBB98BE8D4C0E5E3DEE8EFF0
                  F0F5F2E9ECE9D6D4C9B1AEA1747165918C87D8E9ECD8E9ECD8E9EC000000D8E9
                  ECD8E9ECD8E9ECC2C6C95D5148703C09A94E00D05303D4632DCABAADCCC7BFB4
                  AEA5908B81706D639C9B94D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
                  D8E9ECD8E9ECEAECED969391604D4260311666280571695B79756D7D776E8D8A
                  84C8C7C6D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8
                  E9ECD8E9ECD8E9ECEFF3F5CFD1D9AFB2B1B0B0ACC6C5C3E6E6E4D8E9ECD8E9EC
                  D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000}
              end
            end
          end
          object PLote: TPanel
            Left = 842
            Top = 52
            Width = 287
            Height = 45
            Hint = '<ENTER> Confirmar <ESC> Voltar'
            BevelWidth = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 16
            Visible = False
            object Label70: TLabel
              Left = 9
              Top = 3
              Width = 32
              Height = 16
              Caption = 'Lote:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label71: TLabel
              Left = 148
              Top = 3
              Width = 79
              Height = 16
              Caption = 'Vencimento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LObsLote: TLabel
              Left = 250
              Top = 3
              Width = 28
              Height = 16
              Caption = 'Obs:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdLote: TColorMaskEdit
              Left = 9
              Top = 18
              Width = 136
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              CharCase = ecUpperCase
              Color = clInactiveCaptionText
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVenc: TColorMaskEdit
              Left = 148
              Top = 18
              Width = 89
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              Color = clInactiveCaptionText
              Ctl3D = False
              EditMask = '!99/99/0000;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '  /  /    '
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdObs: TColorMaskEdit
              Left = 240
              Top = 18
              Width = 38
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              CharCase = ecUpperCase
              Color = clInactiveCaptionText
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object Panel3: TPanel
            Left = 3
            Top = 98
            Width = 750
            Height = 41
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 13
            object Bevel1: TBevel
              Left = 4
              Top = 21
              Width = 745
              Height = 20
            end
            object LSimilar: TLabel
              Left = 8
              Top = 22
              Width = 369
              Height = 13
              AutoSize = False
              Caption = 'teste'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LMarca: TLabel
              Left = 380
              Top = 22
              Width = 149
              Height = 13
              AutoSize = False
              Caption = 'teste'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LLocal: TLabel
              Left = 530
              Top = 22
              Width = 78
              Height = 13
              Hint = 'teste'
              AutoSize = False
              Caption = 'teste'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 548
              Top = 6
              Width = 41
              Height = 14
              Caption = 'LOCAL:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LBonif: TLabel
              Left = 608
              Top = 22
              Width = 33
              Height = 13
              Hint = 'bonifik'
              AutoSize = False
              Caption = 'teste'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LCustoTot: TLabel
              Left = 641
              Top = 22
              Width = 33
              Height = 13
              AutoSize = False
              Caption = 'teste'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 4
              Top = 7
              Width = 133
              Height = 13
              Caption = 'PRODUTO SELECIONADO'
            end
          end
          object BtnProcProd: TBitBtn
            Left = 8
            Top = 27
            Width = 20
            Height = 20
            Hint = 'Pressione para localizar o Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnProcProdClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object BtnInsertProd: TBitBtn
            Left = 685
            Top = 27
            Width = 70
            Height = 25
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = BtnInsertProdClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077777707777770007777706077777000777706660777
              7000777066666077700077066666660770007000066600007000777706660777
              7000777706660777700077770666077770007777000007777000777777777777
              7000}
            Layout = blGlyphRight
            Spacing = 10
          end
          object BtnDeleteList: TBitBtn
            Left = 685
            Top = 51
            Width = 70
            Height = 25
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BtnDeleteListClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077770000077770007777066607777000777706660777
              7000777706660777700070000666000070007706666666077000777066666077
              7000777706660777700077777060777770007777770777777000777777777777
              7000}
            Layout = blGlyphRight
            Spacing = 10
          end
          object EDQuantidade: TColorEditFloat
            Left = 318
            Top = 26
            Width = 83
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnExit = EDQuantidadeExit
            OnKeyDown = EDQuantidadeKeyDown
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDValUnit: TColorEditFloat
            Left = 408
            Top = 26
            Width = 81
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDesc: TColorEditFloat
            Left = 497
            Top = 26
            Width = 56
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnExit = EDQuantidadeExit
            OnKeyDown = EDDescKeyDown
            OnKeyPress = EDDescKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDTotal: TColorEditFloat
            Left = 562
            Top = 26
            Width = 100
            Height = 22
            Hint = 
              'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
              'informe o valor em total e pressione <ENTER>'
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = '0,00'
            OnExit = EDTotalExit
            OnKeyPress = EDTotalKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnAbrePAliq: TBitBtn
            Left = 663
            Top = 40
            Width = 12
            Height = 10
            TabOrder = 10
            OnClick = BtnAbrePAliqClick
            Glyph.Data = {
              AE000000424DAE00000000000000360000002800000006000000060000000100
              18000000000078000000C40E0000C40E00000000000000000000CFC8CFCFC8CF
              CFC8CFCFC8CFCFC8CF0000000000CFC8CFCFC8CFCFC8CFCFC8CF000000000000
              0000CFC8CFCFC8CFCFC8CF0000000000000000000000CFC8CFCFC8CF00000000
              00000000000000000000CFC8CF00000000000000000000000000000000000000
              000000000000000000000000000000000000}
          end
          object BTNDEVOLVER: TBitBtn
            Left = 685
            Top = 75
            Width = 70
            Height = 22
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = 'Devolver'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            Visible = False
            OnClick = BTNDEVOLVERClick
            Layout = blGlyphRight
            NumGlyphs = 2
            Spacing = 0
          end
          object EdLocal: TFlatEdit
            Left = 593
            Top = 56
            Width = 70
            Height = 16
            ColorFlat = 14933717
            ParentColor = True
            TabOrder = 14
          end
          object PComiss: TPanel
            Left = 530
            Top = 48
            Width = 133
            Height = 23
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 11
            Visible = False
            object Label41: TLabel
              Left = 5
              Top = 8
              Width = 63
              Height = 16
              Caption = 'Comiss.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdComiss: TColorEditFloat
              Left = 70
              Top = 1
              Width = 62
              Height = 22
              Color = 15329769
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnExit = EDQuantidadeExit
              OnKeyPress = EDDescKeyPress
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PImpostos: TPanel
            Left = 8
            Top = 54
            Width = 332
            Height = 59
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 8
            object LImpCST: TLabel
              Left = 1
              Top = -2
              Width = 32
              Height = 16
              Caption = 'CST:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LImpICMS: TLabel
              Left = 38
              Top = -2
              Width = 40
              Height = 16
              Caption = 'ICMS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LImpIPI: TLabel
              Left = 90
              Top = -2
              Width = 32
              Height = 16
              Caption = 'IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LImpVlrICMS: TLabel
              Left = 202
              Top = -2
              Width = 64
              Height = 16
              Caption = 'V. ICMS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LImpVlrIpi: TLabel
              Left = 282
              Top = -2
              Width = 48
              Height = 16
              Caption = 'V.IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 127
              Top = -2
              Width = 72
              Height = 16
              Caption = 'BC. ICMS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LDescCst: TLabel
              Left = 1
              Top = 36
              Width = 8
              Height = 16
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object LInformaReducaoBase: TLabel
              Left = 80
              Top = 37
              Width = 115
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'R. B. 0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LCstCadastrado: TLabel
              Left = 3
              Top = 37
              Width = 38
              Height = 13
              AutoSize = False
              Caption = '...........'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdImpCST: TColorEditFloat
              Left = 0
              Top = 14
              Width = 33
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '000'
              OnExit = EdImpCSTExit
              OnKeyDown = EdImpCSTKeyDown
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdimpIcms: TColorEditFloat
              Left = 36
              Top = 14
              Width = 41
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '0,00'
              OnExit = EdimpIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdImpIpi: TColorEditFloat
              Left = 80
              Top = 14
              Width = 41
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0,00'
              OnExit = EdImpIpiExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdImpVlrIcms: TColorEditFloat
              Left = 202
              Top = 14
              Width = 63
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdImpVlrIpi: TColorEditFloat
              Left = 268
              Top = 14
              Width = 61
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdBCIcms: TColorEditFloat
              Left = 124
              Top = 14
              Width = 74
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '0,00'
              OnExit = EdBCIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object pValoresImportacao: TPanel
            Left = 340
            Top = 53
            Width = 343
            Height = 44
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 22
            Visible = False
            object lbBaseII: TLabel
              Left = 2
              Top = -1
              Width = 56
              Height = 16
              Caption = 'BC. II:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbOutDespII: TLabel
              Left = 80
              Top = -2
              Width = 88
              Height = 16
              Caption = 'Out. Desp.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbVlrII: TLabel
              Left = 171
              Top = -2
              Width = 72
              Height = 16
              Caption = 'Valor II:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object lbIof: TLabel
              Left = 256
              Top = -2
              Width = 80
              Height = 16
              Caption = 'Valor IOF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object edBcII: TColorEditFloat
              Left = 2
              Top = 15
              Width = 76
              Height = 22
              Hint = 'Informar o Valor da BC do Imposto de Importa'#231#227'o'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnExit = EdimpIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object edOutDespII: TColorEditFloat
              Left = 81
              Top = 15
              Width = 86
              Height = 22
              Hint = 'Informar o valor das despesas aduaneiras'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '0,00'
              OnExit = EdimpIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object edValorII: TColorEditFloat
              Left = 170
              Top = 15
              Width = 83
              Height = 22
              Hint = 'Informar a o valor do Imposto de Importa'#231#227'o'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0,00'
              OnExit = EdimpIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object edValorIof: TColorEditFloat
              Left = 256
              Top = 15
              Width = 83
              Height = 22
              Hint = 'Informar o Valor do IOF - Imposto sobre Opera'#231#245'es Financeiras'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '0,00'
              OnExit = EdimpIcmsExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PQtd4casas: TPanel
            Left = 339
            Top = 8
            Width = 89
            Height = 41
            BevelOuter = bvNone
            BevelWidth = 2
            TabOrder = 20
            Visible = False
            object EdQtd4Casas: TColorEditFloat
              Left = 3
              Top = 17
              Width = 83
              Height = 22
              Color = 15329769
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,0000'
              OnExit = EDQuantidadeExit
              OnKeyDown = EdQtd4CasasKeyDown
              ValueFormat = '#,####0.0000'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 164
          Width = 761
          Height = 191
          Caption = 'Lista de produtos do pedido'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object LQTDPROD: TLabel
            Left = 584
            Top = 174
            Width = 172
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBGrid1: TDBGrid
            Left = 2
            Top = -19
            Width = 755
            Height = 158
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DSAlx
            FixedColor = 11039232
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnKeyDown = DBGrid1KeyDown
            OnKeyPress = DBGrid1KeyPress
          end
          object pInfoCompraNfe: TPanel
            Left = 208
            Top = 8
            Width = 305
            Height = 93
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            Visible = False
            object asdasdasdsa: TLabel
              Left = 4
              Top = 21
              Width = 122
              Height = 13
              Caption = 'Num. ped. compra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object qwpoeiopwq: TLabel
              Left = 140
              Top = 21
              Width = 155
              Height = 13
              Caption = 'Num. item ped. compra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object sadasdasdzx12: TLabel
              Left = 4
              Top = 2
              Width = 218
              Height = 13
              Caption = 'Informa'#231#227'o da compra para NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
            end
            object edNumPedCompraNfe: TEdit
              Left = 4
              Top = 37
              Width = 121
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 15
              ParentFont = False
              TabOrder = 0
            end
            object edNumItemPedCompraNfe: TEdit
              Left = 140
              Top = 37
              Width = 157
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 6
              ParentFont = False
              TabOrder = 1
            end
            object btnConfPedCompraNfe: TButton
              Left = 221
              Top = 62
              Width = 75
              Height = 25
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btnConfPedCompraNfeClick
            end
          end
        end
        object PAliqCusto: TPanel
          Left = 276
          Top = 0
          Width = 393
          Height = 209
          BevelWidth = 3
          TabOrder = 2
          Visible = False
          object FashionPanel1: TFashionPanel
            Left = 3
            Top = 3
            Width = 387
            Height = 203
            BevelOuter = bvNone
            Caption = 'FashionPanel1'
            Color = 14933717
            TabOrder = 0
            OnExit = FashionPanel1Exit
            RoundRect = True
            About = 'Orion Software'
            ShadowDepth = 2
            ShadowSpace = 5
            ShowShadow = False
            ShadowColor = clBlack
            TitleColor = 12615680
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            Title = 'Atualiza'#231#227'o dos valores do produto'
            LineWidth = 0
            LineColor = clBlack
            Theme = ttBlue
            object Label8: TLabel
              Left = 7
              Top = 22
              Width = 87
              Height = 14
              Caption = 'A L '#205' Q U O T A S'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 150
              Top = 38
              Width = 21
              Height = 12
              Caption = 'IPI:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 186
              Top = 38
              Width = 29
              Height = 12
              Caption = 'ICMS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 222
              Top = 38
              Width = 35
              Height = 12
              Caption = 'FRETE:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 271
              Top = 38
              Width = 28
              Height = 12
              Caption = 'EMB.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 306
              Top = 38
              Width = 35
              Height = 12
              Caption = 'OUTR.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 357
              Top = 38
              Width = 26
              Height = 12
              Caption = 'LUC.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label34: TLabel
              Left = 229
              Top = 112
              Width = 133
              Height = 14
              Caption = 'V A L O R E S   A T U A I S'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label35: TLabel
              Left = 228
              Top = 125
              Width = 60
              Height = 16
              Caption = 'Var. Vista:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 227
              Top = 162
              Width = 55
              Height = 16
              Caption = 'At. Vista:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 305
              Top = 162
              Width = 59
              Height = 16
              Caption = 'At. Prazo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 299
              Top = 125
              Width = 64
              Height = 16
              Caption = 'Var. Prazo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ltxexp: TLabel
              Left = 17
              Top = 77
              Width = 39
              Height = 12
              Caption = 'Tx. Exp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lmod: TLabel
              Left = 70
              Top = 77
              Width = 29
              Height = 12
              Caption = 'M.O.D'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lirend: TLabel
              Left = 106
              Top = 77
              Width = 39
              Height = 12
              Caption = 'I. Rend.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lcs: TLabel
              Left = 166
              Top = 77
              Width = 25
              Height = 12
              Caption = 'C. S.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lpis: TLabel
              Left = 209
              Top = 77
              Width = 22
              Height = 12
              Caption = 'PIS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lcofins: TLabel
              Left = 240
              Top = 77
              Width = 38
              Height = 12
              Caption = 'COFINS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lpms: TLabel
              Left = 289
              Top = 77
              Width = 35
              Height = 12
              Caption = '(%)MS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lms: TLabel
              Left = 352
              Top = 77
              Width = 20
              Height = 12
              Caption = 'M.S.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LDescCusto: TLabel
              Left = 25
              Top = 38
              Width = 50
              Height = 12
              Caption = 'Vlr. Comp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LVUC: TLabel
              Left = 97
              Top = 38
              Width = 33
              Height = 12
              Caption = 'V.U.C.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EDIPI: TColorEditFloat
              Left = 133
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDICMS: TColorEditFloat
              Left = 175
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDFRETE: TColorEditFloat
              Left = 217
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDEMB: TColorEditFloat
              Left = 259
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDOUTROS: TColorEditFloat
              Left = 301
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDLUC: TColorEditFloat
              Left = 343
              Top = 50
              Width = 40
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object Panel6: TPanel
              Left = 23
              Top = 112
              Width = 197
              Height = 87
              BevelOuter = bvNone
              Color = 14933717
              Enabled = False
              TabOrder = 22
              object Label28: TLabel
                Left = 2
                Top = 0
                Width = 152
                Height = 14
                Caption = 'V A L O R E S   A N T E R I O R'
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 5
                Top = 12
                Width = 60
                Height = 16
                Caption = 'Var. Vista:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 77
                Top = 12
                Width = 64
                Height = 16
                Caption = 'Var. Prazo:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 12
                Top = 49
                Width = 55
                Height = 16
                Caption = 'At. Vista:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 81
                Top = 49
                Width = 59
                Height = 16
                Caption = 'At. Prazo:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object EDVVISTA: TColorEditFloat
                Left = 1
                Top = 27
                Width = 67
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDVPRAZO: TColorEditFloat
                Left = 76
                Top = 27
                Width = 67
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDAVISTA: TColorEditFloat
                Left = 1
                Top = 63
                Width = 67
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDAPRAZO: TColorEditFloat
                Left = 76
                Top = 63
                Width = 67
                Height = 22
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clMaroon
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
                Text = '0,00'
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object BtnFechaPAliq: TBitBtn
              Left = 170
              Top = 149
              Width = 48
              Height = 25
              Hint = 
                'Pressione para abandonar a tela de atualiza'#231#227'o de valores do pro' +
                'duto e confirmar atualiza'#231#227'o'
              Caption = 'Ok'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 20
              OnClick = BtnFechaPAliqClick
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
            object BitBtn3: TBitBtn
              Left = 170
              Top = 173
              Width = 48
              Height = 25
              Hint = 
                'Pressione para abandonar a tela de atualiza'#231#227'o de valores do pro' +
                'duto e cancelar atualiza'#231#227'o'
              Caption = 'Canc.'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 21
              OnClick = BitBtn3Click
            end
            object EDAVVISTA: TColorEditFloat
              Left = 223
              Top = 140
              Width = 67
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 16
              Text = '0,00'
              OnExit = EDAVVISTAExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDAAVISTA: TColorEditFloat
              Left = 223
              Top = 176
              Width = 67
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 18
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDAAPRAZO: TColorEditFloat
              Left = 298
              Top = 176
              Width = 67
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 19
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDAVPRAZO: TColorEditFloat
              Left = 297
              Top = 140
              Width = 67
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 17
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDTXEXP: TColorEditFloat
              Left = 17
              Top = 89
              Width = 40
              Height = 19
              Hint = 'Taxa de Exporta'#231#227'o'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDMOD: TColorEditFloat
              Left = 59
              Top = 89
              Width = 40
              Height = 19
              Hint = 'M'#227'o de Obra'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDIREND: TColorEditFloat
              Left = 103
              Top = 89
              Width = 44
              Height = 19
              Hint = 'Imposto de Renda'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDCS: TColorEditFloat
              Left = 149
              Top = 89
              Width = 44
              Height = 19
              Hint = 'Contribui'#231#227'o Social'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDPIS: TColorEditFloat
              Left = 195
              Top = 89
              Width = 39
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDCOFINS: TColorEditFloat
              Left = 236
              Top = 89
              Width = 44
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDPMS: TColorEditFloat
              Left = 282
              Top = 89
              Width = 44
              Height = 19
              Hint = 'Percentual da Margem de Seguran'#231'a'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDMS: TColorEditFloat
              Left = 328
              Top = 89
              Width = 46
              Height = 19
              Hint = 'Valor Margem Seguran'#231'a'
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 15
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrCompra: TColorEditFloat
              Left = 8
              Top = 50
              Width = 70
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnExit = EdAcreccustoExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrUnitComp: TColorEditFloat
              Left = 80
              Top = 50
              Width = 51
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '0,00'
              OnExit = EDIPIExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
        end
      end
    end
  end
  object FSRel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 688
    Top = 8
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSource = DMESTOQUE.DSSlave
    Left = 648
    Top = 4
  end
  object MEscolheProc: TPopupMenu
    Left = 618
    Top = 87
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = ControleInterno1Click
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFab1Click
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
    end
  end
  object PMRel: TPopupMenu
    Left = 708
    Top = 58
    object Comprovante1: TMenuItem
      Caption = 'Comprovante'
      OnClick = Comprovante1Click
    end
    object EspelhoNotaFiscal1: TMenuItem
      Caption = 'Espelho Nota Fiscal'
      OnClick = EspelhoNotaFiscal1Click
    end
    object GerarXMLporPerodo1: TMenuItem
      Caption = 'Gerar XML por Per'#237'odo'
      OnClick = GerarXMLporPerodo1Click
    end
    object RelatrioporRegies1: TMenuItem
      Caption = 'Relat'#243'rio por Regi'#245'es'
      OnClick = RelatrioporRegies1Click
    end
  end
  object FSDSDesp: TfrDBDataSet
    DataSource = DMESTOQUE.DDesp
    Left = 729
    Top = 4
  end
  object frDBDataSet1: TfrDBDataSet
    DataSource = DMSAIDA.DAlx
    Left = 768
  end
  object FSDSDataSet2: TfrDBDataSet
    DataSource = DMBANCO.Dalx
    Left = 616
    Top = 8
  end
  object FSDSTmp: TfrDBDataSet
    DataSource = DMMACS.DTMP
    Left = 584
    Top = 8
  end
  object FSDSBanco: TfrDBDataSet
    DataSource = DMBANCO.Dalx
    Left = 549
    Top = 13
  end
  object FSDSVeiculoEnt: TfrDBDataSet
    DataSource = DMESTOQUE.DsAlx5
    Left = 672
    Top = 40
  end
  object FSDSParc: TfrDBDataSet
    DataSource = DMMACS.DSALX
    Left = 629
    Top = 43
  end
  object FSDSRelServ: TfrDBDataSet
    DataSource = DMESTOQUE.DSSlaveServ
    Left = 517
    Top = 21
  end
  object frxRelComprovante: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42298.551000856480000000
    ReportOptions.LastChange = 42298.551000856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 320
    Top = 3
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object dbSetTitulo: TfrxDBDataset
    UserName = 'dbSetTitulo'
    CloseDataSource = False
    DataSource = DMMACS.DSLoja
    BCDToCurrency = False
    Left = 224
    Top = 32
  end
  object dbSetAux: TfrxDBDataset
    UserName = 'dbSetAux'
    CloseDataSource = False
    DataSource = DMESTOQUE.DSAlx
    BCDToCurrency = False
    Left = 255
    Top = 32
  end
  object dbSetAux1: TfrxDBDataset
    UserName = 'dbSetAux1'
    CloseDataSource = False
    DataSource = DMESTOQUE.DSAlx1
    BCDToCurrency = False
    Left = 287
    Top = 32
  end
  object dbSetSlave: TfrxDBDataset
    UserName = 'dbSetSlave'
    CloseDataSource = False
    DataSource = DMESTOQUE.DSSlave
    BCDToCurrency = False
    Left = 317
    Top = 33
  end
  object dbSetDespesas: TfrxDBDataset
    UserName = 'dbSetDespesas'
    CloseDataSource = False
    DataSource = DMESTOQUE.DDesp
    BCDToCurrency = False
    Left = 344
    Top = 32
  end
  object dbSetFrete: TfrxDBDataset
    UserName = 'dbSetFrete'
    CloseDataSource = False
    DataSource = DMSAIDA.DFiscPV
    BCDToCurrency = False
    Left = 376
    Top = 32
  end
  object dbSetConta: TfrxDBDataset
    UserName = 'dbSetConta'
    CloseDataSource = False
    DataSource = DMCONTA.DAlx
    BCDToCurrency = False
    Left = 408
    Top = 32
  end
end
