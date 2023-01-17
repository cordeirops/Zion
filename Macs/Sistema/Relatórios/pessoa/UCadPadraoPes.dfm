inherited FCadPadraoPes: TFCadPadraoPes
  Left = 0
  Top = 0
  Caption = '\'
  ClientHeight = 657
  ClientWidth = 990
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TLabel
    Left = 360
    Top = 32
  end
  inherited PComunica: TPanel [5]
    Left = 146
    Top = 195
  end
  inherited PConsulta: TPanel
    Left = 17
    Top = 62
    Width = 772
    Height = 489
    inherited GroupBox1: TGroupBox
      Left = 164
      Width = 605
      inherited EdNome: TFlatEdit
        Left = 84
        Width = 245
        Text = 'Nome'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 493
        Top = 19
      end
      object EdCodigo: TFlatEdit
        Left = 4
        Top = 19
        Width = 78
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
        TabOrder = 2
        Text = 'C'#243'digo'
        OnKeyDown = EdCodigoKeyDown
      end
      object EdCpf: TFlatEdit
        Left = 331
        Top = 19
        Width = 158
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
        TabOrder = 3
        Text = 'Cpf/Cnpj'
        OnKeyDown = EdCpfKeyDown
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid [1]
      Width = 768
      Height = 394
      PopupMenu = AlteraPessoa
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnDblClick = DBGridCadastroPadraoDblClick
      OnKeyPress = DBGridCadastroPadraoKeyPress
      OnTitleClick = DBGridCadastroPadraoTitleClick
    end
    inherited Painel: TPanel [2]
      Width = 768
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    object RGORDEM: TRadioGroup
      Left = 7
      Top = 38
      Width = 154
      Height = 49
      Caption = 'Ordem'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Codigo'
        'Nome'
        'CPF/CNPJ')
      ParentCtl3D = False
      TabOrder = 3
      OnClick = RGORDEMClick
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 17
    Top = 62
    Width = 772
    Height = 489
    inherited Panel4: TPanel
      Top = 31
      Width = 768
      Height = 456
      object TCPessoa: TFlatTabControl
        Left = 8
        Top = 12
        Width = 753
        Height = 435
        Tabs.Strings = (
          '&Principal'
          'C&omplemento'
          '&Espec'#237'fico')
        ActiveTab = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnTabChanged = TCPessoaTabChanged
        object PCompletoFisica: TPanel
          Left = 1
          Top = 17
          Width = 751
          Height = 417
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Visible = False
          object RGCivil: TRadioGroup
            Left = 8
            Top = 9
            Width = 281
            Height = 56
            Caption = 'Estado Civil'
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              'Casado '
              'Solteiro'
              'Vi'#250'vo'
              'Desquitado')
            ParentFont = False
            TabOrder = 0
            OnClick = RGCivilClick
          end
          object GBLOCALTRABALHO: TGroupBox
            Left = 8
            Top = 65
            Width = 737
            Height = 105
            Caption = 'Local de Trabalho'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Label21: TLabel
              Left = 6
              Top = 24
              Width = 56
              Height = 16
              Caption = 'Empresa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 390
              Top = 24
              Width = 59
              Height = 16
              Caption = 'Endere'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 6
              Top = 61
              Width = 38
              Height = 16
              Caption = 'Bairro:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 300
              Top = 61
              Width = 38
              Height = 16
              Caption = 'Cargo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 582
              Top = 61
              Width = 110
              Height = 16
              Caption = 'Data de Admiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBColorEdit12: TDBColorEdit
              Left = 5
              Top = 40
              Width = 380
              Height = 22
              Color = 15658717
              DataField = 'EMP_TRAB'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit15: TDBColorEdit
              Left = 389
              Top = 40
              Width = 340
              Height = 22
              Color = 15658717
              DataField = 'END_TRAB'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit16: TDBColorEdit
              Left = 5
              Top = 77
              Width = 290
              Height = 22
              Color = 15658717
              DataField = 'BAIRRO_TRAB'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit17: TDBColorEdit
              Left = 299
              Top = 77
              Width = 278
              Height = 22
              Color = 15658717
              DataField = 'CARGO'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit18: TDBColorEdit
              Left = 581
              Top = 77
              Width = 148
              Height = 22
              Color = 15658717
              DataField = 'DATA_ADMIS'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 4
              OnKeyPress = DBColorEdit18KeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox5: TGroupBox
            Left = 296
            Top = 9
            Width = 449
            Height = 56
            Caption = 'Registro Geral (RG)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label26: TLabel
              Left = 206
              Top = 13
              Width = 114
              Height = 16
              Caption = 'Data de Expedi'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 334
              Top = 13
              Width = 101
              Height = 16
              Caption = #211'rg'#227'o Expedidor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 6
              Top = 14
              Width = 49
              Height = 16
              Caption = 'N'#250'mero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBColorEdit19: TDBColorEdit
              Left = 205
              Top = 29
              Width = 124
              Height = 22
              Color = 15658717
              DataField = 'DATA_EXPED'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DBColorEdit19KeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit20: TDBColorEdit
              Left = 333
              Top = 29
              Width = 108
              Height = 22
              Color = 15658717
              DataField = 'ORGAO_EXPED'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit21: TDBColorEdit
              Left = 5
              Top = 29
              Width = 196
              Height = 22
              Color = 15658717
              DataField = 'RG'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox6: TGroupBox
            Left = 9
            Top = 170
            Width = 737
            Height = 97
            Caption = 'Conjuge:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object Label29: TLabel
              Left = 6
              Top = 15
              Width = 38
              Height = 16
              Caption = 'Nome:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 390
              Top = 15
              Width = 104
              Height = 16
              Caption = 'Data Nascimento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 502
              Top = 15
              Width = 23
              Height = 16
              Caption = 'RG:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 222
              Top = 53
              Width = 127
              Height = 16
              Caption = 'Empresa de Trabalho:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 6
              Top = 53
              Width = 30
              Height = 16
              Caption = 'CPF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBColorEdit22: TDBColorEdit
              Left = 5
              Top = 31
              Width = 380
              Height = 22
              Color = 15658717
              DataField = 'NOME_CONJ'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit23: TDBColorEdit
              Left = 389
              Top = 31
              Width = 108
              Height = 22
              Color = 15658717
              DataField = 'DATANASC_CONJ'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 10
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DBColorEdit23KeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit24: TDBColorEdit
              Left = 501
              Top = 31
              Width = 228
              Height = 22
              Color = 15658717
              DataField = 'RG_CONJ'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit25: TDBColorEdit
              Left = 221
              Top = 69
              Width = 508
              Height = 22
              Color = 15658717
              DataField = 'EMP_CONJ'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBCONJUGECPF: TDBColorEdit
              Left = 5
              Top = 69
              Width = 212
              Height = 22
              Color = 15658717
              DataField = 'CPF_CONJ'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnExit = DBCONJUGECPFExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox7: TGroupBox
            Left = 9
            Top = 267
            Width = 737
            Height = 95
            Caption = 'Filia'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object Label33: TLabel
              Left = 6
              Top = 15
              Width = 23
              Height = 16
              Caption = 'Pai:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 371
              Top = 15
              Width = 29
              Height = 16
              Caption = 'M'#227'e:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 6
              Top = 55
              Width = 59
              Height = 16
              Caption = 'Endere'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBColorEdit26: TDBColorEdit
              Left = 5
              Top = 31
              Width = 360
              Height = 22
              Color = 15658717
              DataField = 'NOME_PAI'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit28: TDBColorEdit
              Left = 370
              Top = 31
              Width = 360
              Height = 22
              Color = 15658717
              DataField = 'NOME_MAE'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit29: TDBColorEdit
              Left = 5
              Top = 71
              Width = 724
              Height = 22
              Color = 15658717
              DataField = 'ENDE_FILIACAO'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
        end
        object PEspecifico: TPanel
          Left = 1
          Top = 17
          Width = 751
          Height = 417
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
        end
        object PComplementoJURIDICA: TPanel
          Left = 2
          Top = 18
          Width = 747
          Height = 416
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          Visible = False
        end
        object PPrincipal: TPanel
          Left = 1
          Top = 17
          Width = 751
          Height = 417
          BevelOuter = bvNone
          Color = clWhite
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          Visible = False
          object Label14: TLabel
            Left = 190
            Top = 136
            Width = 67
            Height = 16
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 14
            Top = 136
            Width = 43
            Height = 16
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 414
            Top = 177
            Width = 31
            Height = 16
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 526
            Top = 176
            Width = 72
            Height = 16
            Caption = 'Data Cad.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LProximidade: TLabel
            Left = 596
            Top = 136
            Width = 83
            Height = 16
            Caption = 'Proximidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lbVerMapa: TLabel
            Left = 436
            Top = 138
            Width = 78
            Height = 12
            Cursor = crHandPoint
            Hint = 'Visualizar endere'#231'o no Google Maps'
            Caption = 'visualizar no mapa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = lbVerMapaClick
          end
          object LBENDNUM: TLabel
            Left = 524
            Top = 136
            Width = 55
            Height = 16
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 452
            Top = 178
            Width = 66
            Height = 12
            Cursor = crHandPoint
            Hint = 'Consulte o CEP nos correios'
            Caption = 'busca endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = Label68Click
          end
          object PPesJuridica: TPanel
            Left = 6
            Top = 8
            Width = 737
            Height = 127
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            Visible = False
            object Label8: TLabel
              Left = 136
              Top = 3
              Width = 38
              Height = 16
              Caption = 'CNPJ:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 312
              Top = 3
              Width = 100
              Height = 16
              Caption = 'Insc. Estadual:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 489
              Top = 3
              Width = 104
              Height = 16
              Caption = 'Insc. Munic'#237'pal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 8
              Top = 43
              Width = 89
              Height = 16
              Caption = 'Raz'#227'o Social:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 8
              Top = 86
              Width = 66
              Height = 16
              Caption = 'Web Site:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 372
              Top = 43
              Width = 62
              Height = 16
              Caption = 'Fantasia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 8
              Top = 3
              Width = 89
              Height = 16
              Caption = 'C'#243'd. Interno:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 375
              Top = 86
              Width = 127
              Height = 16
              Caption = 'Data de Funda'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBCnpj: TDBColorEdit
              Left = 134
              Top = 19
              Width = 173
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'CPFCNPJ'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = DBCnpjExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit5: TDBColorEdit
              Left = 311
              Top = 19
              Width = 173
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'INSC_EST'
              DataSource = DMPESSOA.DSPessoaJ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit6: TDBColorEdit
              Left = 488
              Top = 19
              Width = 173
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'INSC_MUN'
              DataSource = DMPESSOA.DSPessoaJ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit7: TDBColorEdit
              Left = 7
              Top = 103
              Width = 362
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'WEB_PAGE'
              DataSource = DMPESSOA.DSPessoaJ
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
            object DBColorEdit8: TDBColorEdit
              Left = 7
              Top = 60
              Width = 360
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'RAZAO_SOCIAL'
              DataSource = DMPESSOA.DSPessoaJ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBNOMEPJ: TDBColorEdit
              Left = 372
              Top = 60
              Width = 360
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'NOME'
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
            object DBCODINTERNOPJ: TDBColorEdit
              Left = 8
              Top = 19
              Width = 121
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DClienteCob
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnExit = DBCODINTERNOPJExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit2: TDBColorEdit
              Left = 374
              Top = 103
              Width = 138
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'DTNASC'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PPesFisica: TPanel
            Left = 6
            Top = 8
            Width = 737
            Height = 127
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            Visible = False
            object Label7: TLabel
              Left = 133
              Top = 5
              Width = 31
              Height = 16
              Caption = 'CPF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 333
              Top = 5
              Width = 23
              Height = 16
              Caption = 'RG:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 8
              Top = 88
              Width = 43
              Height = 16
              Caption = 'T'#237'tulo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 8
              Top = 47
              Width = 42
              Height = 16
              Caption = 'Nome:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 8
              Top = 5
              Width = 89
              Height = 16
              Caption = 'C'#243'd. Interno:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 207
              Top = 88
              Width = 139
              Height = 16
              Caption = 'Data de Nascimento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBCPF: TDBColorEdit
              Left = 133
              Top = 21
              Width = 196
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'CPFCNPJ'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnExit = DBCPFExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit1: TDBColorEdit
              Left = 333
              Top = 21
              Width = 212
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'RG'
              DataSource = DMPESSOA.DSPessoaF
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnExit = DBColorEdit1Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit3: TDBColorEdit
              Left = 8
              Top = 104
              Width = 193
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'TITULO'
              DataSource = DMPESSOA.DSPessoaF
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
            object RGSexo: TRadioGroup
              Left = 552
              Top = 4
              Width = 179
              Height = 42
              Caption = 'Sexo'
              Columns = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Masc.'
                'Fem.')
              ParentFont = False
              TabOrder = 3
              OnClick = RGSexoClick
              OnExit = RGSexoExit
            end
            object DBNOMEPF: TDBColorEdit
              Left = 7
              Top = 63
              Width = 723
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'NOME'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBINTERNO: TDBColorEdit
              Left = 8
              Top = 21
              Width = 121
              Height = 21
              Color = clWhite
              Ctl3D = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnExit = DBINTERNOExit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit9: TDBColorEdit
              Left = 206
              Top = 104
              Width = 138
              Height = 21
              Color = clWhite
              Ctl3D = True
              DataField = 'DTNASC'
              DataSource = DMPESSOA.DSPessoa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnExit = DBColorEdit9Exit
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object dbbairro: TDBColorEdit
            Left = 13
            Top = 151
            Width = 172
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'BAIRRO'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit4: TDBColorEdit
            Left = 190
            Top = 151
            Width = 329
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'ENDERECO'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit13: TDBColorEdit
            Left = 414
            Top = 192
            Width = 107
            Height = 21
            Hint = 'Pressione <enter> para consultar o CEP nos correios'
            Color = clWhite
            Ctl3D = True
            DataField = 'CEP'
            DataSource = DMPESSOA.DSPessoa
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
            TabOrder = 6
            OnKeyPress = DBColorEdit13KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object PageControl1: TPageControl
            Left = 4
            Top = 269
            Width = 737
            Height = 150
            ActivePage = TabSheet1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            MultiLine = True
            ParentFont = False
            TabOrder = 10
            object TabSheet1: TTabSheet
              Caption = 'Telefones'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = [fsItalic]
              ParentFont = False
              object GroupBox2: TGroupBox
                Left = 8
                Top = -2
                Width = 717
                Height = 123
                Caption = 'Telefones:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Shape1: TShape
                  Left = 489
                  Top = 13
                  Width = 22
                  Height = 24
                  Brush.Color = clGradientActiveCaption
                  Pen.Color = clGradientActiveCaption
                  Shape = stRoundRect
                  Visible = False
                end
                object Shape2: TShape
                  Left = 510
                  Top = 13
                  Width = 22
                  Height = 24
                  Brush.Color = clGradientActiveCaption
                  Pen.Color = clGradientActiveCaption
                  Shape = stRoundRect
                  Visible = False
                end
                object DBGrid1: TDBGrid
                  Left = 0
                  Top = 40
                  Width = 528
                  Height = 83
                  Hint = 
                    'Efetue duplo click do mouse sobre o telefone que deseja utilizar' +
                    ' como padr'#227'o em relat'#243'rios'
                  Color = 16316657
                  DataSource = DMPESSOA.DSTelefone
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 5
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Arial'
                  TitleFont.Style = []
                  OnDblClick = DBGrid1DblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o do Telefone'
                      Width = 163
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CONTATO'
                      Title.Caption = 'Contato'
                      Width = 148
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NUMERO'
                      Title.Caption = 'N'#250'mero'
                      Visible = True
                    end>
                end
                object Memo1: TMemo
                  Left = 565
                  Top = 48
                  Width = 145
                  Height = 57
                  Color = clWhite
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  Lines.Strings = (
                    'Telefone utilizado para '
                    'ser impresso nos '
                    'relat'#243'rios')
                  ParentFont = False
                  TabOrder = 7
                end
                object DBColorEdit47: TDBColorEdit
                  Left = 565
                  Top = 100
                  Width = 145
                  Height = 22
                  Color = 15658717
                  DataField = 'TELREL'
                  DataSource = DMPESSOA.DSPessoa
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = []
                  MaxLength = 40
                  ParentFont = False
                  TabOrder = 6
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
                object edDescFone: TFlatEdit
                  Left = 6
                  Top = 17
                  Width = 155
                  Height = 19
                  ColorBorder = clSkyBlue
                  ColorFlat = 16775666
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGrayText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  MaxLength = 30
                  ParentFont = False
                  TabOrder = 0
                  Text = 'Descri'#231#227'o'
                  OnEnter = edDescFoneEnter
                  OnExit = edDescFoneExit
                end
                object edContato: TFlatEdit
                  Left = 171
                  Top = 17
                  Width = 134
                  Height = 19
                  ColorBorder = clSkyBlue
                  ColorFlat = 16775666
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGrayText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  MaxLength = 30
                  ParentFont = False
                  TabOrder = 1
                  Text = 'Contato'
                  OnEnter = edContatoEnter
                  OnExit = edContatoExit
                end
                object edNumFone: TFlatEdit
                  Left = 315
                  Top = 17
                  Width = 166
                  Height = 19
                  ColorBorder = clSkyBlue
                  ColorFlat = 16775666
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGrayText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  MaxLength = 25
                  ParentFont = False
                  TabOrder = 2
                  Text = 'N'#250'mero'
                  OnEnter = edNumFoneEnter
                  OnExit = edNumFoneExit
                end
                object BtnAddFone: TBitBtn
                  Left = 492
                  Top = 16
                  Width = 18
                  Height = 20
                  Hint = 'Pressione para adicionar o Telefone'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnClick = BtnAddFoneClick
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
                object BtnRemFone: TBitBtn
                  Left = 512
                  Top = 15
                  Width = 18
                  Height = 21
                  Hint = 'Pressione para remover o Telefone selecionado'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 4
                  OnClick = BtnRemFoneClick
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
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'E- Mails'
              ImageIndex = 1
              object GroupBox3: TGroupBox
                Left = 8
                Top = -3
                Width = 710
                Height = 122
                Caption = 'E-Mails'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Shape456: TShape
                  Left = 657
                  Top = 13
                  Width = 22
                  Height = 24
                  Brush.Color = clGradientActiveCaption
                  Pen.Color = clGradientActiveCaption
                  Shape = stRoundRect
                  Visible = False
                end
                object Shape7984: TShape
                  Left = 678
                  Top = 13
                  Width = 22
                  Height = 24
                  Brush.Color = clGradientActiveCaption
                  Pen.Color = clGradientActiveCaption
                  Shape = stRoundRect
                  Visible = False
                end
                object DBGrid2: TDBGrid
                  Left = 0
                  Top = 42
                  Width = 710
                  Height = 80
                  Color = 16316657
                  DataSource = DMPESSOA.DSEmail
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 4
                  TitleFont.Charset = ANSI_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Arial'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 251
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EMAIL'
                      Title.Caption = 'E-Mail'
                      Width = 384
                      Visible = True
                    end>
                end
                object edDescEmail: TFlatEdit
                  Left = 6
                  Top = 17
                  Width = 175
                  Height = 19
                  ColorBorder = clSkyBlue
                  ColorFlat = 16775666
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGrayText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  MaxLength = 29
                  ParentFont = False
                  TabOrder = 0
                  Text = 'Descri'#231#227'o'
                  OnEnter = edDescEmailEnter
                  OnExit = edDescEmailExit
                end
                object EdEmail: TFlatEdit
                  Left = 194
                  Top = 17
                  Width = 452
                  Height = 19
                  ColorBorder = clSkyBlue
                  ColorFlat = 16775666
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clGrayText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  MaxLength = 99
                  ParentFont = False
                  TabOrder = 1
                  Text = 'E-Mail'
                  OnEnter = EdEmailEnter
                  OnExit = EdEmailExit
                end
                object btnAddEmail: TBitBtn
                  Left = 660
                  Top = 16
                  Width = 18
                  Height = 20
                  Hint = 'Pressione para adicionar o E-Mail'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnClick = btnAddEmailClick
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
                object btnRemEmail: TBitBtn
                  Left = 680
                  Top = 15
                  Width = 18
                  Height = 21
                  Hint = 'Pressione para remover o E-Mail selecionado'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnClick = btnRemEmailClick
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
              end
            end
          end
          object DBDATACAD: TDBColorEdit
            Left = 524
            Top = 191
            Width = 99
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'DATA_INI'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnKeyPress = DBDATACADKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          inline FrmBusca1: TFrmBusca
            Left = 11
            Top = 176
            Width = 401
            Height = 43
            Color = clWhite
            ParentColor = False
            TabOrder = 5
            inherited LTextoBusca: TLabel
              Width = 50
              Caption = 'Cidade:'
            end
            inherited LUZOPEN: TShape
              Left = 353
            end
            inherited LUZMINUS: TShape
              Left = 371
            end
            inherited EdDescricao: TFlatEdit
              Left = 57
              Width = 297
            end
            inherited BTNOPEN: TBitBtn
              Left = 354
              OnClick = FrmBusca1BTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 372
              OnClick = FrmBusca1BTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 53
              OnKeyPress = FrmBusca1EDCodigoKeyPress
            end
          end
          inline FrmRegiao: TFrmBusca
            Left = 414
            Top = 215
            Width = 373
            Height = 43
            Color = clWhite
            ParentColor = False
            TabOrder = 9
            inherited LTextoBusca: TLabel
              Width = 49
              Caption = 'Regi'#227'o:'
            end
            inherited LUZOPEN: TShape
              Left = 277
            end
            inherited LUZMINUS: TShape
              Left = 296
            end
            inherited EdDescricao: TFlatEdit
              Left = 57
              Width = 221
            end
            inherited BTNOPEN: TBitBtn
              Left = 279
              OnClick = FrmRegiaoBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 297
              OnClick = FrmRegiaoBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 53
              OnKeyPress = FrmRegiaoEDCodigoKeyPress
            end
          end
          inline FrmNatural: TFrmBusca
            Left = 11
            Top = 216
            Width = 401
            Height = 43
            Color = clWhite
            ParentColor = False
            TabOrder = 8
            inherited LTextoBusca: TLabel
              Width = 82
              Caption = 'Naturalidade'
            end
            inherited LUZOPEN: TShape
              Left = 352
            end
            inherited LUZMINUS: TShape
              Left = 370
            end
            inherited EdDescricao: TFlatEdit
              Left = 57
              Width = 297
            end
            inherited BTNOPEN: TBitBtn
              Left = 354
              OnClick = FrmNaturalBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 372
              OnClick = FrmNaturalBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 53
              OnKeyPress = FrmNaturalEDCodigoKeyPress
            end
          end
          object DBProximidade: TDBColorEdit
            Left = 596
            Top = 151
            Width = 149
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'PROXIMIDADE'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEndNumero: TDBColorEdit
            Left = 523
            Top = 151
            Width = 70
            Height = 22
            Hint = 'N'#250'mero'
            Ctl3D = True
            DataField = 'ENDNUMERO'
            DataSource = DMPESSOA.DSPessoa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnKeyPress = DBEndNumeroKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object PTipoPessoa: TPanel
        Left = 232
        Top = 56
        Width = 273
        Height = 105
        BevelWidth = 4
        TabOrder = 1
        OnExit = PTipoPessoaExit
        object FashionPanel1: TFashionPanel
          Left = 4
          Top = 4
          Width = 266
          Height = 97
          BevelOuter = bvNone
          Caption = 'Pessoa Tipo'
          Color = clWhite
          TabOrder = 0
          RoundRect = True
          About = 'Orion Software'
          ShadowDepth = 2
          ShadowSpace = 5
          ShowShadow = False
          ShadowColor = clBlack
          TitleColor = clBlack
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          Title = 'Pessoa Tipo'
          LineWidth = 0
          LineColor = clBlack
          Theme = ttCustom
          object RGTIPO: TRadioGroup
            Left = 8
            Top = 20
            Width = 248
            Height = 39
            Columns = 2
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemIndex = 0
            Items.Strings = (
              '&F'#237'sica'
              '&Jur'#237'dica')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object BTNOHTIPOPESSOA: TBitBtn
            Left = 78
            Top = 69
            Width = 97
            Height = 25
            Caption = 'OK'
            TabOrder = 1
            OnClick = BTNOHTIPOPESSOAClick
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
        end
      end
    end
    inherited Panel1: TPanel
      Top = 2
      Width = 768
      object DBNOMESUPER: TDBText [0]
        Left = 192
        Top = 8
        Width = 569
        Height = 17
        Alignment = taRightJustify
        DataField = 'NOME'
        DataSource = DMPESSOA.DSPessoa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited PBotoes: TPanel
    inherited BtnFecha: TSpeedButton
      Left = 756
    end
  end
  object Relatorio: TPopupMenu
    Left = 454
    Top = 45
    object Sinttico1: TMenuItem
      Caption = 'Geral'
      OnClick = Sinttico1Click
    end
  end
  object XMLDocument1: TXMLDocument
    FileName = 'C:\temp\cep.xml'
    Left = 725
    Top = 101
    DOMVendorDesc = 'MSXML'
  end
  object AlteraPessoa: TPopupMenu
    Left = 484
    Top = 46
    object AlteraFisicaJuridica1: TMenuItem
      Caption = 'Altera Fisica Juridica'
      OnClick = AlteraFisicaJuridica1Click
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 635
    Top = 101
  end
end
