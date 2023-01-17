inherited FOrdemLoca: TFOrdemLoca
  Left = 147
  Top = 120
  Caption = 'FOrdemLoca'
  ClientHeight = 593
  ClientWidth = 950
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 951
    Height = 559
  end
  inherited LDescTitulo: TLabel
    Left = 214
    Width = 715
    Alignment = taCenter
    AutoSize = False
    Caption = 'Ordem de Servi'#231'os - Loca'#231#227'o'
  end
  inherited PConsulta: TPanel [5]
    Left = 4
    Width = 943
    Height = 552
    object Shape7: TShape [0]
      Left = 3
      Top = 35
      Width = 939
      Height = 512
      Pen.Color = clTeal
      Pen.Width = 2
    end
    object PItensdeRetorno: TPanel [1]
      Left = 7
      Top = 39
      Width = 931
      Height = 504
      Color = clWhite
      TabOrder = 8
      Visible = False
      object Shape10: TShape
        Left = 9
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clGreen
        Pen.Color = clGreen
      end
      object Label25: TLabel
        Left = 26
        Top = 120
        Width = 217
        Height = 14
        Caption = 'Produtos Retirados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape11: TShape
        Left = 249
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clBlack
      end
      object Label30: TLabel
        Left = 266
        Top = 120
        Width = 245
        Height = 14
        Caption = 'Produtos N'#195'O Retirados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape15: TShape
        Left = 523
        Top = 118
        Width = 15
        Height = 15
        Brush.Color = clNavy
        Pen.Color = clNavy
      end
      object Label34: TLabel
        Left = 540
        Top = 119
        Width = 224
        Height = 14
        Caption = 'Produtos Retornados pelo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 8
        Top = 0
        Width = 250
        Height = 113
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 1
        object Shape8: TShape
          Left = 8
          Top = 6
          Width = 233
          Height = 99
          Pen.Color = clSkyBlue
        end
        object Label19: TLabel
          Left = 27
          Top = 10
          Width = 208
          Height = 16
          Caption = 'Filtro por Data de Retorno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 18
          Top = 24
          Width = 56
          Height = 14
          Caption = 'Inicial:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 131
          Top = 24
          Width = 42
          Height = 14
          Caption = 'Final:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 117
          Top = 45
          Width = 6
          Height = 13
          Caption = #224
        end
        object EdDtInicialRetornoFiltro: TDateTimePicker
          Left = 16
          Top = 38
          Width = 96
          Height = 22
          Date = 40888.781167488430000000
          Time = 40888.781167488430000000
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EdDtInicialRetornoFiltroExit
        end
        object EdDtFinalRetornoFiltro: TDateTimePicker
          Left = 131
          Top = 38
          Width = 96
          Height = 22
          Date = 40888.781167488430000000
          Time = 40888.781167488430000000
          Color = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = EdDtFinalRetornoFiltroExit
        end
        object CbFiltroDataItensRetorno: TCheckBox
          Left = 11
          Top = 9
          Width = 13
          Height = 17
          TabOrder = 2
          OnExit = CbFiltroDataItensRetornoExit
        end
      end
      object Panel3: TPanel
        Left = 257
        Top = 0
        Width = 668
        Height = 113
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 2
        object Shape9: TShape
          Left = 8
          Top = 6
          Width = 654
          Height = 99
          Pen.Color = clSkyBlue
        end
        object Label23: TLabel
          Left = 16
          Top = 7
          Width = 56
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 109
          Top = 7
          Width = 80
          Height = 16
          Caption = 'Descri'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object EdContrintFiltroItemRetorno: TFlatEdit
          Left = 15
          Top = 21
          Width = 92
          Height = 23
          ColorBorder = clBlack
          ColorFlat = clWhite
          ParentColor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = EdContrintFiltroItemRetornoKeyDown
        end
        object EdDescricaoFiltroItemRetorno: TFlatEdit
          Left = 108
          Top = 21
          Width = 547
          Height = 23
          ColorBorder = clBlack
          ColorFlat = clWhite
          ParentColor = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = EdDescricaoFiltroItemRetornoKeyDown
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 48
          Width = 641
          Height = 49
          Caption = 'Localizar Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object EdLocCodCli: TFlatEdit
            Left = 7
            Top = 21
            Width = 82
            Height = 23
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = 'Cod'
            OnEnter = EdLocCodCliEnter
            OnExit = EdLocCodCliExit
            OnKeyDown = EdLocCodCliKeyDown
          end
          object EdLocNomeCli: TFlatEdit
            Left = 86
            Top = 21
            Width = 547
            Height = 23
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Text = 'Nome'
            OnEnter = EdLocNomeCliEnter
            OnExit = EdLocNomeCliExit
            OnKeyDown = EdLocNomeCliKeyDown
          end
        end
      end
      object DBGItensdeRetorno: TDBGrid
        Left = 8
        Top = 144
        Width = 914
        Height = 361
        Color = 15597546
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGItensdeRetornoDrawColumnCell
        OnDblClick = DBGItensdeRetornoDblClick
        OnKeyDown = DBGItensdeRetornoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'N'#186' OS'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contrint'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 229
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quant.'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Total'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETIRADA'
            Title.Caption = 'Retirada'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETORNO'
            Title.Caption = 'Retorno'
            Width = 94
            Visible = True
          end>
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid [2]
      Left = 7
      Top = 184
      Width = 931
      Height = 365
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_FUNCIONARIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Dt. Abert.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Title.Caption = 'Dt. Fech.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Vlr. Total'
          Width = 96
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
          FieldName = 'COD_ORDEM'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'OBRA'
          Title.Caption = 'Obra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMPAG'
          Title.Caption = 'Pagamento'
          Visible = True
        end>
    end
    object BtnOrdemdeServico: TBitBtn [3]
      Left = 3
      Top = 10
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para obter novo cadastro'
      Caption = 'Ordem de Servi'#231'os'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BtnOrdemdeServicoClick
    end
    object Panel5: TPanel [4]
      Left = 8
      Top = 144
      Width = 929
      Height = 40
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 9
      object Shape12: TShape
        Left = 3
        Top = 13
        Width = 15
        Height = 15
        Brush.Color = clNavy
        Pen.Color = clNavy
      end
      object Label31: TLabel
        Left = 20
        Top = 14
        Width = 126
        Height = 14
        Caption = 'Ordens Retornadas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape13: TShape
        Left = 283
        Top = 13
        Width = 15
        Height = 15
        Brush.Color = clRed
        Pen.Color = clRed
      end
      object Label32: TLabel
        Left = 300
        Top = 14
        Width = 98
        Height = 14
        Caption = 'Ordens Abertas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape14: TShape
        Left = 147
        Top = 13
        Width = 15
        Height = 15
        Brush.Color = clGreen
        Pen.Color = clGreen
      end
      object Label33: TLabel
        Left = 164
        Top = 14
        Width = 112
        Height = 14
        Caption = 'Ordens Retiradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    inherited GroupBox1: TGroupBox [5]
      Left = 226
      Top = 78
      Width = 694
      inherited EdNome: TFlatEdit
        Width = 603
        Visible = False
      end
      inherited BtnSelecionar: TBitBtn
        Left = 610
        Top = 20
        Visible = False
      end
    end
    inherited Painel: TPanel [6]
      Left = 7
      Top = 47
      Width = 931
      Height = 53
      inherited BtnApagar: TBitBtn
        Enabled = False
      end
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
      object BitBtn1: TBitBtn
        Left = 700
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Setar Equipamentos como Retirados Pelo Cliente'
        Caption = 'Retirada'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BitBtn1Click
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000000000000000000000000000000000003EBE712AB662
          1BB4570BB34E0AC15300C75500CC5901D26002D3650BDD7303D87100D77609DC
          7E19DF8719D37F26DA8932D9904EE1A500002AB95D0FB04E0BBD5401BF5000C6
          5400D25B00DD6700DE690FEA7B0BDE7622F28E14E7850DE38405E28208E4860C
          DD8116DB8533E59A000016B04B0DB85006BE520BCC5D08D46302DB6802E37005
          E77811EA811DE8870BCE712DF4991AEB8F0BED8E00E88805EA8908E28415D986
          000017BB5014BD5610BF581ACE6915D46D14DF7817EC8519EE8B25F09338F09C
          00984900AB5C35F4A31CF19C0CF09500E98804EA8A0EDC83000010BB4F24C863
          45E78749EC914AF49B46FEA43EFEA744FFB049FFB356FEB9009250008F4D00A8
          6435F7AB1BF19E07EE9202E8880FE084000011BF5421C060008C370084350087
          3C009046009149009450008E4E00935B008954008B56008D5504AB6C38F3AB1A
          EC980DE58C0EDD81000017CC6304A2480083340086400A8F50038F50008B5000
          8A53028F5C008758028D61048F63008D5C00895105AB6A37F5A81FEC970BDA7E
          00000BCD6302AC5400893E008C4D00874F00844F08905C09906000885C018E65
          008962008A60008E5E008C5600915100AC6625E49310E082000009D06805B25E
          008742008950058E5B068D5D068A5C078A5F098E66008D6A008965008B630091
          64028E59009152007E3600AE5C0FE280000012DA7506AD5E0194560087560089
          5D098F65088C630E8D660A8D68008A69008F6D00906A00895E078D59007C3E00
          96481FE98E0FE87F000014DF7E01AE6400804700815400835B007F5800805900
          7F5A007F5C00876A008A6D008968008F6500814D00904D29F49F18F69210F080
          000016E5890FCF88007E4600754A00785200764F007851007E59007451007356
          008A6F048E6F00815900884E22F1A70AF6980DFF9309EE77000015E89222F4AE
          23F4BA27F6C925F2CB2BF6CF30F9D32DF4CE38F6D345EFD2009171008360007D
          4D27F1B412FAA802FF9803FF8A10F57C000015EDA018F8B113FCBE0CFAC50AFB
          CE0EFFD70EFDD615FED81EFAD622ECC700744B0082512AF0B61BF7B10FFCA505
          FE9109FF8814F681000018EEA710F6B40DFFC408FFD002FFD700FDD704FFE201
          FADA11FFDE1BFFD600BB8C1AF4B817F8B409FAAB05FC9E0DFF9306F27C19EE80
          000015E0A115F5BB0BFBC607FFD302FEDB03FEE100FAE100FDE201FEDD03FAD0
          0CFFCA0CFFBF00FCAD00FFAC00FD9806FA8B21FF8F25E882000031E8AE22F2BC
          19FBCB0EFED505FAD80AFFE305FEE400F9DC00FFDC00FDCE03FFC700FAB100FF
          AA00FFA200FD9614F88D27EF8A37E48A00004AE6B031E6B329F5C61AFAD018FF
          DD0AF9D80CFDDC08FCD906FFD204FFC800FBB509FFB20EFFA80BF9951BFA942B
          F29037E38B50DF960000}
      end
      object BitBtn4: TBitBtn
        Left = 814
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Setar Equipamentos como Devolvidos pelo Cliente'
        Caption = 'Retorno'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn4Click
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F00300000000000000000000000000000000000050C39238BD84
          1EB6751FC17F1EC4831FC5862ACD8F33D6992ED49728D59928DA9F2BDCA32ED8
          A33CDDAB42D6A84ED8AE59DEB664E2BE00003CBC8523BA7B17BF7C1BC78528CB
          8E2EC99045D9A336C99548E1AE36D9A530E2AD2AE0AA32E2AD35DEAD38D6A743
          DCAF46DDB055E2B9000028B67B20BF7F1AC78320CC8C32CD944ADAA640C89800
          835537C29648DFB13AE4B432E6B32FE3B038E7B53FE8B738DCAC3FE0B249E0B3
          000020B97C25C98822C88730D19351E1AC40C495098559057F56128D655DE5BB
          48E7BB3CE8B83CEDBC32E5B433E6B533E1B135DBAC42DDB0000023C48621C382
          43DC9D58E7AE37BA880A865A07815800744D1587621F997360EDC64FF0C33DEB
          BC37EEBC35E9B835E8B736E2B239DAAC000025C88A35D1943EC68C1A93600F84
          570E865D00754D239D770F7F5D17876535AE8C64F1CA49F1C636ECBC38ECBB36
          E9B831E4B332DCAC000023CC8D25C88B00733B00643210865B07825A0D997061
          EAC40479581E8B6B21907040BE9B58F2C94BF6C83BECBB32E5B42EE2B130DDAB
          000020D3942DDC9D43E5AB1AAD790061360071493CDCB254F3CB40C5A4087D5E
          1E886B1E8D6D3CBF9A5FF5CA4BF5C535E9B637E8B630DBA700001ED6962AE3A5
          33E7AC49F1BC51E6BA29C09849FACF4CFCD45EF8D50183641F8D71248B6F1D8E
          6D38BC9457F5C748F5C133E3AE32E0AA000024DCA02AEAAE2CF0B63DF9C54EF9
          CB4CF7CB46FDD145FFD547FAD349E5C2007154288C70278B6D1F936E08976A30
          D3A03AEBB22EE4AA00002AE1A72BECB338FCC739FDC944FED046FFD344FFD63E
          FCD343FFD94FF9D52CB294057458288C6E1E8A6611966B33D39F3CF2B829E9AA
          000031E3AE38F5C13DF9C840FECF40FFD240FFD63FFFD641FFD945FFDB51FFDE
          52F3D316A0810D795C2992710F92674AEAB638F7BA28F0B000003CEBB942FDCB
          3DF8CA43FFD53EFFD53DFFD73FFFD849FFE143FAD849FFDD51FFE34AEBCB0687
          680078550890664CEEBA34FBBD25F3B2000043F1C23DF8CA3EFFD53CFFD63FFF
          D843FFDD45FFDE4AFFE344FADC48FFE23FFCDD4DFFE159F6D400946E006F4239
          E3AF2BF5B82AF8B7000044EBC041F8CC3FFFD63CFFD744FFDC46FFDD49FFE04A
          FFE248FFE343FFE23CFEE03BFCDB48FCD94DFBD317C59626DCA63BFFC62DF3B3
          00004CE7C04CFAD246FBD449FFDD4AFFDE49FDE049FDE149FFE646FFE83EFCE3
          3EFFE63AFFDF39FDD93AFFD633FECD36FEC831F0B73DEFB4000059E4C24DEEC8
          50FBD54BFDD84BFEDD4FFFE64CFFE448FFE542FCE440FFE73AFDE338FFE134FF
          DD2EFED429FECD30FAC53DF1BC44E4AE00004AE6B031E6B329F5C61AFAD018FF
          DD0AF9D80CFDDC08FCD906FFD204FFC800FBB509FFB20EFFA80BF9951BFA942B
          F29037E38B50DF960000}
      end
      object BtnFechaPed: TBitBtn
        Left = 458
        Top = 2
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
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
      object BtnCancelamentos: TBitBtn
        Left = 588
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BtnCancelamentosClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object Button4: TButton
        Left = 814
        Top = 27
        Width = 115
        Height = 25
        Caption = 'Mensais'
        TabOrder = 9
        OnClick = Button4Click
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 105
      Width = 105
      Height = 38
      Alignment = alTopLeft
      Caption = 'FILTRO'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 3
      object CBFILTRO: TcxComboBox
        Left = 0
        Top = 17
        Width = 105
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS')
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'ABERTAS'
        OnClick = CBFILTROClick
        OnExit = CBFILTROExit
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 122
      Top = 105
      Width = 94
      Height = 38
      Alignment = alTopLeft
      Caption = 'ORDEM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 4
      object CBORDEM: TcxComboBox
        Left = 0
        Top = 17
        Width = 94
        Height = 21
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'NUMERO'
          'CLIENTE'
          'DATA')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'NUMERO'
        OnClick = CBORDEMClick
        OnExit = CBORDEMExit
      end
    end
    object BtnItensretornados: TBitBtn
      Left = 117
      Top = 10
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para obter novo cadastro'
      Caption = 'Itens de Retorno'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BtnItensretornadosClick
    end
    object GBPLACA: TcxGroupBox
      Left = 223
      Top = 105
      Width = 715
      Height = 49
      Alignment = alTopLeft
      Caption = 'LOCALIZAR - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 5
      object EDNum: TFlatEdit
        Left = 7
        Top = 17
        Width = 92
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#250'mero'
        OnEnter = EDNumEnter
        OnExit = EDNumExit
        OnKeyDown = EDNumKeyDown
      end
      object EDCliente1: TFlatEdit
        Left = 101
        Top = 17
        Width = 607
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Cliente'
        OnEnter = EDCliente1Enter
        OnExit = EDCliente1Exit
        OnKeyDown = EDCliente1KeyDown
      end
    end
  end
  inherited PCadastro: TPanel [6]
    Left = 5
    Top = 35
    Width = 939
    Height = 546
    Color = clWhite
    inherited Panel4: TPanel
      Top = 34
      Width = 935
      Height = 511
      object Shape6: TShape
        Left = -52
        Top = -120
        Width = 987
        Height = 631
        Pen.Width = 3
      end
      object Label22: TLabel
        Left = 827
        Top = 10
        Width = 40
        Height = 16
        Caption = 'Data:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 608
        Top = 45
        Width = 80
        Height = 16
        Caption = 'Observa'#231#227'o'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Shape4: TShape
        Left = 826
        Top = 91
        Width = 105
        Height = 74
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label1: TLabel
        Left = 836
        Top = 94
        Width = 56
        Height = 14
        Caption = 'Per'#237'odo:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 15
        Top = 74
        Width = 149
        Height = 49
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label2: TLabel
        Left = 20
        Top = 76
        Width = 112
        Height = 14
        Caption = 'Tabela de Pre'#231'o:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape2: TShape
        Left = 22
        Top = 171
        Width = 548
        Height = 327
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label3: TLabel
        Left = 28
        Top = 176
        Width = 77
        Height = 14
        Caption = 'Procurar...'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape3: TShape
        Left = 568
        Top = 171
        Width = 362
        Height = 201
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object LProduto: TLabel
        Left = 27
        Top = 213
        Width = 286
        Height = 13
        AutoSize = False
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 407
        Top = 212
        Width = 56
        Height = 16
        Caption = 'Quant.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 469
        Top = 212
        Width = 88
        Height = 16
        Caption = 'Vlr. Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 304
        Top = 176
        Width = 63
        Height = 14
        Caption = 'Dt.Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 467
        Top = 176
        Width = 77
        Height = 14
        Caption = 'Dt.Retorno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 176
        Top = 176
        Width = 84
        Height = 14
        Caption = 'Faixa/Pre'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 30
        Top = 265
        Width = 147
        Height = 14
        Caption = 'Equipamentos Locados:'
        FocusControl = BtnApagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 688
        Top = 450
        Width = 39
        Height = 10
        Caption = 'DESC(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 611
        Top = 422
        Width = 72
        Height = 16
        Caption = 'PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 776
        Top = 443
        Width = 60
        Height = 18
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LEstoqueAtual: TLabel
        Left = 27
        Top = 226
        Width = 98
        Height = 14
        Caption = 'Estoque Atual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 14
        Top = 126
        Width = 168
        Height = 16
        Caption = 'Respons'#225'vel retirada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 400
        Top = 176
        Width = 63
        Height = 14
        Caption = 'Hr.Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 361
        Top = 212
        Width = 32
        Height = 16
        Caption = 'Dias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 637
        Top = 474
        Width = 115
        Height = 10
        Caption = 'EFETUAR ADIANTAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 777
        Top = 488
        Width = 51
        Height = 19
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSaldo: TLabel
        Left = 833
        Top = 488
        Width = 88
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label39: TLabel
        Left = 835
        Top = 382
        Width = 88
        Height = 16
        Caption = 'Tx Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 664
        Top = 392
        Width = 38
        Height = 13
        Caption = 'Label40'
      end
      object PAdicionaAcessorios: TPanel
        Left = 416
        Top = 137
        Width = 505
        Height = 249
        TabOrder = 28
        Visible = False
        object FashionPanel1: TFashionPanel
          Left = 2
          Top = 2
          Width = 502
          Height = 242
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
          Title = 'Informe os acess'#243'rios que ser'#227'o adicionados'
          LineWidth = 0
          LineColor = clBlack
          Theme = ttCustom
          object DBGAcessoriosReservados: TDBGrid
            Left = 5
            Top = 29
            Width = 489
            Height = 180
            Color = clCream
            Ctl3D = False
            DataSource = DMESTOQUE.DSAlx
            FixedColor = 11599871
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGAcessoriosReservadosDblClick
            OnKeyDown = DBGAcessoriosReservadosKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'C'#243'digo'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTFISICO'
                Title.Caption = 'Estoque'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PUREZA'
                Title.Caption = 'Reserva'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Acess'#243'rio'
                Width = 289
                Visible = True
              end>
          end
          object PAdicionaQuantidadeReserva: TPanel
            Left = 181
            Top = 48
            Width = 137
            Height = 52
            BevelWidth = 2
            TabOrder = 1
            Visible = False
            object Label12: TLabel
              Left = 9
              Top = 32
              Width = 119
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = '<ENTER> ou <ESC>'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object EdQuantidadeAcessorioInserido: TFloatEdit
              Left = 8
              Top = 8
              Width = 121
              Height = 24
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnKeyDown = EdQuantidadeAcessorioInseridoKeyDown
              ValueFormat = '##,##0.00'
              ValueInteger = 0
            end
          end
          object Button1: TButton
            Left = 345
            Top = 216
            Width = 75
            Height = 23
            Caption = 'Confirmar'
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 419
            Top = 216
            Width = 75
            Height = 23
            Caption = 'Cancelar'
            TabOrder = 3
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 7
            Top = 216
            Width = 123
            Height = 23
            Caption = 'Cadastrar Acess'#243'rios'
            TabOrder = 4
            OnClick = Button3Click
          end
        end
      end
      object PListaAcessorios: TPanel
        Left = 580
        Top = 240
        Width = 334
        Height = 147
        TabOrder = 32
        Visible = False
        object DBGListaAcessorios: TDBGrid
          Left = 2
          Top = 3
          Width = 329
          Height = 140
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          Color = 16768991
          DataSource = DMESTOQUE.DWSimilar
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
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
              Width = 46
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
      object PListaClientes: TPanel
        Left = 222
        Top = 212
        Width = 646
        Height = 174
        TabOrder = 24
        Visible = False
        object DBGListaCliente: TDBGrid
          Left = 3
          Top = 4
          Width = 638
          Height = 168
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          DataSource = DMPESSOA.DSVWCliente
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Cliente'
              Width = 268
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CIDADE'
              Title.Caption = 'Cidade'
              Width = 154
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDERECO'
              Title.Caption = 'Endere'#231'o'
              Width = 340
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENDNUMERO'
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIRRO'
              Title.Caption = 'Bairro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPFCNPJ'
              Title.Caption = 'Cpf/Cnpj'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELREL'
              Title.Caption = 'Telefone'
              Visible = True
            end>
        end
      end
      object PListaProdutos: TPanel
        Left = 26
        Top = 239
        Width = 462
        Height = 147
        TabOrder = 25
        Visible = False
        object DBGListaProdutos: TDBGrid
          Left = 4
          Top = 3
          Width = 454
          Height = 140
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          DataSource = DMESTOQUE.DWSimilar
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGListaProdutosDblClick
          OnKeyPress = DBGListaProdutosKeyPress
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
              Width = 46
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
              Width = 225
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDVARV'
              Title.Alignment = taRightJustify
              Title.Caption = 'Vlr.'
              Width = 88
              Visible = True
            end>
        end
      end
      object PAcessorios: TPanel
        Left = 568
        Top = 180
        Width = 345
        Height = 191
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 13
        object Label4: TLabel
          Left = 14
          Top = 17
          Width = 140
          Height = 14
          Caption = 'Acess'#243'rios Inclusos:'
          FocusControl = BtnApagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 208
          Top = 25
          Width = 49
          Height = 14
          Caption = 'Quant.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object LAcessorio: TLabel
          Left = 12
          Top = 64
          Width = 82
          Height = 13
          Caption = 'Acess'#243'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Courier'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGAcessorios: TDBGrid
          Left = 16
          Top = 82
          Width = 329
          Height = 103
          Color = clCream
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlaveServ
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ImeMode = imHanguel
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTD'
              Title.Caption = 'Quant.'
              Width = 45
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
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'V. Total'
              Width = 81
              Visible = True
            end>
        end
        object EdBuscaAcessorio: TEdit
          Left = 13
          Top = 40
          Width = 171
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EdBuscaAcessorioKeyDown
          OnKeyUp = EdBuscaAcessorioKeyUp
        end
        object EdQuantAcessorio: TColorEditFloat
          Left = 188
          Top = 40
          Width = 72
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
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
        object BitBtn2: TBitBtn
          Left = 290
          Top = 39
          Width = 22
          Height = 22
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BitBtn2Click
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7000777777777777700077777707777770007777706077777000777706660777
            7000777066666077700077066666660770007000066600007000777706660777
            7000777706660777700077770666077770007777000007777000777777777777
            7000}
          Spacing = 10
        end
        object BitBtn3: TBitBtn
          Left = 314
          Top = 39
          Width = 22
          Height = 22
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn3Click
          Glyph.Data = {
            DE000000424DDE0000000000000076000000280000000D0000000D0000000100
            0400000000006800000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7000777777777777700077770000077770007777066607777000777706660777
            7000777706660777700070000666000070007706666666077000777066666077
            7000777706660777700077777060777770007777770777777000777777777777
            7000}
          Spacing = 10
        end
      end
      object PTabelaPreco: TPanel
        Left = 142
        Top = 110
        Width = 171
        Height = 108
        TabOrder = 27
        Visible = False
        object DBGTabelaPreco: TDBGrid
          Left = 4
          Top = 4
          Width = 164
          Height = 100
          Color = clCream
          Ctl3D = False
          DataSource = DMMACS.DSALX
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ImeMode = imHanguel
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          OnKeyDown = DBGTabelaPrecoKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Visible = True
            end>
        end
      end
      inline FrmCliente: TFrmBusca
        Left = 13
        Top = 6
        Width = 374
        Height = 47
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Top = 6
          Width = 80
          Height = 18
          Caption = 'Cliente:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 342
          Top = 19
          Width = 30
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 344
          Top = 23
          Width = 24
          Height = 23
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 436
          Enabled = False
          TabOrder = 3
        end
        inherited EDCodigo: TFlatEdit [5]
          Top = 23
          Width = 68
          Height = 23
          ColorFlat = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Courier New'
          TabOrder = 2
          Visible = False
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 2
          Top = 23
          Width = 341
          Height = 22
          Enabled = True
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ReadOnly = False
          TabOrder = 0
          OnKeyDown = FrmClienteEdDescricaoKeyDown
          OnKeyUp = FrmClienteEdDescricaoKeyUp
        end
      end
      object EdObsFinanceira: TEdit
        Left = 15
        Top = 52
        Width = 366
        Height = 18
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object EdData: TColorMaskEdit
        Left = 826
        Top = 61
        Width = 105
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 6
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object MObs: TMemo
        Left = 608
        Top = 61
        Width = 214
        Height = 105
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      inline FrmVendedor: TFrmBusca
        Left = 389
        Top = 72
        Width = 215
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 72
          Caption = 'Vendedor:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 151
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 191
          Top = 15
          Width = 23
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 192
          Top = 19
          Width = 17
          Height = 21
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 153
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      object ColorMaskEdit1: TColorMaskEdit
        Left = 835
        Top = 110
        Width = 88
        Height = 22
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 10
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object ColorMaskEdit2: TColorMaskEdit
        Left = 835
        Top = 135
        Width = 88
        Height = 22
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBGProdutos: TDBGrid
        Left = 29
        Top = 281
        Width = 532
        Height = 210
        Color = 15597546
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGProdutosDrawColumnCell
        OnDblClick = DBGProdutosDblClick
        OnKeyDown = DBGProdutosKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Quant.'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETIRADA'
            Title.Caption = 'Retirada'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRETORNO'
            Title.Caption = 'Retorno'
            Width = 51
            Visible = True
          end>
      end
      object EdBuscaProduto: TEdit
        Left = 27
        Top = 190
        Width = 140
        Height = 24
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnKeyDown = EdBuscaProdutoKeyDown
        OnKeyUp = EdBuscaProdutoKeyUp
      end
      object EdQuantProd: TColorEditFloat
        Left = 399
        Top = 228
        Width = 63
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        Text = '0,00'
        OnExit = EdVlrUnitProdExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrUnitProd: TColorEditFloat
        Left = 242
        Top = 191
        Width = 57
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        Text = '0,00'
        OnExit = EdVlrUnitProdExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrTotProd: TColorEditFloat
        Left = 469
        Top = 228
        Width = 86
        Height = 24
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnInsertProd: TBitBtn
        Left = 383
        Top = 255
        Width = 89
        Height = 22
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        BiDiMode = bdLeftToRight
        Caption = '&INSERIR'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
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
        Spacing = 10
      end
      object BtnDeleteProd: TBitBtn
        Left = 471
        Top = 255
        Width = 89
        Height = 22
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        BiDiMode = bdLeftToRight
        Caption = '&REMOVER'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnClick = BtnDeleteProdClick
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777777777700077770000077770007777066607777000777706660777
          7000777706660777700070000666000070007706666666077000777066666077
          7000777706660777700077777060777770007777770777777000777777777777
          7000}
        Spacing = 10
      end
      object EdDtSaida: TDateTimePicker
        Left = 304
        Top = 191
        Width = 96
        Height = 22
        Date = 40888.781167488430000000
        Time = 40888.781167488430000000
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnExit = EdDtSaidaExit
      end
      object EdDtRetorno: TDateTimePicker
        Left = 467
        Top = 191
        Width = 96
        Height = 22
        Date = 40888.781167488430000000
        Time = 40888.781167488430000000
        Color = clInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnExit = EdDtRetornoExit
      end
      object DbFaixaPreco: TDBLookupComboBox
        Left = 174
        Top = 191
        Width = 68
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ListSource = DMESTOQUE.DSAlx1
        ParentFont = False
        TabOrder = 14
        OnExit = DbFaixaPrecoExit
      end
      object EdTabela_TabelaFaixa: TEdit
        Left = 21
        Top = 91
        Width = 121
        Height = 24
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object BtnTabelaPreco: TBitBtn
        Left = 142
        Top = 90
        Width = 17
        Height = 21
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnTabelaPrecoClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdDescProdutos: TColorEditFloat
        Left = 729
        Top = 440
        Width = 40
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
        Text = '0,00'
        OnExit = EdDescProdutosExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorProdutos: TColorEditFloat
        Left = 594
        Top = 438
        Width = 90
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 29
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorOrd2: TColorEditFloat
        Left = 829
        Top = 435
        Width = 90
        Height = 26
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
        Text = '0,00'
        OnExit = EdValorOrd2Exit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdResponsavelRetirada: TEdit
        Left = 15
        Top = 143
        Width = 365
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      inline FrmObra: TFrmBusca
        Left = 169
        Top = 76
        Width = 219
        Height = 41
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 40
          Caption = 'Obra:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 186
          Top = 13
          Width = 28
          Height = 25
        end
        inherited LUZMINUS: TShape
          Left = 399
        end
        inherited EdDescricao: TFlatEdit
          Left = 40
          Top = 16
          Width = 149
          Height = 22
          TabStop = False
          ColorFlat = 16318450
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 189
          Top = 18
          Width = 20
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Courier New'
          ParentFont = False
          OnClick = FrmObraBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 398
          Enabled = False
          TabStop = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 39
          Height = 22
          ColorFlat = 15400921
          CharCase = ecUpperCase
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MaxLength = 8
          OnExit = FrmObraEDCodigoExit
        end
      end
      inline FrmFormaPagamento: TFrmBusca
        Left = 390
        Top = 126
        Width = 215
        Height = 40
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        inherited LTextoBusca: TLabel
          Top = 3
          Width = 152
          Caption = 'Forma de Pagamento:'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 152
          Top = 16
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 192
          Top = 15
          Height = 25
        end
        inherited EdDescricao: TFlatEdit
          Left = 30
          Top = 18
          Width = 160
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 191
          Top = 19
          Height = 21
          OnClick = FrmFormaPagamentoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 154
          Top = 19
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 18
          Width = 27
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyDown = FrmFormaPagamentoEDCodigoKeyDown
        end
      end
      object CBItemRetiradoEstoque: TCheckBox
        Left = 28
        Top = 241
        Width = 269
        Height = 17
        Caption = 'Item J'#225' retirado do estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object EdHrSaida: TMaskEdit
        Left = 403
        Top = 191
        Width = 52
        Height = 22
        Color = clMoneyGreen
        EditMask = '!90:00;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 5
        ParentFont = False
        TabOrder = 17
        Text = '  :  '
      end
      object EdNumeroDias: TColorEditFloat
        Left = 343
        Top = 228
        Width = 49
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        Text = '0'
        OnExit = EdVlrUnitProdExit
        EditType = fltInteger
        ValueFormat = '0'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtCancelaBaixaAdiantamento: TBitBtn
        Left = 741
        Top = 486
        Width = 22
        Height = 20
        Hint = 'Pressione para Cancelar o adiantamento'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 34
        OnClick = BtCancelaBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
      object BtBaixaAdiantamento: TBitBtn
        Left = 717
        Top = 486
        Width = 22
        Height = 20
        Hint = 'Pressione para lan'#231'ar o adiantamento'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 35
        OnClick = BtBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
      object EdVlrAdiantamento: TColorEditFloat
        Left = 630
        Top = 484
        Width = 79
        Height = 22
        Color = 14345214
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 36
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTxEntrega: TColorEditFloat
        Left = 831
        Top = 398
        Width = 90
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
        Text = '0,00'
        OnExit = EdTxEntregaExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Top = 5
      Width = 935
      object Label13: TLabel [0]
        Left = 759
        Top = 5
        Width = 30
        Height = 17
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdNumero: TEdit
        Left = 796
        Top = 0
        Width = 138
        Height = 30
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object PFinanceiro: TPanel [7]
    Left = 228
    Top = 189
    Width = 497
    Height = 318
    BevelWidth = 4
    Color = clBlack
    TabOrder = 4
    Visible = False
    object PBanco: TPanel
      Left = 127
      Top = 107
      Width = 266
      Height = 108
      BevelWidth = 3
      Color = 16772332
      TabOrder = 1
      Visible = False
      object Label115: TLabel
        Left = 8
        Top = 8
        Width = 95
        Height = 16
        Caption = 'Cta. Corrente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGCTA: TDBGrid
        Left = 5
        Top = 24
        Width = 252
        Height = 73
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
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 307
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
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label26: TLabel
        Left = 8
        Top = 68
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
      object Label27: TLabel
        Left = 289
        Top = 72
        Width = 70
        Height = 16
        Caption = 'Dt. Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 385
        Top = 72
        Width = 69
        Height = 16
        Caption = 'Hs Entrega:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object BtnMoedaOK: TBitBtn
        Left = 134
        Top = 263
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
        Left = 254
        Top = 263
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 7
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 89
        Width = 176
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Carteira'
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o'
          'Multiplo')
      end
      inline FrmFormPag: TFrmBusca
        Left = 7
        Top = 23
        Width = 478
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 429
        end
        inherited LUZMINUS: TShape
          Left = 453
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 431
          Width = 18
          OnClick = FrmFormPagBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 15269845
        end
      end
      object DBDATAENTREGA: TColorMaskEdit
        Left = 290
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHORAENTREGA: TColorMaskEdit
        Left = 386
        Top = 89
        Width = 87
        Height = 22
        Color = 15597546
        Ctl3D = False
        EditMask = '!90:00;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '  :  '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmContaServ: TFrmBusca
        Left = 6
        Top = 180
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 246
          Caption = 'Conta para Lan'#231'amento de Servi'#231'os:'
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
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 151
          ColorFlat = 15329769
        end
      end
      object Panel7: TPanel
        Left = 286
        Top = 117
        Width = 123
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        object Label29: TLabel
          Left = 4
          Top = 0
          Width = 93
          Height = 16
          Caption = 'Dt Fechamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
          Left = 4
          Top = 15
          Width = 97
          Height = 22
          Color = 15597546
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
      object CBGeraFinanceiro: TCheckBox
        Left = 10
        Top = 129
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object CBImpRecibo: TCheckBox
        Left = 10
        Top = 153
        Width = 123
        Height = 17
        Caption = 'Imprimir Recibo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
  end
  inherited PComunica: TPanel
    Left = 241
    Top = 236
  end
  object QRReciboLocacao: TQuickRep
    Left = 120
    Top = 608
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
    object QRBand6: TQRBand
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
      BeforePrint = QRBand6BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText62: TQRDBText
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
      object QRDBText63: TQRDBText
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
      object QRShape34: TQRShape
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
      object QRShape35: TQRShape
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
      object QRShape36: TQRShape
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
      object QRShape37: TQRShape
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
      object QRLabel84: TQRLabel
        Left = 16
        Top = 209
        Width = 223
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          552.979166666666700000
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
      object QRLabel86: TQRLabel
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
      object QRLabel87: TQRLabel
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
      object QRShape38: TQRShape
        Left = 3
        Top = 270
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
          714.375000000000000000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel88: TQRLabel
        Left = 3
        Top = 413
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          7.937500000000000000
          1092.729166666670000000
          1942.041666666670000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mzr Sistemas - Sistemas em gest'#227'o empresarial'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape39: TQRShape
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
      object QRLabel89: TQRLabel
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
      object QRLabel90: TQRLabel
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
      object QRLabel91: TQRLabel
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
      object QRLabel92: TQRLabel
        Left = 16
        Top = 273
        Width = 163
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
          431.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Toledo, 1 de novembro 2005'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel93: TQRLabel
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
      object QRLabel94: TQRLabel
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
      object QRDBText64: TQRDBText
        Left = 129
        Top = 128
        Width = 54
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
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'CLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel95: TQRLabel
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
      object QRDBText65: TQRDBText
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
      object QRLabel96: TQRLabel
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
      object QRDBText66: TQRDBText
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
      object QRDBText67: TQRDBText
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
      object QRLabel97: TQRLabel
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
      object QRDBText68: TQRDBText
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
      object QRLabel98: TQRLabel
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
      object QRLabel99: TQRLabel
        Left = 3
        Top = 423
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1119.187500000000000000
          1942.041666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'www.mzrsistemas.com'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QrlVlrImportancia: TQRLabel
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
      object QRVLRSimples: TQRLabel
        Left = 622
        Top = 89
        Width = 33
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
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'valor'
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
      object QRDBText69: TQRDBText
        Left = 116
        Top = 89
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          235.479166666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NUMERO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRRDocumento: TQRRichText
        Left = 27
        Top = 232
        Width = 704
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRDataRec1: TQRLabel
        Left = 675
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
          1785.937500000000000000
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
    end
  end
  object Fsrel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 240
    Top = 8
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMServ.Alx
    Left = 269
    Top = 9
  end
  object PmRelatorio: TPopupMenu
    Left = 337
    Top = 9
    object CompdeAbertura1: TMenuItem
      Caption = 'C&omp. de Abertura'
      OnClick = CompdeAbertura1Click
    end
    object Produtoslocados1: TMenuItem
      Caption = 'Produtos locados'
      OnClick = Produtoslocados1Click
    end
  end
  object FSDSEquipamento: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 298
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 471
    Top = 413
    object MarcarcomoRetirado1: TMenuItem
      Caption = 'Marcar como Retirado'
      OnClick = MarcarcomoRetirado1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DesmarcarcomoRetirado1: TMenuItem
      Caption = 'Desmarcar como Retirado'
      OnClick = DesmarcarcomoRetirado1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AdicionarAcessrio1: TMenuItem
      Caption = 'Adicionar Acess'#243'rios'
      OnClick = AdicionarAcessrio1Click
    end
  end
  object FSDSacessorios: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 376
    Top = 32
  end
end
