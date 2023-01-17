inherited FProduto: TFProduto
  Left = 170
  Top = 91
  Caption = ']'
  ClientHeight = 609
  ClientWidth = 796
  OnShow = ATIVONAOClick
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 793
    Height = 578
  end
  inherited LDescTitulo: TLabel
    Left = 217
    Width = 157
    Caption = 'Cadastro de Produtos'
  end
  inherited PCadastro: TPanel
    Left = 9
    Top = 49
    Width = 774
    Height = 556
    object PNovaFaixaPreco: TPanel [0]
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
        Height = 334
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
          Top = 63
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
          Left = 382
          Top = 63
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
          Width = 111
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
          Left = 198
          Top = 281
          Width = 21
          Height = 22
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label10: TLabel
          Left = 27
          Top = 267
          Width = 157
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
          Left = 234
          Top = 267
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
          Left = 350
          Top = 282
          Width = 21
          Height = 22
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label17: TLabel
          Left = 378
          Top = 267
          Width = 104
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
          Left = 492
          Top = 282
          Width = 21
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label70: TLabel
          Left = 639
          Top = 267
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
          Left = 527
          Top = 267
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
          Left = 643
          Top = 11
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
        object EDCODGRUPO: TEdit
          Left = 23
          Top = 82
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
          TabOrder = 1
          OnKeyDown = EDCODGRUPOKeyDown
        end
        object DBGRUPO: TEdit
          Left = 72
          Top = 82
          Width = 270
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object BtnSubGrupo: TBitBtn
          Left = 701
          Top = 82
          Width = 23
          Height = 23
          Hint = 'Clique aqui para buscar dados do sub grupo'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 4
          OnClick = BtnSubGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object DbSubGrupo: TEdit
          Left = 431
          Top = 82
          Width = 270
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object EDCODSUBGRUPO: TEdit
          Left = 382
          Top = 82
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
          TabOrder = 3
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
          TabOrder = 5
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
          TabOrder = 6
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
          TabOrder = 7
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
          TabOrder = 8
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit26: TDBColorEdit
          Left = 594
          Top = 134
          Width = 129
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
          TabOrder = 9
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit25: TDBColorEdit
          Left = 23
          Top = 225
          Width = 701
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
          TabOrder = 11
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBDESCRICAOSIM: TDBColorEdit
          Left = 23
          Top = 181
          Width = 701
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
          MaxLength = 60
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          FocusColor = 10944511
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BTNCST: TBitBtn
          Left = 198
          Top = 283
          Width = 19
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 13
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
          Left = 25
          Top = 283
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
          TabOrder = 12
          Text = '000'
          OnExit = CodSitTribExit
          OnKeyDown = CodSitTribKeyDown
        end
        object DescSitTrib: TEdit
          Left = 57
          Top = 283
          Width = 140
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object EdCodUnidadeCompra: TEdit
          Left = 233
          Top = 283
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
          TabOrder = 14
          Text = '000'
          OnExit = EdCodUnidadeCompraExit
          OnKeyDown = EdCodUnidadeCompraKeyDown
        end
        object EdUnidadeCompra: TEdit
          Left = 260
          Top = 283
          Width = 90
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object BtnUnidadeCompra: TBitBtn
          Left = 350
          Top = 284
          Width = 19
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 15
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
          Left = 376
          Top = 283
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
          TabOrder = 16
          Text = '000'
          OnExit = EdCodUnidadeVendaExit
          OnKeyDown = EdCodUnidadeVendaKeyDown
        end
        object EdUnidadeVenda: TEdit
          Left = 403
          Top = 283
          Width = 90
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
        object BitBtn3: TBitBtn
          Left = 492
          Top = 284
          Width = 19
          Height = 19
          Hint = 'Pressione para localizar uma CST'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 17
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
          Left = 639
          Top = 283
          Width = 88
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
          TabOrder = 19
          OnExit = DBColorEdit16Exit
          OnKeyPress = DBColorEdit16KeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object dbcodbarra: TDBColorEdit
          Left = 527
          Top = 283
          Width = 102
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
          TabOrder = 18
          OnExit = dbcodbarraExit
          OnKeyPress = dbcodbarraKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit3: TDBColorEdit
          Left = 643
          Top = 32
          Width = 79
          Height = 29
          Hint = 'Estoque real existente na empresa (armazenado).'
          Color = 12312063
          Ctl3D = True
          DataField = 'ESTFISICO'
          DataSource = DMESTOQUE.DSEstoque
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 25
          FocusColor = 12312063
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BtnGrupo: TBitBtn
          Left = 343
          Top = 81
          Width = 23
          Height = 23
          Hint = 'Clique aqui para buscar dados do grupo'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          OnClick = BTNGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object PGrade: TPanel
          Left = 11
          Top = 16
          Width = 365
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
            Left = 332
            Top = 19
            Width = 23
            Height = 23
            Hint = 'Clique aqui para buscar dados da grade/produto'
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
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
            Width = 270
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
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
          TabOrder = 26
          OnClick = BtAddCodClick
          Layout = blGlyphBottom
        end
        object cbInativaProd: TCheckBox
          Left = 456
          Top = 32
          Width = 161
          Height = 17
          Caption = 'Produto Inativo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
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
            Left = 126
            Top = 10
            Width = 61
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
            Left = 364
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
          object Label5: TLabel
            Left = 126
            Top = 66
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
          object Label69: TLabel
            Left = 363
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
          object dbvalorunitario: TDBEdit
            Left = 10
            Top = 30
            Width = 105
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
            OnExit = DBLucratExit
          end
          object DBVlrUnitCompSD: TDBEdit
            Left = 126
            Top = 30
            Width = 105
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
            OnExit = DBLucratExit
          end
          object DBColorEdit1: TDBColorEdit
            Left = 244
            Top = 30
            Width = 105
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
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBFrete: TDBColorEdit
            Left = 10
            Top = 86
            Width = 105
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
            TabOrder = 3
            OnEnter = DBFreteEnter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBLucrat: TDBColorEdit
            Left = 363
            Top = 30
            Width = 105
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
            TabOrder = 5
            OnEnter = DBLucratEnter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit2: TDBColorEdit
            Left = 126
            Top = 86
            Width = 105
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
            TabOrder = 7
            object Label36: TLabel
              Left = 61
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
              Left = 165
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
              Left = 11
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
              Left = 4
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
            object Shape2: TShape
              Left = 60
              Top = 88
              Width = 186
              Height = 49
              Brush.Color = 15132390
              Pen.Color = 15658734
            end
            object Label1: TLabel
              Left = 64
              Top = 89
              Width = 177
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
            object Label8: TLabel
              Left = 79
              Top = 99
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
              Left = 201
              Top = 99
              Width = 39
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
            object BtnPPreco: TSpeedButton
              Left = 4
              Top = 113
              Width = 26
              Height = 26
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
            object EdVlrVarejoVista: TColorEditFloat
              Left = 60
              Top = 27
              Width = 80
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
              Left = 164
              Top = 27
              Width = 80
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
              Left = 60
              Top = 59
              Width = 80
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
              Left = 165
              Top = 59
              Width = 80
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
            object DBColorEdit13: TDBColorEdit
              Left = 164
              Top = 113
              Width = 80
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
              TabOrder = 9
              OnEnter = DBColorEdit13Enter
              OnExit = DBColorEdit13Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit12: TDBColorEdit
              Left = 60
              Top = 114
              Width = 80
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
              TabOrder = 8
              OnEnter = DBColorEdit12Enter
              OnExit = DBColorEdit12Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBDescVarejo: TDBColorEdit
              Left = 140
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
              Left = 140
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
          end
          object DbIndice: TDBColorEdit
            Left = 363
            Top = 86
            Width = 105
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
            TabOrder = 6
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
            TabOrder = 8
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
        end
        object TabSheet2: TTabSheet
          Caption = 'Tributa'#231#227'o'
          ImageIndex = 1
          object Label71: TLabel
            Left = 10
            Top = 66
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
          object Label130: TLabel
            Left = 246
            Top = 66
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
            Left = 364
            Top = 66
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
          object Label89: TLabel
            Left = 482
            Top = 66
            Width = 24
            Height = 18
            Caption = 'PIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label90: TLabel
            Left = 600
            Top = 66
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
          object DBColorEdit17: TDBColorEdit
            Left = 10
            Top = 86
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
            TabOrder = 0
            OnEnter = DBColorEdit17Enter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBIPI: TDBColorEdit
            Left = 128
            Top = 86
            Width = 105
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
            TabOrder = 1
            OnEnter = DBIPIEnter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit32: TDBColorEdit
            Left = 246
            Top = 86
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
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBICMS: TDBColorEdit
            Left = 364
            Top = 86
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
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit9: TDBColorEdit
            Left = 482
            Top = 86
            Width = 105
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
            TabOrder = 4
            OnEnter = DBColorEdit9Enter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit10: TDBColorEdit
            Left = 600
            Top = 86
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
            TabOrder = 5
            OnEnter = DBColorEdit10Enter
            OnExit = DBLucratExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object CBGerarPisCofins: TCheckBox
            Left = 560
            Top = 8
            Width = 161
            Height = 17
            Caption = 'Gerar Pis/Cofins'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
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
          object Label12: TLabel
            Left = 336
            Top = 66
            Width = 47
            Height = 18
            Caption = 'Inicial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 10
            Top = 36
            Width = 73
            Height = 18
            Caption = 'Estoque:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            Top = 10
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
            Left = 185
            Top = 10
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
            TabOrder = 4
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
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEstIni: TDBColorEdit
            Left = 336
            Top = 86
            Width = 105
            Height = 26
            Color = clWhite
            Ctl3D = True
            DataField = 'ESTINI'
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
            ShowHint = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBESTFISICO: TDBColorEdit
            Left = 10
            Top = 55
            Width = 105
            Height = 26
            Color = 12312063
            Ctl3D = True
            DataField = 'ESTFISICO'
            DataSource = DMESTOQUE.DSEstoque
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            FocusColor = 12312063
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
            TabOrder = 6
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
            TabOrder = 7
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBDtCad: TDBColorEdit
            Left = 336
            Top = 30
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
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit33: TDBColorEdit
            Left = 184
            Top = 30
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
            TabOrder = 1
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
          object Shape4: TShape
            Left = 8
            Top = 8
            Width = 118
            Height = 127
            Brush.Color = clSilver
            Pen.Color = clSilver
          end
          object Label100: TLabel
            Left = 8
            Top = 17
            Width = 118
            Height = 19
            Alignment = taCenter
            AutoSize = False
            Caption = 'Estoque F'#237's.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LEstFisico: TLabel
            Left = 8
            Top = 34
            Width = 118
            Height = 22
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label102: TLabel
            Left = 8
            Top = 51
            Width = 118
            Height = 19
            Alignment = taCenter
            AutoSize = False
            Caption = 'Estoque Calc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LEstCalc: TLabel
            Left = 8
            Top = 67
            Width = 118
            Height = 22
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object PageControl2: TPageControl
            Left = 128
            Top = 0
            Width = 614
            Height = 141
            ActivePage = TabSheet11
            TabOrder = 0
            object TabSheet7: TTabSheet
              Caption = 'Ent. de Corre'#231#227'o'
              object DBGrid2: TDBGrid
                Left = 0
                Top = 0
                Width = 606
                Height = 110
                Hint = 'Entrada de Corre'#231#227'o'
                Align = alClient
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
                    FieldName = 'NUMNOTA'
                    Title.Caption = 'Doc.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DT_LANCAMENTO'
                    Title.Caption = 'Data'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'QUANTIDADE'
                    Title.Caption = 'Qtd.'
                    Width = 33
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOTIVO'
                    Title.Caption = 'Hist'#243'rico'
                    Visible = True
                  end>
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Ent. Compra'
              ImageIndex = 1
              object DBGrid5: TDBGrid
                Left = 0
                Top = 0
                Width = 606
                Height = 110
                Hint = 'Pedido de Compra'
                Align = alClient
                Color = 15794175
                Ctl3D = False
                DataSource = DMESTOQUE.DSAlx3
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
                    FieldName = 'NUMPED'
                    Title.Caption = 'Doc.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'data'
                    Title.Caption = 'Dt. Pedido'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'QTDEPROD'
                    Title.Caption = 'Qtd.'
                    Width = 35
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'qtdest'
                    Title.Caption = 'Qtd. Est.'
                    Width = 57
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTPROD'
                    Title.Caption = 'Valor'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Title.Caption = 'Fornecedor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPFCNPJ'
                    Title.Caption = 'CPF/CNPJ'
                    Visible = True
                  end>
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Sa'#237'das de Corre'#231#227'o'
              ImageIndex = 2
              object DBGrid3: TDBGrid
                Left = 0
                Top = 0
                Width = 606
                Height = 110
                Hint = 'Sa'#237'da de Corre'#231#227'o'
                Align = alClient
                Color = 15658717
                Ctl3D = False
                DataSource = DMESTOQUE.DSAlx1
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
                    FieldName = 'NUMNOTA'
                    Title.Caption = 'Doc.'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'DT_LANCAMENTO'
                    Title.Caption = 'Data'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QUANTIDADE'
                    Title.Caption = 'Qtd.'
                    Width = 40
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOTIVO'
                    Title.Caption = 'Hist'#243'rico'
                    Visible = True
                  end>
              end
            end
            object TabSheet10: TTabSheet
              Caption = 'Vendas'
              ImageIndex = 3
              object DBGrid4: TDBGrid
                Left = 0
                Top = 0
                Width = 606
                Height = 110
                Hint = 'Pedido de Venda'
                Align = alClient
                Color = 15658717
                Ctl3D = False
                DataSource = DMESTOQUE.DSAlx2
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
                    FieldName = 'NUMPED'
                    Title.Caption = 'Doc.'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTPEDVEN'
                    Title.Caption = 'Dt. Pedido'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'QTDEPROD'
                    Title.Caption = 'Qtd.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPERACAO'
                    Title.Caption = 'ST'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTPROD'
                    Title.Caption = 'Valor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOMECLI'
                    Title.Caption = 'Cliente'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPFCNPJ'
                    Title.Caption = 'CPF/CNPJ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LOTE'
                    Visible = True
                  end>
              end
            end
            object TabSheet11: TTabSheet
              Caption = 'O.S.'
              ImageIndex = 4
              object DBGrid6: TDBGrid
                Left = 0
                Top = 0
                Width = 606
                Height = 110
                Hint = 'Ordem de Servi'#231'o'
                Align = alClient
                Color = 15658717
                Ctl3D = False
                DataSource = DMESTOQUE.DSAlx4
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
                    FieldName = 'NUMERO'
                    Title.Caption = 'Ordem'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMREQ'
                    Title.Caption = 'Req.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODPRODFABR'
                    Title.Caption = 'Fabric.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTD'
                    Title.Caption = 'Qtd.'
                    Width = 34
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Produto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL'
                    Title.Caption = 'Total'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIENTE'
                    Title.Caption = 'Cliente'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Title.Caption = 'Dt. Abertura'
                    Visible = True
                  end>
              end
            end
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
            Left = 252
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
            Left = 384
            Top = 10
            Width = 84
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
            Left = 590
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
            Left = 10
            Top = 58
            Width = 133
            Height = 18
            Hint = 'Nomenclatura comun do Mercosul'
            Caption = 'Oberva'#231#227'o Fiscal:'
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
            Width = 225
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
            Left = 252
            Top = 30
            Width = 118
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
            Left = 384
            Top = 30
            Width = 188
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
            Left = 591
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
            Left = 628
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
            Left = 10
            Top = 78
            Width = 727
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
            Width = 71
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
            Width = 58
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
            Width = 161
            Height = 16
            Caption = 'Inserir novo Acess'#243'rio:'
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
            Left = 2
            Top = 38
            Width = 412
            Height = 98
            TabOrder = 6
            Visible = False
            object DBGListaAcessorios: TDBGrid
              Left = 4
              Top = 3
              Width = 404
              Height = 88
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
          object DBGrid8: TDBGrid
            Left = 312
            Top = 2
            Width = 430
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
                Width = 77
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
                Width = 250
                Visible = True
              end>
          end
          object EdPesquisaAcessorio: TEdit
            Left = 4
            Top = 16
            Width = 280
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
          object Button1: TButton
            Left = 284
            Top = 16
            Width = 20
            Height = 20
            Caption = ' '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button1Click
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
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
          object BitBtn6: TBitBtn
            Left = 168
            Top = 59
            Width = 137
            Height = 25
            Caption = 'Add. Item -->'
            TabOrder = 4
            OnClick = BitBtn6Click
          end
          object BitBtn13: TBitBtn
            Left = 168
            Top = 113
            Width = 137
            Height = 25
            Caption = '<-- Remover Item'
            TabOrder = 5
            OnClick = BitBtn13Click
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
        Left = 457
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
      object CbProdutoFrete: TCheckBox
        Left = 689
        Top = 6
        Width = 72
        Height = 17
        Hint = 
          'Selecione esta op'#231#227'o se este produto for um frete, utilizado em ' +
          'notas de entrada'
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = CbProdutoFreteClick
      end
    end
  end
  object PCodigos: TPanel [6]
    Left = 280
    Top = 248
    Width = 292
    Height = 173
    Color = clActiveCaption
    TabOrder = 4
    object FashionPanel6: TFashionPanel
      Left = 2
      Top = 2
      Width = 288
      Height = 169
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
        Left = 240
        Top = 155
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
      object EdAddCodFabr: TEdit
        Left = 8
        Top = 24
        Width = 193
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
        Left = 208
        Top = 25
        Width = 28
        Height = 25
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
        Left = 242
        Top = 25
        Width = 28
        Height = 25
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
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
        Left = 8
        Top = 56
        Width = 273
        Height = 97
        DataSource = DMESTOQUE.DCodBarra
        FixedColor = clGradientInactiveCaption
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODBARRA'
            Title.Caption = 'C'#243'digo Fabricante'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  inherited PComunica: TPanel [7]
    Left = 141
    Top = 219
  end
  inherited PConsulta: TPanel [8]
    Left = 9
    Top = 49
    Width = 772
    Height = 554
    object Label58: TLabel [0]
      Left = 6
      Top = 539
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
    object GBSIMILAR: TGroupBox [2]
      Left = 6
      Top = 34
      Width = 762
      Height = 428
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
        Width = 76
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
      object EDSimilar: TEdit
        Left = 456
        Top = 38
        Width = 297
        Height = 24
        Hint = 
          'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
          'a liberar'
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
      object DBGrid1: TDBGrid
        Left = 4
        Top = 72
        Width = 754
        Height = 352
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
          end>
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
    inherited DBGridCadastroPadrao: TDBGrid [3]
      Left = 6
      Top = 88
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
    inherited GroupBox1: TGroupBox [4]
      Left = 6
      Top = 34
      Width = 764
      Height = 47
      Caption = ' [F2] Listagem de Grades'
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
    object PAguarde: TPanel [5]
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
    object PContEst: TPanel [6]
      Left = 394
      Top = 510
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
    inherited Painel: TPanel [7]
      Top = 2
      Width = 769
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
    end
    object Panel6: TPanel
      Left = 6
      Top = 467
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
  object PMESTOQUE: TPopupMenu
    Left = 420
    Top = 35
    object EtCdFabricante1: TMenuItem
      Caption = 'Et. C'#243'd. Fabricante'
      OnClick = EtCdFabricante1Click
    end
    object EtCdBarra1: TMenuItem
      Caption = 'Et. C'#243'd. Barra'
      OnClick = EtCdBarra1Click
    end
    object EtCdBarraQtd1: TMenuItem
      Caption = 'Et. C'#243'd Barra Qtd.'
      OnClick = EtCdBarraQtd1Click
    end
    object EtMarcados1: TMenuItem
      Caption = 'Et. Marcados'
      OnClick = EtMarcados1Click
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
    object ProdutosparaVenda1: TMenuItem
      Caption = 'Produtos para Venda'
      OnClick = ProdutosparaVenda1Click
    end
  end
  object PMCadastro: TPopupMenu
    Left = 391
    Top = 37
    object CadastrarNovoProduto1: TMenuItem
      Caption = 'CADASTRAR NOVO PRODUTO'
    end
    object CadastrarumProdutoSimilar1: TMenuItem
      Caption = 'CADASTRAR UM PRODUTO SIMILAR'
      OnClick = CadastrarumProdutoSimilar1Click
    end
  end
  object MEscolheProc: TPopupMenu
    Left = 354
    Top = 39
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
    Left = 485
    Top = 36
    object MarcarDesmarcar1: TMenuItem
      Caption = 'Marcar/Desmarcar'
      OnClick = MarcarDesmarcar1Click
    end
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
    OnPrint = RvSystem1Print
    OnPrintHeader = RvSystem1PrintHeader
    OnPrintFooter = RvSystem1PrintFooter
    Left = 544
    Top = 40
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 436
    Top = 58
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 468
    Top = 58
    ReportForm = {18000000}
  end
  object FSDSProdVend: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 643
    Top = 40
  end
  object FSRelProdVend: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 611
    Top = 43
    ReportForm = {18000000}
  end
  object PMContas: TPopupMenu
    Left = 683
    Top = 67
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
    Left = 579
    Top = 48
  end
  object frDBEntradas: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 535
    Top = 179
  end
  object frDBSaidas: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx1
    Left = 567
    Top = 179
  end
  object frCustoDetalhado: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 605
    Top = 179
    ReportForm = {18000000}
  end
end
