inherited FCadCtaCor: TFCadCtaCor
  Left = 262
  Top = 126
  Caption = 'FCadCtaCor'
  ClientHeight = 444
  ClientWidth = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 5
    Top = 5
    Width = 585
    Height = 436
    inherited Panel4: TPanel
      Left = 0
      Top = 29
      Width = 582
      Height = 407
      inherited Label6: TLabel
        Left = 11
        Top = 6
      end
      inherited Label7: TLabel
        Left = 454
        Top = 86
        Width = 47
        Caption = 'Limite:'
      end
      object Label3: TLabel [2]
        Left = 11
        Top = 86
        Width = 66
        Height = 18
        Caption = 'N'#186' Conta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 125
        Top = 86
        Width = 93
        Height = 18
        Caption = 'Dt. Cadastro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [4]
        Left = 233
        Top = 86
        Width = 87
        Height = 18
        Caption = 'Dt. Abertura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [5]
        Left = 341
        Top = 86
        Width = 99
        Height = 18
        Caption = 'Prox. Cheque:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [6]
        Left = 94
        Top = 107
        Width = 5
        Height = 18
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel [7]
        Left = 7
        Top = 316
        Width = 180
        Height = 14
        Caption = 'Instru'#231#245'es Padr'#227'o (Para Vencimento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel [8]
        Left = 8
        Top = 272
        Width = 72
        Height = 14
        Caption = 'Conta Cont'#225'bil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 11
        Top = 25
        Width = 81
        DataField = 'COD_CTACOR'
      end
      inherited DBDESC: TDBColorEdit
        Left = 98
        Top = 25
        Width = 113
        Font.Style = [fsBold]
        ReadOnly = True
        TabOrder = 16
        Visible = False
      end
      object DBNUMCONTA: TDBColorEdit
        Left = 11
        Top = 105
        Width = 81
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'NUMCTACOR'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBEdit1: TDBEdit
        Left = 125
        Top = 105
        Width = 101
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DTCAD'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 233
        Top = 105
        Width = 101
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DTABERT'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
      end
      object DBColorEdit4: TDBColorEdit
        Left = 341
        Top = 105
        Width = 102
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'PROXCHEQUE'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmBusca1: TFrmBusca
        Left = 11
        Top = 49
        Width = 336
        Height = 37
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Top = -2
          Width = 58
          Caption = 'Agencia:'
        end
        inherited LUZOPEN: TShape
          Left = 292
        end
        inherited LUZMINUS: TShape
          Left = 312
        end
        inherited EdDescricao: TFlatEdit
          Width = 215
        end
        inherited BTNOPEN: TBitBtn
          Left = 294
          Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 312
          Hint = 'Pressione para apagar '#224' Ag'#234'ncia'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object DBColorEdit1: TDBColorEdit
        Left = 453
        Top = 105
        Width = 101
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'LIMITE'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 100
        Top = 105
        Width = 21
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DIGCTACOR'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBMemo1: TDBMemo
        Left = 7
        Top = 331
        Width = 296
        Height = 73
        Ctl3D = False
        DataField = 'INSTRUBOLETO'
        DataSource = DMBANCO.DCtaCor
        ParentCtl3D = False
        TabOrder = 14
      end
      object CBCobreBemX: TCheckBox
        Left = 10
        Top = 219
        Width = 193
        Height = 17
        Caption = 'Usar CobreBemX Para Boletos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = CBCobreBemXClick
      end
      object PCobrebem: TPanel
        Left = 7
        Top = 237
        Width = 236
        Height = 31
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 13
        Visible = False
        object Label20: TLabel
          Left = 2
          Top = -3
          Width = 41
          Height = 14
          Caption = 'Licen'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdLicencaCobreBem: TEdit
          Left = 2
          Top = 10
          Width = 215
          Height = 21
          TabOrder = 0
        end
        object BTNOPEN: TBitBtn
          Left = 217
          Top = 9
          Width = 19
          Height = 17
          Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BTNOPENClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
      end
      object CBNovoLayoutSicoob: TCheckBox
        Left = 365
        Top = 65
        Width = 210
        Height = 18
        Caption = 'Usar Novo Lay-Out Sicoob'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = CBCobreBemXClick
      end
      object pCaminhoRemessa: TPanel
        Left = 7
        Top = 183
        Width = 237
        Height = 34
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 11
        object Label22: TLabel
          Left = 2
          Top = 0
          Width = 92
          Height = 14
          Caption = 'Caminho Remessa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Aril'
          Font.Style = []
          ParentFont = False
        end
        object edCaminhoRemessa: TEdit
          Left = 2
          Top = 13
          Width = 215
          Height = 21
          TabOrder = 1
        end
        object btnCaminhoRemessa: TBitBtn
          Left = 217
          Top = 13
          Width = 19
          Height = 19
          Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnCaminhoRemessaClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
      end
      object GroupBox3: TGroupBox
        Left = 312
        Top = 247
        Width = 249
        Height = 158
        Caption = 'Prefer'#234'ncias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        object pProtesto: TPanel
          Left = 58
          Top = 106
          Width = 124
          Height = 48
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object CBPROTESTO: TCheckBox
            Left = 6
            Top = 0
            Width = 114
            Height = 17
            Caption = 'Protesto Autom'#225'tico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = CBPROTESTOClick
          end
          object pDiasProtesto: TPanel
            Left = 19
            Top = 14
            Width = 89
            Height = 35
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            Visible = False
            object Label17: TLabel
              Left = 5
              Top = 1
              Width = 79
              Height = 14
              Caption = 'Dias p/ Protesto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBColorEdit9: TDBColorEdit
              Left = 25
              Top = 15
              Width = 36
              Height = 19
              Color = 15658717
              Ctl3D = False
              DataField = 'DIASPROT'
              DataSource = DMBANCO.DCtaCor
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 7
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 11
          Width = 243
          Height = 89
          Caption = 'Info. de exibi'#231#227'o no boleto:'
          TabOrder = 1
          object Label9: TLabel
            Left = 4
            Top = 13
            Width = 50
            Height = 14
            Caption = 'CPF/CNPJ:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 5
            Top = 48
            Width = 73
            Height = 14
            Caption = 'Nome exibi'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBCPFCNPJ: TDBColorEdit
            Left = 3
            Top = 27
            Width = 118
            Height = 19
            Color = 15658717
            Ctl3D = False
            DataField = 'CPFCNPJ_BOLETO'
            DataSource = DMBANCO.DCtaCor
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnExit = DBCPFCNPJExit
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit5: TDBColorEdit
            Left = 3
            Top = 64
            Width = 236
            Height = 19
            Color = 15658717
            Ctl3D = False
            DataField = 'NOME_EXIBICAO_BOLETO'
            DataSource = DMBANCO.DCtaCor
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
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
      end
      object DBColorEdit15: TDBColorEdit
        Left = 8
        Top = 288
        Width = 80
        Height = 19
        Color = 15658717
        Ctl3D = False
        DataField = 'CONTA_CONTABIL'
        DataSource = DMBANCO.DCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 7
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 132
        Width = 553
        Height = 47
        Caption = 'INFO BOLETO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object Label25: TLabel
          Left = 4
          Top = 10
          Width = 122
          Height = 14
          Caption = 'C'#243'd. Cedente (cobran'#231'a)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 91
          Top = 22
          Width = 5
          Height = 18
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 132
          Top = 10
          Width = 54
          Height = 14
          Caption = 'N'#186' Agencia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 212
          Top = 23
          Width = 5
          Height = 18
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 250
          Top = 10
          Width = 66
          Height = 14
          Caption = 'C'#243'd. Carteira:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 322
          Top = 10
          Width = 49
          Height = 14
          Caption = 'Nosso N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 407
          Top = 10
          Width = 37
          Height = 14
          Caption = 'Prefixo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 479
          Top = 10
          Width = 57
          Height = 14
          Caption = 'Modalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBColorEdit16: TDBColorEdit
          Left = 5
          Top = 24
          Width = 85
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'CODCEDENTEBLT_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit17: TDBColorEdit
          Left = 98
          Top = 24
          Width = 28
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'DIGCODCEDENTEBLT_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit18: TDBColorEdit
          Left = 131
          Top = 24
          Width = 80
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'NUMAGENCBLT_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit19: TDBColorEdit
          Left = 218
          Top = 24
          Width = 25
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'DIGAGENCBLT_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit20: TDBColorEdit
          Left = 251
          Top = 24
          Width = 63
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'CODCARTEIRABLT_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit21: TDBColorEdit
          Left = 322
          Top = 24
          Width = 76
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'NOSSONUMBLT_REG'
          DataSource = DMBANCO.DCtaCor
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
        object DBColorEdit22: TDBColorEdit
          Left = 407
          Top = 24
          Width = 63
          Height = 19
          Hint = 
            'Prefixo da sequencia do nosso n'#250'mero (necess'#225'rio p/ contas do si' +
            'coob com registro)'
          Color = 15658717
          Ctl3D = False
          DataField = 'PREFIXO_NOSSONUM_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit23: TDBColorEdit
          Left = 478
          Top = 24
          Width = 69
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'CODMODALIDADE_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox6: TGroupBox
        Left = 421
        Top = 180
        Width = 140
        Height = 50
        Caption = 'Contadores:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Aril'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object Label2: TLabel
          Left = 4
          Top = 13
          Width = 38
          Height = 14
          Caption = 'Boleto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Aril'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 74
          Top = 13
          Width = 55
          Height = 14
          Caption = 'Remessa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Aril'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBColorEdit24: TDBColorEdit
          Left = 4
          Top = 27
          Width = 57
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'PROXBOLETO_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit25: TDBColorEdit
          Left = 74
          Top = 27
          Width = 56
          Height = 19
          Color = 15658717
          Ctl3D = False
          DataField = 'CONTREMESSA_REG'
          DataSource = DMBANCO.DCtaCor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 7
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object cbCobBancoob: TCheckBox
        Left = 365
        Top = 48
        Width = 210
        Height = 18
        Caption = 'Cobran'#231'a BANCOOB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        OnClick = CBCobreBemXClick
      end
      object cbCobBancoBrasil: TCheckBox
        Left = 365
        Top = 30
        Width = 210
        Height = 18
        Caption = 'Cobran'#231'a BB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnClick = CBCobreBemXClick
      end
      object CBINATIVO: TCheckBox
        Left = 366
        Top = 8
        Width = 209
        Height = 15
        Caption = 'INATIVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Top = 0
      Width = 582
    end
  end
  inherited PComunica: TPanel
    Left = 58
    Top = 64
  end
  inherited PConsulta: TPanel [2]
    Left = 5
    Top = 5
    Width = 582
    Height = 436
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 0
      Top = 87
      Width = 580
      Height = 348
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'N'#186' Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'N'#186' Agencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
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
          FieldName = 'INATIVO'
          Title.Caption = 'Inativo'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 581
      inherited BtnRelatorio: TBitBtn
        Width = 116
      end
      inherited BtnFiltrar: TBitBtn
        Left = 459
        Width = 120
      end
    end
    inherited GroupBox1: TGroupBox
      Left = 0
      Top = 33
      Width = 580
      inherited EdNome: TFlatEdit
        Width = 461
      end
      inherited BtnSelecionar: TBitBtn
        Left = 468
        Top = 18
        Width = 110
      end
    end
  end
  object OD: TOpenDialog
    Left = 280
    Top = 42
  end
  object SD: TSaveDialog
    Left = 197
    Top = 58
  end
end
