inherited FOrdemProduc: TFOrdemProduc
  Left = 357
  Top = 125
  Caption = 'FOrdemProduc'
  ClientHeight = 562
  ClientWidth = 810
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PCadastro: TPanel [0]
    Left = 7
    Top = 7
    Width = 794
    Height = 551
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 1
    object PTOPCADASTRO: TPanel
      Left = 6
      Top = 3
      Width = 782
      Height = 29
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 0
      object Shape9: TShape
        Left = 199
        Top = 3
        Width = 1
        Height = 23
      end
      object Shape10: TShape
        Left = 197
        Top = 7
        Width = 1
        Height = 16
      end
      object Shape12: TShape
        Left = 201
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
      object BtnDadosAdic: TBitBtn
        Left = 208
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
      object BitBtn1: TBitBtn
        Left = 307
        Top = 2
        Width = 102
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Relat'#243'rios'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnRelatorioClick
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
    object GBPRINCIPALCADASTRO: TcxGroupBox
      Left = 6
      Top = 31
      Width = 783
      Height = 518
      Alignment = alTopLeft
      TabOrder = 1
      object LBox: TLabel
        Left = 641
        Top = 63
        Width = 38
        Height = 19
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 85
        Width = 137
        Height = 19
        Caption = 'Contato no Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 320
        Top = 87
        Width = 100
        Height = 19
        Caption = 'Observa'#231#245'es.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 639
        Top = 12
        Width = 51
        Height = 19
        Caption = 'N'#186' OS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 641
        Top = 119
        Width = 65
        Height = 19
        Caption = 'Previs'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PageControl1: TPageControl
        Left = 7
        Top = 187
        Width = 771
        Height = 326
        Cursor = crHandPoint
        ActivePage = tabProduto
        TabOrder = 6
        object tabProduto: TTabSheet
          Cursor = crHandPoint
          Caption = '&Produtos'
          object Label18: TLabel
            Left = 297
            Top = 2
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
          object LPesquisa: TLabel
            Left = 49
            Top = 2
            Width = 70
            Height = 16
            Caption = 'Pesquisa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 51
            Width = 763
            Height = 243
            Alignment = alTopLeft
            Caption = 'LISTA DE PRODUTOS'
            Ctl3D = False
            ParentCtl3D = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            TabOrder = 5
            object DBGrid2: TDBGrid
              Left = 3
              Top = 18
              Width = 757
              Height = 222
              Color = 15597546
              Ctl3D = False
              DataSource = DMESTOQUE.DSSlave
              FixedColor = 11039232
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
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
              OnDblClick = DBGrid2DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Ctrl. Interno'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 511
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Caption = 'Qtd'
                  Width = 98
                  Visible = True
                end>
            end
          end
          object edPesquisaRapida: TColorMaskEdit
            Left = 48
            Top = 19
            Width = 225
            Height = 24
            CharCase = ecUpperCase
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnClick = edPesquisaRapidaClick
            OnKeyDown = edPesquisaRapidaKeyDown
            OnKeyUp = edPesquisaRapidaKeyUp
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnProcProd: TBitBtn
            Left = 10
            Top = 17
            Width = 28
            Height = 25
            Hint = 'Pressione para localizar o Produto'
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
          object EDQuantidade: TColorEditFloat
            Left = 286
            Top = 19
            Width = 68
            Height = 24
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnInsertProd: TBitBtn
            Left = 674
            Top = -1
            Width = 89
            Height = 27
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            BiDiMode = bdLeftToRight
            Caption = '&INSERIR'
            ParentBiDiMode = False
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
            Spacing = 10
          end
          object BtnDeleteProd: TBitBtn
            Left = 674
            Top = 25
            Width = 89
            Height = 23
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            BiDiMode = bdLeftToRight
            Caption = '&REMOVER'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
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
          object EdProduto: TColorMaskEdit
            Left = 356
            Top = 19
            Width = 275
            Height = 19
            CharCase = ecUpperCase
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            Text = 'TESTE DE PRODUTO'
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object LEstoque: TColorMaskEdit
            Left = 631
            Top = 19
            Width = 40
            Height = 19
            CharCase = ecUpperCase
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            Text = 'TESTE DE PRODUTO'
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object PListaProdutos: TPanel
            Left = 47
            Top = 45
            Width = 624
            Height = 172
            BevelOuter = bvNone
            TabOrder = 8
            Visible = False
            object DbGridProdutos: TDBGrid
              Left = 0
              Top = 0
              Width = 622
              Height = 170
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
              OnCellClick = DbGridProdutosCellClick
              OnDblClick = DbGridProdutosDblClick
              OnKeyUp = DbGridProdutosKeyUp
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_ESTOQUE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CODFABRICANTE'
                  Title.Caption = 'C. Fabric.'
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Controle'
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 415
                  Visible = True
                end>
            end
          end
        end
        object tabComponente: TTabSheet
          Caption = '&Componentes Adicionais'
          ImageIndex = 1
          object lPesquisaComp: TLabel
            Left = 49
            Top = 2
            Width = 70
            Height = 16
            Caption = 'Pesquisa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 297
            Top = 2
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
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 51
            Width = 763
            Height = 243
            Alignment = alTopLeft
            Caption = 'LISTA DE PRODUTOS'
            Ctl3D = False
            ParentCtl3D = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            TabOrder = 7
            object DBGrid3: TDBGrid
              Left = 3
              Top = 18
              Width = 757
              Height = 222
              Color = 15597546
              Ctl3D = False
              DataSource = DMESTOQUE.DsAlx5
              FixedColor = 11039232
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
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
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Ctrl. Interno'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 511
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Caption = 'Qtd'
                  Width = 98
                  Visible = True
                end>
            end
          end
          object BitBtn2: TBitBtn
            Left = 10
            Top = 20
            Width = 28
            Height = 23
            Hint = 'Pressione para localizar o Produto'
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
          object edPesqComponente: TColorMaskEdit
            Left = 48
            Top = 19
            Width = 225
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnClick = edPesqComponenteClick
            OnKeyDown = edPesqComponenteKeyDown
            OnKeyUp = edPesqComponenteKeyUp
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edQtdeComp: TColorEditFloat
            Left = 286
            Top = 19
            Width = 68
            Height = 19
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edComponente: TColorMaskEdit
            Left = 356
            Top = 19
            Width = 275
            Height = 19
            CharCase = ecUpperCase
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = 'TESTE DE PRODUTO'
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object edEstoqueComp: TColorMaskEdit
            Left = 631
            Top = 19
            Width = 40
            Height = 19
            CharCase = ecUpperCase
            Color = cl3DLight
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Text = 'TESTE DE PRODUTO'
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object btnInsereComponente: TBitBtn
            Left = 674
            Top = -1
            Width = 89
            Height = 27
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            BiDiMode = bdLeftToRight
            Caption = '&INSERIR'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
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
          object btnRemoveComponente: TBitBtn
            Left = 674
            Top = 25
            Width = 89
            Height = 23
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            BiDiMode = bdLeftToRight
            Caption = '&REMOVER'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
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
          object pListaComponente: TPanel
            Left = 47
            Top = 45
            Width = 624
            Height = 172
            BevelOuter = bvNone
            TabOrder = 8
            Visible = False
            object dbGridComponentes: TDBGrid
              Left = 0
              Top = 0
              Width = 622
              Height = 170
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
              OnCellClick = DbGridProdutosCellClick
              OnDblClick = DbGridProdutosDblClick
              OnKeyUp = DbGridProdutosKeyUp
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_ESTOQUE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CODFABRICANTE'
                  Title.Caption = 'C. Fabric.'
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Controle'
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 415
                  Visible = True
                end>
            end
          end
        end
      end
      inline FrmCliente: TFrmBusca
        Left = 13
        Top = 9
        Width = 620
        Height = 54
        AutoScroll = False
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 54
          Height = 19
          Caption = 'Cliente:'
          Font.Height = -16
          Font.Name = 'Tahoma'
        end
        inherited LUZOPEN: TShape
          Left = 585
          Top = 22
          Width = 28
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 626
        end
        inherited EdDescricao: TFlatEdit
          Left = 75
          Top = 23
          Width = 511
          Height = 24
          Font.Height = -16
        end
        inherited BTNOPEN: TBitBtn
          Left = 586
          Top = 23
          Width = 24
          Height = 23
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 652
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 23
          Width = 68
          Height = 24
          ColorFlat = clActiveCaption
          Font.Height = -16
          OnKeyDown = FrmClienteEDCodigoKeyDown
        end
      end
      object MObs: TMemo
        Left = 320
        Top = 107
        Width = 305
        Height = 94
        Lines.Strings = (
          'Teste de Textos')
        TabOrder = 2
      end
      object EdObsFinanceira: TEdit
        Left = 16
        Top = 59
        Width = 585
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
        TabOrder = 7
      end
      object EdData: TColorMaskEdit
        Left = 640
        Top = 82
        Width = 139
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdContatoCliente: TColorMaskEdit
        Left = 16
        Top = 106
        Width = 294
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBNumOrd: TDBColorEdit
        Left = 640
        Top = 30
        Width = 137
        Height = 25
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'NUMERO'
        DataSource = DMServ.DOrd
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDtPrevisao: TColorMaskEdit
        Left = 640
        Top = 138
        Width = 140
        Height = 26
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  inherited PComunica: TPanel
    Left = 122
    Top = 104
  end
  object PConsulta: TPanel
    Left = 7
    Top = 9
    Width = 794
    Height = 549
    BevelInner = bvLowered
    Color = 16772332
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object PExp: TPanel
      Left = 120
      Top = 225
      Width = 577
      Height = 56
      TabOrder = 4
      Visible = False
      object LBCONEXAO: TLabel
        Left = 32
        Top = 8
        Width = 212
        Height = 16
        Alignment = taCenter
        Caption = 'FAZENDO CONEX'#195'O COM O BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PBExport: TProgressBar
        Left = 30
        Top = 29
        Width = 516
        Height = 20
        TabOrder = 0
      end
    end
    object DBGridConsulta: TDBGrid
      Left = 4
      Top = 161
      Width = 787
      Height = 385
      TabStop = False
      Color = 15794175
      Ctl3D = False
      DataSource = DMServ.DWOrdem
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridConsultaDrawColumnCell
      OnKeyDown = DBGridConsultaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 560
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
    object PBotoesConsulta: TPanel
      Left = 4
      Top = 3
      Width = 786
      Height = 57
      BevelInner = bvLowered
      BorderWidth = 1
      Color = 16764108
      TabOrder = 0
      object BtnNovo: TBitBtn
        Left = 3
        Top = 3
        Width = 134
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para obter novo cadastro'
        Caption = 'Novo - F4'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnNovoClick
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
      object BtnApagar: TBitBtn
        Left = 136
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Apagar - F8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
      end
      object BtnConsultar: TBitBtn
        Left = 265
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para visualizar ou alterar os dados do regi' +
          'stro selecionado a baixo'
        Caption = 'Consultar - F6'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnConsultarClick
        Glyph.Data = {
          CA020000424DCA0200000000000036000000280000000E0000000F0000000100
          18000000000094020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4F6F704F5F5F2F2F
          2F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF80CFE06FC0EF40A0C03F809F3F6F7F4F5F602F2F2F303030FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF9FE0FF7FE0FF7FE0FF70DFFF60
          D0F04FB0D0408FA0405F6FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF90
          DFF080EFFF80EFFF80EFFF80EFFF8FEFFF8FEFFF4FA0BF2F2F2FFFFFFFFFFFFF
          0000FFFFFFFFFFFF6FCFF070CFEF9FFFFF90FFFF90EFF08FF0FF90FFFF8FF0FF
          90EFF040606FFFFFFFFFFFFF0000FFFFFFFFFFFF7FCFF05FCFF0B0EFF0B0FFFF
          EFE0C0C0DFCF9FFFFFAFDFD0D0EFE05F9FAF303030FFFFFF0000FFFFFFFFFFFF
          80DFF07FE0FF70DFFF70DFF080C0D0DFE0DFEFE0CFFFEFCFF0F0E0BFE0EF4F5F
          60FFFFFF0000FFFFFFFFFFFF9FEFF090FFFF90FFFF90E0DFC0AF80D0CFAFC0E0
          E0B0CFC08FBFC0BFE0F04F7F8FFFFFFF0000FFFFFFFFFFFFA0E0F09FFFFF9FF0
          EFE0B07FFFEFDFFFDFBFFFE0CFFFEFDFA07F4F4F4040FFFFFFFFFFFF0000FFFF
          FFFFFFFF5F9FAFAFE0F0A0E0F0608F9070604FEFBF90FFDFAFD0B08FF0CFA08F
          6F4FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          805FF0CFA03F2F1FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF70604FE0B080202020FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnRelatorio: TBitBtn
        Left = 394
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Relat'#243'rios'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnRelatorioClick
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
      object BtnFiltrar: TBitBtn
        Left = 523
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para gerar Documento Fiscal'
        Caption = '&Fiscal'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
      object BtnFechaPed: TBitBtn
        Left = 652
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
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
      object BtnCancelamentos: TBitBtn
        Left = 652
        Top = 28
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita o cancelamento do pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
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
      object btnOrcamento: TBitBtn
        Left = 523
        Top = 28
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a importa'#231#227'o de or'#231'amentos do pedido selecionado'
        Caption = 'Or'#231'amentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnOrcamentoClick
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D002000000000000000000000000000000000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEF
          EBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF000000EFEBEFEFEBEF
          6361636B696B636163636163EFEBEFEFEBEFEFEBEF6361636B6163636163EFEB
          EFEFEBEFEFEBEF000000EFEBEF6B61639C86848471736B61637B797B6B6163EF
          EBEF6B6163CEAEADA58E8C8471736B696BEFEBEFEFEBEF000000EFEBEF636163
          DEDFDED6BEBDBD9694847173636163EFEBEF6B696BD6C7C6CEB6B5BD96949C71
          73636163EFEBEF000000EFEBEFEFEBEFBDA6A5D6AEADB586849C86849CA6946B
          6163CEC7C6D6C7C6C69694C69694A58E8C636163EFEBEF000000EFEBEFBDA6A5
          F7C77BD69694DEAE843971395238316B51529C965AD6A6A5CE696B94696B7371
          73EFEBEFEFEBEF000000EFEBEFBDA6A5FFBE4AE7AE42D6A64A31613139A62152
          3831735118BD8E31DEAE84B586846B6163EFEBEFEFEBEF000000EFEBEFBDA6A5
          FFCF6B31613139A62139713921C74A08A618524110735118BD8E31F7AE42BD8E
          31636163EFEBEF000000EFEBEFBDA6A5FFE7943971394AE77B31D76B21BE4A18
          B63110AE21524110A57942E7B663C67973636163EFEBEF000000EFEBEFBDA6A5
          EFE7BD3161315AF78C4AE77B31D76B21BE4A18B631009E00D6BE84F7C77B9C96
          5A6B6163EFEBEF000000EFEBEFEFEBEFBDA6A539713939A62139A621009E0031
          D76B009E00D6BE84F7DF9CFFE794636163EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEF009E00009E009C8684BDA6A5BDA6A5E7CFA56361
          63EFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF009E00EF
          EBEFEFEBEFEFEBEFEFEBEFBDA6A5BDA6A5EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000}
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 63
      Width = 135
      Height = 38
      Alignment = alTopLeft
      Caption = 'FILTRO'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 1
      object CBFILTRO: TcxComboBox
        Left = 3
        Top = 15
        Width = 129
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS'
          'TERMINADAS'
          'CANCELADO'
          'NFE2')
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
    object GBPLACA: TcxGroupBox
      Left = 146
      Top = 63
      Width = 645
      Height = 49
      Alignment = alTopLeft
      Caption = 'LOCALIZAR - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 2
      object EDNum: TFlatEdit
        Left = 7
        Top = 17
        Width = 58
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = 16772332
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
        Left = 67
        Top = 17
        Width = 518
        Height = 23
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorBorder = clBlack
        ColorFlat = 16772332
        ParentColor = True
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'CLIENTE'
        OnEnter = EDCliente1Enter
        OnExit = EDCliente1Exit
        OnKeyDown = EDCliente1KeyDown
      end
      object EdMaxRegistro: TFlatEdit
        Left = 587
        Top = 17
        Width = 46
        Height = 24
        Hint = 
          'Informe a quantidade de Registros a serem retornados. Deixe o ca' +
          'mpo em branco ou 0 para retornar todos '
        ColorBorder = clBlack
        ColorFlat = 10921727
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '50'
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 4
      Top = 110
      Width = 788
      Height = 47
      Alignment = alTopLeft
      Caption = 'FILTRAGEM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 5
      object Label33: TLabel
        Left = 577
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Dt. Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 682
        Top = 8
        Width = 47
        Height = 13
        Caption = 'Dt. Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edDtInicial: TMaskEdit
        Left = 576
        Top = 21
        Width = 97
        Height = 21
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
        OnKeyDown = edDtInicialKeyDown
      end
      object edDtFinal: TMaskEdit
        Left = 681
        Top = 21
        Width = 97
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
        OnKeyDown = edDtFinalKeyDown
      end
      object RadioGroup1: TRadioGroup
        Left = 6
        Top = 11
        Width = 245
        Height = 32
        Caption = 'Situa'#231#227'o'
        TabOrder = 2
      end
      object rbAbertura: TRadioButton
        Left = 12
        Top = 24
        Width = 113
        Height = 15
        Caption = 'Abertura'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
      object rbFechamento: TRadioButton
        Left = 142
        Top = 24
        Width = 105
        Height = 15
        Caption = 'Fechamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object frxFichaTecnica: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41935.719197997700000000
    ReportOptions.LastChange = 41962.422560243050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'Var      '
      'xQtdeProduto: Integer;'
      '  '
      'procedure GroupHeader2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       xQtdeProduto := <frxDbItens."QTD_PROD">  '
      'end;'
      ''
      'procedure Memo7OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 411
    Top = 4
    Datasets = <
      item
        DataSet = frxDbCliente
        DataSetName = 'frxDbCliente'
      end
      item
        DataSet = frxDbInfoEmpresa
        DataSetName = 'frxDbInfoEmpresa'
      end
      item
        DataSet = frxDbItens
        DataSetName = 'frxDbItens'
      end
      item
        DataSet = frxDbProduto
        DataSetName = 'frxDbProduto'
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
      object PageHeader1: TfrxPageHeader
        Height = 230.551330000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 10.677180000000000000
          Top = 206.299288270000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ctrl. Int.:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 104.944960000000000000
          Top = 206.299288270000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Produto:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 603.968503940000000000
          Top = 206.299288270000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 173.960730000000000000
          Width = 710.551640000000000000
          Height = 24.566934020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            'Geral - Produtos')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 230.551330000000000000
          Height = 120.944960000000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = frxDbInfoEmpresa
          DataSetName = 'frxDbInfoEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Left = 234.330860000000000000
          Top = 62.118120000000000000
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
            '[frxDbInfoEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 234.330860000000000000
          Top = 101.472480000000000000
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
            
              '[frxDbInfoEmpresa."ENDERECO"], [frxDbInfoEmpresa."NUMERO"], [frx' +
              'DbInfoEmpresa."BAIRRO"] - [frxDbInfoEmpresa."CIDADE"] - [frxDbIn' +
              'foEmpresa."UF"]'
            '')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 234.330860000000000000
          Top = 119.149660000000000000
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
            '[frxDbInfoEmpresa."FONE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 241.889920000000000000
          Top = 2.000000000000000000
          Width = 468.661720000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haRight
          Memo.UTF8 = (
            'O.P.: [frxDbItens."NUMERO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 142.724490000000000000
          Width = 54.047244094488190000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#179'digo:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 107.716535433070900000
          Top = 142.724490000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 528.354670000000000000
          Top = 142.724490000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 58.582677170000000000
          Top = 142.724490000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbCliente."COD_INTERNO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 161.299320000000000000
          Top = 142.724490000000000000
          Width = 368.503937010000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbCliente."NOME"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 604.724800000000000000
          Top = 142.724490000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDbCliente."CPFCNPJ"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 163.401670000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 140.724490000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 468.661720000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haRight
          Memo.UTF8 = (
            'D: [frxDbItens."NUMERO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        DataSet = frxDbItens
        DataSetName = 'frxDbItens'
        RowCount = 0
        object Memo8: TfrxMemoView
          Left = 10.677180000000000000
          Top = 0.700680000000000000
          Width = 94.488250000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbItens."contrint"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 105.165430000000000000
          Top = 0.598330000000000000
          Width = 498.897960000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDbItens."descricao"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 604.063390000000000000
          Top = 0.598330000000000000
          Width = 94.488250000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDbItens."qtd"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 13.559060000000000000
          Top = 18.055040000000000000
          Width = 682.204702440000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object frxDbItens: TfrxDBDataset
    UserName = 'frxDbItens'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 441
    Top = 8
  end
  object frxDbProduto: TfrxDBDataset
    UserName = 'frxDbProduto'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 381
    Top = 7
  end
  object frxDbInfoEmpresa: TfrxDBDataset
    UserName = 'frxDbInfoEmpresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 471
    Top = 7
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 528
    Top = 8
  end
  object frxDbCliente: TfrxDBDataset
    UserName = 'frxDbCliente'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 352
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 8
    object GeralProduto1: TMenuItem
      Caption = 'Geral - Produto'
      OnClick = GeralProduto1Click
    end
  end
end
