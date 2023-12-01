inherited FCadEmpresa: TFCadEmpresa
  Left = 217
  Top = 160
  Caption = 'FCadEmpresa'
  ClientHeight = 413
  ClientWidth = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel [0]
    Left = 122
    Top = 131
  end
  inherited PConsulta: TPanel [1]
    Left = 10
    Top = 9
    Width = 729
    Height = 401
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 719
      Height = 307
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_EMPRESA'
          Title.Caption = 'C'#243'digo'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_FILIAL'
          Title.Caption = 'N'#250'mero'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FANTASIA'
          Title.Caption = 'Fantasia'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 195
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 718
      inherited EdNome: TFlatEdit
        Width = 571
      end
      inherited BtnSelecionar: TBitBtn
        Left = 599
        Top = 18
      end
    end
  end
  inherited PCadastro: TPanel
    Left = 10
    Top = 9
    Width = 729
    Height = 401
    inherited Panel4: TPanel
      Width = 725
      Height = 369
      inherited Label6: TLabel
        Top = 8
      end
      inherited Label7: TLabel
        Left = 87
        Top = 8
        Width = 93
        Caption = 'Raz'#227'o Social'
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 14
        Top = 28
        Width = 65
        DataField = 'COD_EMPRESA'
      end
      inherited DBDESC: TDBColorEdit
        Left = 87
        Top = 28
        Width = 383
        DataField = 'RAZAO_SOCIAL'
        Font.Style = [fsBold]
        OnKeyPress = DBColorEdit2KeyPress
      end
      object PCEmpresa: TPageControl
        Left = 1
        Top = 0
        Width = 720
        Height = 368
        ActivePage = TabSheet2
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = 'Dados da Empresa'
          object Label2: TLabel
            Left = 465
            Top = 8
            Width = 51
            Height = 16
            Caption = 'Nr.  Filial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 572
            Top = 5
            Width = 102
            Height = 16
            Caption = 'Tipo de  Empresa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 534
            Top = 54
            Width = 149
            Height = 16
            Caption = 'Insc. Estd. Subst. Tribut.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 378
            Top = 54
            Width = 43
            Height = 16
            Caption = 'C.N.P.J'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 244
            Top = 54
            Width = 115
            Height = 16
            Caption = 'Inscri'#231#227'o Municipal:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 107
            Top = 54
            Width = 111
            Height = 16
            Caption = 'Inscri'#231#227'o Estadual:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 6
            Top = 54
            Width = 88
            Height = 16
            Caption = 'Data Funda'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 6
            Top = 98
            Width = 54
            Height = 16
            Caption = 'Fantasia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 377
            Top = 98
            Width = 55
            Height = 16
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 7
            Top = 181
            Width = 23
            Height = 16
            Caption = 'Cep'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 103
            Top = 143
            Width = 34
            Height = 16
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 132
            Top = 181
            Width = 72
            Height = 16
            Caption = 'Caixa postal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 161
            Top = 219
            Width = 105
            Height = 16
            Caption = 'Pagina na Internet'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 85
            Top = 5
            Width = 93
            Height = 18
            Caption = 'Raz'#227'o Social'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 6
            Top = 6
            Width = 62
            Height = 19
            Caption = 'C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 221
            Top = 181
            Width = 47
            Height = 16
            Caption = 'Telefone'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 6
            Top = 143
            Width = 45
            Height = 16
            Caption = 'Numero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 7
            Top = 259
            Width = 45
            Height = 16
            Caption = 'Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 5
            Top = 220
            Width = 73
            Height = 16
            Caption = 'Fone - 0800:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit7: TDBEdit
            Left = 5
            Top = 70
            Width = 97
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'DATA_FUNDACAO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit8: TDBColorEdit
            Left = 105
            Top = 70
            Width = 129
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'INSC_EST'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit9: TDBColorEdit
            Left = 242
            Top = 70
            Width = 128
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'INSC_MUN'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBCNPJ: TDBColorEdit
            Left = 375
            Top = 70
            Width = 154
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'CNPJ'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit12: TDBColorEdit
            Left = 532
            Top = 70
            Width = 177
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'CAD_SRF'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit2: TDBColorEdit
            Left = 464
            Top = 25
            Width = 102
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'NUM_FILIAL'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBTipoEmpresa: TFlatComboBox
            Left = 569
            Top = 23
            Width = 142
            Height = 24
            Color = 15658717
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'MATRIZ'
              'FILIAL')
            ParentFont = False
            TabOrder = 3
            Text = 'MATRIZ'
            ItemIndex = 0
          end
          object DBEdit3: TDBColorEdit
            Left = 375
            Top = 114
            Width = 335
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'ENDERECO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBFANTASIA: TDBColorEdit
            Left = 4
            Top = 114
            Width = 366
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'FANTASIA'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit4: TDBColorEdit
            Left = 5
            Top = 196
            Width = 122
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'CEP'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 14
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit5: TDBColorEdit
            Left = 103
            Top = 158
            Width = 271
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'BAIRRO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit6: TDBEdit
            Left = 132
            Top = 196
            Width = 86
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'CX_POSTAL'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 15
            OnKeyPress = DBColorEdit2KeyPress
          end
          object DBEdit14: TDBColorEdit
            Left = 160
            Top = 235
            Width = 211
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'WEB_PAGE'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 18
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox2: TGroupBox
            Left = 374
            Top = 185
            Width = 335
            Height = 133
            Color = clWhite
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 20
            object Label20: TLabel
              Left = 9
              Top = 9
              Width = 77
              Height = 16
              Caption = 'Pr'#243'xima N.F:'
              FocusControl = DBEdit15
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 8
              Top = 85
              Width = 121
              Height = 16
              Caption = 'Prox. Ped. de venda:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 9
              Top = 47
              Width = 75
              Height = 16
              Caption = 'Pr'#243'xima O.S'
              FocusControl = DBEdit17
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 135
              Top = 8
              Width = 32
              Height = 16
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 136
              Top = 48
              Width = 67
              Height = 16
              Caption = 'Prox. P. C.:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 136
              Top = 85
              Width = 64
              Height = 16
              Caption = 'Prox. Or'#231'.:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 216
              Top = 9
              Width = 67
              Height = 16
              Caption = 'Prox. Licit.:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label47: TLabel
              Left = 216
              Top = 86
              Width = 62
              Height = 16
              Caption = 'S'#233'rie NFe:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label66: TLabel
              Left = 216
              Top = 46
              Width = 75
              Height = 16
              Caption = 'S'#233'rie NFC-e:'
              FocusControl = DBEdit16
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit15: TDBEdit
              Left = 8
              Top = 101
              Width = 120
              Height = 22
              Color = 15658717
              DataField = 'PROXPEDVEND'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 8
              Top = 64
              Width = 121
              Height = 22
              Color = 15658717
              DataField = 'PROX_OS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit17: TDBEdit
              Left = 8
              Top = 25
              Width = 118
              Height = 22
              Color = 15658717
              DataField = 'PROX_NF'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit18: TDBEdit
              Left = 134
              Top = 24
              Width = 63
              Height = 22
              Color = 15658717
              DataField = 'ICMS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit1: TDBEdit
              Left = 136
              Top = 64
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'PROXPEDCOMP'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit11: TDBEdit
              Left = 136
              Top = 101
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'PROXORC'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit13: TDBEdit
              Left = 216
              Top = 25
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'PROXLICITA'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit21: TDBEdit
              Left = 216
              Top = 102
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'NFESERIE'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit29: TDBEdit
              Left = 216
              Top = 62
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'NFCESERIE'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              MaxLength = 3
              ParentFont = False
              TabOrder = 8
            end
          end
          object DBColorEdit2: TDBColorEdit
            Left = 78
            Top = 25
            Width = 383
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'RAZAO_SOCIAL'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit1: TDBColorEdit
            Left = 5
            Top = 26
            Width = 65
            Height = 22
            Color = 16758639
            Ctl3D = False
            DataField = 'COD_EMPRESA'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          inline FrmBusca: TFrmBusca
            Left = 375
            Top = 140
            Width = 337
            Height = 43
            Color = clWhite
            ParentColor = False
            TabOrder = 13
            inherited LTextoBusca: TLabel
              Width = 44
              Caption = 'Cidade:'
              Font.Name = 'Arial'
            end
            inherited LUZOPEN: TShape
              Left = 290
            end
            inherited LUZMINUS: TShape
              Left = 314
            end
            inherited EdDescricao: TFlatEdit
              Left = 58
              Width = 231
            end
            inherited BTNOPEN: TBitBtn
              Left = 289
              Hint = 'Pressione para selecionar '#224' cidade'
              OnClick = FrmBuscaBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 311
              Hint = 'Pressione para apagar '#224' cidade'
              OnClick = FrmBuscaBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 55
              OnKeyPress = FrmBuscaEDCodigoKeyPress
            end
          end
          object DBEdit10: TDBEdit
            Left = 221
            Top = 196
            Width = 150
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'FONE'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 16
            OnKeyPress = DBColorEdit2KeyPress
          end
          object DBColorEdit3: TDBColorEdit
            Left = 5
            Top = 158
            Width = 94
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'NUMERO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit6: TDBColorEdit
            Left = 5
            Top = 275
            Width = 364
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'CONTATO'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 19
            OnKeyPress = DBColorEdit2KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBEdit20: TDBEdit
            Left = 5
            Top = 235
            Width = 150
            Height = 22
            Color = 15658717
            Ctl3D = False
            DataField = 'TEL0800'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 17
            OnKeyPress = DBColorEdit2KeyPress
          end
          object cbIndustria: TCheckBox
            Left = 13
            Top = 308
            Width = 97
            Height = 17
            Caption = 'Ind'#250'stria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
            OnClick = cbIndustriaClick
          end
          object cbNCI: TCheckBox
            Left = 96
            Top = 307
            Width = 233
            Height = 17
            Caption = 'N'#227'o calcular Imposto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
            OnClick = cbNCIClick
          end
          object cbNaoCalcST: TCheckBox
            Left = 248
            Top = 307
            Width = 121
            Height = 17
            Caption = 'N'#227'o calcular S.T.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
            OnClick = cbNCIClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Dados P/ C'#225'lculo de Produto'
          ImageIndex = 1
          object Panel2: TPanel
            Left = 2
            Top = 130
            Width = 281
            Height = 150
            BevelInner = bvSpace
            BevelOuter = bvSpace
            BorderWidth = 1
            TabOrder = 1
            object FashionPanel1: TFashionPanel
              Left = 3
              Top = 3
              Width = 275
              Height = 144
              Align = alClient
              BevelOuter = bvNone
              Caption = 'FashionPanel1'
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
              Title = 'C O M I S '#195' O  S O B R E  V E N D A'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object Label34: TLabel
                Left = 5
                Top = 20
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
              object Label37: TLabel
                Left = 5
                Top = 38
                Width = 76
                Height = 17
                Caption = #192' Vista (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 126
                Top = 38
                Width = 83
                Height = 17
                Caption = #192' Prazo (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 5
                Top = 82
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
              object Label41: TLabel
                Left = 5
                Top = 99
                Width = 76
                Height = 17
                Caption = #192' Vista (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 125
                Top = 99
                Width = 83
                Height = 17
                Caption = #192' Prazo (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object DBColorEdit27: TDBColorEdit
                Left = 125
                Top = 57
                Width = 118
                Height = 23
                Ctl3D = False
                DataField = 'CVPPROVAR'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit26: TDBColorEdit
                Left = 5
                Top = 57
                Width = 118
                Height = 23
                Ctl3D = False
                DataField = 'CVVPROVAR'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit28: TDBColorEdit
                Left = 5
                Top = 117
                Width = 118
                Height = 23
                Ctl3D = False
                DataField = 'CVVPROAT'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit29: TDBColorEdit
                Left = 125
                Top = 117
                Width = 118
                Height = 23
                Ctl3D = False
                DataField = 'CVPPROAT'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
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
          object Panel3: TPanel
            Left = 1
            Top = 3
            Width = 281
            Height = 126
            BevelInner = bvRaised
            BevelOuter = bvSpace
            BorderWidth = 1
            TabOrder = 0
            object FashionPanel2: TFashionPanel
              Left = 3
              Top = 3
              Width = 275
              Height = 120
              Align = alClient
              BevelOuter = bvNone
              Caption = 'FashionPanel2'
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
              Title = 'VALORES DE VENDA'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object Label39: TLabel
                Left = 4
                Top = 20
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
              object Label43: TLabel
                Left = 8
                Top = 44
                Width = 83
                Height = 16
                Caption = 'Desconto (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 126
                Top = 44
                Width = 86
                Height = 16
                Caption = 'Acr'#233'scimo (%)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 4
                Top = 71
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
              object Label45: TLabel
                Left = 4
                Top = 94
                Width = 83
                Height = 16
                Caption = 'Desconto (%):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 123
                Top = 94
                Width = 86
                Height = 16
                Caption = 'Acr'#233'scimo (%)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object DBColorEdit30: TDBColorEdit
                Left = 93
                Top = 42
                Width = 29
                Height = 22
                Ctl3D = False
                DataField = 'AVVPROVAR'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit31: TDBColorEdit
                Left = 213
                Top = 42
                Width = 29
                Height = 22
                Ctl3D = False
                DataField = 'AVPPROVAR'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit32: TDBColorEdit
                Left = 89
                Top = 92
                Width = 29
                Height = 22
                Ctl3D = False
                DataField = 'AVVPROAT'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit33: TDBColorEdit
                Left = 210
                Top = 92
                Width = 29
                Height = 22
                Ctl3D = False
                DataField = 'AVPPROAT'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
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
          object Panel5: TPanel
            Left = 284
            Top = 3
            Width = 206
            Height = 334
            BevelInner = bvSpace
            BevelOuter = bvSpace
            TabOrder = 2
            object FashionPanel3: TFashionPanel
              Left = 2
              Top = 2
              Width = 202
              Height = 330
              Align = alClient
              BevelOuter = bvNone
              Caption = 'FashionPanel3'
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
              Title = 'I M P O S T O'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object Label25: TLabel
                Left = 105
                Top = 22
                Width = 74
                Height = 17
                Caption = 'Federal  %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 6
                Top = 22
                Width = 82
                Height = 17
                Caption = 'Estadual  %:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 6
                Top = 70
                Width = 160
                Height = 17
                Caption = 'Tipo Empresa (Produto):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 6
                Top = 150
                Width = 128
                Height = 17
                Caption = 'Tipo Empresa (NF):'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label48: TLabel
                Left = 8
                Top = 193
                Width = 94
                Height = 17
                Caption = 'Al'#237'quota ICMS:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label54: TLabel
                Left = 8
                Top = 241
                Width = 33
                Height = 17
                Caption = 'CRT:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label55: TLabel
                Left = 8
                Top = 289
                Width = 164
                Height = 17
                Caption = 'Valor Aprox. dos Tributos:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object Label61: TLabel
                Left = 56
                Top = 238
                Width = 96
                Height = 13
                Caption = '1 - Simples Nacional'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -1
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label62: TLabel
                Left = 56
                Top = 251
                Width = 144
                Height = 13
                Caption = '2 - Simples Nacional - excesso'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label63: TLabel
                Left = 68
                Top = 264
                Width = 132
                Height = 13
                Caption = 'de sublimite da receita bruta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label64: TLabel
                Left = 56
                Top = 276
                Width = 87
                Height = 13
                Caption = '3 - Regime Normal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBColorEdit4: TDBColorEdit
                Left = 6
                Top = 40
                Width = 83
                Height = 23
                Ctl3D = False
                DataField = 'IMPEST'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit5: TDBColorEdit
                Left = 104
                Top = 39
                Width = 77
                Height = 23
                Ctl3D = False
                DataField = 'IMPFED'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object CBCREDITOIPI: TCheckBox
                Left = 8
                Top = 114
                Width = 177
                Height = 17
                Caption = 'Credita IPI na Compra:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object CBCALCULOIPI: TCheckBox
                Left = 8
                Top = 130
                Width = 177
                Height = 17
                Caption = 'Calcula IPI na Venda:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object DBComboBox1: TDBComboBox
                Left = 8
                Top = 88
                Width = 145
                Height = 21
                DataField = 'TIPOEMPRESA'
                DataSource = DMMACS.DsEmpresa
                ItemHeight = 13
                Items.Strings = (
                  'SIMPLES'
                  'LUC-REAL'
                  'LUC-PRES')
                TabOrder = 4
              end
              object DBComboBox2: TDBComboBox
                Left = 8
                Top = 168
                Width = 145
                Height = 21
                DataField = 'TIPOEMPRESANF'
                DataSource = DMMACS.DsEmpresa
                ItemHeight = 13
                Items.Strings = (
                  'SIMPLES'
                  'NORMAL')
                TabOrder = 5
              end
              object DBColorEdit7: TDBColorEdit
                Left = 8
                Top = 210
                Width = 97
                Height = 22
                Ctl3D = False
                DataField = 'ALIQICMS'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit8: TDBColorEdit
                Left = 8
                Top = 259
                Width = 41
                Height = 22
                Ctl3D = False
                DataField = 'CRT'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object DBColorEdit9: TDBColorEdit
                Left = 8
                Top = 307
                Width = 169
                Height = 22
                Ctl3D = False
                DataField = 'VALORTOTALTRIBUTA'
                DataSource = DMMACS.DsEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                MaxLength = 5
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
          end
          object cbRetemImpostos: TCheckBox
            Left = 516
            Top = 16
            Width = 157
            Height = 17
            Caption = 'Retem impostos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = cbRetemImpostosClick
          end
          object pRetemImpostos: TPanel
            Left = 516
            Top = 32
            Width = 185
            Height = 201
            Color = clWhite
            TabOrder = 4
            object Label67: TLabel
              Left = 20
              Top = 48
              Width = 60
              Height = 13
              Caption = 'Al'#237'quota Pis:'
            end
            object Label68: TLabel
              Left = 20
              Top = 92
              Width = 75
              Height = 13
              Caption = 'Al'#237'quota Cofins:'
            end
            object Label69: TLabel
              Left = 20
              Top = 8
              Width = 71
              Height = 13
              Caption = 'Al'#237'quota IRRF:'
            end
            object Label70: TLabel
              Left = 20
              Top = 140
              Width = 72
              Height = 13
              Caption = 'Al'#237'quota CSLL:'
            end
            object DBColorEdit11: TDBColorEdit
              Left = 20
              Top = 64
              Width = 90
              Height = 20
              Ctl3D = False
              DataField = 'ALIQ_RETEM_PIS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit12: TDBColorEdit
              Left = 20
              Top = 108
              Width = 90
              Height = 20
              Ctl3D = False
              DataField = 'ALIQ_RETEM_COFINS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit13: TDBColorEdit
              Left = 20
              Top = 22
              Width = 90
              Height = 20
              Ctl3D = False
              DataField = 'ALIQ_RETEM_IRRF'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBColorEdit14: TDBColorEdit
              Left = 20
              Top = 156
              Width = 90
              Height = 20
              Ctl3D = False
              DataField = 'ALIQ_RETEM_CSLL'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
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
        object TabSheet3: TTabSheet
          Caption = 'Configura'#231#245'es'
          ImageIndex = 2
          object Label49: TLabel
            Left = 8
            Top = 176
            Width = 123
            Height = 14
            Caption = 'C'#243'digo Exporta'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 127
            Top = 236
            Width = 56
            Height = 14
            Caption = 'Al'#237'quota:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 7
            Top = 280
            Width = 202
            Height = 16
            Hint = 
              'Valor m'#225'ximo da opera'#231#227'o que '#233' permitido a n'#227'o identifica'#231#227'o do ' +
              'consumidor'
            Caption = 'Valor M'#225'ximo da Opera'#231#227'o NFC-e:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object GroupBox3: TGroupBox
            Left = 8
            Top = 56
            Width = 225
            Height = 65
            Caption = 'Conf. de C'#243'd. Internos'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            object Label28: TLabel
              Left = 68
              Top = 40
              Width = 88
              Height = 13
              Caption = 'Tamanho do C'#243'd.:'
            end
            object DBNCASASPES: TDBEdit
              Left = 159
              Top = 34
              Width = 33
              Height = 19
              DataField = 'NCASASZEROPES'
              DataSource = DMMACS.DsEmpresa
              TabOrder = 1
            end
            object CBZEROPES: TCheckBox
              Left = 8
              Top = 16
              Width = 193
              Height = 17
              Caption = 'Utilizar "0" a esquerda em Pessoas'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = CBZEROPESClick
            end
          end
          object GroupBox5: TGroupBox
            Left = 8
            Top = 8
            Width = 225
            Height = 41
            Caption = 'Moeda Padr'#227'o'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 8
              Top = 16
              Width = 209
              Height = 19
              Hint = 'Pressione <INSERT> para abrir novo cadastro'
              Color = 15658717
              DataField = 'COD_MOEDA'
              DataSource = DMMACS.DsEmpresa
              KeyField = 'COD_MOEDA'
              ListField = 'MOEDA; ORIGEM'
              ListSource = DMFINANC.DSMoeda
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyDown = DBLookupComboBox2KeyDown
            end
          end
          object CBCONTICMS: TCheckBox
            Left = 8
            Top = 144
            Width = 313
            Height = 17
            Caption = 'Calcular ICMS individualmente por produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object EdCodExp: TEdit
            Left = 144
            Top = 176
            Width = 113
            Height = 20
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object CBPisCofins: TCheckBox
            Left = 8
            Top = 209
            Width = 265
            Height = 17
            Caption = 'Gerar Pis/Cofins nas notas de sa'#237'da'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EdAliquotaPisCofins: TFloatEdit
            Left = 189
            Top = 227
            Width = 65
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
          object GroupBox4: TGroupBox
            Left = 366
            Top = 8
            Width = 339
            Height = 205
            Color = 16772332
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 7
            object Label52: TLabel
              Left = 9
              Top = 9
              Width = 52
              Height = 16
              Caption = 'COFINS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 87
              Top = 8
              Width = 25
              Height = 16
              Caption = 'PIS:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 8
              Top = 159
              Width = 115
              Height = 14
              Caption = 'Tributa'#231#227'o NFS-e'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label53: TLabel
              Left = 167
              Top = 160
              Width = 165
              Height = 16
              Caption = 'Valor M'#225'ximo para Servi'#231'os:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 153
              Top = 8
              Width = 21
              Height = 16
              Caption = 'ISS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 9
              Top = 57
              Width = 34
              Height = 16
              Caption = 'Cnae:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label58: TLabel
              Left = 90
              Top = 57
              Width = 96
              Height = 16
              Caption = 'Descri'#231#227'o Cnae:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label59: TLabel
              Left = 223
              Top = 8
              Width = 114
              Height = 16
              Caption = 'C'#243'd. Tribut. Munic.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label60: TLabel
              Left = 9
              Top = 105
              Width = 149
              Height = 16
              Caption = 'Valor Aprox. dos Tributos:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit24: TDBEdit
              Left = 8
              Top = 25
              Width = 73
              Height = 22
              Color = 15658717
              DataField = 'COFINS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit26: TDBEdit
              Left = 86
              Top = 24
              Width = 63
              Height = 22
              Color = 15658717
              DataField = 'PIS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnKeyPress = DBColorEdit2KeyPress
            end
            object CBTribServ: TComboBox
              Left = 8
              Top = 176
              Width = 145
              Height = 21
              ItemHeight = 13
              TabOrder = 7
              Items.Strings = (
                'Tributa'#231#227'o no munic'#237'pio'
                'Tributa'#231#227'o fora do munic'#237'pio'
                'Isen'#231#227'o'
                'Imune')
            end
            object DBEdit22: TDBEdit
              Left = 168
              Top = 176
              Width = 165
              Height = 22
              Color = 15658717
              DataField = 'ICMS'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit19: TDBEdit
              Left = 153
              Top = 24
              Width = 65
              Height = 22
              Color = 15658717
              DataField = 'ISSQN'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit23: TDBEdit
              Left = 8
              Top = 73
              Width = 81
              Height = 22
              Color = 15658717
              DataField = 'NFSE_CODIGOCNAE'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit25: TDBEdit
              Left = 89
              Top = 73
              Width = 244
              Height = 22
              Color = clWhite
              DataField = 'NFSE_DESCRICAOCNAE'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = DBColorEdit2KeyPress
            end
            object DBEdit27: TDBEdit
              Left = 223
              Top = 24
              Width = 110
              Height = 22
              Color = 15658717
              DataField = 'NFSE_CODTRIBUTACAOMUNICIPAL'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBColorEdit10: TDBColorEdit
              Left = 8
              Top = 122
              Width = 169
              Height = 22
              Ctl3D = False
              DataField = 'VALORTOTALTRIBUTANFSE'
              DataSource = DMMACS.DsEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object CbMobile: TCheckBox
            Left = 8
            Top = 257
            Width = 313
            Height = 17
            Caption = 'Sistema configurado para atuar como MOBILE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit28: TDBEdit
            Left = 6
            Top = 296
            Width = 203
            Height = 24
            Color = 15658717
            DataField = 'VALOR_MAX_NFCE'
            DataSource = DMMACS.DsEmpresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyPress = DBColorEdit2KeyPress
          end
        end
      end
    end
    inherited Panel1: TPanel
      Width = 725
    end
  end
end
