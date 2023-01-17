inherited FOrcamento: TFOrcamento
  Left = 200
  Top = 104
  Caption = 'FOrcamento'
  ClientHeight = 603
  ClientWidth = 789
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 785
    Height = 566
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 153
    Caption = 'Or'#231'amento de Venda'
  end
  inherited PComunica: TPanel [5]
    Left = 165
    Top = 139
  end
  inherited PConsulta: TPanel
    Left = 9
    Top = 47
    Width = 774
    Height = 546
    inherited GroupBox1: TGroupBox
      Width = 768
      inherited EdNome: TFlatEdit
        Left = 114
        Width = 409
        TabOrder = 1
        Text = 'Nome/Descri'#231#227'o'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 643
        Top = 18
        TabOrder = 3
      end
      object EdNumOrc: TFlatEdit
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
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#186' Or'#231'amento'
        OnEnter = EdNumOrcEnter
        OnExit = EdNumOrcExit
        OnKeyDown = EdNumOrcKeyDown
      end
      object edDtAbertura: TFlatEdit
        Left = 529
        Top = 19
        Width = 97
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Data Abertura'
        OnEnter = edDtAberturaEnter
        OnExit = edDtAberturaExit
        OnKeyDown = edDtAberturaKeyDown
        OnKeyPress = edDtAberturaKeyPress
      end
    end
    inherited Painel: TPanel
      Width = 769
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 768
      Height = 454
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMORC'
          Title.Caption = 'N'#186
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
          FieldName = 'DESCRICAO'
          Title.Caption = 'Or'#231'amento'
          Width = 373
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVALID'
          Title.Caption = 'Validade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMPAG'
          Title.Caption = 'Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUNCIONARIO'
          Title.Caption = 'Vendedor'
          Visible = True
        end>
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 9
    Top = 49
    Width = 772
    Height = 544
    inherited Panel4: TPanel
      Top = 31
      Width = 768
      Height = 509
      object Label14: TLabel
        Left = 240
        Top = 133
        Width = 28
        Height = 13
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 517
        Top = 99
        Width = 71
        Height = 13
        Caption = 'Data Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 685
        Top = 99
        Width = 71
        Height = 13
        Caption = 'Hora Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 601
        Top = 99
        Width = 75
        Height = 13
        Caption = 'Dt. Validade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 605
        Top = 135
        Width = 26
        Height = 13
        Caption = '(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 697
        Top = 135
        Width = 62
        Height = 13
        Caption = 'Produtos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 648
        Top = 167
        Width = 26
        Height = 13
        Caption = '(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 698
        Top = 167
        Width = 60
        Height = 13
        Caption = 'Servi'#231'os:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 557
        Top = 167
        Width = 66
        Height = 13
        Caption = 'Despesas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Top = 166
        Width = 72
        Height = 13
        Caption = '% Res.T'#233'cnica'
      end
      object Label30: TLabel
        Left = 655
        Top = 135
        Width = 20
        Height = 13
        Caption = '($)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 8
        Top = 58
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object PConversaoUnitaria: TPanel
        Left = 388
        Top = 265
        Width = 365
        Height = 132
        BevelWidth = 3
        Color = clBackground
        TabOrder = 18
        Visible = False
        OnExit = EDQuantidadeExit
        object FPConversaoUnitaria: TFashionPanel
          Left = 4
          Top = 4
          Width = 357
          Height = 125
          BevelOuter = bvNone
          Color = 13758938
          TabOrder = 5
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
            Top = 71
            Width = 99
            Height = 16
            Caption = 'Qtd. Vendida:'
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
            Width = 105
            Height = 16
            Caption = 'Unid. Estoque:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbConversaoUnitariaPara: TLabel
            Left = 8
            Top = 74
            Width = 105
            Height = 16
            Caption = 'Unid. Vendida:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label84: TLabel
            Left = 170
            Top = 22
            Width = 127
            Height = 16
            Caption = 'Sair'#225' do estoque:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnVisualizarConvUnit: TcxButton
            Left = 330
            Top = 41
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
          Top = 44
          Width = 132
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
          OnKeyDown = edQntConvertVendaKeyDown
          OnKeyUp = edQntConvertVendaKeyUp
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object edQntConvert: TColorEditFloat
          Left = 173
          Top = 92
          Width = 132
          Height = 26
          Color = 16053503
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnKeyDown = edQntConvertKeyDown
          OnKeyUp = edQntConvertKeyUp
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object btnOkConversaoUnitaria: TcxButton
          Left = 317
          Top = 93
          Width = 34
          Height = 25
          Hint = 'Pressione para fechar pagamento m'#250'ltiplo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnOkConversaoUnitariaClick
          OnKeyDown = btnOkConversaoUnitariaKeyDown
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
          Top = 94
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
          OnExit = cbConvUnitVendaConvExit
        end
        object cbUnidConvVenda: TDBLookupComboBox
          Left = 11
          Top = 46
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
          ListField = 'DESC_UNID'
          ListFieldIndex = 1
          ListSource = DMESTOQUE.DSUnidade
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 753
        Height = 47
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 6
          Width = 55
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 142
          Top = 6
          Width = 78
          Height = 16
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 308
          Top = 6
          Width = 47
          Height = 16
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LUZOPEN: TShape
          Left = 722
          Top = 21
          Width = 22
          Height = 21
          Brush.Color = clRed
          Pen.Color = clRed
          Visible = False
        end
        object EdCodCli: TEdit
          Left = 4
          Top = 23
          Width = 133
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, informe o cliente padr'#227'o consumidor'
          Color = 16121836
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
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
          Left = 141
          Top = 23
          Width = 161
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16121836
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
          TabOrder = 2
        end
        object EdNomeCli: TEdit
          Left = 307
          Top = 23
          Width = 414
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16121836
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
        object BtnProcPess: TBitBtn
          Left = 721
          Top = 23
          Width = 22
          Height = 21
          TabOrder = 4
          OnClick = BtnProcPessClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object PPesCad: TPanel
          Left = 138
          Top = 21
          Width = 584
          Height = 23
          BevelOuter = bvNone
          Color = 16772332
          Enabled = False
          TabOrder = 1
          object DBNomeCli: TDBColorEdit
            Left = 171
            Top = 2
            Width = 412
            Height = 22
            Hint = 
              'Digite o nome do cliente e pressione <ENTER>  para tentar locali' +
              'z'#225'-lo no cadastro'
            Color = 14540287
            Ctl3D = False
            DataField = 'NOMECLI'
            DataSource = DMSAIDA.DOrc
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnKeyPress = DBNomeCliKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCPF: TDBColorEdit
            Left = 3
            Top = 2
            Width = 161
            Height = 22
            Color = 14540287
            Ctl3D = False
            DataField = 'CPFCNPJ'
            DataSource = DMSAIDA.DOrc
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inline FrmVendedor: TFrmBusca
        Left = 7
        Top = 101
        Width = 256
        Height = 32
        AutoScroll = False
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 60
          Height = 13
          Caption = 'Vendedor:'
          Font.Height = -11
        end
        inherited LUZMINUS: TShape
          Left = 233
          Top = 8
          Width = 21
        end
        inherited EdDescricao: TFlatEdit
          Left = 49
          Top = 11
          Width = 184
          Height = 18
          Font.Height = -9
        end
        inherited BTNOPEN: TBitBtn
          Left = 233
          Top = 11
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 384
          Top = 14
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 11
          Width = 48
          Height = 18
          Font.Height = -9
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      inline FrmFormPag1: TFrmBusca
        Left = 264
        Top = 101
        Width = 233
        Height = 34
        Color = 16772332
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Width = 127
          Height = 13
          Caption = 'Forma de pagamento:'
          Font.Height = -11
        end
        inherited LUZOPEN: TShape
          Left = 186
          Top = 9
          Width = 20
        end
        inherited LUZMINUS: TShape
          Left = 206
          Top = 9
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 34
          Top = 12
          Width = 151
          Height = 18
          ColorFlat = clWhite
          Font.Height = -9
        end
        inherited BTNOPEN: TBitBtn
          Left = 185
          Top = 12
          OnClick = FrmFormPag1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 204
          Top = 12
          OnClick = FrmFormPag1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 12
          Width = 32
          Height = 18
          ColorFlat = 15269845
          Font.Height = -9
          OnKeyDown = FrmFormPag1EDCodigoKeyDown
        end
      end
      object DBOBS: TDBMemo
        Left = 241
        Top = 144
        Width = 288
        Height = 55
        Ctl3D = False
        DataField = 'OBS'
        DataSource = DMSAIDA.DOrc
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBDTABERT: TDBColorEdit
        Left = 517
        Top = 111
        Width = 75
        Height = 20
        Color = 15329769
        Ctl3D = False
        DataField = 'DTABERT'
        DataSource = DMSAIDA.DOrc
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHRABERT: TDBColorEdit
        Left = 685
        Top = 111
        Width = 75
        Height = 20
        Color = 15329769
        Ctl3D = False
        DataField = 'HRABERT'
        DataSource = DMSAIDA.DOrc
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDTPREV: TDBColorEdit
        Left = 601
        Top = 111
        Width = 75
        Height = 20
        Color = 15597546
        Ctl3D = False
        DataField = 'DTVALIDADE'
        DataSource = DMSAIDA.DOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnExit = DBDTPREVExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTProd: TColorEditFloat
        Left = 582
        Top = 147
        Width = 47
        Height = 19
        Hint = 'Informe aqui os descontos para produtos'
        Color = 16777211
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Text = '0,00'
        OnExit = EdDescTProdExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdtotalProd: TColorEditFloat
        Left = 676
        Top = 147
        Width = 83
        Height = 19
        Color = 15527167
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = '0,00'
        OnExit = EdtotalProdExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTServ: TColorEditFloat
        Left = 629
        Top = 179
        Width = 47
        Height = 19
        Hint = 'Informe aqui os descontos para servi'#231'os'
        Color = 16777194
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Text = '0,00'
        OnExit = EdDescTServExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTotalserv: TColorEditFloat
        Left = 676
        Top = 179
        Width = 83
        Height = 19
        Color = 14540287
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        Text = '0,00'
        OnExit = EdTotalservExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTotDesp: TColorEditFloat
        Left = 544
        Top = 179
        Width = 81
        Height = 19
        Color = 13816575
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PCProdServ: TPageControl
        Left = 7
        Top = 210
        Width = 752
        Height = 285
        ActivePage = TabSheet1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Images = ImageList1
        MultiLine = True
        ParentFont = False
        TabOrder = 16
        TabPosition = tpBottom
        object TabSheet1: TTabSheet
          Caption = 'PRODUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Shape6: TShape
            Left = 5
            Top = 0
            Width = 735
            Height = 237
            Brush.Color = 16772332
            Pen.Color = clMaroon
          end
          object LQTDPROD: TLabel
            Left = 559
            Top = 237
            Width = 172
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Panel2: TPanel
            Left = 9
            Top = 4
            Width = 728
            Height = 93
            BevelInner = bvLowered
            Color = 16772332
            TabOrder = 0
            OnEnter = Panel2Enter
            object LProduto: TLabel
              Left = 29
              Top = 60
              Width = 55
              Height = 16
              Caption = 'Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = 4868685
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label18: TLabel
              Left = 340
              Top = 4
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
              Left = 452
              Top = 5
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
              Left = 400
              Top = 5
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
              Left = 520
              Top = 5
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
              Left = 621
              Top = 3
              Width = 71
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LSaldoEstoque: TLabel
              Left = 621
              Top = 17
              Width = 71
              Height = 15
              Alignment = taCenter
              AutoSize = False
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LMarcaProd: TLabel
              Left = 198
              Top = 74
              Width = 38
              Height = 16
              Caption = 'Marca'
            end
            object LLocal: TLabel
              Left = 446
              Top = 56
              Width = 33
              Height = 16
              Caption = 'Local'
            end
            object LCustoTot: TLabel
              Left = 447
              Top = 75
              Width = 90
              Height = 13
              AutoSize = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LCtrint: TLabel
              Left = 30
              Top = 74
              Width = 38
              Height = 16
              Caption = 'Marca'
            end
            object PCodFab: TPanel
              Left = 195
              Top = 9
              Width = 131
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 3
              Visible = False
              object Label10: TLabel
                Left = 1
                Top = 3
                Width = 120
                Height = 16
                Caption = 'C'#243'd. Fabricante:'
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
                Width = 129
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
                OnKeyDown = EDCodFabKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodInterno: TPanel
              Left = 195
              Top = 9
              Width = 130
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 4
              Visible = False
              object Label17: TLabel
                Left = 2
                Top = 3
                Width = 112
                Height = 16
                Caption = 'Contrl. Interno:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodInterno: TColorEditFloat
                Left = 0
                Top = 19
                Width = 125
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
                Text = '0,00'
                OnKeyDown = EDCodInternoKeyDown
                EditType = fltString
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodComposto: TPanel
              Left = 195
              Top = 10
              Width = 129
              Height = 40
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 2
              Visible = False
              object Label16: TLabel
                Left = 2
                Top = 1
                Width = 116
                Height = 16
                Caption = 'C'#243'd. Composto:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodComposto: TColorMaskEdit
                Left = 0
                Top = 18
                Width = 125
                Height = 22
                Ctl3D = False
                EditMask = '000.000.000-000;1;_'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '   .   .   -   '
                OnKeyDown = EDCodCompostoKeyDown
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PBPCodBarra: TPanel
              Left = 28
              Top = 14
              Width = 165
              Height = 36
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 1
              object Label15: TLabel
                Left = -1
                Top = -1
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
              object EDCodBarra: TEdit
                Left = 0
                Top = 14
                Width = 165
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
            end
            object BtnProcProd: TBitBtn
              Left = 6
              Top = 29
              Width = 22
              Height = 20
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
            object BtnInsertProd: TBitBtn
              Left = 655
              Top = 48
              Width = 70
              Height = 21
              Hint = 
                'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                'na lista (ALT + I)'
              Caption = '&Inserir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
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
            object BtnDeleteProd: TBitBtn
              Left = 655
              Top = 68
              Width = 70
              Height = 21
              Hint = 
                'Pressione para remover o produto selecionado na lista da mesma (' +
                'ALT + E)'
              Caption = '&Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
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
              Layout = blGlyphRight
              Spacing = 10
            end
            object EDQuantidade: TColorEditFloat
              Left = 340
              Top = 21
              Width = 59
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
              TabOrder = 5
              Text = '0,00'
              OnEnter = EDQuantidadeEnter
              OnExit = EDQuantidadeExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDValUnit: TColorEditFloat
              Left = 452
              Top = 21
              Width = 67
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
              TabOrder = 7
              Text = '0,00'
              OnEnter = EDValUnitEnter
              OnExit = EDQuantidadeExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDDesc: TColorEditFloat
              Left = 400
              Top = 21
              Width = 51
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
              TabOrder = 6
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDTotal: TColorEditFloat
              Left = 520
              Top = 21
              Width = 94
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
              TabOrder = 8
              Text = '0,00'
              OnExit = EDTotalExit
              OnKeyDown = EDTotalKeyDown
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BtnEscolheProc: TBitBtn
              Left = 309
              Top = 51
              Width = 11
              Height = 12
              Hint = 'Pressione para alterar o modo de procura (Alt+P)'
              Caption = '&P'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = BtnEscolheProcClick
            end
            object PLabelConvertion: TPanel
              Left = 331
              Top = 48
              Width = 76
              Height = 24
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 12
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
          end
          object PQtdConvert: TPanel
            Left = 14
            Top = 7
            Width = 281
            Height = 80
            BevelWidth = 2
            Color = 16772332
            TabOrder = 2
            Visible = False
            object Label62: TLabel
              Left = 169
              Top = 18
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
              Left = 166
              Top = 48
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
            object DBGridConvert: TDBGrid
              Left = 4
              Top = 4
              Width = 136
              Height = 72
              Hint = 'Selecione a unidade de convers'#227'o'
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = 15794175
              Ctl3D = False
              DataSource = DMENTRADA.DAlx
              FixedColor = 11039232
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnCellClick = DBGridConvertCellClick
              OnExit = DBGridConvertExit
              OnKeyPress = DBGridConvertKeyPress
              Columns = <
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'SIGLA_UNID'
                  Title.Caption = 'DE'
                  Width = 60
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'SIGLA_UNID1'
                  Title.Caption = 'PARA'
                  Width = 60
                  Visible = True
                end>
            end
          end
          object GroupBox5: TGroupBox
            Left = 11
            Top = 97
            Width = 725
            Height = 138
            Caption = 'Lista de produtos do or'#231'amento'
            Color = 16772332
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            object DbgProduto: TDBGrid
              Left = 3
              Top = 14
              Width = 719
              Height = 122
              Color = 15597546
              Ctl3D = False
              DataSource = DMESTOQUE.DSSlave
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
              OnKeyDown = DbgProdutoKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Cont. Interno'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Qtd.'
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNIT'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr. Unit.'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Desc(%)'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr. total'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODPRODFABR'
                  Title.Caption = 'C'#243'd. Fabricante'
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
                  FieldName = 'MARCA'
                  Title.Caption = 'Marca'
                  Visible = True
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 1
          ParentFont = False
          object Shape7: TShape
            Left = 5
            Top = 0
            Width = 736
            Height = 237
            Brush.Color = 16772332
            Pen.Color = 4227072
          end
          object LQTDSERV: TLabel
            Left = 566
            Top = 237
            Width = 172
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Panel3: TPanel
            Left = 9
            Top = 4
            Width = 728
            Height = 86
            BevelInner = bvLowered
            Color = 16772332
            TabOrder = 0
            object LServico: TLabel
              Left = 29
              Top = 51
              Width = 5
              Height = 16
              Font.Charset = ANSI_CHARSET
              Font.Color = 4868685
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label12: TLabel
              Left = 333
              Top = 10
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
            object Label13: TLabel
              Left = 409
              Top = 11
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
            object Label9: TLabel
              Left = 487
              Top = 11
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
            object Label22: TLabel
              Left = 541
              Top = 11
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
            object LSubServico: TLabel
              Left = 30
              Top = 65
              Width = 3
              Height = 16
            end
            object Label27: TLabel
              Left = 165
              Top = 11
              Width = 96
              Height = 16
              Caption = 'C'#243'd. Interno:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 31
              Top = 10
              Width = 116
              Height = 16
              Caption = 'C'#243'd. Composto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProcServ: TBitBtn
              Left = 6
              Top = 29
              Width = 22
              Height = 20
              Hint = 'Pressione para localizar o Produto'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BtnProcServClick
              Glyph.Data = {
                B6000000424DB60000000000000036000000280000000A000000040000000100
                18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
            end
            object BtnInsertServ: TBitBtn
              Left = 653
              Top = 35
              Width = 70
              Height = 25
              Hint = 
                'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                'na lista (ALT + I)'
              Caption = '&Inserir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = BtnInsertServClick
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
            object BtnDeleteServ: TBitBtn
              Left = 653
              Top = 59
              Width = 70
              Height = 25
              Hint = 
                'Pressione para remover o produto selecionado na lista da mesma (' +
                'ALT + E)'
              Caption = '&Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = BtnDeleteServClick
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
            object EDQtdServ: TColorEditFloat
              Left = 333
              Top = 27
              Width = 73
              Height = 19
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
              OnExit = EDQtdServExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDVlrUnitServ: TColorEditFloat
              Left = 409
              Top = 27
              Width = 75
              Height = 19
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
              OnEnter = EDVlrUnitServEnter
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdDescServ: TColorEditFloat
              Left = 487
              Top = 27
              Width = 51
              Height = 19
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
              TabOrder = 5
              Text = '0,00'
              OnExit = EDQtdServExit
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrtotalServ: TColorEditFloat
              Left = 541
              Top = 27
              Width = 81
              Height = 19
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
              TabOrder = 6
              Text = '0,00'
              OnKeyDown = EdVlrtotalServKeyDown
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdCodcompostoServ: TColorMaskEdit
              Left = 29
              Top = 27
              Width = 131
              Height = 22
              Ctl3D = False
              EditMask = '000.000.000-000;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 15
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '   .   .   -   '
              OnKeyDown = EdCodcompostoServKeyDown
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdCodInternoServ: TColorEditFloat
              Left = 163
              Top = 27
              Width = 125
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0'
              OnKeyDown = EdCodInternoServKeyDown
              EditType = fltString
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox4: TGroupBox
            Left = 11
            Top = 91
            Width = 726
            Height = 143
            Caption = 'Lista de servi'#231'o do or'#231'amento'
            Color = 16772332
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 1
            object DbgServicos: TDBGrid
              Left = 3
              Top = 14
              Width = 719
              Height = 126
              Color = 14221052
              Ctl3D = False
              DataSource = DMESTOQUE.DSSlaveServ
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
              OnKeyDown = DbgServicosKeyDown
              Columns = <
                item
                  Expanded = False
                  FieldName = 'VLRUNIT'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr. Unit'#225'rio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Quant.'
                  Width = 55
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Desc(%)'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr. Total'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Servi'#231'o'
                  Visible = True
                end>
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'DESPESAS'
          ImageIndex = 2
          object LQTDDESP: TLabel
            Left = 567
            Top = 237
            Width = 172
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object PCabDesp: TPanel
            Left = 3
            Top = 3
            Width = 742
            Height = 89
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 0
            object Shape15: TShape
              Left = 1
              Top = 1
              Width = 736
              Height = 73
              Brush.Color = 16772332
              Pen.Color = clGray
              Pen.Width = 2
            end
            object Label35: TLabel
              Left = 12
              Top = 5
              Width = 150
              Height = 16
              Caption = 'Descri'#231#227'o da despesa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 370
              Top = 5
              Width = 43
              Height = 16
              Caption = 'Qtde.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 422
              Top = 5
              Width = 71
              Height = 16
              Caption = 'Vlr. Custo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 497
              Top = 5
              Width = 87
              Height = 16
              Caption = 'Vlr. Cobrado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 659
              Top = 5
              Width = 67
              Height = 16
              Caption = 'Vlr. Total:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 151
              Top = 55
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
            object Label23: TLabel
              Left = 355
              Top = 55
              Width = 28
              Height = 16
              Caption = 'Un.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 597
              Top = 5
              Width = 43
              Height = 16
              Caption = 'Desc.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object EdDescD: TColorEditFloat
              Left = 12
              Top = 21
              Width = 333
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 40
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdQtdD: TColorEditFloat
              Left = 350
              Top = 21
              Width = 62
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrCustoD: TColorEditFloat
              Left = 417
              Top = 21
              Width = 75
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              Text = '0,00'
              OnExit = EdVlrCustoDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrCobradoD: TColorEditFloat
              Left = 498
              Top = 21
              Width = 85
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Text = '0,00'
              OnExit = EdVlrCobradoDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVlrTotD: TColorEditFloat
              Left = 646
              Top = 21
              Width = 79
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              Text = '0,00'
              OnExit = EdVlrTotDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BitBtn3: TBitBtn
              Left = 585
              Top = 49
              Width = 70
              Height = 21
              Hint = 
                'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                'na lista (ALT + I)'
              Caption = '&Inserir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = BitBtn3Click
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
            object BitBtn4: TBitBtn
              Left = 655
              Top = 49
              Width = 70
              Height = 21
              Hint = 
                'Pressione para remover o produto selecionado na lista da mesma (' +
                'ALT + E)'
              Caption = '&Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = BitBtn4Click
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
            object EDMarca: TColorEditFloat
              Left = 198
              Top = 52
              Width = 148
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '0,00'
              OnExit = EdQtdDExit
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdUnidade: TColorEditFloat
              Left = 384
              Top = 52
              Width = 33
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '0,00'
              OnExit = EdQtdDExit
              EditType = fltString
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdDesconto: TColorEditFloat
              Left = 587
              Top = 21
              Width = 54
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              Text = '0,00'
              OnExit = EdQtdDExit
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DbgDespesas: TDBGrid
            Left = 5
            Top = 86
            Width = 734
            Height = 149
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DDesp
            FixedColor = 11039232
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            OnKeyDown = DbgDespesasKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'DESPESA'
                Title.Caption = 'Despesa'
                Width = 263
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Caption = 'UN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtde.'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRREAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Custo'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFINAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Cobrado'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Caption = 'Desc.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTFIN'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCMOE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Luc. ($)'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LUCPER'
                Title.Alignment = taRightJustify
                Title.Caption = 'Luc. (%)'
                Width = 71
                Visible = True
              end>
          end
        end
      end
      inline FrmReservTec: TFrmBusca
        Left = 8
        Top = 133
        Width = 232
        Height = 29
        AutoScroll = False
        Color = 16772332
        ParentColor = False
        TabOrder = 7
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 99
          Height = 13
          Caption = 'Reserva T'#233'cnica:'
          Font.Height = -11
        end
        inherited LUZMINUS: TShape
          Left = 212
          Top = 11
          Width = 18
          Height = 19
        end
        inherited EdDescricao: TFlatEdit
          Left = 39
          Top = 11
          Width = 173
          Height = 18
          Font.Height = -9
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 213
          Top = 13
          Width = 16
          Height = 15
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 384
          Top = 14
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Top = 11
          Width = 37
          Height = 18
          Font.Height = -9
          Font.Style = []
          OnKeyDown = FrmBusca1EDCodigoKeyDown
        end
      end
      object EdResTec: TColorEditFloat
        Left = 8
        Top = 179
        Width = 73
        Height = 19
        Color = clInactiveCaptionText
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescmoe: TColorEditFloat
        Left = 629
        Top = 147
        Width = 47
        Height = 19
        Hint = 'Informe aqui os descontos para produtos'
        Color = 16777194
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Text = '0,00'
        OnExit = EdDescmoeExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PPrecos: TPanel
        Left = 329
        Top = -82
        Width = 329
        Height = 98
        BevelWidth = 3
        Color = clBackground
        TabOrder = 17
        Visible = False
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
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object EdDescricao: TFlatEdit
        Left = 9
        Top = 75
        Width = 752
        Height = 22
        ColorBorder = clBlue
        ColorFlat = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 768
      object Label2: TLabel [0]
        Left = 603
        Top = 9
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
      object Label3: TLabel [1]
        Left = 452
        Top = 9
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
      object Label40: TLabel [2]
        Left = 333
        Top = 13
        Width = 47
        Height = 13
        Caption = 'Desc(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNumPed: TDBColorEdit
        Left = 636
        Top = 3
        Width = 130
        Height = 27
        Color = 16772332
        Ctl3D = True
        DataField = 'NUMORC'
        DataSource = DMSAIDA.DOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorPed: TColorEditFloat
        Left = 470
        Top = 3
        Width = 128
        Height = 27
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = 16772332
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTOrdem: TColorEditFloat
        Left = 382
        Top = 7
        Width = 55
        Height = 22
        Color = 16777175
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
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
    end
  end
  object ImageList1: TImageList
    Left = 674
    Top = 49
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000005A5A63005252520000000000ADADAD00BDBDBD00000000000000
      00000000000000000000000000000000000000000000C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8CAD006363
      630000000000393963002929630000000000181842007B7BA500000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD000000BD000000000000000000000000000000BD000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300313184000000
      520000007B0008088C0018189C0000007B0031319C0029298C00B5B5B5000000
      000000000000000000000000000000000000C6C6C600C6C6C60000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000BD00000000000000BD000000BD0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010106B0000004A004242
      C6001010420010108C0039399C00101042006B6BD60018184A0052525A000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000C6C6C600FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD000000BD000000BD000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B008484
      EF007B7BCE00292984005A5A84004242C60000005A0000006B00393942000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005252CE003939D6008C8C
      D60063636300B5B5B50052525200101029007B7BE7006B6BBD004A4A4A000000
      0000B5B5B500BDBDBD0000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007373A50031316B007B7B
      A5007B7B7B00DEDEDE006B6B6B00393939007B7BDE0010182100393939000000
      00005A6B6B007B84840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052529C006B6B
      940042426300DEDEDE006B6B6B00000018007B7BFF002942520008393900007B
      7B00219494002929290063636300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADBD009494
      A500A5A5A500A5A5A5007B7B7B004A5A5A003152AD00219CAD00398C8C00214A
      4A0073DEDE0008424200107373000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000FF
      FF000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000BD000000BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00B5B5B5009C9C9C008CADAD007BB5B500216B6B004A6B6B0039C6
      C60063F7F70000737300007B7B00000000000000000000FFFF0000FFFF000000
      0000C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000BD0000000000000000000000BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073ADAD0052DEDE008CFFFF006B6B6B00CECECE00525252002931
      310039C6C60073B5B50052949400000000000000000000FFFF00C6C6C60000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000BD000000BD0000000000000000000000BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00296B6B007BD6D60073737300DEDEDE00636363003939
      390029ADAD00313939007B7B7B0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FF
      FF00848484000000000000000000000000000000000000000000000000000000
      00000000BD0000000000000000000000BD000000BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005AA5A50084E7E700526B6B00E7E7E700636363000821
      2100298C8C004A4A4A00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF008484840000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADBDBD0063A5A500ADADAD009C9C9C007B7B7B007373
      73009C9C9C00B5B5B50000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C6008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00ADADAD00A5A5A500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF8FFFFFFF0000C93F03FFFFFF0000
      C93F00FFF9CF0000801F007FFC9F0000801F001FFE3F0000801FC001CB730000
      8013F800B7ED00008013F800B7EF0000C001E001B6ED0000C001C000C6730000
      F0018000FDBF0000F8018003F9BF0000F801C007F67F0000FC03C00FEFFF0000
      FC03F01FFFFF0000FF0FF87FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object MEscolheProc: TPopupMenu
    Left = 210
    Top = 191
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
      OnClick = C1Click
    end
  end
  object FSRel: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 184
    Top = 240
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TSlave
    Left = 152
    Top = 240
  end
  object FSDSServ: TfrDBDataSet
    DataSet = DMESTOQUE.TSlaveServ
    Left = 147
    Top = 200
  end
  object FSDSDesp: TfrDBDataSet
    DataSet = DMESTOQUE.TDesp
    Left = 152
    Top = 160
  end
  object PmRelatorio: TPopupMenu
    Left = 184
    Top = 200
    object CompdeAbertura1: TMenuItem
      Caption = 'Imp. Or'#231'amento'
      OnClick = CompdeAbertura1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 760
    Top = 5
  end
end
