inherited FFornecedor: TFFornecedor
  Left = 119
  Top = 140
  Caption = 'FFornecedor'
  ClientHeight = 503
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PRel: TPanel [0]
    Left = 200
    Top = 89
    Width = 380
    Height = 154
    Color = 16772332
    TabOrder = 3
    Visible = False
    object LTituloRel: TLabel
      Left = 14
      Top = 12
      Width = 281
      Height = 16
      Caption = 'Relat'#243'rio de Fornecedores Cadastrados'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    inline FrmCidade: TFrmBusca
      Left = 14
      Top = 55
      Width = 353
      Height = 45
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Left = 2
        Width = 44
        Caption = 'Cidade'
      end
      inherited LUZOPEN: TShape
        Left = 312
        Top = 14
      end
      inherited LUZMINUS: TShape
        Left = 333
        Top = 14
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Top = 17
        Width = 245
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 311
        Top = 17
        Width = 20
        Height = 20
        OnClick = FrmCidadeBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 331
        Top = 17
        Width = 20
        Height = 20
        OnClick = FrmCidadeBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 17
        Width = 63
        Height = 20
      end
    end
    object BtGeraRel: TBitBtn
      Left = 96
      Top = 113
      Width = 85
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Visualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtGeraRelClick
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
    object BtCanRel: TBitBtn
      Left = 203
      Top = 113
      Width = 90
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtCanRelClick
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
  end
  inherited PComunica: TPanel
    Top = 140
  end
  inherited PConsulta: TPanel
    Top = 7
    inherited GroupBox1: TGroupBox
      Left = 156
      Width = 609
      inherited EdNome: TFlatEdit
        Left = 112
        Width = 200
        TabOrder = 1
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 504
        Top = 18
        Width = 101
        TabOrder = 3
      end
      inherited EdCodigo: TFlatEdit
        Width = 12
        Font.Color = clGray
        TabOrder = 4
      end
      inherited EdCpf: TFlatEdit
        Left = 4
        Width = 107
        Font.Color = clGray
        TabOrder = 0
        Text = 'CPF/CNPJ'
        OnEnter = EdCpfEnter
        OnExit = EdCpfExit
        OnKeyUp = EdCpfKeyUp
      end
      object EdRazaoSocial: TFlatEdit
        Left = 313
        Top = 19
        Width = 190
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. <Ctrl+Espa'#231'o> para pesquisar parte do registro '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Raz'#227'o Social'
        OnEnter = EdRazaoSocialEnter
        OnExit = EdRazaoSocialExit
        OnKeyDown = EdRazaoSocialKeyDown
        OnKeyUp = EdRazaoSocialKeyUp
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 763
      DataSource = DMPESSOA.DSVWFornecedor
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Interno'
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
          FieldName = 'NOME'
          Title.Caption = 'Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELREL'
          Title.Caption = 'Telefone'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
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
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Width = 764
    end
    inherited RGORDEM: TRadioGroup
      Left = 3
      Width = 150
    end
  end
  inherited PCadastro: TPanel
    Top = 7
    inherited Panel4: TPanel
      inherited PTipoPessoa: TPanel
        Left = 229
        Top = 31
      end
      inherited TCPessoa: TFlatTabControl
        Tabs.Strings = (
          '&Principal'
          'C&omplemento'
          '&Espec'#237'fico'
          '&Hist'#243'rico')
        inherited PCompletoFisica: TPanel [0]
          Height = 412
          object labelcontabilpffornec: TLabel [0]
            Left = 14
            Top = 365
            Width = 103
            Height = 16
            Caption = 'Conta Cont'#225'bil:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          inherited lbanexopf: TLabel
            Left = 178
            Top = 365
          end
          inherited btnanexopf: TButton
            Left = 628
            Top = 381
            TabOrder = 7
          end
          inherited eddocpf: TFlatEdit
            Left = 176
            Top = 381
          end
          object edCtaContabilFornPf: TDBColorEdit
            Left = 14
            Top = 381
            Width = 153
            Height = 24
            Color = clWhite
            Ctl3D = True
            DataField = 'CONTA_CONTABIL'
            DataSource = DMPESSOA.DSFornecedor
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        inherited PEspecifico: TPanel [1]
          Height = 413
          object PVeiculos: TGroupBox
            Left = 7
            Top = 33
            Width = 737
            Height = 233
            Caption = 'Ve'#237'culos: '
            TabOrder = 0
            object DBGVeiculos: TDBGrid
              Left = 8
              Top = 16
              Width = 721
              Height = 177
              DataSource = DMPESSOA.DEquip
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_CLIENTE'
                  Title.Caption = 'Cod.'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PLACA'
                  Title.Caption = 'Placa'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 560
                  Visible = True
                end>
            end
            object BtRemover: TBitBtn
              Left = 624
              Top = 200
              Width = 89
              Height = 25
              Caption = 'Excluir'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
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
          end
          object Panel2: TPanel
            Left = 1
            Top = 2
            Width = 749
            Height = 29
            BevelInner = bvLowered
            Color = 16772332
            TabOrder = 1
            object btnEquip: TBitBtn
              Left = 2
              Top = 2
              Width = 127
              Height = 25
              Cursor = crHandPoint
              Hint = 'Pressione este bot'#227'o para filtrar os registros'
              Caption = '&Equipamentos'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnEquipClick
              Glyph.Data = {
                8E050000424D8E05000000000000360000002800000017000000130000000100
                18000000000058050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
                0000BFBFBFBFBFBFBFBFBFBEBEBEAEAEAEBABABABFBFBF5F5F6041414D545456
                BFBFBFBCBCBCAEAEAEBCBCBCBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF8B8BAC1A1A48646464BFBFBF3C
                3C6600007F2B2B61BFBFBF7373731919407E7EA4BFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF4D4D9F0909
                9817174D3B3B4B21217B0E0E8F2222813B3B4B1C1C530808833E3EA4BFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBC
                7373733737870000A300005600007F0C0C8D7D7DFF1C1C9800007F1212573535
                9C2D2D8E737373B6B6B6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
                0000BFBFBF61616411116B0606483F3FCE4242C411114313138C7C7CFF39399C
                1313437878B66C6CD21C1C4F10106B53535DBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBF000000BFBFBF48484C00007F00007A2F2F6E8181ED7D7DCB2E
                2E874949875858874141C16565F300005A00006C00007F383846BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF6464945555CA3C3CD18585
                E28989D1626262B1B1B182828257575717172E4A4AC47C7CE66F6FBA5656B74A
                4A4CBFBFBFB6B6B69E9E9EBDBDBDBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBE
                7171A532326A3333B27F7FA07F7F7FDADADAA1A1A16C6C6C3D3D3D2B2B957F7F
                DE121E27003F3F383F3FBFBFBF5D69692351517D8080BFBFBFBFBFBFBFBFBF00
                0000BFBFBFBFBFBFBFBFBF48485C6161C27575F99191A1DADADAA1A1A16C6C6C
                00005A7171F31A1ACB001E341E9B9B192B2B2945451C7575078181434A4ABFBF
                BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF55559F8080EB6F6F93444466DE
                DEDEA1A1A16C6C6C00001C1414847F7FFF2E46577EFFFF0D3A3A007F7F229090
                369A9A282F2F636363BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFABABB95353
                A29595A6A6A6A6A0A0A0A3A3A37D7D7D4C5C5C44BED13150AF209EA981FFFF3B
                8D8D244F4F75DDDD6CC2C20A4040167777565959BFBFBF000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFB9B9B9B1B1B1B7B7B79E9E9E8FAAAA7AF5F57EB4
                B4266F6F326F6F496F6F3FC1C167F0F0004F4F007777007F7F484C4CBFBFBF00
                0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF76AAAA7EC9C950D9D9
                8CFFFF89B4B4696969CACACA8D8D8D5757572836363EC2C26AF0F071B3B35097
                976B6B6BBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB8
                BCBC86ABAB2F68687BD7D7A0A0A0737373DFDFDF9C9C9C6161613A3A3A2FADAD
                7AD1D1343838797979BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBF4463637DD1D177F5F58EA1A1DFDFDF9C9C9C61
                616100717180FAFA26CACA434C4CBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5CA6A684E2E25C7575536A
                6AE2E2E29C9C9C6464640B26262E888882DFDF494E4EBFBFBFBFBFBFBFBFBF00
                0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFB9B9
                65A2A2ABB4B4AEAEAE9E9E9EABABAB7979797171719E9F9F525353B5B5B5BFBF
                BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAAEAEAEABABABA3A3A3A5A5A5BFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
            end
            object BtRefresh: TBitBtn
              Left = 672
              Top = 2
              Width = 75
              Height = 25
              Caption = 'Refresh'
              TabOrder = 1
              OnClick = BtRefreshClick
            end
          end
        end
        object PHistorico: TPanel [2]
          Left = 2
          Top = 18
          Width = 748
          Height = 415
          BevelOuter = bvNone
          Color = 16772332
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          Visible = False
          object Label61: TLabel
            Left = 16
            Top = 16
            Width = 119
            Height = 12
            Caption = 'HIST'#211'RICO RESUMIDO:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DRLabel1: TDRLabel
            Left = 19
            Top = 263
            Width = 129
            Height = 16
            Caption = 'Pedidos de Compra:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel2: TDRLabel
            Left = 443
            Top = 263
            Width = 107
            Height = 16
            Caption = 'Contas vencidas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object MResumo: TMemo
            Left = 16
            Top = 32
            Width = 721
            Height = 225
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object DBGrid3: TDBGrid
            Left = 18
            Top = 279
            Width = 423
            Height = 127
            Color = 15794175
            Ctl3D = False
            DataSource = DMFINANC.DSALX
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPED'
                Title.Caption = 'N'#186' Pedido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMFISCAL'
                Title.Caption = 'N'#186' Fiscal'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Title.Caption = 'ST'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Title.Caption = 'Situa'#231#227'o'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMPAG'
                Title.Caption = 'Pagamento'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTPEDVEN'
                Title.Caption = 'Data'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 70
                Visible = True
              end>
          end
          object DBGrid4: TDBGrid
            Left = 443
            Top = 279
            Width = 293
            Height = 127
            Color = 15794175
            Ctl3D = False
            DataSource = DMMACS.DSALX
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
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPARC'
                Title.Caption = 'Parcela'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTLANC'
                Title.Caption = 'Lan'#231'amento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTVENC'
                Title.Caption = 'Vencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORPG'
                Title.Caption = 'Pago'
                Visible = True
              end>
          end
          object BitBtn5: TBitBtn
            Left = 310
            Top = 258
            Width = 131
            Height = 20
            Caption = 'Abrir Tela de P. Compras'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 605
            Top = 258
            Width = 131
            Height = 20
            Caption = 'Abrir Tela de Contas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn6Click
          end
        end
        inherited PPrincipal: TPanel [3]
          Height = 414
          inherited Label14: TLabel
            Left = 324
          end
          inherited Label15: TLabel
            Left = 128
          end
          inherited Label17: TLabel
            Left = 14
            Top = 136
          end
          inherited Label20: TLabel
            Top = 174
          end
          inherited LProximidade: TLabel
            Left = 295
            Top = 174
          end
          inherited lbVerMapa: TLabel
            Left = 490
          end
          inherited LBENDNUM: TLabel
            Left = 658
          end
          inherited Label68: TLabel
            Left = 52
            Top = 138
          end
          object Label81: TLabel [8]
            Left = 631
            Top = 174
            Width = 104
            Height = 13
            Caption = 'Contrib. de ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          inherited PEndereco: TPanel
            TabOrder = 14
          end
          inherited PPesFisica: TPanel
            inherited Label5: TLabel
              Left = 336
            end
            inherited Label37: TLabel
              Left = 501
              Width = 94
              Caption = 'Data de Nasc.'
            end
            object Label1: TLabel [6]
              Left = 604
              Top = 88
              Width = 80
              Height = 16
              Caption = 'Fornecedor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel [7]
              Left = 7
              Top = 87
              Width = 161
              Height = 16
              Caption = 'E-mail padr'#227'o para NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            inherited DBColorEdit3: TDBColorEdit
              Left = 336
              Width = 159
              TabOrder = 6
            end
            inherited DBINTERNO: TDBColorEdit
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DSFornecedor
            end
            inherited DBColorEdit9: TDBColorEdit
              Left = 500
              Width = 99
              TabOrder = 7
            end
            object DBComboBox1: TDBComboBox
              Left = 604
              Top = 104
              Width = 123
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 8
            end
            object DBColorEdit11: TDBColorEdit
              Left = 7
              Top = 103
              Width = 322
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'EMAILPADRAO'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          inherited PPesJuridica: TPanel
            Height = 128
            inherited Label8: TLabel
              Left = 104
            end
            inherited Label9: TLabel
              Left = 280
            end
            inherited Label10: TLabel
              Left = 441
            end
            inherited Label12: TLabel
              Left = 373
            end
            inherited Label3: TLabel
              Left = 597
              Top = 2
            end
            object Label16: TLabel [8]
              Left = 7
              Top = 87
              Width = 161
              Height = 16
              Caption = 'E-mail padr'#227'o para NF-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            inherited DBCnpj: TDBColorEdit
              Left = 102
              Width = 150
            end
            inherited DBColorEdit5: TDBColorEdit
              Left = 279
              Width = 154
            end
            inherited DBColorEdit6: TDBColorEdit
              Left = 440
              Width = 149
            end
            inherited DBColorEdit7: TDBColorEdit
              Left = 372
              Width = 361
              TabOrder = 8
            end
            inherited DBColorEdit8: TDBColorEdit
              TabOrder = 5
            end
            inherited DBNOMEPJ: TDBColorEdit
              TabOrder = 6
            end
            inherited DBCODINTERNOPJ: TDBColorEdit
              Width = 89
              DataSource = DMPESSOA.DSFornecedor
            end
            inherited DBColorEdit2: TDBColorEdit
              Left = 596
              Top = 19
              TabOrder = 4
            end
            object DBColorEdit10: TDBColorEdit
              Left = 7
              Top = 103
              Width = 361
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'EMAILPADRAO'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object btnBuscaCnpj: TBitBtn
              Left = 252
              Top = 17
              Width = 23
              Height = 22
              TabOrder = 9
              OnClick = btnBuscaCnpjClick
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
                E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
                1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
                09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
                AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
                AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
                FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
                EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
                FFF5DEAA660CF3CD86F2CC84F2CC84AA660CFFF4DBC59042D2AC75FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDAA660CE5BD7AF5D599E5BD7AAA
                660CFEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
                FEF4E0E5BD7AAA660CAA660CAA660CD8AA62FBF0DCFDF3DAC3882DFAEDD6FFFF
                FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7F9E8C8AA660CF9E8C8AA660CF9
                E8C8FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
                FFFFFFFFFCF6AA660CFCF2DFAA660CFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFAA660CFFFFFFFF
                FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
                CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
                BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
          end
          inherited dbbairro: TDBColorEdit
            Left = 127
            Width = 191
            TabOrder = 3
          end
          inherited DBColorEdit13: TDBColorEdit
            Left = 14
            Top = 151
            TabOrder = 2
          end
          inherited PageControl1: TPageControl
            Top = 262
            ActivePage = TabSheet2
            inherited TabSheet1: TTabSheet
              inherited GroupBox2: TGroupBox
                inherited Memo1: TMemo
                  TabOrder = 8
                end
                inherited DBColorEdit47: TDBColorEdit
                  TabOrder = 7
                end
                object CBFinanceiro: TCheckBox
                  Left = 564
                  Top = 21
                  Width = 145
                  Height = 17
                  Hint = 
                    'Marque esta op'#231#227'o para fazer controle individual do financeiro d' +
                    'este fornecedor.'
                  Caption = 'Controle Financeiro'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 6
                end
              end
            end
          end
          inherited DBDATACAD: TDBColorEdit
            Top = 189
          end
          inherited FrmBusca1: TFrmBusca
            Width = 277
            inherited LUZOPEN: TShape
              Left = 233
            end
            inherited LUZMINUS: TShape
              Left = 251
            end
            inherited EdDescricao: TFlatEdit
              Left = 42
              Width = 192
            end
            inherited BTNOPEN: TBitBtn
              Left = 234
            end
            inherited BTNMINUS: TBitBtn
              Left = 252
            end
            inherited EDCodigo: TFlatEdit
              Width = 39
            end
          end
          inherited FrmRegiao: TFrmBusca
            Left = 289
            Width = 264
            inherited LUZOPEN: TShape
              Left = 218
            end
            inherited LUZMINUS: TShape
              Left = 237
            end
            inherited EdDescricao: TFlatEdit
              Left = 42
              Width = 175
            end
            inherited BTNOPEN: TBitBtn
              Left = 220
            end
            inherited BTNMINUS: TBitBtn
              Left = 238
            end
            inherited EDCodigo: TFlatEdit
              Width = 39
            end
          end
          inherited FrmNatural: TFrmBusca
            Width = 278
            inherited LUZOPEN: TShape
              Left = 232
            end
            inherited LUZMINUS: TShape
              Left = 250
            end
            inherited EdDescricao: TFlatEdit
              Left = 42
              Width = 191
            end
            inherited BTNOPEN: TBitBtn
              Left = 234
            end
            inherited BTNMINUS: TBitBtn
              Left = 252
            end
            inherited EDCodigo: TFlatEdit
              Width = 39
            end
          end
          inherited DBProximidade: TDBColorEdit
            Left = 295
            Top = 189
            Width = 218
            TabOrder = 7
          end
          inherited DBEndNumero: TDBColorEdit
            Left = 657
            TabOrder = 5
          end
          object GroupBox14: TGroupBox [21]
            Left = 556
            Top = 214
            Width = 181
            Height = 59
            Caption = 'Cr'#233'd. de antecipa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            object DBColorEdit53: TDBColorEdit
              Left = 8
              Top = 21
              Width = 166
              Height = 38
              DataField = 'VLRCREDITO'
              DataSource = DMPESSOA.DSPessoa
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -27
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object CbContribuinteIcms: TComboBox [22]
            Left = 650
            Top = 189
            Width = 63
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 14
            ItemIndex = 1
            ParentFont = False
            TabOrder = 13
            Text = 'N'#227'o'
            Items.Strings = (
              'Sim'
              'N'#227'o'
              'Isento')
          end
          inherited DBColorEdit4: TEdit
            Left = 324
            TabOrder = 4
          end
        end
        inherited PComplementoJURIDICA: TPanel
          Width = 748
          Height = 414
          inherited lbanexopj: TLabel
            Left = 8
          end
          object labelcontabilpjfornec: TLabel [1]
            Left = 8
            Top = 51
            Width = 103
            Height = 16
            Caption = 'Conta Cont'#225'bil:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          inherited lbOrgaoPessoa: TLabel
            Left = 558
            Top = 20
          end
          inherited btnanexopj: TButton
            Left = 461
            TabOrder = 4
          end
          inherited eddocpj: TFlatEdit
            Left = 8
            TabOrder = 5
          end
          inherited CBOrgao_Municipal_Estadual: TCheckBox
            Left = 558
            Top = 44
            TabOrder = 6
          end
          inherited cbOrgao_Federal: TCheckBox
            Left = 558
            Top = 68
            TabOrder = 7
          end
          inline FrmTransp: TFrmBusca
            Left = 8
            Top = 6
            Width = 489
            Height = 39
            Color = 16772332
            ParentColor = False
            TabOrder = 0
            inherited LTextoBusca: TLabel
              Width = 106
              Caption = 'Transportadora:'
            end
            inherited LUZOPEN: TShape
              Left = 438
              Width = 23
              Height = 22
            end
            inherited LUZMINUS: TShape
              Left = 462
            end
            inherited EdDescricao: TFlatEdit
              Left = 130
              Width = 307
              ColorFlat = clWhite
            end
            inherited BTNOPEN: TBitBtn
              Left = 437
              OnClick = FrmTranspBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 459
              OnClick = FrmContaBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 127
              ColorFlat = clLightGreen
              OnKeyPress = FrmTranspEDCodigoKeyPress
            end
          end
          object GroupBox11: TGroupBox
            Left = 10
            Top = 96
            Width = 483
            Height = 177
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object DBMemo1: TDBMemo
              Left = 8
              Top = 24
              Width = 469
              Height = 145
              DataField = 'OBS'
              DataSource = DMPESSOA.DSFornecedor
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox13: TGroupBox
            Left = 10
            Top = 278
            Width = 233
            Height = 62
            Caption = 'Cr'#233'dito de antecipa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBColorEdit52: TDBColorEdit
              Left = 8
              Top = 21
              Width = 217
              Height = 38
              DataField = 'VLRCREDITO'
              DataSource = DMPESSOA.DSPessoa
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -27
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object edCtaContabilFornPj: TDBColorEdit
            Left = 8
            Top = 67
            Width = 153
            Height = 24
            Color = clWhite
            Ctl3D = True
            DataField = 'CONTA_CONTABIL'
            DataSource = DMPESSOA.DSFornecedor
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
    end
    inherited Panel1: TPanel
      inherited DBNOMESUPER: TDBText
        Left = 312
        Width = 449
      end
    end
  end
  inherited Relatorio: TPopupMenu
    Top = 65534
    object FornecedoresporCidade1: TMenuItem
      Caption = 'Fornecedores por Cidade'
      OnClick = FornecedoresporCidade1Click
    end
  end
  inherited XMLDocument1: TXMLDocument
    Left = 474
    Top = 42
  end
  inherited AlteraPessoa: TPopupMenu
    Top = 65535
    object Documentos1: TMenuItem
      Caption = 'Documentos'
      object AnexarDocumentos1: TMenuItem
        Caption = 'Anexar Documento'
        OnClick = AnexarDocumentos1Click
      end
      object AbrirPasta1: TMenuItem
        Caption = 'Abrir Pasta'
        OnClick = AbrirPasta1Click
      end
    end
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 680
    Top = 65513
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMCONTA.DRel
    Left = 648
    Top = 65513
  end
  object ActionList1: TActionList
    Images = DMPESSOA.il16x16
    Left = 800
    Top = 80
    object actSearchCNPJ: TAction
      ImageIndex = 0
      ShortCut = 113
      OnExecute = actSearchCNPJExecute
      OnUpdate = actSearchCNPJUpdate
    end
  end
end
