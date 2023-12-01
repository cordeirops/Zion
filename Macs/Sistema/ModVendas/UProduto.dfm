inherited FProduto: TFProduto
  Left = 247
  Top = 78
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  Caption = 'Produtos'
  ClientHeight = 564
  ClientWidth = 781
  OnActivate = FormActivate
  OnShow = ATIVONAOClick
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 3
    Top = 5
    Width = 774
    Height = 556
    inherited Panel4: TPanel
      Top = 31
      Width = 770
      Height = 521
      Color = clBtnFace
      TabOrder = 0
      object PFchTec: TPanel
        Left = 4
        Top = 16
        Width = 760
        Height = 450
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 0
        Visible = False
        object Shape1: TShape
          Left = 48
          Top = 48
          Width = 649
          Height = 329
        end
        object GroupBox11: TGroupBox
          Left = 56
          Top = 144
          Width = 633
          Height = 217
          Caption = 'Lista de itens utilizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object DBGFichTec: TDBGrid
            Left = 8
            Top = 16
            Width = 617
            Height = 193
            DataSource = DMESTOQUE.DSAlx1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'COD_SUBPROD'
                Title.Caption = 'C'#243'digo'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 455
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PORCENTAGEM'
                Title.Caption = '% Usada'
                Width = 67
                Visible = True
              end>
          end
        end
        object PLocMat: TPanel
          Left = 144
          Top = 128
          Width = 369
          Height = 185
          Color = clWhite
          TabOrder = 2
          Visible = False
          object DBMatP: TDBGrid
            Left = 8
            Top = 0
            Width = 361
            Height = 185
            DataSource = DMESTOQUE.DSAlx
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 343
                Visible = True
              end>
          end
        end
        object GroupBox8: TGroupBox
          Left = 56
          Top = 56
          Width = 633
          Height = 81
          Caption = 'Mat'#233'ria Prima'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label132: TLabel
            Left = 8
            Top = 24
            Width = 50
            Height = 16
            Caption = 'Codigo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label133: TLabel
            Left = 88
            Top = 24
            Width = 71
            Height = 16
            Caption = 'Descri'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label134: TLabel
            Left = 392
            Top = 24
            Width = 65
            Height = 16
            Caption = '% usada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodMat: TEdit
            Left = 8
            Top = 40
            Width = 73
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EdDescMat: TEdit
            Left = 88
            Top = 40
            Width = 297
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = EdDescMatKeyDown
          end
          object EdPorcMat: TEdit
            Left = 392
            Top = 40
            Width = 73
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object BtInserir: TBitBtn
            Left = 472
            Top = 40
            Width = 75
            Height = 25
            Caption = '&Inserir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BtInserirClick
            Glyph.Data = {
              42030000424D420300000000000052020000280000000F0000000F0000000100
              080000000000F0000000232E0000232E000087000000000000001B971800239C
              1F00259C2100279E23002BA0260037A731003CA7390040AB3C0047AB460046AE
              400048AA46004AAF46004FAF4C004FAF4D0047B0400048B141004CB344004CB3
              45004DB345004FB5470050B44A0051B6480053B74B0057B94E0059BA4F0053B1
              500055B2520056B452005BB658005FB65D0058BA50005AB9520060B85C0060B9
              5C0061B95D0063BA5F0064B7630067BC62006ABF65006BBF660072BF700065C1
              5B0067C05F0066C25C0067C25C0069C35F0067C060006AC164006BC066006AC4
              60006CC3640070C7640073C16F0074C46E0075C46F0075C56F0071C8650072C9
              660075CA6A0076CA6D0076CB6D007BCE6F0076C572007CC37A007DC37D007DC5
              7C007CCE70007DCF70007CCE720080D0740081D0780084D07C0087D47B0084CD
              80008AC989008ACA88008FCB8F0089D084008BD185008AD681008BD781008CD7
              80008ED6870090CC8E0091CC900091CC910091CD900094CF930092DB890093DA
              8B0096D0950098D0970098D1960099D196009BD09B009BD19B009CD19C009DD2
              9D009ED29D00A0D39F00A0D4A000A1D4A000A2D4A100A2D7A000A6D7A500A6D8
              A400A8DAA400A8DAA600BEE1BE00C0E2BF00C3E4C300C5E5C400C6E5C600C7E5
              C700CDE8CC00CDE8CD00CEE9CE00CFE9CE00D2EBD100D3EBD200D3ECD200D7EC
              D700D7EDD700D8EDD800E9F5E900EAF5EA00EFF8EF00F0F8EF00F0F8F000F1F8
              F100F1F9F100FDFEFD00FEFEFE00FEFFFE00FFFFFF008686868686834A004B83
              868686868600868686868255073C054C828686868600868686825A096A592B04
              5782868686008686825B116A67392C1F03578286860086825B156B6A43392C1F
              1301558286008357166A6A4843392C1F1309004C83004A0029182C4843392C1F
              050301004A004040401D044843392C1F001D404040008686866C044843392B1F
              006C868686008686866C044843392C1F006C868686008686866C044843392C1F
              006C868686008686866C044843392C1F006C868686008686866C044843392C1F
              006C868686008686866C04484238291F006C868686008686866C000000000000
              006C86868600}
          end
          object BtExcluiMat: TBitBtn
            Left = 552
            Top = 40
            Width = 75
            Height = 25
            Caption = '&Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BtExcluiMatClick
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
        end
      end
    end
    object PNovaFaixaPreco: TPanel [1]
      Left = 72
      Top = 433
      Width = 248
      Height = 94
      Color = clActiveCaption
      TabOrder = 3
      Visible = False
      object FashionPanel1: TFashionPanel
        Left = 2
        Top = 2
        Width = 244
        Height = 89
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
        Title = 'Adicionar Nova Faixa de Pre'#231'o'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttCustom
        object Label26: TLabel
          Left = 40
          Top = 64
          Width = 58
          Height = 13
          Caption = 'Quantidade:'
        end
        object EdNovaFaixaPreco: TEdit
          Left = 8
          Top = 24
          Width = 193
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object BitBtn7: TBitBtn
          Left = 208
          Top = 25
          Width = 28
          Height = 25
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          Caption = 'Ok'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BitBtn7Click
          Layout = blGlyphRight
          Spacing = 10
        end
        object BitBtn8: TBitBtn
          Left = 220
          Top = 3
          Width = 15
          Height = 15
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          Caption = 'X'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn8Click
          Layout = blGlyphRight
          Spacing = 10
        end
        object EdQuantDias: TFloatEdit
          Left = 132
          Top = 54
          Width = 69
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0'
          EditType = fltInteger
          ValueFormat = '##,##0.00'
          ValueInteger = 0
        end
      end
    end
    object PespecificacaoProduto: TPanel [2]
      Left = 7
      Top = 34
      Width = 763
      Height = 513
      BevelOuter = bvNone
      TabOrder = 2
      object GroupBox12: TGroupBox
        Left = 8
        Top = 5
        Width = 750
        Height = 336
        Caption = 'Especifica'#231#227'o do Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label135: TLabel
          Left = 23
          Top = 67
          Width = 44
          Height = 16
          Caption = 'Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label136: TLabel
          Left = 352
          Top = 67
          Width = 74
          Height = 16
          Caption = 'Sub Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label56: TLabel
          Left = 25
          Top = 114
          Width = 50
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 101
          Top = 114
          Width = 90
          Height = 16
          Caption = 'Controle Int.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 257
          Top = 114
          Width = 110
          Height = 16
          Caption = 'C'#243'd. Fabricante:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label63: TLabel
          Left = 433
          Top = 114
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
        object Label62: TLabel
          Left = 594
          Top = 114
          Width = 90
          Height = 16
          Caption = 'Loc. Estante:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label111: TLabel
          Left = 23
          Top = 209
          Width = 96
          Height = 16
          Caption = 'Especifica'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LDescSimilar: TLabel
          Left = 23
          Top = 163
          Width = 141
          Height = 16
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LuzOpenST: TShape
          Left = 197
          Top = 269
          Width = 28
          Height = 22
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label10: TLabel
          Left = 26
          Top = 254
          Width = 156
          Height = 13
          Caption = 'C'#243'digo Situa'#231#227'o Tribut'#225'ria:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 233
          Top = 254
          Width = 114
          Height = 13
          Caption = 'Unidade de Compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Shape11: TShape
          Left = 349
          Top = 269
          Width = 28
          Height = 22
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label17: TLabel
          Left = 380
          Top = 254
          Width = 103
          Height = 13
          Caption = 'Unidade de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Shape13: TShape
          Left = 502
          Top = 270
          Width = 30
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label70: TLabel
          Left = 638
          Top = 254
          Width = 31
          Height = 13
          Hint = 'Nomenclatura comun do Mercosul'
          Caption = 'NCM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label59: TLabel
          Left = 538
          Top = 254
          Width = 68
          Height = 13
          Caption = 'C'#243'd. Barra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 649
          Top = 12
          Width = 77
          Height = 21
          Caption = 'ESTOQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 25
          Top = 294
          Width = 72
          Height = 13
          Hint = 'C'#243'digo do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Caption = 'C'#243'digo ANP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label58: TLabel
          Left = 140
          Top = 294
          Width = 88
          Height = 13
          Hint = 'Descri'#231#227'o do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Caption = 'Descri'#231#227'o ANP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label85: TLabel
          Left = 420
          Top = 294
          Width = 133
          Height = 13
          Hint = 'Descri'#231#227'o do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Caption = 'C'#243'digo beneficio fiscal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object EDCODGRUPO: TEdit
          Left = 23
          Top = 84
          Width = 49
          Height = 24
          Hint = 'Informe o c'#243'digo do grupo e pressione enter para pesquisa'
          Color = 15658734
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnKeyDown = EDCODGRUPOKeyDown
        end
        object DBGRUPO: TEdit
          Left = 72
          Top = 84
          Width = 239
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DbSubGrupo: TEdit
          Left = 401
          Top = 84
          Width = 294
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object EDCODSUBGRUPO: TEdit
          Left = 352
          Top = 84
          Width = 49
          Height = 24
          Hint = 'Informe o c'#243'digo do sub grupo e pressione enter para pesquisa'
          Color = 15658734
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyDown = EDCODSUBGRUPOKeyDown
        end
        object DBCODINTERNO: TDBColorEdit
          Left = 23
          Top = 134
          Width = 65
          Height = 26
          Hint = 'Codigo Interno do Produto, gerado automaticamente pelo sistema'
          Color = clWhite
          Ctl3D = True
          DataField = 'COD_INTERNO'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 3
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnEnter = DBCODINTERNOEnter
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DbContrInt: TDBColorEdit
          Left = 101
          Top = 134
          Width = 143
          Height = 26
          Hint = 
            'C'#243'digo de controle interno do produto dentro da empresa, gerado ' +
            'automaticamente pelo sistema e possivel de altera'#231#227'o pelo usu'#225'ri' +
            'o'
          Color = 16775658
          Ctl3D = True
          DataField = 'CONTRINT'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBCODFABRICANTE: TDBColorEdit
          Left = 257
          Top = 134
          Width = 136
          Height = 26
          Hint = 'C'#243'digo do produto usado pelo fabricante do mesmo'
          CharCase = ecUpperCase
          Color = clWhite
          Ctl3D = True
          DataField = 'CODPRODFABR'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnExit = DBCODFABRICANTEExit
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit27: TDBColorEdit
          Left = 433
          Top = 134
          Width = 148
          Height = 26
          Hint = 'Marca do produto'
          Color = clWhite
          Ctl3D = True
          DataField = 'MARCA'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit26: TDBColorEdit
          Left = 594
          Top = 134
          Width = 135
          Height = 26
          Hint = 'Local de aramazenagem do produto no dep'#243'sito ou estante'
          Color = clWhite
          Ctl3D = True
          DataField = 'LOCALESTANTE'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit25: TDBColorEdit
          Left = 23
          Top = 225
          Width = 706
          Height = 26
          Hint = 'Local para especifica'#231#227'o de uso do produto'
          Color = clWhite
          Ctl3D = True
          DataField = 'ESPECIFICACAO'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBDESCRICAOSIM: TDBColorEdit
          Left = 23
          Top = 181
          Width = 706
          Height = 26
          Hint = 
            'Descri'#231#227'o do produto, este campo ser'#225' impresso em notas e relat'#243 +
            'rios'
          Color = 16775658
          Ctl3D = True
          DataField = 'DESCRICAO'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BTNCST: TBitBtn
          Left = 198
          Top = 271
          Width = 27
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 22
          OnClick = BTNCSTClick
          OnEnter = BTNCSTEnter
          OnExit = BTNCSTExit
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object CodSitTrib: TEdit
          Left = 24
          Top = 270
          Width = 31
          Height = 21
          Hint = 
            'Informe o c'#243'digo da situa'#231#227'o tribut'#225'ria e pressione enter para p' +
            'esquisa'
          Color = 16777192
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          Text = '000'
          OnExit = CodSitTribExit
          OnKeyDown = CodSitTribKeyDown
        end
        object DescSitTrib: TEdit
          Left = 56
          Top = 270
          Width = 140
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object EdCodUnidadeCompra: TEdit
          Left = 232
          Top = 270
          Width = 27
          Height = 21
          Hint = 
            'Informe o c'#243'digo da unidade de compra e pressione enter para pes' +
            'quisa'
          Color = 16777192
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
          Text = '000'
          OnExit = EdCodUnidadeCompraExit
          OnKeyDown = EdCodUnidadeCompraKeyDown
        end
        object EdUnidadeCompra: TEdit
          Left = 259
          Top = 270
          Width = 86
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 24
        end
        object BtnUnidadeCompra: TBitBtn
          Left = 349
          Top = 271
          Width = 28
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 25
          OnClick = BtnUnidadeCompraClick
          OnExit = BtnUnidadeCompraExit
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdCodUnidadeVenda: TEdit
          Left = 381
          Top = 270
          Width = 27
          Height = 21
          Hint = 
            'Informe o c'#243'digo da unidade de venda e pressione enter para pesq' +
            'uisa'
          Color = 16777192
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 26
          Text = '000'
          OnExit = EdCodUnidadeVendaExit
          OnKeyDown = EdCodUnidadeVendaKeyDown
        end
        object EdUnidadeVenda: TEdit
          Left = 411
          Top = 270
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 27
        end
        object BitBtn3: TBitBtn
          Left = 502
          Top = 271
          Width = 30
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 28
          OnClick = BitBtn3Click
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object DBColorEdit16: TDBColorEdit
          Left = 638
          Top = 270
          Width = 91
          Height = 21
          Hint = 'Nomenclatura comun do Mercosul'
          Color = clWhite
          Ctl3D = True
          DataField = 'NCM'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 8
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 30
          OnExit = DBColorEdit16Exit
          OnKeyPress = DBColorEdit16KeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object dbcodbarra: TDBColorEdit
          Left = 539
          Top = 270
          Width = 91
          Height = 21
          Hint = 
            'Informe o c'#243'digo de barras do produto fornecido na etiqueta pelo' +
            ' fabricante ou deixe este campo em branco para o sistema gerar u' +
            'm c'#243'digo a partir do controle interno'
          Color = clWhite
          Ctl3D = True
          DataField = 'CODBARRA'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 29
          OnExit = dbcodbarraExit
          OnKeyPress = dbcodbarraKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit3: TDBColorEdit
          Left = 572
          Top = 40
          Width = 34
          Height = 24
          Hint = 'Estoque real existente na empresa (armazenado).'
          Color = 12312063
          Ctl3D = True
          DataField = 'ESTFISICO'
          DataSource = DMESTOQUE.DSEstoque
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
          Visible = False
          FocusColor = 12312063
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object PGrade: TPanel
          Left = 11
          Top = 16
          Width = 334
          Height = 48
          BevelOuter = bvNone
          TabOrder = 0
          object Label137: TLabel
            Left = 12
            Top = 0
            Width = 101
            Height = 16
            Caption = 'Grade/Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object BtnProduto: TBitBtn
            Left = 301
            Top = 19
            Width = 30
            Height = 23
            Hint = 'Clique aqui para buscar dados da grade/produto'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            OnClick = BtnProdutoClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object DBDESPROD: TEdit
            Left = 61
            Top = 19
            Width = 240
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBCODPRODUTO: TEdit
            Left = 12
            Top = 19
            Width = 49
            Height = 24
            Hint = 
              'Informe o c'#243'digo da grade/produto e pressione enter para pesquis' +
              'a'
            Color = 16777192
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnKeyPress = DBCODPRODUTOKeyPress
          end
        end
        object BtAddCod: TBitBtn
          Left = 397
          Top = 135
          Width = 23
          Height = 23
          Hint = 'Clique aqui para cadastrar mais c'#243'digos para o produto'
          Caption = '+'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 15
          OnClick = BtAddCodClick
          Layout = blGlyphBottom
        end
        object cbInativaProd: TCheckBox
          Left = 353
          Top = 24
          Width = 178
          Height = 17
          Caption = 'Produto Inativo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cbCtrlDesgaste: TCheckBox
          Left = 353
          Top = 40
          Width = 202
          Height = 17
          Caption = 'Controle de Desgaste'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object cbCtrlHora: TCheckBox
          Left = 353
          Top = 54
          Width = 202
          Height = 17
          Caption = 'Controle por Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object DBColorEdit5: TDBColorEdit
          Left = 25
          Top = 309
          Width = 105
          Height = 21
          Hint = 'C'#243'digo do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Color = clWhite
          Ctl3D = True
          DataField = 'ANP'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 9
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 31
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object cbAcessorio: TCheckBox
          Left = 353
          Top = 9
          Width = 178
          Height = 17
          Caption = 'Acess'#243'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = cbAcessorioClick
        end
        object BtnGrupo: TBitBtn
          Left = 312
          Top = 83
          Width = 30
          Height = 23
          Hint = 'Clique aqui para buscar dados do grupo'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 8
          OnClick = BTNGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object BtnSubGrupo: TBitBtn
          Left = 698
          Top = 84
          Width = 30
          Height = 23
          Hint = 'Clique aqui para buscar dados do sub grupo'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 11
          OnClick = BtnSubGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object DBColorEdit7: TDBColorEdit
          Left = 140
          Top = 309
          Width = 277
          Height = 21
          Hint = 'C'#243'digo do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Color = clWhite
          Ctl3D = True
          DataField = 'DESCRICAO_ANP'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 32
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit24: TDBColorEdit
          Left = 420
          Top = 308
          Width = 133
          Height = 21
          Hint = 'C'#243'digo do produto junto a Ag'#234'ncia Nacional de Petr'#243'leo'
          Color = clWhite
          Ctl3D = True
          DataField = 'CODIGOBENEFICIOFISCAL'
          DataSource = DMESTOQUE.DSSubProd
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 33
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object edEstoqueFisico: TFloatEdit
          Left = 609
          Top = 36
          Width = 121
          Height = 30
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          Text = '0,0000'
          ValueFormat = '##,####0.0000'
          ValueInteger = 0
        end
      end
      object PcAdicionais: TPageControl
        Left = 8
        Top = 341
        Width = 750
        Height = 172
        ActivePage = TabSheet1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = PcAdicionaisChange
        object TabSheet1: TTabSheet
          Caption = 'Financeiro'
          object Label47: TLabel
            Left = 10
            Top = 10
            Width = 81
            Height = 18
            Caption = 'Vlr Comp.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label105: TLabel
            Left = 127
            Top = 10
            Width = 59
            Height = 18
            Hint = 'Valor Unit'#225'rio de Compra sem o Desconto'
            Caption = 'V. Unit.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label57: TLabel
            Left = 244
            Top = 10
            Width = 58
            Height = 18
            Caption = 'Outros:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 10
            Top = 66
            Width = 81
            Height = 18
            Hint = 'Percentual de FRETE pago neste produto'
            Caption = 'Frete (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 362
            Top = 10
            Width = 63
            Height = 18
            Caption = 'Lucrat.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 361
            Top = 66
            Width = 50
            Height = 18
            Caption = 'Indice:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label89: TLabel
            Left = 242
            Top = 66
            Width = 98
            Height = 18
            Caption = 'ICMS ST (%)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label128: TLabel
            Left = 128
            Top = 66
            Width = 61
            Height = 18
            Caption = 'IPI (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object pVlrSeguranca: TPanel
            Left = 477
            Top = 18
            Width = 185
            Height = 86
            TabOrder = 10
            Visible = False
            object Label8: TLabel
              Left = 12
              Top = 17
              Width = 60
              Height = 16
              Caption = '% Lucro:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label7: TLabel
              Left = 127
              Top = 17
              Width = 38
              Height = 16
              Caption = 'Valor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 4
              Top = 4
              Width = 169
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'VALOR DE SEGURAN'#199'A'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btnFechaPVlrSeg: TSpeedButton
              Left = 164
              Top = 3
              Width = 17
              Height = 15
              Caption = 'X'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              OnClick = btnFechaPVlrSegClick
            end
            object btnOkVlrSeg: TSpeedButton
              Left = 74
              Top = 58
              Width = 29
              Height = 22
              Caption = 'OK'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnOkVlrSegClick
            end
            object DBColorEdit13: TDBColorEdit
              Left = 102
              Top = 34
              Width = 67
              Height = 21
              Hint = 'Valor m'#237'nimo de venda para o produto.'
              Color = 12312063
              Ctl3D = True
              DataField = 'MARGEMSEG'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnEnter = DBColorEdit13Enter
              OnExit = DBColorEdit13Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit12: TDBColorEdit
              Left = 8
              Top = 34
              Width = 67
              Height = 21
              Hint = 
                'Percentual de lucratividade para c'#225'lculo do valor m'#237'nimo de vend' +
                'a'
              Color = 12312063
              Ctl3D = True
              DataField = 'PERCMARGSEG'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnEnter = DBColorEdit12Enter
              OnExit = DBColorEdit12Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object dbvalorunitario: TDBEdit
            Left = 10
            Top = 30
            Width = 110
            Height = 26
            Hint = 
              'Valor unit'#225'rio pago ao fornecedor de acordo com o indicado na no' +
              'ta fiscal'
            Color = 16053492
            Ctl3D = True
            DataField = 'VLRCOMPSD'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnEnter = dbvalorunitarioEnter
            OnExit = dbvalorunitarioExit
          end
          object DBVlrUnitCompSD: TDBEdit
            Left = 127
            Top = 30
            Width = 110
            Height = 26
            Hint = 
              'Valor pago por cada unidade contida dentro da embalagem. Caso o ' +
              'produto n'#227'o seja vendido fora da embalagem original aplica aqui ' +
              'o mesmo valor anterior (Vlr Comp.:)'
            Color = 16053492
            Ctl3D = True
            DataField = 'VLRUNITCOMP'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnEnter = DBVlrUnitCompSDEnter
            OnExit = dbvalorunitarioExit
          end
          object DBColorEdit1: TDBColorEdit
            Left = 244
            Top = 30
            Width = 110
            Height = 26
            Hint = 
              'Informe neste camo um valor em % para compor outro custo do prod' +
              'uto (aqui pode entrar os custos fixos e vari'#225'veis da empresa)'
            Color = 16053492
            Ctl3D = True
            DataField = 'OUTROS'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnEnter = DBColorEdit1Enter
            OnExit = dbvalorunitarioExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBFrete: TDBColorEdit
            Left = 10
            Top = 86
            Width = 110
            Height = 26
            Hint = 'Percentual de Frete previsto em compra'
            Color = 16053492
            Ctl3D = True
            DataField = 'FRETE'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnEnter = DBFreteEnter
            OnExit = dbvalorunitarioExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBLucrat: TDBColorEdit
            Left = 361
            Top = 30
            Width = 110
            Height = 26
            Hint = 
              'Informe aqui o percentual de lucratividade desejado para este pr' +
              'oduto. Este valor recalcular'#225' os valores de venda'
            Color = 15400921
            Ctl3D = True
            DataField = 'LUCRATIVIDADE'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnEnter = DBLucratEnter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GbPreco: TGroupBox
            Left = 473
            Top = -2
            Width = 270
            Height = 142
            Caption = 'Pre'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object Label36: TLabel
              Left = 69
              Top = 8
              Width = 58
              Height = 18
              Caption = #192' Vista:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 168
              Top = 8
              Width = 65
              Height = 18
              Caption = #192' Prazo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 20
              Top = 38
              Width = 49
              Height = 14
              Caption = 'Varejo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 13
              Top = 71
              Width = 56
              Height = 14
              Caption = 'Atacado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnPPreco: TSpeedButton
              Left = 4
              Top = 115
              Width = 26
              Height = 24
              Cursor = crHandPoint
              Hint = 'Verifique os '#250'ltimos valores do produto'
              Flat = True
              Glyph.Data = {
                AE060000424DAE06000000000000360000002800000018000000170000000100
                18000000000078060000C40E0000C40E00000000000000000000DEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7
                C3BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFEFCFC6DEBAB5D6B2ADE7CBC6EFE3DEF7EBEFF7EF
                EFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEB6ADDEC3BDF7
                F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDE
                DEBAB5EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3CEE7C3
                B5D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFEFCBC6DEB6ADE7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7EBEFDEBEB5F7CFC6DEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFEFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
                A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCB
                BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBAB5F7EFEFFFFBFFFF
                FFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                FFFFFFE7CBC6EFCBBDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C3BDDEBA
                B5F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFE7C3B5DEBAB5F7EBE7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C
                00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEC7BDEFCBBDDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFE7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFF
                A53C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CF
                C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7C7BDD6B6ADE7CBC6F7F3EFFF
                F7F7FFFBFFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
                E7D3CEDEB6ADF7D3C6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEBA
                ADD6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFE7BEB5D6B2ADDEBAB5EFDBD6F7F3EFFFF3EFFFF7F7FFFBF7FFFB
                F7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DEBAADF7CFC6DEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7
                F7EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFE7BEB5DE
                B6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6DEC7C6DEBEB5DEBEB5DEB6ADDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
                EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
                EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
                DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnPPrecoClick
            end
            object Label33: TLabel
              Left = 1
              Top = 102
              Width = 70
              Height = 14
              Caption = 'Industria:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbVlrSeguranca: TLabel
              Left = 134
              Top = 122
              Width = 126
              Height = 13
              Caption = 'Valor de seguran'#231'a'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clHotLight
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentColor = False
              ParentFont = False
              OnClick = lbVlrSegurancaClick
            end
            object EdVlrVarejoVista: TColorEditFloat
              Left = 69
              Top = 27
              Width = 76
              Height = 26
              Hint = 'Valor de venda a vista no varejo. Este valor pode ser editado'
              Color = clSkyBlue
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Text = '0,00'
              OnEnter = EdVlrVarejoVistaEnter
              OnExit = EdVlrVarejoVistaExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrVarejoPrazo: TColorEditFloat
              Left = 167
              Top = 27
              Width = 76
              Height = 26
              Hint = 'Valor de venda a prazo no varejo. Este valor pode ser editado'
              Color = clSkyBlue
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrAtacadoVista: TColorEditFloat
              Left = 69
              Top = 59
              Width = 76
              Height = 26
              Hint = 'Valor de venda a vista no atacado. Este valor pode ser editado'
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrAtacadoPrazo: TColorEditFloat
              Left = 168
              Top = 59
              Width = 76
              Height = 26
              Hint = 'Valor de venda a prazo no atacado. Este valor pode ser editado'
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBDescVarejo: TDBColorEdit
              Left = 145
              Top = 32
              Width = 21
              Height = 20
              Hint = 
                'Maior desconto aplicado '#224' este produto na venda '#224' vista no varej' +
                'o'
              Ctl3D = True
              DataField = 'AVVPROVAR'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnEnter = DBDescVarejoEnter
              OnExit = DBDescVarejoExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBACRECVAREJO: TDBColorEdit
              Left = 244
              Top = 32
              Width = 21
              Height = 20
              Hint = 
                'Maior acr'#233'cimo aplicado '#224' este produto na venda '#224' prazo no varej' +
                'o'
              Ctl3D = True
              DataField = 'AVPPROVAR'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnEnter = DBACRECVAREJOEnter
              OnExit = DBACRECVAREJOExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBACRECATAC: TDBColorEdit
              Left = 244
              Top = 64
              Width = 21
              Height = 20
              Hint = 
                'Maior acr'#233'cimo aplicado '#224' este produto na venda '#224' prazo no ataca' +
                'do'
              Ctl3D = True
              DataField = 'AVPPROAT'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnEnter = DBACRECATACEnter
              OnExit = DBACRECATACExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBDESCATAC: TDBColorEdit
              Left = 145
              Top = 64
              Width = 21
              Height = 20
              Hint = 
                'Maior desconto aplicado '#224' este produto na venda '#224' vista no ataca' +
                'do'
              Ctl3D = True
              DataField = 'AVVPROAT'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnEnter = DBDESCATACEnter
              OnExit = DBDESCATACExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrIndustriaVista: TColorEditFloat
              Left = 69
              Top = 91
              Width = 76
              Height = 26
              Hint = 'Valor de venda a vista no atacado. Este valor pode ser editado'
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              Text = '0,00'
              OnExit = EdVlrIndustriaVistaExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBDESCInd: TDBColorEdit
              Left = 145
              Top = 96
              Width = 21
              Height = 20
              Hint = 
                'Maior desconto aplicado '#224' este produto na venda '#224' vista na indus' +
                'tria'
              Ctl3D = True
              DataField = 'AVVPROIND'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnEnter = DBDESCIndEnter
              OnExit = DBDESCIndExit
              NotFoundText = '0'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrIndustriaPrazo: TColorEditFloat
              Left = 168
              Top = 91
              Width = 76
              Height = 26
              Hint = 'Valor de venda a vista no atacado. Este valor pode ser editado'
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              Text = '0,00'
              OnExit = EdVlrIndustriaPrazoExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBACRECIND: TDBColorEdit
              Left = 244
              Top = 96
              Width = 21
              Height = 20
              Hint = 
                'Maior acr'#233'cimo aplicado '#224' este produto na venda '#224' prazo na indus' +
                'tria'
              Ctl3D = True
              DataField = 'AVPPROIND'
              DataSource = DMESTOQUE.DSEstoque
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnEnter = DBACRECINDEnter
              OnExit = DBACRECINDExit
              NotFoundText = '0'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DbIndice: TDBColorEdit
            Left = 361
            Top = 86
            Width = 110
            Height = 26
            Hint = 
              'Informe aqui um '#237'ndice para calculo direto dos valores de venda.' +
              ' Valores de venda = Valor de compra * indice'
            Color = 16776697
            Ctl3D = True
            DataField = 'INDICE'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnKeyPress = DbIndiceKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object PValores: TPanel
            Left = 736
            Top = 5
            Width = 480
            Height = 136
            Color = 16772332
            TabOrder = 9
            Visible = False
            object BtnDownLogoff: TSpeedButton
              Left = 453
              Top = 4
              Width = 25
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar'
              Flat = True
              Glyph.Data = {
                B6030000424DB603000000000000360000002800000012000000100000000100
                18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
                FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
                FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
                0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
                00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
                0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
                9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
                FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnDownLogoffClick
            end
            object LDados: TLabel
              Left = 147
              Top = 120
              Width = 35
              Height = 14
              Caption = 'Dados'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 11
              Top = 120
              Width = 133
              Height = 14
              Caption = #218'ltimas Altera'#231#245'es:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object GroupBox5: TGroupBox
              Left = 8
              Top = 1
              Width = 201
              Height = 118
              Caption = #218'ltimos Valores'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label115: TLabel
                Left = 1
                Top = 16
                Width = 49
                Height = 14
                Caption = 'Varejo:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label116: TLabel
                Left = 1
                Top = 65
                Width = 56
                Height = 14
                Caption = 'Atacado:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object LvarejoVista: TLabel
                Left = 1
                Top = 51
                Width = 93
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LvarejoVista'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label117: TLabel
                Left = 3
                Top = 32
                Width = 96
                Height = 16
                Caption = #192' Vista(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = []
                ParentFont = False
              end
              object Label118: TLabel
                Left = 102
                Top = 32
                Width = 96
                Height = 16
                Caption = #192' Prazo(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = []
                ParentFont = False
              end
              object Label120: TLabel
                Left = 108
                Top = 82
                Width = 75
                Height = 16
                Caption = #192' Prazo(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label119: TLabel
                Left = 7
                Top = 82
                Width = 71
                Height = 16
                Caption = #192' Vista(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object LVarejoPrazo: TLabel
                Left = 98
                Top = 51
                Width = 97
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LvarejoPrazo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LAtacVista: TLabel
                Left = 1
                Top = 100
                Width = 93
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LAtacVista'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LAtacPrazo: TLabel
                Left = 98
                Top = 100
                Width = 97
                Height = 14
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'LAtacPrazo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object GroupBox7: TGroupBox
              Left = 242
              Top = 1
              Width = 201
              Height = 118
              Caption = 'Valores Antigos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label121: TLabel
                Left = 1
                Top = 17
                Width = 49
                Height = 14
                Caption = 'Varejo:'
                Color = 16772332
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold, fsUnderline]
                ParentColor = False
                ParentFont = False
              end
              object Label122: TLabel
                Left = 7
                Top = 32
                Width = 71
                Height = 16
                Caption = #192' Vista(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label123: TLabel
                Left = 1
                Top = 65
                Width = 56
                Height = 14
                Caption = 'Atacado:'
                Color = 16772332
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold, fsUnderline]
                ParentColor = False
                ParentFont = False
              end
              object Label126: TLabel
                Left = 108
                Top = 32
                Width = 75
                Height = 16
                Caption = #192' Prazo(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object DBVlrVistVar: TDBText
                Left = 1
                Top = 51
                Width = 93
                Height = 17
                Alignment = taRightJustify
                DataField = 'ULTVLR_VNDVVAR'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBVlrPrazoVar: TDBText
                Left = 98
                Top = 51
                Width = 97
                Height = 17
                Alignment = taRightJustify
                DataField = 'ULTVLR_VNDPVAR'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label124: TLabel
                Left = 7
                Top = 82
                Width = 71
                Height = 16
                Caption = #192' Vista(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label125: TLabel
                Left = 108
                Top = 82
                Width = 75
                Height = 16
                Caption = #192' Prazo(R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object DBVlrVistAtac: TDBText
                Left = 1
                Top = 100
                Width = 93
                Height = 17
                Alignment = taRightJustify
                DataField = 'ULTVLR_VNDVATAC'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object DBVlrPrazoAtac: TDBText
                Left = 98
                Top = 100
                Width = 97
                Height = 17
                Alignment = taRightJustify
                DataField = 'ULTVLR_VPATAC'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
            end
          end
          object DBColorEdit9: TDBColorEdit
            Left = 244
            Top = 86
            Width = 110
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'PIS'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
            OnEnter = DBColorEdit9Enter
            OnExit = dbvalorunitarioExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBIPI: TDBColorEdit
            Left = 127
            Top = 86
            Width = 110
            Height = 26
            Hint = 
              'Percentual de IPI pago na Compra do produto, campo usado para c'#225 +
              'luclos de custo do produto'
            Color = clWhite
            Ctl3D = True
            DataField = 'IPIPROD'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnEnter = DBIPIEnter
            OnExit = dbvalorunitarioExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Tributa'#231#227'o'
          ImageIndex = 1
          object PageControl1: TPageControl
            Left = 2
            Top = 0
            Width = 740
            Height = 140
            ActivePage = TabSheet17
            TabOrder = 0
            object TabSheet17: TTabSheet
              Caption = 'Geral'
              object Label71: TLabel
                Left = 2
                Top = 60
                Width = 81
                Height = 18
                Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
                Caption = 'Red. Base:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label5: TLabel
                Left = 127
                Top = 60
                Width = 45
                Height = 18
                Caption = 'Emb.:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label130: TLabel
                Left = 254
                Top = 60
                Width = 74
                Height = 18
                Caption = 'IPI Vnd $:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label53: TLabel
                Left = 372
                Top = 60
                Width = 76
                Height = 18
                Caption = 'ICMS(%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label90: TLabel
                Left = 488
                Top = 60
                Width = 58
                Height = 18
                Caption = 'COFINS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 602
                Top = 60
                Width = 108
                Height = 18
                Caption = 'Vlr. Custo Nf-e'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              inline pCfopDentroEstado: TFrmBusca
                Left = 0
                Top = 1
                Width = 249
                Height = 37
                Color = 16772332
                ParentColor = False
                TabOrder = 0
                inherited LTextoBusca: TLabel
                  Width = 112
                  Height = 14
                  Caption = 'Dentro do Estado'
                  Font.Height = -11
                  Font.Name = 'Courier New'
                end
                inherited LUZOPEN: TShape
                  Left = 201
                end
                inherited LUZMINUS: TShape
                  Left = 222
                end
                inherited EdDescricao: TFlatEdit
                  Left = 53
                  Width = 150
                  Height = 20
                  Font.Name = 'Courier New'
                end
                inherited BTNOPEN: TBitBtn
                  Left = 203
                  OnClick = pCfopDentroEstadoBTNOPENClick
                end
                inherited BTNMINUS: TBitBtn
                  Left = 223
                  OnClick = pCfopDentroEstadoBTNMINUSClick
                end
                inherited EDCodigo: TFlatEdit
                  Width = 50
                  Height = 20
                  Font.Name = 'Courier New'
                end
              end
              inline pCfopForaEstado: TFrmBusca
                Left = 254
                Top = 1
                Width = 246
                Height = 37
                Color = 16772332
                ParentColor = False
                TabOrder = 1
                inherited LTextoBusca: TLabel
                  Width = 98
                  Height = 14
                  Caption = 'Fora do Estado'
                  Font.Height = -11
                  Font.Name = 'Courier New'
                end
                inherited LUZOPEN: TShape
                  Left = 200
                end
                inherited LUZMINUS: TShape
                  Left = 221
                end
                inherited EdDescricao: TFlatEdit
                  Left = 52
                  Width = 150
                  Height = 20
                  Font.Name = 'Courier New'
                end
                inherited BTNOPEN: TBitBtn
                  Left = 202
                  OnClick = pCfopForaEstadoBTNOPENClick
                end
                inherited BTNMINUS: TBitBtn
                  Left = 223
                  OnClick = pCfopForaEstadoBTNMINUSClick
                end
                inherited EDCodigo: TFlatEdit
                  Width = 50
                  Height = 20
                  Font.Name = 'Courier New'
                end
              end
              object CBGerarPisCofins: TCheckBox
                Left = 3
                Top = 40
                Width = 161
                Height = 17
                Caption = 'Gerar Pis/Cofins'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBColorEdit17: TDBColorEdit
                Left = 2
                Top = 80
                Width = 105
                Height = 26
                Hint = 
                  'Percentual aplicado para uso em redu'#231#227'o de Base de C'#225'lculo de Ic' +
                  'ms'
                Color = clWhite
                Ctl3D = True
                DataField = 'REDUCBASE'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnEnter = DBColorEdit17Enter
                OnExit = DBLucratExit
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit2: TDBColorEdit
                Left = 127
                Top = 80
                Width = 110
                Height = 26
                Hint = 'Percentual de custo referente a embalgem'
                Color = 16053492
                Ctl3D = True
                DataField = 'EMBPROD'
                DataSource = DMESTOQUE.DSSubProd
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnEnter = DBColorEdit2Enter
                OnExit = DBLucratExit
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit32: TDBColorEdit
                Left = 254
                Top = 80
                Width = 105
                Height = 26
                Hint = 
                  'Percentual de IPI usado no momento da Venda, campo usado para c'#225 +
                  'clulos de venda na nota fiscal'
                Color = clWhite
                Ctl3D = True
                DataField = 'IPI_VND'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBICMS: TDBColorEdit
                Left = 372
                Top = 80
                Width = 105
                Height = 26
                Hint = 'Percentual de Icms aplicado na Venda'
                Color = clWhite
                Ctl3D = True
                DataField = 'ICMS'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit10: TDBColorEdit
                Left = 488
                Top = 80
                Width = 105
                Height = 26
                Color = clWhite
                Ctl3D = True
                DataField = 'COFINS'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 7
                OnEnter = DBColorEdit10Enter
                OnExit = DBLucratExit
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit6: TDBColorEdit
                Left = 602
                Top = 80
                Width = 117
                Height = 26
                Color = clWhite
                Ctl3D = True
                DataField = 'VALCUSTONFE'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 8
                OnEnter = DBColorEdit9Enter
                OnExit = dbvalorunitarioExit
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object cbRetemPisCofins: TCheckBox
                Left = 565
                Top = 8
                Width = 151
                Height = 17
                Caption = 'Retem Pis/Cofins'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
              end
            end
            object TabSheet18: TTabSheet
              Caption = 'Retido na entrada'
              ImageIndex = 1
              object Label66: TLabel
                Left = 26
                Top = 12
                Width = 106
                Height = 18
                Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
                Caption = 'Base ST (R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label67: TLabel
                Left = 338
                Top = 12
                Width = 107
                Height = 18
                Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
                Caption = 'Valor ST (R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label73: TLabel
                Left = 186
                Top = 12
                Width = 91
                Height = 18
                Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
                Caption = 'Aliq.ST (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object Label74: TLabel
                Left = 506
                Top = 12
                Width = 127
                Height = 18
                Hint = 'Redu'#231#227'o da Base de C'#225'lculo'
                Caption = 'Valor ICMS (R$):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBColorEdit8: TDBColorEdit
                Left = 26
                Top = 34
                Width = 111
                Height = 26
                Hint = 
                  'Valor unit'#225'rio da base de ICMS ST da nota de compra (campo vBCST' +
                  ')'
                Color = clWhite
                Ctl3D = True
                DataField = 'COMPVLRBCST'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
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
              object DBColorEdit19: TDBColorEdit
                Left = 338
                Top = 34
                Width = 111
                Height = 26
                Hint = 'Valor unit'#225'rio do ICMS ST da compra (campo vICMSST)'
                Color = clWhite
                Ctl3D = True
                DataField = 'COMPVLRST'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit22: TDBColorEdit
                Left = 186
                Top = 34
                Width = 105
                Height = 26
                Hint = 'Soma de pICMSST e pFCP da nota de compra'
                Color = clWhite
                Ctl3D = True
                DataField = 'COMPALIQST'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit23: TDBColorEdit
                Left = 506
                Top = 34
                Width = 119
                Height = 26
                Hint = 'Valor unit'#225'rio do ICMS de compra (campo vICMS)'
                Color = clWhite
                Ctl3D = True
                DataField = 'COMPVLRICMS'
                DataSource = DMESTOQUE.DSEstoque
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Estoque'
          ImageIndex = 2
          object Label24: TLabel
            Left = 472
            Top = 10
            Width = 37
            Height = 18
            Caption = 'M'#237'n.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 472
            Top = 66
            Width = 43
            Height = 18
            Caption = 'M'#225'x.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 606
            Top = 10
            Width = 87
            Height = 18
            Caption = #218'lt. Comp.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 606
            Top = 66
            Width = 110
            Height = 18
            Caption = #218'lt. Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 336
            Top = 66
            Width = 68
            Height = 18
            Caption = 'Dt. Cad.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 337
            Top = 18
            Width = 100
            Height = 18
            Caption = 'Qtd Atacado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBColorEdit15: TDBColorEdit
            Left = 472
            Top = 30
            Width = 105
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'ESTMIN'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit14: TDBColorEdit
            Left = 472
            Top = 86
            Width = 105
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'ESTMAX'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit21: TDBColorEdit
            Left = 606
            Top = 30
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'ULTCOMPRA'
            DataSource = DMESTOQUE.DSEstoque
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit20: TDBColorEdit
            Left = 606
            Top = 86
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'ULTVENDA'
            DataSource = DMESTOQUE.DSEstoque
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBDtCad: TDBColorEdit
            Left = 336
            Top = 86
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'DTCAD'
            DataSource = DMESTOQUE.DSEstoque
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit33: TDBColorEdit
            Left = 336
            Top = 38
            Width = 105
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'QTDATC'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Posi'#231#227'o Financeira'
          ImageIndex = 3
          object Label48: TLabel
            Left = 10
            Top = 10
            Width = 90
            Height = 18
            Caption = 'Vlr Rep.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 10
            Top = 66
            Width = 110
            Height = 18
            Caption = 'Coef. Div.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 128
            Top = 10
            Width = 90
            Height = 18
            Caption = 'C. M. V.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 128
            Top = 66
            Width = 90
            Height = 18
            Caption = 'Vlr Est.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object DBValRep: TDBColorEdit
            Left = 10
            Top = 30
            Width = 105
            Height = 26
            Color = 13428479
            Ctl3D = True
            DataField = 'VALREP'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            MaxLength = 3
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCoefDiv: TDBColorEdit
            Left = 10
            Top = 86
            Width = 105
            Height = 26
            Color = 13428479
            Ctl3D = True
            DataField = 'COEFDIV'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCusMed: TDBColorEdit
            Left = 128
            Top = 30
            Width = 105
            Height = 26
            Color = 13428479
            Ctl3D = True
            DataField = 'VALCUSTO'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBValEst: TDBColorEdit
            Left = 128
            Top = 86
            Width = 105
            Height = 26
            Color = 13428479
            Ctl3D = True
            DataField = 'VALOREST'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Courier New'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object Panel3: TPanel
            Left = 265
            Top = 14
            Width = 469
            Height = 111
            Alignment = taRightJustify
            BevelInner = bvLowered
            Color = 16772332
            Enabled = False
            TabOrder = 4
            object Label55: TLabel
              Left = 2
              Top = 2
              Width = 455
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valores em Moeda (Simula'#231#227'o de venda de 01 unidade)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -16
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label76: TLabel
              Left = 7
              Top = 27
              Width = 56
              Height = 17
              Caption = 'I. Feder.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label78: TLabel
              Left = 7
              Top = 66
              Width = 41
              Height = 17
              Caption = 'I. Est.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 72
              Top = 27
              Width = 40
              Height = 17
              Caption = 'Com.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label80: TLabel
              Left = 72
              Top = 67
              Width = 53
              Height = 17
              Caption = 'Outros.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label81: TLabel
              Left = 138
              Top = 67
              Width = 71
              Height = 17
              Caption = 'Luc. Bruto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 138
              Top = 27
              Width = 64
              Height = 17
              Caption = 'D. + Imp.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label83: TLabel
              Left = 220
              Top = 27
              Width = 81
              Height = 17
              Caption = 'D. Val. Rep.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 220
              Top = 67
              Width = 62
              Height = 17
              Hint = 'Lucro l'#237'quido com desconto:'
              Caption = 'Luc. C/D:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label6: TLabel
              Left = 314
              Top = 27
              Width = 61
              Height = 17
              Hint = 'Lucro l'#237'quido sem desconto:'
              Caption = 'Luc. S/D:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label104: TLabel
              Left = 314
              Top = 67
              Width = 66
              Height = 17
              Hint = 'Lucro l'#237'quido sem desconto:'
              Caption = 'Luc. Real:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label9: TLabel
              Left = 390
              Top = 27
              Width = 73
              Height = 17
              Hint = 'Lucro l'#237'quido sem desconto:'
              Caption = 'Luc. Bonif.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label75: TLabel
              Left = 390
              Top = 67
              Width = 70
              Height = 17
              Hint = 'Lucro l'#237'quido sem desconto:'
              Caption = 'Custo Tot.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object EDIFED: TFloatEdit
              Left = 7
              Top = 43
              Width = 58
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 0
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDIEST: TFloatEdit
              Left = 7
              Top = 82
              Width = 59
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 1
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDCOMISS: TFloatEdit
              Left = 72
              Top = 43
              Width = 56
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 2
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDOUTROS: TFloatEdit
              Left = 72
              Top = 83
              Width = 56
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 3
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDLUCBRUTO: TFloatEdit
              Left = 138
              Top = 83
              Width = 74
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 4
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDDESCIMP: TFloatEdit
              Left = 138
              Top = 43
              Width = 74
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 5
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDDESCVALREP: TFloatEdit
              Left = 220
              Top = 43
              Width = 82
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 6
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDLUCLIQ: TFloatEdit
              Left = 220
              Top = 83
              Width = 82
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 7
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EDLUCSDESC: TFloatEdit
              Left = 314
              Top = 43
              Width = 64
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 8
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EdLucReal: TFloatEdit
              Left = 314
              Top = 83
              Width = 64
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 9
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EdLucBonif: TFloatEdit
              Left = 390
              Top = 43
              Width = 71
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 10
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
            object EdCustoTotal: TFloatEdit
              Left = 390
              Top = 83
              Width = 71
              Height = 21
              Color = clInactiveCaptionText
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 11
              Text = '0,00'
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Comiss'#245'es'
          ImageIndex = 4
          object Label19: TLabel
            Left = 14
            Top = 3
            Width = 440
            Height = 16
            Caption = 'Informe nesta tela o percentual de comiss'#227'o ao vendedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 86
            Top = 35
            Width = 60
            Height = 18
            Caption = 'Varejo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 86
            Top = 53
            Width = 58
            Height = 18
            Caption = #192' Vista:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 217
            Top = 53
            Width = 65
            Height = 18
            Caption = #192' Prazo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 389
            Top = 35
            Width = 73
            Height = 18
            Caption = 'Atacado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 389
            Top = 53
            Width = 58
            Height = 18
            Caption = #192' Vista:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 520
            Top = 53
            Width = 65
            Height = 18
            Caption = #192' Prazo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBComVarejo: TDBColorEdit
            Left = 86
            Top = 72
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'CVVPROVAR'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCOMPRAZOVAR: TDBColorEdit
            Left = 216
            Top = 72
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'CVPPROVAR'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCOMPRAZOATAC: TDBColorEdit
            Left = 520
            Top = 72
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'CVPPROAT'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCOMVISTAATAC: TDBColorEdit
            Left = 389
            Top = 72
            Width = 105
            Height = 26
            Ctl3D = True
            DataField = 'CVVPROAT'
            DataSource = DMESTOQUE.DSEstoque
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object CBComissao: TCheckBox
            Left = 6
            Top = 120
            Width = 186
            Height = 17
            Caption = 'N'#227'o gerar comiss'#227'o'
            TabOrder = 4
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 5
          object Label27: TLabel
            Left = 12
            Top = 3
            Width = 140
            Height = 13
            Caption = 'Intervalo de lan'#231'amento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 136
            Top = 60
            Width = 30
            Height = 30
            Cursor = crHandPoint
            Hint = 'Hist'#243'rico de compras e vendas'
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF6C47DA7656EAC1B2F6FFF4F4FFEDEDFFEDEEFFFFFFFFFFFFA4D6FD
              48B1FC61C4FDFDFCFDFFEDEEFFEDEDFFF6F6FFFFFFFFFFFFFFFDFCFFAF7BFF8E
              4DFFA267FFF2E9FFFFFFFFFFFF5E35D5623DE8AE9BF3FFF4F4FFEDEDFFEDEDFF
              EDEDFFF6F689CBFE37ABFC3FB7FCFAFBFDFFEDEDFFEDEDFFEDEDFFEDEEFFFFFF
              FFA76EFF7F3EFF954DFFAB5CFFC994FFFFFFFFFFFFC6BEEACAC5EDF2F0FCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEFF8FFB6E0FED6F0FEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBD92FF7F3EFF974EFFB965FFB965FFC682FFFFFFFFFFFF69AC2D
              6BCC45B8E6A6FFF4F4FFEDEDFFEDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFD6B9FF813FFF8D47FFB864FFB965FFB965FFDBB0FF
              FFFFFFFFFF69AC2D6BCC46B7E6A5FFF4F4FFEDEDFFEDEDFFEDEDFFF6F6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBDBFF8543FF8642FFB462FFB965FFB9
              65FFD6A5FFFEFDFFFFFFFFFFFFF4FAF0F3FBF0FDFEFDFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F3FF8F4DFF8240FFAF5E
              FFB965FFBB69FFE4C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFDED6D68F747487656487605D9066639F7977BDA3A1D3C8C7695154A3725CFF
              7F3EFFA356FFB965FFC075FFF0DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFDFCFC876E6E694545885C598B5F5C966A67976B698D605D8B5E5B8C5F
              5C805C5B4D30329B6148FFB361FFC988FFF8F0FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFEFDFD6E51536D4748946765CBA3A3F5D1D2FFDDDEFFDDDE
              F8D5D6D2ABAB996D6A8B5E5B855D5B4D3032A28170FFFDFBFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7474623F409E7371F1CDCEA57FDC67
              3ED76039DF6D49E5AA9ACDF1DBD0F7D4D5A87D7C8B5E5B805C5B644C4EFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DEDE5032358A5F5DF0CC
              CD855ED9592FD6613CE8623DE8623DE88AC27579CE54EDDBCCF8D5D6996E6B8B
              5F5CD0C3C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF92797A
              603E3FC39C9ACDA9DC562BD0613CE6623DE8623DE88079C16BCC466BCC4698D1
              74FFDDDED3ADAC8B5E5BBBA19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF67494B714A4AEBC7C7845CD95A30D8623DE8623DE8623DE886C66B
              6BCC466BCC466CCC47F8DDD7F9D6D78D605D9C7673FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF5A3C3D795150FCDADB764DD75C33DB623DE862
              3DE87E60DEC4D7A1C4D7A1C4D7A1C4D7A1F6DCD5FFDDDE996E6B8F6461FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A3C3E78504FFCDADA8D65
              D95A30D8623DE8623DE88560E684C5F13EB7FC3EB7FC3EB7FC78C3F3FFDDDE98
              6C69906461FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF694C4D
              6F4949E8C4C4E1BFDD572CD1613CE7623DE88560E684C5F13EB7FC3EB7FC3EB7
              FCA7CBECF6D4D48C605D9E7976FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF9780815E3C3EBE9695FFDDDEAA84DB5B32D7623DE88560E684C5F1
              3EB7FC3EB7FC57BCF8F5DBE0CEA7A78B5E5BBEA5A3FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEDE9E9513235855B58EAC5C6FFDDDED2AFDD89
              62DC9D78E284C5F13EB7FC69BFF6E6D8E2F3D0D0956A678C605DECE5E5FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A82835D3C3D986B
              68EAC6C6FFDDDEFFDDDEFFDDDED6D5E4DBD6E3FFDDDEF2CFCFA076738B5E5BC0
              A7A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF7D62626844438E6360BF9795E9C5C5FDDBDCFEDCDDEDC9CAC69F9E9367
              648B5E5BAE8F8DFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF998383664445845A578B5E5B8B5F5C8C605D
              8B5E5B8B5E5B8F6360C4ADABFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE9E99B84848F
              706F926F6C9B7573A98886C8B3B1F2EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object DBGrid2: TDBGrid
            Left = 180
            Top = 0
            Width = 562
            Height = 141
            Hint = 'Entrada de Corre'#231#227'o'
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
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'OPERACAO'
                Title.Caption = 'Opera'#231#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAMOVIMENTO'
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORAMOVIMENTO'
                Title.Caption = 'Hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADEMOVIMENTADO'
                Title.Caption = 'Quantidade'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORIGEM_TIPO'
                Title.Caption = 'Origem'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end>
          end
          object edFiltroHistoricoIni: TMaskEdit
            Left = 12
            Top = 17
            Width = 76
            Height = 21
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
          end
          object edFiltroHistoricoFim: TMaskEdit
            Left = 92
            Top = 17
            Width = 76
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 2
            Text = '  /  /    '
          end
          object BitBtn16: TBitBtn
            Left = 12
            Top = 114
            Width = 155
            Height = 25
            Caption = 'Aplicar Filtro'
            TabOrder = 3
            OnClick = BitBtn16Click
          end
          object RgFiltroTipoHistorico: TRadioGroup
            Left = 12
            Top = 44
            Width = 105
            Height = 65
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Todos'
              'Entradas'
              'Sa'#237'das')
            ParentFont = False
            TabOrder = 4
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Adicional'
          ImageIndex = 6
          object Label103: TLabel
            Left = 10
            Top = 10
            Width = 101
            Height = 18
            Caption = 'Classifica'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LTextoAuxProd: TLabel
            Left = 133
            Top = 10
            Width = 40
            Height = 18
            Caption = 'USO:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 221
            Top = 10
            Width = 83
            Height = 18
            Caption = 'Fabricante:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 313
            Top = 10
            Width = 125
            Height = 18
            Caption = 'Quant. Garantia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 460
            Top = 10
            Width = 141
            Height = 18
            Hint = 'Observa'#231#227'o Fiscal'
            Caption = 'Observa'#231#227'o Fiscal:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label32: TLabel
            Left = 12
            Top = 66
            Width = 413
            Height = 18
            Hint = 'Texto complementar do produto para envio de NF-e'
            Caption = 'Complemento Fiscal da Descri'#231#227'o (Max 500 Carcteres)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBClassificacao: TDBColorComboBox
            Left = 10
            Top = 30
            Width = 119
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'CLASSIFICACAO'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 18
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCor: TDBColorComboBox
            Left = 133
            Top = 30
            Width = 85
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'COR'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 18
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit11: TDBColorEdit
            Left = 221
            Top = 30
            Width = 89
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'FABRICANTE'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit28: TDBColorEdit
            Left = 314
            Top = 30
            Width = 36
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'QUANTGARANTIA'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorComboBox2: TDBColorComboBox
            Left = 351
            Top = 30
            Width = 106
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'TIPOGARANTIA'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 18
            Items.Strings = (
              'Dias'
              'Meses'
              'Anos'
              'Km'
              'Hs')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit18: TDBColorEdit
            Left = 460
            Top = 30
            Width = 277
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'OBSFISCAL'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 5
            OnExit = dbcodbarraExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit4: TDBColorEdit
            Left = 9
            Top = 86
            Width = 728
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'COMPLEMENTOFISCAL'
            DataSource = DMESTOQUE.DSSubProd
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
            OnExit = dbcodbarraExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Contas'
          ImageIndex = 7
          object DbGridContas: TDBGrid
            Left = 0
            Top = 1
            Width = 513
            Height = 137
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
          end
          object BitBtn1: TBitBtn
            Left = 536
            Top = 112
            Width = 150
            Height = 25
            Caption = 'Remover'
            TabOrder = 1
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 536
            Top = 80
            Width = 150
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 2
            OnClick = BitBtn2Click
          end
          object BitBtn4: TBitBtn
            Left = 536
            Top = 8
            Width = 150
            Height = 25
            Caption = 'Instalar Padr'#227'o'
            TabOrder = 3
            OnClick = BitBtn4Click
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Tab. Pre'#231'os'
          ImageIndex = 2
          object RotateLabel1: TRotateLabel
            Left = 22
            Top = 29
            Width = 88
            Height = 16
            Escapement = 90
            TextStyle = tsRaised
            Caption = 'T A B E L A S '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RotateLabel2: TRotateLabel
            Left = 151
            Top = 6
            Width = 72
            Height = 16
            Escapement = 0
            TextStyle = tsRaised
            Caption = 'F A I X A S '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LTabelaSelecionada: TRotateLabel
            Left = 36
            Top = 31
            Width = 15
            Height = 68
            Escapement = 90
            TextStyle = tsRaised
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'teste'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object LFaixaSelecionada: TRotateLabel
            Left = 211
            Top = 6
            Width = 117
            Height = 16
            Escapement = 0
            TextStyle = tsRaised
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object PAdicionaTabelaFaixa: TPanel
            Left = 24
            Top = 0
            Width = 297
            Height = 139
            Color = clActiveCaption
            TabOrder = 6
            Visible = False
            object FashionPanel3: TFashionPanel
              Left = 2
              Top = 2
              Width = 293
              Height = 135
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
              Title = 'Adicionar Pre'#231'o a Tabela e Faixa'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object Label20: TLabel
                Left = 11
                Top = 33
                Width = 49
                Height = 14
                Caption = 'Tabela:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 155
                Top = 33
                Width = 42
                Height = 14
                Caption = 'Faixa:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 10
                Top = 86
                Width = 48
                Height = 16
                Caption = 'Pre'#231'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnAdicionaTabelaFaixa: TBitBtn
                Left = 263
                Top = 108
                Width = 28
                Height = 25
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = BtnAdicionaTabelaFaixaClick
                Layout = blGlyphRight
                Spacing = 10
              end
              object BitBtn12: TBitBtn
                Left = 276
                Top = 3
                Width = 15
                Height = 15
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = 'X'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = BitBtn12Click
                Layout = blGlyphRight
                Spacing = 10
              end
              object EdTabela_TabelaFaixa: TDBLookupComboBox
                Left = 8
                Top = 48
                Width = 137
                Height = 24
                TabOrder = 0
                OnKeyDown = EdTabela_TabelaFaixaKeyDown
              end
              object EdFaixa_TabelaFaixa: TDBLookupComboBox
                Left = 152
                Top = 48
                Width = 97
                Height = 24
                TabOrder = 1
                OnKeyDown = EdTabela_TabelaFaixaKeyDown
              end
              object EdPrecoTabelaFaixaPreco: TColorEditFloat
                Left = 8
                Top = 104
                Width = 136
                Height = 24
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                Text = '0,00'
                OnKeyDown = EdTabela_TabelaFaixaKeyDown
                ValueFormat = '##,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
          end
          object PNovaTabela: TPanel
            Left = 48
            Top = 72
            Width = 248
            Height = 65
            Color = clActiveCaption
            TabOrder = 4
            Visible = False
            object FashionPanel2: TFashionPanel
              Left = 2
              Top = 2
              Width = 244
              Height = 61
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
              Title = 'Adicionar Nova Tabela de Pre'#231'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object EdNovaTabela: TEdit
                Left = 8
                Top = 24
                Width = 193
                Height = 26
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnKeyDown = EdNovaTabelaKeyDown
              end
              object BitBtn9: TBitBtn
                Left = 208
                Top = 25
                Width = 28
                Height = 25
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                Caption = 'Ok'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BitBtn9Click
                Layout = blGlyphRight
                Spacing = 10
              end
              object BitBtn10: TBitBtn
                Left = 220
                Top = 3
                Width = 15
                Height = 15
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = 'X'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BitBtn10Click
                Layout = blGlyphRight
                Spacing = 10
              end
            end
          end
          object PEditaCelula: TPanel
            Left = 52
            Top = 28
            Width = 248
            Height = 94
            Color = clActiveCaption
            TabOrder = 9
            Visible = False
            object FPEditaCelula: TFashionPanel
              Left = 2
              Top = 2
              Width = 244
              Height = 89
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
              Title = 'Adicionar Nova Faixa de Pre'#231'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object LEditaDescricao: TLabel
                Left = 40
                Top = 64
                Width = 88
                Height = 16
                Caption = 'Quantidade:'
              end
              object EdEditaDescricao: TEdit
                Left = 8
                Top = 24
                Width = 193
                Height = 26
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                OnKeyDown = EdEditaQuantidadeKeyDown
              end
              object BtnEditaCelula: TBitBtn
                Left = 208
                Top = 25
                Width = 28
                Height = 25
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                Caption = 'Ok'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BtnEditaCelulaClick
                Layout = blGlyphRight
                Spacing = 10
              end
              object BitBtn17: TBitBtn
                Left = 220
                Top = 3
                Width = 15
                Height = 15
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = 'X'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = BitBtn17Click
                Layout = blGlyphRight
                Spacing = 10
              end
              object EdEditaQuantidade: TFloatEdit
                Left = 132
                Top = 54
                Width = 69
                Height = 26
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Text = '0,00'
                OnKeyDown = EdEditaQuantidadeKeyDown
                ValueFormat = '##,##0.00'
                ValueInteger = 0
              end
            end
          end
          object BitBtn5: TBitBtn
            Left = 588
            Top = 8
            Width = 147
            Height = 25
            Caption = 'Atualizar Tabela'
            TabOrder = 0
            OnClick = BitBtn5Click
          end
          object btnnovafaixapreco: TBitBtn
            Left = 134
            Top = 7
            Width = 15
            Height = 15
            Hint = 'Adicione nova Faixa de Pre'#231'o'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnnovafaixaprecoClick
          end
          object btnnovatabela: TBitBtn
            Left = 29
            Top = 104
            Width = 15
            Height = 15
            Hint = 'Adicione Nova Tabela de Pre'#231'o'
            Caption = '+'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnnovatabelaClick
          end
          object BtnTabelaFaixaPreco: TBitBtn
            Left = 23
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Adiciona Pre'#231'o a Tabela e Faixa'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BtnTabelaFaixaPrecoClick
            Glyph.Data = {
              86050000424D8605000000000000360000002800000016000000140000000100
              1800000000005005000000000000000000000000000000000000F0F0F0F0F0F0
              F0F0F0F0F0F0241CED241CED241CEDF0F0F0F0F0F0F0F0F0F0F0F0000000CC48
              3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F0000000000F0F0
              F0F0F0F0F0F0F0F0F0F0241CED241CED241CEDF0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0000000CC483FCC483FCC483FCC483FCC483FCC483FCC483F000000241CED
              0000F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241CEDF0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0000000CC483FCC483FCC483FCC483FCC483F000000241C
              ED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241CEDF0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000CC483FCC483FCC483F00000024
              1CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241CEDF0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000CC483F000000
              241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED
              241CEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000
              00241CED241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0241C
              ED241CED241CEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0000000241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0
              F0F0241CED241CED241CEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0000000241CED241CED241CED0000F0F0F0F0F0F0
              F0F0F0F0F0F0241CED241CED241CEDF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000241CED241CED0000F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000241CED
              0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F00000000000F0F0F0F0F0F0F0F0F0F0F0F0000000000000000000F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0000000000000000000F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0000000000000000000000000
              000000000000000000F0F0F0F0F0F0CC483FCC483FCC483FCC483FCC483FCC48
              3FCC483FCC483FCC483FCC483FCC483F0000F0F0F0F0F0F00000000000000000
              00000000000000000000000000F0F0F0F0F0F0CC483FCC483FCC483FCC483FCC
              483FCC483FCC483FCC483FCC483FCC483FCC483F0000F0F0F0F0F0F000000000
              0000000000000000000000000000000000F0F0F0F0F0F0CC483FCC483FCC483F
              CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F0000F0F0F0F0F0F0
              F0F0F0F0F0F0000000000000000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0
              F0F0F0F0F0F0F0F0F0F0000000000000000000F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F00000}
          end
          object BitBtn14: TBitBtn
            Left = 110
            Top = 7
            Width = 15
            Height = 15
            Hint = 'Remova a Faixa de pre'#231'o Selecionada'
            Caption = '-'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BitBtn14Click
          end
          object BitBtn15: TBitBtn
            Left = 29
            Top = 121
            Width = 15
            Height = 15
            Hint = 'Remova a Tabela de pre'#231'o Selecionada'
            Caption = '-'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            OnClick = BitBtn15Click
          end
          object BitBtn11: TBitBtn
            Left = 455
            Top = 112
            Width = 25
            Height = 25
            Hint = 'Remover Pre'#231'o/Valor Selecionado'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = BitBtn11Click
            Glyph.Data = {
              86050000424D8605000000000000360000002800000016000000140000000100
              1800000000005005000000000000000000000000000000000000F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000CC48
              3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F0000000000F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0000000CC483FCC483FCC483FCC483FCC483FCC483FCC483F000000241CED
              0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0000000CC483FCC483FCC483FCC483FCC483F000000241C
              ED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000CC483FCC483FCC483F00000024
              1CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000CC483F000000
              241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000
              00241CED241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0000000241CED241CED241CED241CED0000F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0000000241CED241CED241CED0000F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0000000241CED241CED0000F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241CED241CED241CEDCC
              483FCC483FCC483FCC483FCC483FF0F0F0F0F0F0F0F0F0F0F0F0000000241CED
              0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241CED241CED
              241CEDCC483FCC483FCC483FCC483FCC483FF0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F00000000000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0241CED241CED241C
              ED241CED241CEDCC483FCC483FCC483FCC483FCC483FF0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              0000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
              F0F0F0F0F0F0F0F00000}
          end
          object DGTabela: TStringGrid
            Left = 48
            Top = 24
            Width = 401
            Height = 114
            DefaultColWidth = 50
            DefaultRowHeight = 15
            FixedCols = 0
            RowCount = 6
            FixedRows = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = DGTabelaClick
            OnDblClick = DGTabelaDblClick
            OnDrawCell = DGTabelaDrawCell
            OnKeyUp = DGTabelaKeyUp
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Acess'#243'rios'
          ImageIndex = 9
          object Label23: TLabel
            Left = 3
            Top = 0
            Width = 196
            Height = 16
            Caption = '[F2] Inserir novo Acess'#243'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LAcessorioPesquisado: TLabel
            Left = 6
            Top = 39
            Width = 160
            Height = 16
            Caption = 'LAcessorioPesquisado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 4
            Top = 56
            Width = 48
            Height = 16
            Caption = 'Quant.'
          end
          object PListaAcessorios: TPanel
            Left = 4
            Top = 38
            Width = 412
            Height = 98
            TabOrder = 5
            Visible = False
            object DBGListaAcessorios: TDBGrid
              Left = 2
              Top = 1
              Width = 404
              Height = 118
              Hint = 
                'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
                'sistema ir'#225' pesquisar pelo c'#243'digo'
              Color = 16768991
              DataSource = DMESTOQUE.DWSimilar
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Courier New'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_ESTOQUE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'ESTFISICO'
                  Title.Caption = 'Estoque'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Controle'
                  Width = 62
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 266
                  Visible = True
                end>
            end
          end
          object EdQuantAcessorio: TFloatEdit
            Left = 4
            Top = 72
            Width = 65
            Height = 21
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
          end
          object DBGrid8: TDBGrid
            Left = 336
            Top = 2
            Width = 406
            Height = 139
            Color = clCream
            Ctl3D = False
            DataSource = DMESTOQUE.DsAlx5
            FixedColor = clSkyBlue
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
            Columns = <
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'C'#243'digo'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Quant.'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Acess'#243'rio'
                Width = 266
                Visible = True
              end>
          end
          object EdPesquisaAcessorio: TEdit
            Left = 4
            Top = 16
            Width = 285
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = EdPesquisaAcessorioKeyDown
            OnKeyUp = EdPesquisaAcessorioKeyUp
          end
          object BitBtn6: TBitBtn
            Left = 187
            Top = 59
            Width = 137
            Height = 25
            Caption = 'Add. Item -->'
            TabOrder = 3
            OnClick = BitBtn6Click
          end
          object BitBtn13: TBitBtn
            Left = 189
            Top = 113
            Width = 137
            Height = 25
            Caption = '<-- Remover Item'
            TabOrder = 4
            OnClick = BitBtn13Click
          end
          object Button1: TBitBtn
            Left = 297
            Top = 16
            Width = 28
            Height = 21
            Hint = 'Pressione para localizar um acess'#243'rio'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
            OnClick = Button1Click
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object cbVlrLocacao: TCheckBox
            Left = 4
            Top = 95
            Width = 210
            Height = 17
            Caption = 'Possui valor de loca'#231#227'o'
            TabOrder = 7
          end
        end
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 770
      Color = clBtnFace
      TabOrder = 1
      object CBProdutoConsumo: TCheckBox
        Left = 369
        Top = 6
        Width = 217
        Height = 17
        Hint = 
          'Selecione esta op'#231#227'o caso este produto seja de consumo interno d' +
          'a empresa'
        Caption = 'Produto de Uso e Consumo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = CBProdutoConsumoClick
      end
      object CbEstoquePermanente: TCheckBox
        Left = 593
        Top = 6
        Width = 176
        Height = 17
        Hint = 
          'Selecione esta op'#231#227'o se este produto for um frete, utilizado em ' +
          'notas de entrada'
        Caption = 'Estoque Permanente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object cbComponente: TCheckBox
        Left = 244
        Top = 6
        Width = 120
        Height = 17
        Hint = 
          'Selecione esta op'#231#227'o caso este produto seja de consumo interno d' +
          'a empresa'
        Caption = 'Componente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = CBProdutoConsumoClick
      end
    end
  end
  inherited PConsulta: TPanel [1]
    Left = 3
    Top = 5
    Width = 772
    Height = 557
    object LF11: TLabel [0]
      Left = 6
      Top = 545
      Width = 357
      Height = 12
      Caption = 
        'F11 - Insere novo produto copiando os dados do '#250'ltimo produto gr' +
        'avado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LQtdItem: TLabel [1]
      Left = 645
      Top = 539
      Width = 119
      Height = 13
      Alignment = taRightJustify
      Caption = 'Itens Cadastrados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LF10: TLabel [2]
      Left = 6
      Top = 529
      Width = 340
      Height = 12
      Caption = 
        'F10 - Insere novo produto copiando os dados do produto seleciona' +
        'do'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object GBSIMILAR: TGroupBox [3]
      Left = 6
      Top = 53
      Width = 762
      Height = 421
      Caption = ' [F3] Listagem de produtos'
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object Label3: TLabel
        Left = 257
        Top = 22
        Width = 63
        Height = 16
        Caption = 'Ctrl. Int.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 352
        Top = 22
        Width = 75
        Height = 16
        Caption = 'Fabricante:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 459
        Top = 22
        Width = 64
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 124
        Top = 22
        Width = 75
        Height = 16
        Caption = 'C'#243'd. Barra:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 72
        Width = 754
        Height = 347
        Color = 15790307
        Ctl3D = False
        DataSource = DMESTOQUE.DWSimilar
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PMSubProduto
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'MARK'
            Title.Caption = 'M'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTONFE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Custo Nf-e'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNITCOMPRA'
            Title.Caption = 'Vlr. Compra'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ESTFISICO'
            Title.Caption = 'Estoque'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTLOJA'
            Title.Caption = 'E. Loja'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VENDVARV'
            Title.Caption = 'Vlr. Vista'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDVARP'
            Title.Caption = 'Vlr. Prazo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRBONIFIC'
            Title.Caption = 'Vlr. Bonific.'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTRINT'
            Title.Caption = 'Controle'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODFABRICANTE'
            Title.Caption = 'C'#243'd. Fabricante'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCOMPOSTO'
            Title.Caption = 'Composto'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_INTERNO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDATAV'
            Title.Caption = 'Vlr. Atac. Vista'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDATAP'
            Title.Caption = 'Vlr. Atac. Prazo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTCOMPRA'
            Title.Caption = #218'lt. compra'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTVENDA'
            Title.Caption = #218'lt. venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALESTANTE'
            Title.Caption = 'Local'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI'
            Title.Caption = '% IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST'
            Title.Caption = '% Substitui'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE4CASAS'
            Title.Caption = 'Estoque'
            Width = 64
            Visible = True
          end>
      end
      object EDSimilar: TEdit
        Left = 456
        Top = 38
        Width = 297
        Height = 24
        Hint = 
          'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
          'a liberar - [F2] Para pesquisa parcial'
        CharCase = ecUpperCase
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnEnter = EDSimilarEnter
        OnExit = EDSimilarExit
        OnKeyDown = EDSimilarKeyDown
      end
      object BtnSelecionar2: TBitBtn
        Left = 616
        Top = 9
        Width = 144
        Height = 25
        Caption = 'Selecionar - F9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = BtnSelecionarClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777774F77777700000007777
          7777444F77777000000077777774444F777770000000700000444F44F7777000
          000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
          74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
          8777F07777774000000070FFFF00007777777000000070F88707077777777000
          000070FFFF007777777770000000700000077777777770000000777777777777
          777770000000}
      end
      object DBMCORES: TDBMemo
        Left = 696
        Top = -62
        Width = 89
        Height = 33
        TabOrder = 6
        Visible = False
      end
      object EDCodFab: TColorMaskEdit
        Left = 352
        Top = 38
        Width = 100
        Height = 24
        Hint = 'Procura pelo  C'#211'DIGO DO FABRICANTE'
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnEnter = EDCodFabEnter
        OnExit = EDCodFabExit
        OnKeyDown = EDCodFabKeyDown
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdCodBarra: TMaskEdit
        Left = 120
        Top = 38
        Width = 129
        Height = 24
        Hint = 
          'Informe o c'#243'digo de composi'#231#227'o. Pressione <ENTER> para seleciona' +
          'r e <ESC> para liberar'
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnEnter = EdCodBarraEnter
        OnExit = EdCodBarraExit
        OnKeyDown = EdCodBarraKeyDown
      end
      object EdCtrlInt: TEdit
        Left = 256
        Top = 38
        Width = 89
        Height = 24
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'EdCtrlInt'
        OnEnter = EdCtrlIntEnter
        OnExit = EdCtrlIntExit
        OnKeyDown = EdCtrlIntKeyDown
      end
      object RGFiltro: TRadioGroup
        Left = 6
        Top = 14
        Width = 99
        Height = 51
        Caption = 'Filtro'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Inativos')
        ParentCtl3D = False
        TabOrder = 7
        OnClick = RGFiltroClick
      end
    end
    object PAguarde: TPanel [4]
      Left = 122
      Top = 138
      Width = 471
      Height = 97
      BevelInner = bvLowered
      BevelWidth = 2
      Caption = 'A G U A R D E . . .'
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    inherited DBGridCadastroPadrao: TDBGrid [5]
      Left = 6
      Top = 101
      Width = 763
      Height = 121
      TabOrder = 3
      OnCellClick = DBGridCadastroPadraoCellClick
      OnKeyUp = DBGridCadastroPadraoKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CI_GRUPO'
          Title.Caption = 'Grupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CI_SUBGRUPO'
          Title.Caption = 'SubGrupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Grade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Title.Caption = 'Aplica'#231#227'o'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox [6]
      Left = 6
      Top = 53
      Width = 763
      Height = 47
      Caption = 'Listagem de Grades'
      Font.Charset = ANSI_CHARSET
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Width = 19
        TabOrder = 1
        Visible = False
      end
      inherited BtnSelecionar: TBitBtn
        Left = 616
        Top = 18
        Width = 144
        TabOrder = 0
      end
      object EDProduto: TMaskEdit
        Left = 8
        Top = 20
        Width = 601
        Height = 24
        Hint = 
          'Informe o c'#243'digo de composi'#231#227'o. Pressione <ENTER> para seleciona' +
          'r e <ESC> para liberar'
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnEnter = EDProdutoEnter
        OnExit = EDProdutoExit
        OnKeyDown = EDProdutoKeyDown
      end
    end
    object PContEst: TPanel [7]
      Left = 394
      Top = 516
      Width = 377
      Height = 41
      BevelOuter = bvNone
      BevelWidth = 2
      BorderWidth = 1
      Color = clBtnHighlight
      TabOrder = 6
      object lbquntEst: TLabel
        Left = 2
        Top = 4
        Width = 127
        Height = 13
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 'Estoque na Grade 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object lbQtdGrade: TLabel
        Left = 256
        Top = 4
        Width = 113
        Height = 13
        Alignment = taRightJustify
        Caption = 'Itens na Grade: 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LQtdItem2: TLabel
        Left = 250
        Top = 27
        Width = 119
        Height = 13
        Alignment = taRightJustify
        Caption = 'Itens Cadastrados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbProdMarcados: TLabel
        Left = 2
        Top = 27
        Width = 127
        Height = 13
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        Caption = 'Estoque na Grade 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
    end
    inherited Painel: TPanel [8]
      Top = -1
      Width = 769
      Height = 52
      TabOrder = 0
      inherited BtnNovo: TBitBtn
        Width = 109
      end
      inherited BtnApagar: TBitBtn
        Left = 111
        Width = 110
      end
      inherited BtnConsultar: TBitBtn
        Left = 220
        Width = 110
      end
      inherited BtnRelatorio: TBitBtn
        Left = 329
        Width = 110
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 438
        Width = 110
        Hint = 'Pressione este bot'#227'o para demarcar os itens marcados'
        Caption = 'Desmarcar [X]'
        OnClick = BtnFiltrarClick
      end
      object PPromocao: TBitBtn
        Left = 547
        Top = 2
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = 'Atualiza a lista de produtos para o terminal.'
        Caption = 'Contas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = PPromocaoClick
        Glyph.Data = {
          32040000424D3204000000000000360000002800000013000000110000000100
          180000000000FC03000000000000000000000000000000000000D8E9ECD8E9EC
          D8E9ECD8E9ECE9E5E2E3DEDCD5D7D9CBCFD0C6C8C9C4C5C7C6C6C6CCCBCBD4D3
          D3DDDDDDE7E7E7F0EFEFD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECE9E7E7DF
          C0B8E4AFA2DDABA2C19F98A8928D908B86878886888A8B8C909097999AA9A9AA
          BBBBBBCDCDCDDEDEDEEDEDEDD8E9EC000000D8E9ECD8E9ECDAD0D0DFAFA2FCC5
          B2F3BDACF3B6A6EBAD9EDB9E92C29286A8857B927D7A887F7C8E8F8EA5A6A6B8
          B7B7CACBCBDEDFDED8E9EC000000D8E9ECD8E9ECE0CAC8EEB3A5F2D3C6F8EFE5
          F5E0D4F6D4C2F9C9B6F8BFABF5B5A2ECA89AD99F8DB68A81AB9390BCBFBDD4D2
          D2E4E4E4D8E9EC000000D8E9ECD8E9ECECC8C0EFB8A3F9EEE7FFFFFFFDFFFFFD
          FFFFFCF9F5F9EFE7F7E2D4F9D3C2E2B2A1C68F81B8837ADAD0CDECEEEED8E9EC
          D8E9EC000000D8E9ECD8E9ECEBBBADF4C4AFFAFAF6FDFDFDFCFFFEFEFFFFFEFF
          FFFEFFFFFFFFFFE9EBECCEC9C7C19B8ABE8D82F5F0EDD8E9ECD8E9ECD8E9EC00
          0000D8E9ECF7EDEAECAEA0F5D5C5FCFEFFFBFFFFFBFBF8FAEFE9FCFBF8FDFFFF
          F3F3F4D2D1D3CCCBCBB88D7ED0ABA3D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
          ECF0D5CFEDAF9CF4E4DBF8F6F1F2D5C5F2B9A0F3B18EF8E0CEFBFFFFE0DFE0CE
          D1D1CFC4BDCC8E7EEDD5CDD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECEEBEB4
          EAB6A4F7F2EDE9C1B2E5936EEEAA89EDAE8BF3B89CEAD8CFDCD0CDF0F4F4EACD
          C0E6A493FAF2EED8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECE8AB9CEAC5B6F6
          F7F5F1DED7F0D0C4F6EFECF2D6C7EDA07DE9B99FA49793B9BBBADAB3A9ECBFAA
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000EFDDD9E4A492ECD9CEFBFCFDF8FB
          FBF7FBFCF3F8FAF4F2F1ECAC92EAA584BBAEA97E82809D979CBBB4D0EEF0FED8
          E9ECD8E9ECD8E9ECD8E9EC000000EAC3BAE2A594F4EFE9FFFFFFFCFCFDFAFBFA
          F9F7F8F8F9FBF1D8CAE28A69E6B5A3ACB2B4504DB34541C8A8B2D7F3F4F4D8E9
          ECD8E9ECD8E9EC000000E5A99CDFB19FFAFCFAFFFFFFFFFFFFFFFFFFFEFEFEF9
          FDFCFAFAF8EECABFF2D6C8D8C9CC615DDC6361A09A9798C1C0BFDDDDEAD8E9EC
          D8E9EC000000E2A498DCA491DFBFB2E4D4CAEFE8E2F7F7F5FEFFFFFFFFFFFFFF
          FFFFFFFFF9F9F5D1A195A289C4979AB382858194948F8E8DBB8584E2D8E9EC00
          0000EFD8D6EBB9ADE5A898DA9F8DD69E8CD4A899D7BBADDFCFC4E9E5DEF7F7F6
          E5D6CDD49D8AF3E1DDE8E6EBBEBFBB8A8A8B8C8C8F6D6FC2807CE1000000D8E9
          ECD8E9ECF9F0EEF6DFDBEECCC6EAB8AFE0A899D89E8DD19C8ACEA596CD9E8DE6
          B4A6D8E9ECD8E9ECD8E9ECD0D1D19694918B8A8C8283B8000000D8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECFBF2EFF7E2DEF4D1C9EABEB4E6BAB0F5E0DDD8E9
          ECD8E9ECD8E9ECD8E9ECDDDFDE9F9E9D868885000000}
      end
      object BtnSolicitaCompra: TBitBtn
        Left = 2
        Top = 26
        Width = 109
        Height = 25
        Cursor = crHandPoint
        Hint = 'Atualiza a lista de produtos para o terminal.'
        Caption = 'Solicita'#231#227'o Compra'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnSolicitaCompraClick
      end
      object btnFichaTecnica: TBitBtn
        Left = 111
        Top = 26
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para obter novo cadastro'
        Caption = 'Ficha T'#233'cnica'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnFichaTecnicaClick
      end
      object btnhelp: TBitBtn
        Left = 677
        Top = 2
        Width = 90
        Height = 25
        Cursor = crHandPoint
        Hint = '[F1] - Clique aqui para obter ajuda do manual'
        Caption = 'Ajuda - F1'
        DragCursor = crHandPoint
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnhelpClick
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F003000000000000000000000000000000000000F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F20000F2F2F2F0F0F0F0F0F0F0F0F0F0F0
          F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
          F0F0F0F0F0F2F2F20000F2F2F2F0F0F0F0F0F0F0F0F0F0F0F0D9D9E0B9BCBBA2
          A6A48D92908D9290A2A6A4B9BCBBD9D9E0F0F0F0F0F0F0F0F0F0F0F0F0F2F2F2
          0000F2F2F2F0F0F0F0F0F0EFEFEF8182BA1919AAA9ADC7D0D5D3E0E4E2E0E4E2
          CFD4D2A8ABC61818AA8182B9EFEFEFF0F0F0F0F0F0F2F2F20000F2F2F2F0F0F0
          EFEFEF3F41AA3737C28E8EF49FA1EDD8DFDBD8DEDBD8DEDBD8DEDB9B9EEC8585
          F33334C13C3EA9EFEFEFF0F0F0F2F2F20000F2F2F2F0F0F08586BF3939C29696
          F74949F16E6FF0F4F5F7FCFCFCFCFDFCF7F8F98688F04646F18A8AF63334C181
          82B9F0F0F0F2F2F20000F2F2F2DCDDE31B1BAD9797F54B4BF27E7FF4CDCDF6A0
          A3C39EA2A09EA1A0A7A9C5E8E9F99D9DF54646F18888F31919AAD9D9E0F2F2F2
          0000F2F2F2C8CBCAB7BAD3A8A9F16A6BF2C4C5F53436A77D7EBCEAEBEAEAEAEA
          7C7DBB3536A6E2E3F78686F2A2A3F0A9ADC7B9BCBBF2F2F20000F2F2F2B9BEBD
          DCE1DFEEF1F0F9F9FD9D9EC27F80BEF0F0F0F0F0F0F0F0F0F0F0F07D7EBBA0A3
          C1FCFCFEEEF1EFD3D7D5A4A8A6F2F2F20000F2F2F2B0B6B3EDF0EFF7F8F8FBFB
          FBADB3B0EBEBEBF0F0F0F0F0F0F0F0F0F0F0F0EAEBEBA2A6A5FCFCFCF7F8F8E6
          EAE8949997F2F2F20000F2F2F2B4BBB7F0F2F1FDFDFDF9FAFAB1B6B4EBECECF0
          F0F0F0F0F0F0F0F0F0F0F0EBEBEBA5A9A7FAFBFBFDFDFDEAEDEC989E9CF2F2F2
          0000F2F2F2C4C9C7E7EAE9FEFEFEEEEFF97678CF7E80C2F0F0F0F0F0F0F0F0F0
          F0F0F07B7DC0797ACDF0F1F9FEFEFEDEE1E0AEB3B1F2F2F20000F2F2F2D4D8D6
          D0D4DEC5C5F93E3EF16060F21A1BB77F81C4ECECECECECEC7D7FC21B1BB77171
          F34545F1C7C8F8C2C5D1C5C8C7F2F2F20000F2F2F2E1E2E72F30AEDADAF77070
          F54141F15B5BF17577D0B7BEBBB5BCB97678CF6767F24B4BF18383F5CECFF426
          28A9DDDDE3F2F2F20000F2F2F2F0F0F09396CA6A6CC2E6E6FC7272F43C3CF1E7
          E8F2F0F2F2F1F2F2E7E9F33F3FF08484F4DCDCFB5C5DBB8B8DC3F0F0F0F2F2F2
          0000F2F2F2F0F0F0F0F0F0575BB86D6FC4E4E4FACFCFFBF9FAFAF6F7F7F6F7F7
          F9FAFACFCFFAD7D8F85E61BD5153B1EFEFEFF0F0F0F2F2F20000F2F2F2F0F0F0
          F0F0F0F0F0F09598CC3032B0DBDEE9F5F6F6FDFDFDFDFDFDF3F4F3D5D7E32C2D
          AD9092C7EFEFEFF0F0F0F0F0F0F2F2F20000F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
          F2F2F2F2F2F2F2F20000}
      end
    end
    object Panel6: TPanel
      Left = 6
      Top = 475
      Width = 763
      Height = 41
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16772332
      TabOrder = 4
      object Label113: TLabel
        Left = 3
        Top = 2
        Width = 72
        Height = 10
        Caption = 'ESPECIFICA'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 8
        Top = 13
        Width = 60
        Height = 16
        AutoSize = True
        DataField = 'ESPECIFICACAO'
        DataSource = DMESTOQUE.DWSimilar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ProgressBar1: TProgressBar
        Left = 8
        Top = 29
        Width = 745
        Height = 8
        TabOrder = 0
      end
    end
  end
  object PCodigos: TPanel [2]
    Left = 274
    Top = 205
    Width = 329
    Height = 197
    Color = clActiveCaption
    TabOrder = 3
    object FashionPanel6: TFashionPanel
      Left = 2
      Top = 3
      Width = 325
      Height = 192
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
      Title = 'Adicionar C'#243'd. Fabricante'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label2: TLabel
        Left = 226
        Top = 177
        Width = 40
        Height = 13
        Caption = '<esc>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 2
        Top = 21
        Width = 46
        Height = 13
        Caption = 'Cod. Fab.'
      end
      object Label46: TLabel
        Left = 121
        Top = 21
        Width = 61
        Height = 13
        Caption = 'Cod. Fornec.'
      end
      object lbNomeFornecedor: TLabel
        Left = 2
        Top = 64
        Width = 3
        Height = 13
      end
      object Label65: TLabel
        Left = 200
        Top = 21
        Width = 47
        Height = 13
        Caption = 'Qtd. Emb.'
      end
      object EdAddCodFabr: TEdit
        Left = 2
        Top = 35
        Width = 113
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object BtnInsertProd: TBitBtn
        Left = 286
        Top = 39
        Width = 16
        Height = 16
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
        Left = 305
        Top = 39
        Width = 16
        Height = 16
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
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
      object DBGrid7: TDBGrid
        Left = 2
        Top = 80
        Width = 319
        Height = 97
        DataSource = DMMACS.DSALX
        FixedColor = clGradientInactiveCaption
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODBARRA'
            Title.Caption = 'C'#243'digo'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Fornecedor'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEMB'
            Title.Caption = 'Qtd. Embalagem'
            Visible = True
          end>
      end
      object edCodFornec: TEdit
        Left = 121
        Top = 35
        Width = 77
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnChange = edCodFornecChange
        OnKeyPress = edCodFornecKeyPress
      end
      object btnFornecedor: TBitBtn
        Left = 251
        Top = 35
        Width = 30
        Height = 23
        Hint = 'Clique aqui para buscar dados do grupo'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnClick = btnFornecedorClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdQtdEmb: TEdit
        Left = 201
        Top = 35
        Width = 41
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
        OnChange = edCodFornecChange
        OnKeyPress = edCodFornecKeyPress
      end
    end
  end
  inherited PComunica: TPanel [3]
    Left = 135
    Top = 175
  end
  object Button2: TButton
    Left = 904
    Top = 42
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 1014
    Top = 42
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 5
    Visible = False
    OnClick = Button3Click
  end
  object PMESTOQUE: TPopupMenu
    Left = 558
    Top = 227
    object HistricodeVendas1: TMenuItem
      Caption = 'Hist'#243'rico de Vendas'
      OnClick = HistricodeVendas1Click
    end
    object ProdutosparaVenda1: TMenuItem
      Caption = 'Produtos para Venda'
      OnClick = ProdutosparaVenda1Click
    end
    object Relatriosdeprodutosecompradores1: TMenuItem
      Caption = 'Relat'#243'rios de Produtos e Compradores'
      OnClick = Relatriosdeprodutosecompradores1Click
    end
    object Estoqueemlote1: TMenuItem
      Caption = 'Estoque em lote'
      object MatriaPrima1: TMenuItem
        Caption = 'Mat'#233'ria Prima '
        OnClick = MatriaPrima1Click
      end
      object ProdutosFin: TMenuItem
        Caption = 'Produtos Finalizados'
        OnClick = ProdutosFinClick
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ProdutoscomNCMsinativos1: TMenuItem
      Caption = 'Produtos com NCM Inv'#225'lidos'
      OnClick = ProdutoscomNCMsinativos1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object FichaTcnica1: TMenuItem
      Caption = 'Ficha T'#233'cnica'
      OnClick = FichaTcnica1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Etiquetas1: TMenuItem
      Caption = 'Etiquetas'
      object EtCdBarra1: TMenuItem
        Caption = 'Apenas 01 etiqueta'
        OnClick = EtCdBarra1Click
      end
      object EtCdBarraQtd1: TMenuItem
        Caption = 'Quantidade dever'#225' ser informada'
        OnClick = EtCdBarraQtd1Click
      end
      object EtMarcados1: TMenuItem
        Caption = 'Apenas Produtos Marcados (Quant. dever'#225' ser informada)'
        OnClick = EtMarcados1Click
      end
      object Deacordocomquantidadeemestoque1: TMenuItem
        Caption = 'Apenas Produtos Marcados (Quant. de acordo com o estoque)'
        OnClick = Deacordocomquantidadeemestoque1Click
      end
      object eladeFiltrosparaetiquetas1: TMenuItem
        Caption = 'Tela de Filtros para etiquetas'
        OnClick = eladeFiltrosparaetiquetas1Click
      end
    end
  end
  object PMCadastro: TPopupMenu
    Left = 521
    Top = 227
    object CadastrarNovoProduto1: TMenuItem
      Caption = 'CADASTRAR NOVO PRODUTO'
    end
    object CadastrarumProdutoSimilar1: TMenuItem
      Caption = 'CADASTRAR UM PRODUTO SIMILAR'
      OnClick = CadastrarumProdutoSimilar1Click
    end
  end
  object MEscolheProc: TPopupMenu
    Left = 484
    Top = 226
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
    end
  end
  object PMSubProduto: TPopupMenu
    Left = 591
    Top = 227
    object MarcarDesmarcar1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = MarcarDesmarcar1Click
    end
    object SolicitarCompra: TMenuItem
      Caption = 'Solicitar Compra'
      OnClick = SolicitarCompraClick
    end
    object AtualizarCusto1: TMenuItem
      Caption = 'Atualizar Custo'
      OnClick = AtualizarCusto1Click
    end
    object CriarCpiadesteItem1: TMenuItem
      Caption = 'Criar c'#243'pia deste item'
      OnClick = CriarCpiadesteItem1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object AjustarEstoque1: TMenuItem
      Caption = 'Ajustar Estoque'
      OnClick = AjustarEstoque1Click
    end
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 382
    Top = 7
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 734
    Top = 343
    ReportForm = {18000000}
  end
  object FSDSProdVend: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 261
    Top = 23
  end
  object FSRelProdVend: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 293
    Top = 23
    ReportForm = {18000000}
  end
  object PMContas: TPopupMenu
    Left = 229
    Top = 23
    object CustodoVeculo1: TMenuItem
      Caption = 'Custo do Ve'#237'culo Individual'
      OnClick = CustodoVeculo1Click
    end
    object DespesadeTodososVeculosfiltradopordata1: TMenuItem
      Caption = 'Despesas dos Ve'#237'culos  (filtrado por data)'
      OnClick = DespesadeTodososVeculosfiltradopordata1Click
    end
    object AjustarPlanodecontas1: TMenuItem
      Caption = 'Ajustar Plano de contas'
      OnClick = AjustarPlanodecontas1Click
    end
    object DetalhamentodeCustosporVeculo1: TMenuItem
      Caption = 'Detalhamento de Custos por Ve'#237'culo'
      OnClick = DetalhamentodeCustosporVeculo1Click
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 349
    Top = 6
  end
  object frDBEntradas: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 417
    Top = 7
  end
  object frDBSaidas: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx1
    Left = 449
    Top = 7
  end
  object frCustoDetalhado: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 487
    Top = 7
    ReportForm = {18000000}
  end
  object frxRelatorioProduto: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41934.394958067100000000
    ReportOptions.LastChange = 42398.702559861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var      '
      '   XTOTAL_PRODUTO, XTOTAL_FICHA, XTOTAL: Real;'
      '     '
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    XTOTAL_FICHA := 0;                                          ' +
        '     '
      'end;  '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   XTOTAL_PRODUTO := <frxItensFichaTecnica."QTDE">*<frxItensFich' +
        'aTecnica."VALUNIT">;'
      
        '   XTOTAL_FICHA := XTOTAL_FICHA + XTOTAL_PRODUTO;               ' +
        '                                                                ' +
        '                      '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       XTOTAL := XTOTAL + XTOTAL_FICHA;  '
      'end;'
      ''
      'begin'
      'end.')
    Left = 494
    Top = 271
    Datasets = <
      item
        DataSet = frxInfoEmpresa
        DataSetName = 'frxInfoEmpresa'
      end
      item
        DataSet = frxItensFichaTecnica
        DataSetName = 'frxItensFichaTecnica'
      end
      item
        DataSet = frxProdFichaTecnica
        DataSetName = 'frxProdFichaTecnica'
      end>
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
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxItensFichaTecnica."SETOR"'
        object Memo3: TfrxMemoView
          Left = 1.779530000000000000
          Top = 13.000000000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxItensFichaTecnica."SETOR"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488210940000000000
          Top = 34.015770000000000000
          Width = 436.535325670000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'COMPONENTE')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 90.708683390000000000
          Height = 18.897640240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ctrl. Int.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Top = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 18.897640240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VLR. UNIT.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 657.638220000000000000
          Top = 34.015770000000000000
          Width = 60.472480000000000000
          Height = 18.897640240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 531.023622050000000000
          Top = 34.015770000000000000
          Width = 54.803149610000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'QTDE.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxItensFichaTecnica
        DataSetName = 'frxItensFichaTecnica'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 94.488210940000000000
          Top = 2.000000000000000000
          Width = 436.535325670000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxItensFichaTecnica."ITEM"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 531.023536610000000000
          Top = 2.000000000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItensFichaTecnica."QTDE"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 90.708683390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItensFichaTecnica."CTRL_COMP"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779530000000000000
          Width = 56.692896300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<frxItensFichaTecnica."QTDE">*<frxItensFichaTecnica."VALUNIT">]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 71.811016300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxItensFichaTecnica."VALUNIT"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.000000000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[frxProdFichaTecnica."CTRL_PROD"] - [frxProdFichaTecnica."DESCRI' +
              'CAO"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Width = 230.551330000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = frxInfoEmpresa
          DataSetName = 'frxInfoEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Left = 238.110390000000000000
          Top = 7.440940000000000000
          Width = 476.220780000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfoEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 238.110390000000000000
          Top = 52.795300000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[frxInfoEmpresa."ENDERECO"], [frxInfoEmpresa."NUMERO"], [frxInfo' +
              'Empresa."BAIRRO"] - [frxInfoEmpresa."CIDADE"] - [frxInfoEmpresa.' +
              '"UF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 238.110390000000000000
          Top = 75.472480000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfoEmpresa."FONE"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Line3: TfrxLineView
          Left = -3.779530000000000000
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor Total :')
          ParentFont = False
        end
        object mmTotal: TfrxMemoView
          Left = 661.417750000000000000
          Top = 7.559060000000000000
          Width = 52.913366300000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[XTOTAL_FICHA]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 60.472480000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Line1: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor Total  :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559060000000000000
          Width = 90.708666300000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'PageFooter1OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[XTOTAL]')
          ParentFont = False
        end
      end
    end
  end
  object frxProdFichaTecnica: TfrxDBDataset
    UserName = 'frxProdFichaTecnica'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 526
    Top = 271
  end
  object frxItensFichaTecnica: TfrxDBDataset
    UserName = 'frxItensFichaTecnica'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 558
    Top = 271
  end
  object frxInfoEmpresa: TfrxDBDataset
    UserName = 'frxInfoEmpresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 587
    Top = 272
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.MarginBottom = 1.000000000000000000
    SystemPrinter.MarginLeft = 1.000000000000000000
    SystemPrinter.MarginRight = 1.000000000000000000
    SystemPrinter.MarginTop = 1.000000000000000000
    SystemPrinter.Orientation = poLandScape
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.Units = unCM
    SystemPrinter.UnitsFactor = 2.540000000000000000
    Left = 689
    Top = 335
  end
end
