inherited FSped: TFSped
  Left = 293
  Top = 58
  Caption = 'VL_INV'
  ClientHeight = 619
  ClientWidth = 987
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 592
    Width = 54
    Height = 14
    Caption = 'Leiaute:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PDetalhes: TPanel [1]
    Left = 8
    Top = 39
    Width = 945
    Height = 514
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 7
    Visible = False
    object Label17: TLabel
      Left = 158
      Top = 28
      Width = 455
      Height = 52
      Alignment = taCenter
      Caption = 'Gerando SPED FISCAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 158
      Top = 26
      Width = 455
      Height = 52
      Caption = 'Gerando SPED FISCAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 33
      Top = 9
      Width = 112
      Height = 25
      Caption = 'Aguarde...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 776
      Top = 78
      Width = 145
      Height = 13
      Caption = 'Pressione Esc para Cancelar...'
    end
    object ProgressBar1: TProgressBar
      Left = 27
      Top = 97
      Width = 894
      Height = 18
      ParentShowHint = False
      Step = 0
      ShowHint = False
      TabOrder = 0
    end
    object RichEdit1a: TRichEdit
      Left = 27
      Top = 122
      Width = 545
      Height = 143
      ReadOnly = True
      TabOrder = 1
    end
    object RichEdit1: TMemo
      Left = 27
      Top = 122
      Width = 894
      Height = 327
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'RichEdit1')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object btAbrir: TButton
      Left = 848
      Top = 457
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 3
      OnClick = btAbrirClick
    end
    object btVoltar: TButton
      Left = 768
      Top = 457
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 4
      OnClick = btVoltarClick
    end
  end
  object PErro: TPanel [2]
    Left = 0
    Top = 417
    Width = 953
    Height = 129
    BevelWidth = 2
    TabOrder = 6
    Visible = False
    object FashionPanel1: TFashionPanel
      Left = 4
      Top = 8
      Width = 945
      Height = 116
      BevelOuter = bvNone
      Caption = 'FashionPanel1'
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
      Title = 'Erros ou Falhas de valida'#231#227'o'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttBlue
      object SpeedButton2: TSpeedButton
        Left = 922
        Top = 0
        Width = 19
        Height = 19
        Cursor = crHandPoint
        Hint = 'Pressione para fechar esta tela'
        Flat = True
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D0020000C40E0000C40E00000000000000000000996733996733
          9967339967339967339967339967339967339967339967339967339967339967
          33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
          9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
          9967339967339967339967339967339967339967339967339967339967339967
          33B99D94996733000000996733B99D9499673399673399673399673399673399
          6733996733996733996733996733996733B99D94996733000000996733B99D94
          9967339967330000009967339967339967339967339967330000009967339967
          33B99D94996733000000996733B99D9499673399673399673300000099673399
          6733996733000000996733996733996733B99D94996733000000996733B99D94
          9967339967339967339967330000009967330000009967339967339967339967
          33B99D94996733000000996733B99D9499673399673399673399673399673300
          0000996733996733996733996733996733B99D94996733000000996733B99D94
          9967339967339967339967330000009967330000009967339967339967339967
          33B99D94996733000000996733B99D9499673399673399673300000099673399
          6733996733000000996733996733996733B99D94996733000000996733B99D94
          9967339967330000009967339967339967339967339967330000009967339967
          33B99D94996733000000996733B99D9499673399673399673399673399673399
          6733996733996733996733996733996733B99D94996733000000996733B99D94
          9967339967339967339967339967339967339967339967339967339967339967
          33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
          9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
          9967339967339967339967339967339967339967339967339967339967339967
          33996733996733000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object MErros: TMemo
        Left = 3
        Top = 22
        Width = 940
        Height = 97
        BorderStyle = bsNone
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  inherited PComunica: TPanel
    Top = 88
  end
  object PPrincipal: TPanel
    Left = 16
    Top = 8
    Width = 953
    Height = 553
    TabOrder = 2
    object PCSped: TPageControl
      Left = 0
      Top = 4
      Width = 953
      Height = 553
      ActivePage = TabSheet1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'DADOS  DA EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        object GroupBox2: TGroupBox
          Left = 8
          Top = 184
          Width = 529
          Height = 62
          Caption = 'Per'#237'odo escolhido para o arquivo Sped Fiscal'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object cbPeriodoFiscal: TDBLookupComboBox
            Left = 16
            Top = 31
            Width = 385
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            KeyField = 'COD_PERIODOFISCAL'
            ListField = 'DESCRICAO'
            ListSource = DMMACS.DPeriodoFiscal
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 408
            Top = 11
            Width = 105
            Height = 22
            DataField = 'DTINICIAL'
            DataSource = DMMACS.DPeriodoFiscal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 408
            Top = 35
            Width = 105
            Height = 22
            DataField = 'DTFINAL'
            DataSource = DMMACS.DPeriodoFiscal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox1: TGroupBox
          Left = 544
          Top = 184
          Width = 393
          Height = 62
          Caption = 'C'#243'digo da finalidade do arquivo:'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object cbFinalidade: TComboBox
            Left = 16
            Top = 31
            Width = 370
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '0 - Remessa do arquivo original'
            Items.Strings = (
              '0 - Remessa do arquivo original'
              '1 - Remessa do arquivo substituto')
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 2
          Width = 929
          Height = 175
          Caption = ' Dados do Estabelecimento '
          Color = 16772332
          Ctl3D = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object Label2: TLabel
            Left = 24
            Top = 21
            Width = 89
            Height = 14
            Caption = 'Raz'#227'o Social:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 24
            Top = 56
            Width = 66
            Height = 14
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 24
            Top = 93
            Width = 46
            Height = 14
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 416
            Top = 93
            Width = 50
            Height = 14
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 808
            Top = 56
            Width = 31
            Height = 14
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 24
            Top = 133
            Width = 62
            Height = 14
            Caption = 'Telefone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 139
            Top = 133
            Width = 40
            Height = 14
            Caption = 'CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 278
            Top = 133
            Width = 126
            Height = 14
            Caption = 'Inscri'#231#227'o Estadual:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 705
            Top = 56
            Width = 57
            Height = 14
            Caption = 'Numero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 414
            Top = 133
            Width = 56
            Height = 14
            Caption = 'Contato:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 808
            Top = 93
            Width = 49
            Height = 14
            Caption = 'Estado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtRazaoSocial: TDBColorEdit
            Left = 24
            Top = 37
            Width = 881
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'RAZAO_SOCIAL'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 35
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtEndereco: TDBColorEdit
            Left = 25
            Top = 72
            Width = 672
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'ENDERECO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 34
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtBairro: TDBColorEdit
            Left = 24
            Top = 109
            Width = 385
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'BAIRRO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtCidade: TDBColorEdit
            Left = 416
            Top = 109
            Width = 385
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'NOME'
            DataSource = DMGEOGRAFIA.DCidade
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtCEP: TDBColorEdit
            Left = 808
            Top = 72
            Width = 97
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'CEP'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtTelefone: TDBColorEdit
            Left = 25
            Top = 149
            Width = 110
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'FONE'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtCNPJ: TDBColorEdit
            Left = 140
            Top = 149
            Width = 133
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'CNPJ'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtIE: TDBColorEdit
            Left = 279
            Top = 149
            Width = 130
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'INSC_EST'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtNumero: TDBColorEdit
            Left = 705
            Top = 72
            Width = 97
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'NUMERO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit3: TDBColorEdit
            Left = 415
            Top = 149
            Width = 226
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'CONTATO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object txtEstado: TDBColorEdit
            Left = 808
            Top = 109
            Width = 97
            Height = 19
            Color = clGradientActiveCaption
            DataField = 'UF_ESTADO'
            DataSource = DMGEOGRAFIA.DEstado
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox4: TGroupBox
          Left = 544
          Top = 256
          Width = 393
          Height = 62
          Caption = 'Perfil de apresenta'#231#227'o do arquivo fiscal:'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object cbPerfil: TComboBox
            Left = 16
            Top = 31
            Width = 370
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'A '#8211' Perfil A'
            Items.Strings = (
              'A '#8211' Perfil A'
              'B '#8211' Perfil B'
              'C '#8211' Perfil C')
          end
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 256
          Width = 529
          Height = 62
          Caption = 'Indicador de tipo de atividade:'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          object cbIndicadorTipoAtividade: TComboBox
            Left = 16
            Top = 31
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 1
            ParentFont = False
            TabOrder = 0
            Text = '1 '#8211' Outros'
            Items.Strings = (
              '0 '#8211' Industrial ou equiparado a industrial'
              '1 '#8211' Outros')
          end
        end
        object GroupBox7: TGroupBox
          Left = 8
          Top = 400
          Width = 297
          Height = 62
          Caption = 'BLOCO 0: ABERTURA, IDENTIFICA'#199#195'O E REFER'#202'NCIAS.'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          object Label11: TLabel
            Left = 16
            Top = 16
            Width = 119
            Height = 13
            Caption = 'Indicador de movimento:'
          end
          object cbIndicadorMovimento: TComboBox
            Left = 16
            Top = 31
            Width = 257
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '0- Bloco com dados informados'
            Items.Strings = (
              '0- Bloco com dados informados'
              '1- Bloco sem dados informados')
          end
        end
        object GroupBox12: TGroupBox
          Left = 312
          Top = 400
          Width = 329
          Height = 62
          Caption = 'BLOCO C - DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          object Label21: TLabel
            Left = 16
            Top = 16
            Width = 119
            Height = 13
            Caption = 'Indicador de movimento:'
          end
          object cbIndicadorMovimentoC: TComboBox
            Left = 16
            Top = 31
            Width = 305
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '0 - Bloco com dados informados'
            Items.Strings = (
              '0 - Bloco com dados informados'
              '1 - Bloco sem dados informados'
              '')
          end
        end
        object GroupBox6: TGroupBox
          Left = 648
          Top = 400
          Width = 289
          Height = 62
          Caption = 'BLOCO 1: OUTRAS INFORMA'#199#213'ES'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          object Label24: TLabel
            Left = 16
            Top = 16
            Width = 119
            Height = 13
            Caption = 'Indicador de movimento:'
          end
          object cbIndicadorMovimento1: TComboBox
            Left = 16
            Top = 31
            Width = 265
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = '0 - Bloco com dados informados'
            Items.Strings = (
              '0 - Bloco com dados informados'
              '1 - Bloco sem dados informados')
          end
        end
        object cbInventarioEstoque: TCheckBox
          Left = 16
          Top = 496
          Width = 233
          Height = 17
          Caption = 'EMITIR INVENT'#193'RIO DE ESTOQUE'
          TabOrder = 8
        end
        object GroupBox11: TGroupBox
          Left = 544
          Top = 328
          Width = 393
          Height = 62
          Caption = 'Inscri'#231#227'o Suframa'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          object edSuframa: TEdit
            Left = 16
            Top = 31
            Width = 361
            Height = 19
            Enabled = False
            MaxLength = 9
            TabOrder = 0
          end
        end
        object DBGridCadastroPadrao: TDBGrid
          Left = 274
          Top = 321
          Width = 263
          Height = 72
          Color = 15794175
          Ctl3D = False
          DataSource = DMFiscal.DSpedC190
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
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
        object DBGrid1: TDBGrid
          Left = 10
          Top = 321
          Width = 255
          Height = 72
          Color = 15794175
          Ctl3D = False
          DataSource = DMFiscal.DSpedC170
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
          TabOrder = 11
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'CONTABILISTA'
        ImageIndex = 2
        object GroupBox9: TGroupBox
          Left = 8
          Top = 48
          Width = 929
          Height = 465
          Caption = ' Dados do Contabilista '
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label12: TLabel
            Left = 24
            Top = 21
            Width = 145
            Height = 14
            Caption = 'Nome do Contabilista:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 24
            Top = 69
            Width = 44
            Height = 14
            Caption = 'CPF: *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 328
            Top = 69
            Width = 53
            Height = 14
            Caption = 'CNPJ: *'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 632
            Top = 69
            Width = 32
            Height = 14
            Caption = 'CRC:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 24
            Top = 125
            Width = 31
            Height = 14
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 184
            Top = 125
            Width = 66
            Height = 14
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 760
            Top = 125
            Width = 57
            Height = 14
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 288
            Top = 181
            Width = 46
            Height = 14
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 600
            Top = 181
            Width = 95
            Height = 14
            Caption = 'Complemento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 24
            Top = 237
            Width = 37
            Height = 14
            Caption = 'Fone:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 240
            Top = 237
            Width = 29
            Height = 14
            Caption = 'Fax:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 456
            Top = 237
            Width = 41
            Height = 14
            Caption = 'Email:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 24
            Top = 181
            Width = 50
            Height = 14
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 24
            Top = 440
            Width = 77
            Height = 13
            Caption = '* CPF ou CNPJ'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edNome: TEdit
            Left = 24
            Top = 40
            Width = 881
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 100
            ParentFont = False
            TabOrder = 0
          end
          object edCpf: TEdit
            Left = 24
            Top = 88
            Width = 273
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edCnpj: TEdit
            Left = 328
            Top = 88
            Width = 273
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edCrc: TEdit
            Left = 632
            Top = 88
            Width = 273
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 3
          end
          object edCep: TEdit
            Left = 24
            Top = 144
            Width = 145
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edEndereco: TEdit
            Left = 184
            Top = 144
            Width = 561
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 60
            ParentFont = False
            TabOrder = 5
          end
          object edNumero: TEdit
            Left = 760
            Top = 144
            Width = 145
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object edBairro: TEdit
            Left = 288
            Top = 200
            Width = 305
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object edComplemento: TEdit
            Left = 600
            Top = 200
            Width = 305
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 60
            ParentFont = False
            TabOrder = 8
          end
          object edFone: TEdit
            Left = 24
            Top = 256
            Width = 201
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object edEmail: TEdit
            Left = 456
            Top = 256
            Width = 449
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object edFax: TEdit
            Left = 240
            Top = 256
            Width = 201
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object edCidade: TEdit
            Left = 24
            Top = 200
            Width = 233
            Height = 22
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object BitBtn1: TBitBtn
            Left = 258
            Top = 200
            Width = 19
            Height = 22
            Hint = 'Pressione para selecionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
            OnClick = BitBtn1Click
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
        end
        object GroupBox10: TGroupBox
          Left = 8
          Top = 0
          Width = 929
          Height = 41
          TabOrder = 1
          object BtnGravar: TBitBtn
            Left = 2
            Top = 10
            Width = 103
            Height = 25
            Cursor = crHandPoint
            Hint = 
              'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
              'izadas'
            Caption = 'Gravar '
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
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'CONFIGURA'#199#195'O'
        ImageIndex = 1
        object GroupBox8: TGroupBox
          Left = 8
          Top = 8
          Width = 929
          Height = 521
          Caption = 'Registros:'
          Color = 16772332
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object PageControl1: TPageControl
            Left = 16
            Top = 24
            Width = 897
            Height = 473
            ActivePage = TabSheet3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = '           BLOCOS             '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              object GroupBox13: TGroupBox
                Left = 600
                Top = 16
                Width = 275
                Height = 169
                TabOrder = 0
                object Label37: TLabel
                  Left = 24
                  Top = 20
                  Width = 214
                  Height = 14
                  Caption = 'BLOCO H: INVENT'#193'RIO F'#205'SICO '
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cbRegistroH990: TCheckBox
                  Left = 70
                  Top = 141
                  Width = 145
                  Height = 20
                  Caption = 'Registro H990'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 0
                end
                object cbRegistroH010: TCheckBox
                  Left = 70
                  Top = 117
                  Width = 145
                  Height = 20
                  Caption = 'Registro H010'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 1
                end
                object cbRegistroH005: TCheckBox
                  Left = 70
                  Top = 90
                  Width = 145
                  Height = 20
                  Caption = 'Registro H005'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 2
                end
                object cbRegistroH001: TCheckBox
                  Left = 70
                  Top = 65
                  Width = 145
                  Height = 20
                  Caption = 'Registro H001'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 3
                end
                object cbTodosH: TCheckBox
                  Left = 32
                  Top = 45
                  Width = 137
                  Height = 17
                  Caption = 'Selecionar todos:'
                  Checked = True
                  State = cbChecked
                  TabOrder = 4
                  OnClick = cbTodosHClick
                end
              end
              object GroupBox14: TGroupBox
                Left = 304
                Top = 16
                Width = 275
                Height = 337
                TabOrder = 1
                object Label22: TLabel
                  Left = 48
                  Top = 32
                  Width = 182
                  Height = 14
                  Caption = 'MERCADORIAS (ICMS/IPI)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label36: TLabel
                  Left = 24
                  Top = 16
                  Width = 237
                  Height = 14
                  Caption = 'BLOCO C: DOCUMENTOS FISCAIS I'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cbRegistroC001: TCheckBox
                  Left = 64
                  Top = 89
                  Width = 145
                  Height = 20
                  Caption = 'Registro C001'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 0
                end
                object cbRegistroC100: TCheckBox
                  Left = 64
                  Top = 113
                  Width = 145
                  Height = 20
                  Caption = 'Registro C100'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 1
                  OnClick = cbRegistroC100Click
                end
                object cbRegistroC110: TCheckBox
                  Left = 104
                  Top = 137
                  Width = 145
                  Height = 20
                  Caption = 'Registro C110'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 2
                end
                object cbRegistroC160: TCheckBox
                  Left = 104
                  Top = 161
                  Width = 145
                  Height = 20
                  Caption = 'Registro C160'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 3
                end
                object cbRegistroC170: TCheckBox
                  Left = 104
                  Top = 185
                  Width = 145
                  Height = 20
                  Caption = 'Registro C170'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 4
                end
                object cbRegistroC179: TCheckBox
                  Left = 104
                  Top = 209
                  Width = 145
                  Height = 20
                  Caption = 'Registro C179'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 5
                end
                object cbRegistroC190: TCheckBox
                  Left = 104
                  Top = 233
                  Width = 145
                  Height = 20
                  Caption = 'Registro C190'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 6
                end
                object cbRegistroC990: TCheckBox
                  Left = 64
                  Top = 257
                  Width = 145
                  Height = 20
                  Caption = 'Registro C990'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 7
                end
                object cbTodosC: TCheckBox
                  Left = 16
                  Top = 64
                  Width = 137
                  Height = 17
                  Caption = 'Selecionar todos:'
                  Checked = True
                  State = cbChecked
                  TabOrder = 8
                  OnClick = cbTodosCClick
                end
              end
              object GroupBox15: TGroupBox
                Left = 8
                Top = 16
                Width = 275
                Height = 337
                TabOrder = 2
                object Label23: TLabel
                  Left = 6
                  Top = 20
                  Width = 266
                  Height = 14
                  Caption = 'BLOCO 0: ABERTURA E IDENTIFICA'#199#195'O'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cbRegistro0000: TCheckBox
                  Left = 56
                  Top = 73
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0000'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 0
                end
                object cbRegistro0001: TCheckBox
                  Left = 56
                  Top = 97
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0001'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 1
                end
                object cbRegistro0005: TCheckBox
                  Left = 56
                  Top = 121
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0005'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 2
                end
                object cbRegistro0015: TCheckBox
                  Left = 56
                  Top = 145
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0015'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 3
                end
                object cbRegistro0100: TCheckBox
                  Left = 56
                  Top = 169
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0100'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 4
                end
                object cbRegistro0150: TCheckBox
                  Left = 56
                  Top = 193
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0150'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 5
                end
                object cbRegistro0190: TCheckBox
                  Left = 56
                  Top = 217
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0190'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 6
                end
                object cbRegistro0200: TCheckBox
                  Left = 56
                  Top = 241
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0200'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 7
                end
                object cbRegistro0450: TCheckBox
                  Left = 56
                  Top = 289
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0450'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 8
                end
                object cbRegistro0990: TCheckBox
                  Left = 56
                  Top = 313
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0990'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 9
                end
                object cbTodos0: TCheckBox
                  Left = 16
                  Top = 50
                  Width = 137
                  Height = 17
                  Caption = 'Selecionar todos:'
                  Checked = True
                  State = cbChecked
                  TabOrder = 10
                  OnClick = cbTodos0Click
                end
                object cbRegistro0400: TCheckBox
                  Left = 56
                  Top = 265
                  Width = 145
                  Height = 20
                  Caption = 'Registro 0400'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 11
                end
              end
              object GroupBox16: TGroupBox
                Left = 600
                Top = 192
                Width = 275
                Height = 161
                TabOrder = 3
                object Label38: TLabel
                  Left = 24
                  Top = 20
                  Width = 231
                  Height = 14
                  Caption = 'BLOCO 1: OUTRAS INFORMA'#199#213'ES'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cbRegistro1990: TCheckBox
                  Left = 70
                  Top = 114
                  Width = 145
                  Height = 20
                  Caption = 'Registro 1990'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 0
                end
                object cbRegistro1010: TCheckBox
                  Left = 70
                  Top = 90
                  Width = 145
                  Height = 20
                  Caption = 'Registro 1010'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 1
                end
                object cbRegistro1001: TCheckBox
                  Left = 70
                  Top = 66
                  Width = 145
                  Height = 20
                  Caption = 'Registro 1001'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  State = cbChecked
                  TabOrder = 2
                end
                object cbTodos1: TCheckBox
                  Left = 32
                  Top = 45
                  Width = 137
                  Height = 17
                  Caption = 'Selecionar todos:'
                  Checked = True
                  State = cbChecked
                  TabOrder = 3
                  OnClick = cbTodos1Click
                end
              end
              object cbBloco9: TCheckBox
                Left = 16
                Top = 368
                Width = 857
                Height = 17
                Caption = 'BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL'
                Checked = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                State = cbChecked
                TabOrder = 4
              end
            end
          end
        end
      end
    end
  end
  object btnGerarSped: TButton
    Left = 256
    Top = 588
    Width = 97
    Height = 25
    Caption = 'Gerar Sped'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnGerarSpedClick
  end
  object cbLeiaute: TComboBox
    Left = 72
    Top = 590
    Width = 49
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    Text = '014'
    Items.Strings = (
      '013'
      '014')
  end
  object btSair: TButton
    Left = 880
    Top = 588
    Width = 89
    Height = 25
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btSairClick
  end
  object PFalha: TPanel
    Left = 16
    Top = 560
    Width = 953
    Height = 29
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object ShErro: TShape
      Left = 0
      Top = 2
      Width = 953
      Height = 24
      Pen.Color = clRed
      Pen.Width = 2
    end
    object EdErro: TEdit
      Left = 3
      Top = 7
      Width = 942
      Height = 15
      Cursor = crHandPoint
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 
        'Falha Cr'#237'tica na valida'#231#227'o. Arquivo Sped Fiscal inv'#225'lido. [Para ' +
        'detalhes clique aqui...]'
      OnClick = EdErroClick
    end
  end
  object btnGerarTemp: TBitBtn
    Left = 624
    Top = 588
    Width = 122
    Height = 25
    Caption = 'Gerar Tempor'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnGerarTempClick
  end
  object bntGerarNovoSped: TButton
    Left = 752
    Top = 588
    Width = 121
    Height = 25
    Caption = 'Gerar Novo Sped'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = bntGerarNovoSpedClick
  end
end
