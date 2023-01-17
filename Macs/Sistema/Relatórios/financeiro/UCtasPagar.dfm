inherited FCtaPagar: TFCtaPagar
  Left = 125
  Top = 143
  Caption = 'FCtaPagar'
  ClientHeight = 538
  ClientWidth = 861
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 859
    Height = 499
  end
  inherited LDescTitulo: TLabel
    Left = 507
    Width = 110
    Caption = 'Contas a Pagar'
  end
  inherited PCADASTRO: TPanel [9]
    Width = 839
    Height = 473
    inherited Panel4: TPanel [0]
      Width = 836
      Height = 438
      inherited PBanco: TPanel
        TabOrder = 15
      end
      inherited GroupBox9: TGroupBox
        Top = 182
        Width = 829
        Height = 253
        TabOrder = 17
        inherited DBGrid3: TDBGrid
          Left = 0
          Width = 829
          Height = 237
          DataSource = DMCONTA.DParcCP
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMPARC'
              ReadOnly = True
              Title.Caption = 'N'#186' Parcela'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMBOLETO'
              Title.Caption = 'N'#186' Boleto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Title.Caption = 'Venc.:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTREF'
              Title.Caption = 'Ref.:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COBRANCA'
              PickList.Strings = (
                'Carteira'
                'Cheque')
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Visible = True
            end>
        end
      end
      inherited Panel7: TPanel
        Left = 675
        TabOrder = 14
      end
      inherited DBMOEDA: TDBLookupComboBox
        TabOrder = 16
      end
      inherited DBNumDoc: TDBColorEdit
        DataField = 'NUMDOC'
        DataSource = DMCONTA.DCtaP
        TabOrder = 6
      end
      inherited FrmCliFor: TFrmBusca
        inherited LTextoBusca: TLabel
          Width = 69
          Caption = 'Fornecedor:'
        end
      end
      inherited frmFormPag: TFrmBusca
        TabOrder = 8
      end
      inherited RGJuros: TRadioGroup
        Width = 113
        TabOrder = 13
      end
      inherited DBHISTORICO: TEdit
        TabOrder = 2
      end
      inherited DBCobranca: TComboBox
        TabOrder = 3
        Items.Strings = (
          'Cart'#227'o'
          'Carteira'
          'Cheque'
          'Boleto')
      end
      inherited DBData: TColorMaskEdit
        TabOrder = 4
      end
      inherited DBValor: TColorEditFloat
        TabOrder = 5
      end
      inherited edfiscalpagar: TEdit
        TabOrder = 7
      end
      inherited CbDiaMes: TCheckBox
        TabOrder = 9
      end
      inherited EdDiaMes: TColorEditFloat
        TabOrder = 10
      end
      inherited CdDtReferencia: TCheckBox
        Left = 560
        Top = 167
        TabOrder = 11
      end
    end
    inherited Panel1: TPanel [1]
      Width = 835
    end
  end
  inherited PConsultParc: TPanel [10]
    Width = 840
    Height = 471
    object Label34: TLabel [5]
      Left = 8
      Top = 335
      Width = 81
      Height = 16
      Caption = 'Num. Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel [6]
      Left = 8
      Top = 383
      Width = 85
      Height = 16
      Caption = 'Num. Boleto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    inherited Panel2: TPanel
      TabOrder = 10
    end
    inherited GroupBox7: TGroupBox
      TabOrder = 9
      inherited DBText1: TDBText
        DataField = 'COBRANCA'
        DataSource = DMCONTA.DWCtaP
      end
      inherited DBText2: TDBText
        DataField = 'DTLANC'
        DataSource = DMCONTA.DWCtaP
      end
      inherited DBText3: TDBText
        DataField = 'NOME'
        DataSource = DMCONTA.DWParP
      end
      inherited DBText4: TDBText
        DataField = 'DTDEBITO'
        DataSource = DMCONTA.DWParP
      end
      inherited DBText5: TDBText
        DataField = 'HISTORICO'
        DataSource = DMCONTA.DWCtaP
      end
      inherited DBDocumento: TDBText
        DataField = 'NUMDOC'
        DataSource = DMCONTA.DWCtaP
      end
    end
    inherited DBColorEdit1: TDBColorEdit
      DataField = 'DTVENC'
      DataSource = DMCONTA.DParcCP
    end
    inherited DBColorEdit2: TDBColorEdit
      DataField = 'VALOR'
      DataSource = DMCONTA.DParcCP
    end
    inherited DBColorEdit4: TDBColorEdit
      DataField = 'HISTORICO'
      DataSource = DMCONTA.DParcCP
    end
    inherited DBColorComboBox1: TDBColorComboBox
      DataSource = DMCONTA.DParcCP
    end
    inherited Panel8: TPanel
      TabOrder = 8
    end
    inherited DBColorEdit5: TDBColorEdit
      DataField = 'DTREF'
      DataSource = DMCONTA.DParcCP
    end
    object RGCTipo: TRadioGroup
      Left = 151
      Top = 332
      Width = 250
      Height = 61
      Caption = 'Tipo: '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Reserva'
        'Promo'#231#227'o'
        'Condom'#237'nio')
      TabOrder = 7
    end
    object DBFiscal: TDBColorEdit
      Left = 8
      Top = 353
      Width = 121
      Height = 24
      DataField = 'NUMFISC'
      DataSource = DMCONTA.DParcCP
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBBoleto: TDBColorEdit
      Left = 8
      Top = 401
      Width = 121
      Height = 24
      DataField = 'NUMBOLETO'
      DataSource = DMCONTA.DParcCP
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  inherited PCONSULTA: TPanel
    Left = 9
    Width = 840
    Height = 471
    inherited Painel: TPanel [0]
      Width = 836
      inherited BtnRelatorio: TBitBtn
        PopupMenu = PMREL
        OnClick = BtnRelatorioClick
      end
      object BtnFaturaContas: TBitBtn
        Left = 720
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para filtrar os registros'
        Caption = 'Faturar Marcadas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TabStop = False
        Visible = False
        OnClick = BtnFaturaContasClick
      end
    end
    inherited PFiltrarParcelas: TPanel [1]
    end
    inherited TCConsultContas: TFlatTabControl [2]
      Width = 834
      Height = 422
      Tabs.Strings = (
        '&Pendentes (T'#237'tulos em Aberto)'
        '&Agrupados por refer'#234'ncia'
        'Bai&xados (T'#237'tulos que foram Baixados)'
        '&Provis'#227'o')
      inherited PBaixadas: TPanel [0]
        Width = 828
        Height = 400
        inherited DBGBAIXADAS: TDBGrid [0]
          Top = 48
          Width = 821
          Height = 321
          DataSource = DMCONTA.DWParP
          OnDrawColumnCell = DBGBAIXADASDrawColumnCell
          OnKeyDown = DBGBAIXADASKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'FECH'
              Title.Caption = 'X'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMPARC'
              Title.Caption = 'Parcela'
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
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
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
              FieldName = 'DTDEBITO'
              Title.Caption = 'D'#233'bito'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPG'
              Title.Caption = 'Pago'
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
              FieldName = 'NOME'
              Title.Caption = 'Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
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
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Class. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Desc. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Visible = True
            end>
        end
        inherited Panel9: TPanel [1]
          Top = 372
          Width = 637
        end
        inherited GroupBox10: TGroupBox
          Left = 289
        end
        inherited GroupBox11: TGroupBox
          Left = 376
        end
        inherited GroupBox6: TGroupBox
          Left = 106
          Width = 71
          Caption = 'Doc'
          inherited EdNumpracB: TColorMaskEdit
            Width = 64
          end
        end
        inherited EdTotBaixadas: TFloatEdit
          Left = 643
          Top = 371
        end
        inherited GroupBox8: TGroupBox
          Left = 693
          Width = 132
          inherited EdHistFornec: TColorMaskEdit
            Width = 124
          end
        end
        inherited GroupBox15: TGroupBox
          Left = 176
          Top = 3
          Height = 38
        end
        inherited GroupBox16: TGroupBox
          Left = 239
          Top = 3
          Height = 38
        end
        inherited GroupBox12: TGroupBox
          Left = 538
          Width = 156
          inherited EdFornecBaixa: TColorMaskEdit
            Width = 148
          end
        end
        inherited GroupBox200: TGroupBox
          Left = 4
          Width = 103
          inherited cbFiltroCobrBaixadas: TComboBox
            Width = 98
          end
        end
      end
      inherited PAgrupados: TPanel
        Width = 831
        Height = 404
        inherited GroupBox1: TGroupBox
          Width = 822
          inherited DBGMestre: TDBGrid
            Left = 0
            Width = 822
            Height = 170
            OnDrawColumnCell = DBGMestreDrawColumnCell
            OnKeyDown = DBGMestreKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'COBRANCA'
                Title.Caption = 'Cobran'#231'a'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMDOC'
                Title.Caption = 'Documento'
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
                FieldName = 'COD_USUARIO'
                Title.Caption = 'C'#243'd. Usu'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOGIN'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end>
          end
        end
        inherited GroupBox2: TGroupBox
          Width = 822
          Height = 184
          inherited DBGSLAVE: TDBGrid
            Left = 0
            Width = 822
            Height = 168
            DataSource = DMCONTA.DWParP
            OnDrawColumnCell = DBGSLAVEDrawColumnCell
            OnKeyDown = DBGSLAVEKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMDOC'
                Title.Caption = 'Parcela'
                Width = 91
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
                FieldName = 'NOME'
                Title.Caption = 'Fornecedor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COBRANCA'
                Title.Caption = 'Cobran'#231'a'
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
                FieldName = 'CLASSIFICACAO'
                Title.Caption = 'Class. Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Desc. Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end>
          end
        end
        inherited EDTotAgrup: TFloatEdit
          Left = 643
          Top = 376
          Height = 25
        end
      end
      object PPrevisao: TPanel [2]
        Left = 1
        Top = 17
        Width = 830
        Height = 403
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 3
        Visible = False
        object DBGPrevisao: TDBGrid
          Left = 4
          Top = 45
          Width = 823
          Height = 323
          Color = 15794175
          Ctl3D = False
          DataSource = DMCONTA.DWParP
          FixedColor = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = Recibo
          ReadOnly = True
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGPrevisaoDrawColumnCell
          OnKeyDown = DBGPrevisaoKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMPARC'
              Title.Caption = 'Parcela'
              Width = 99
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
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
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
              FieldName = 'NOME'
              Title.Caption = 'Fornecedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
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
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Class. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Desc. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Visible = True
            end>
        end
        object GroupBox19: TGroupBox
          Left = 221
          Top = 3
          Width = 92
          Height = 37
          Caption = 'Lan'#231'am.'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object EdLancPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 84
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = EDLANCAMENTOKeyDown
            OnKeyPress = EdLancPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox20: TGroupBox
          Left = 312
          Top = 3
          Width = 93
          Height = 37
          Caption = 'Venc'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          object EdVencPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 84
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
            EditMask = '!99/99/0000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = EDLANCAMENTOKeyDown
            OnKeyPress = EdVencPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox21: TGroupBox
          Left = 404
          Top = 3
          Width = 218
          Height = 37
          Caption = 'Pessoa'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          object EdPessoaPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 210
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
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
            OnKeyDown = EDLANCAMENTOKeyDown
            OnKeyPress = EdPessoaPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox22: TGroupBox
          Left = 4
          Top = 3
          Width = 86
          Height = 37
          Caption = 'Doc'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object EdDocumentoPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 78
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
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
            OnKeyDown = EDLANCAMENTOKeyDown
            OnKeyPress = EdDocumentoPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object EdTotalPrevisto: TFloatEdit
          Left = 633
          Top = 371
          Width = 195
          Height = 30
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '0,00'
          ValueFormat = '#,##0.00'
          ValueInteger = 0
        end
        object GroupBox23: TGroupBox
          Left = 621
          Top = 3
          Width = 206
          Height = 37
          Caption = 'Referente'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          object CBREFERENTE: TComboBox
            Left = 3
            Top = 13
            Width = 151
            Height = 24
            ItemHeight = 16
            TabOrder = 0
            Text = 'Todos'
            OnKeyDown = CBREFERENTEKeyDown
            OnKeyPress = CBREFERENTEKeyPress
            Items.Strings = (
              'Todos'
              'Janeiro'
              'Fevereiro'
              'Mar'#231'o'
              'Abril'
              'Maio'
              'Junho'
              'Julho'
              'Agosto'
              'Setembro'
              'Outubro'
              'Novembro'
              'Dezembro')
          end
          object CBREFERENTEANO: TComboBox
            Left = 158
            Top = 13
            Width = 43
            Height = 24
            ItemHeight = 16
            TabOrder = 1
            Text = '06'
            OnKeyDown = CBREFERENTEKeyDown
            OnKeyPress = CBREFERENTEKeyPress
            Items.Strings = (
              '06'
              '07'
              '08'
              '09'
              '10')
          end
        end
        object GroupBox24: TGroupBox
          Left = 89
          Top = 3
          Width = 72
          Height = 37
          Caption = 'Boleto'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object EdBoletoPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 65
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
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
            OnKeyDown = EdBoletoPrevKeyDown
            OnKeyPress = EdBoletoPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox25: TGroupBox
          Left = 160
          Top = 3
          Width = 62
          Height = 37
          Caption = 'Fisc'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object EdFiscPrev: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 53
            Height = 24
            Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
            Ctl3D = True
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
            OnKeyDown = EdNumFiscalBKeyDown
            OnKeyPress = EdFiscPrevKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inherited PIndividual: TPanel [3]
        Width = 832
        Height = 403
        inherited DBGridCadastroPadrao: TDBGrid
          Top = 48
          Width = 821
          Height = 320
          DataSource = DMCONTA.DWParP
          PopupMenu = Recibo
          TabOrder = 7
          OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
          OnDblClick = DBGridCadastroPadraoDblClick
          OnKeyDown = DBGridCadastroPadraoKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'MARK'
              Title.Caption = 'M'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMPARC'
              Title.Caption = 'Parcela'
              Width = 99
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
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMPAG'
              Title.Caption = 'Pagamento'
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_INTERNO'
              Title.Caption = 'C'#243'd.'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Fornecedor'
              Width = 352
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Class. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Desc. Conta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Visible = True
            end>
        end
        inherited GroupBox3: TGroupBox
          Left = 273
          Height = 38
          TabOrder = 3
        end
        inherited GroupBox4: TGroupBox
          Left = 355
          Height = 38
          TabOrder = 4
        end
        inherited GroupBox5: TGroupBox
          Left = 517
          Width = 173
          Height = 38
          TabOrder = 5
          inherited EDFornecedor: TColorMaskEdit
            Left = 41
            Width = 128
          end
          inherited EdCod_Interno: TColorMaskEdit
            Width = 37
            OnKeyDown = nil
            OnKeyPress = EdCod_InternoKeyPress
          end
        end
        inherited GroupBox13: TGroupBox
          Left = 85
          Width = 72
          Height = 38
          Caption = 'Doc'
          TabOrder = 0
          inherited EdNumParc: TColorMaskEdit
            Width = 64
          end
        end
        inherited EdTotIndividual: TFloatEdit
          Left = 638
          Top = 371
          Width = 188
          TabOrder = 8
        end
        inherited GroupBox14: TGroupBox
          Left = 689
          Width = 136
          inherited EdHistorico: TColorMaskEdit
            Width = 128
          end
        end
        inherited GroupBox17: TGroupBox
          Left = 156
          Top = 3
          Height = 38
          TabOrder = 1
          inherited EdNumBoleto: TColorMaskEdit
            Width = 57
          end
        end
        inherited GroupBox18: TGroupBox
          Left = 223
          Top = 3
          Height = 38
          TabOrder = 2
        end
        inherited GroupBox210: TGroupBox
          Top = 3
          Width = 83
          inherited cbFiltroCobr: TComboBox
            Left = 1
            Width = 81
          end
        end
      end
    end
  end
  inherited PComunica: TPanel [12]
    Left = 162
  end
  inherited QRRECIBO: TQuickRep [13]
    Width = 816
    Height = 1056
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      5.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand3: TQRBand
      Top = 2
      Width = 740
      Height = 439
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      inherited QRDBText23: TQRDBText
        Height = 22
        Size.Values = (
          58.208333333333300000
          10.583333333333300000
          21.166666666666700000
          1939.395833333330000000)
        FontSize = 14
      end
      inherited QRDBText24: TQRDBText
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape10: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
      end
      inherited QRShape11: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
      end
      inherited QRShape12: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape13: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel36: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          595.312500000000000000
          590.020833333333400000)
        FontSize = 10
      end
      inherited QRLabel38: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel39: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape14: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
      end
      inherited QRLabel43: TQRLabel
        Top = 413
        Size.Values = (
          34.395833333333300000
          7.937500000000000000
          1092.729166666670000000
          1942.041666666670000000)
        FontSize = 7
      end
      inherited QRShape18: TQRShape
        Top = 412
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
      end
      inherited QRLabel27: TQRLabel
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        FontSize = 16
      end
      inherited QRLDocumento: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          232.833333333333400000
          232.833333333333400000)
        FontSize = 10
      end
      inherited QRLValor: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333400000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLRiscoAssina: TQRLabel
        Top = 353
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRLAssinatura: TQRLabel
        Top = 370
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRDBText26: TQRDBText
        Left = 127
        Size.Values = (
          44.979166666666670000
          336.020833333333400000
          338.666666666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel29: TQRLabel
        Left = 126
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText25: TQRDBText
        Left = 188
        Size.Values = (
          44.979166666666670000
          497.416666666666700000
          383.645833333333400000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel30: TQRLabel
        Left = 126
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText27: TQRDBText
        Left = 190
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText31: TQRDBText
        Left = 244
        Size.Values = (
          44.979166666666670000
          645.583333333333400000
          595.312500000000000000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRDBText28: TQRDBText
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel31: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRDBText29: TQRDBText
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel32: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel28: TQRLabel
        Top = 423
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1119.187500000000000000
          1942.041666666667000000)
        FontSize = 7
      end
      inherited QRDBText32: TQRDBText
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          232.833333333333400000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRDBText33: TQRDBText
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          232.833333333333400000
          164.041666666666700000)
        FontSize = 10
      end
      inherited QRLIMPORTANCIA: TQRLabel
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel101: TQRLabel
        Top = 273
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          722.312500000000000000
          497.416666666666700000)
        FontSize = 10
      end
      inherited QRHIST2: TQRDBText
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          709.083333333333400000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRDataRec2: TQRLabel
        Size.Values = (
          39.687500000000000000
          1788.583333333333000000
          158.750000000000000000
          92.604166666666680000)
        FontSize = 8
      end
    end
  end
  inherited QRDUPLICATA02: TQuickRep [14]
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2300.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand02: TQRBand
      Size.Values = (
        521.229166666666700000
        1899.708333333333000000)
      inherited QR02COD_INTERNO: TQRDBText
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          132.291666666666700000
          198.437500000000000000)
        FontSize = 9
      end
      inherited QR02NUMDOC: TQRDBText
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          132.291666666666700000
          256.645833333333400000)
        FontSize = 9
      end
      inherited QR02DTVENCIMENTO: TQRDBText
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          240.770833333333300000
          320.145833333333400000)
        FontSize = 10
      end
      inherited QR02VLOR: TQRDBText
        Size.Values = (
          44.979166666666670000
          542.395833333333400000
          240.770833333333300000
          306.916666666666700000)
        FontSize = 10
      end
      inherited QR02NOME: TQRDBText
        Size.Values = (
          44.979166666666670000
          394.229166666666700000
          298.979166666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QR02TEXTO: TQRDBRichText
        Size.Values = (
          95.250000000000000000
          145.520833333333300000
          388.937500000000000000
          830.791666666666800000)
      end
      inherited QR02VALEXT: TQRDBText
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
          349.250000000000000000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QR02JUROS: TQRDBText
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          132.291666666666700000
          301.625000000000000000)
        FontSize = 9
      end
      inherited QR0202VALEXT: TQRDBText
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          349.250000000000000000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QR0202TEXTO: TQRDBRichText
        Size.Values = (
          95.250000000000000000
          1047.750000000000000000
          388.937500000000000000
          830.791666666666800000)
      end
      inherited QR0202DTVENC: TQRDBText
        Size.Values = (
          44.979166666666670000
          1092.729166666667000000
          240.770833333333300000
          320.145833333333400000)
        FontSize = 10
      end
      inherited QR0202VALOR: TQRDBText
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          240.770833333333300000
          306.916666666666700000)
        FontSize = 10
      end
      inherited QR0202NUMDOC: TQRDBText
        Size.Values = (
          44.979166666666670000
          1283.229166666667000000
          132.291666666666700000
          256.645833333333400000)
        FontSize = 9
      end
      inherited QR0202JUROS: TQRDBText
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          132.291666666666700000
          301.625000000000000000)
        FontSize = 9
      end
      inherited QR0202COD_INTERNO: TQRDBText
        Size.Values = (
          44.979166666666670000
          1116.541666666667000000
          132.291666666666700000
          198.437500000000000000)
        FontSize = 9
      end
      inherited QR0202NOME: TQRDBText
        Size.Values = (
          44.979166666666670000
          1042.458333333333000000
          2.645833333333333000
          105.833333333333300000)
        FontSize = 10
      end
      inherited qrlteste: TQRLabel
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          0.000000000000000000
          87.312500000000000000)
        FontSize = 10
      end
    end
  end
  inherited QRReciboCupom: TQuickRep [15]
    Width = 816
    Height = 1056
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      0.000000000000000000
      2159.000000000000000000
      0.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand4: TQRBand
      Width = 778
      Size.Values = (
        849.312500000000000000
        2058.458333333333000000)
      inherited QRDBText34: TQRDBText
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          2.645833333333333000
          714.375000000000000000)
        FontSize = 7
      end
      inherited QRDBText35: TQRDBText
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          29.104166666666670000
          714.375000000000000000)
        FontSize = 7
      end
      inherited QRShape15: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          145.520833333333300000
          714.375000000000000000)
      end
      inherited QRShape16: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          140.229166666666700000
          714.375000000000000000)
      end
      inherited QRShape17: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          63.500000000000000000
          714.375000000000000000)
      end
      inherited QRShape19: TQRShape
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          103.187500000000000000
          714.375000000000000000)
      end
      inherited QRLabel34: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          447.145833333333400000
          500.062500000000100000)
        FontSize = 7
      end
      inherited QRLabel35: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          367.770833333333400000
          304.270833333333400000)
        FontSize = 7
      end
      inherited QRLabel37: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          150.812500000000000000
          240.770833333333300000)
        FontSize = 7
      end
      inherited QRLabel40: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          754.062500000000000000
          714.375000000000000000)
        FontSize = 5
      end
      inherited QRShape21: TQRShape
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          748.770833333333400000
          714.375000000000000000)
      end
      inherited QRLabel41: TQRLabel
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          68.791666666666680000
          714.375000000000000000)
        FontSize = 7
      end
      inherited QRLabel42: TQRLabel
        Size.Values = (
          34.395833333333340000
          5.291666666666667000
          105.833333333333300000
          74.083333333333340000)
        FontSize = 7
      end
      inherited QRLabel44: TQRLabel
        Size.Values = (
          34.395833333333340000
          402.166666666666600000
          105.833333333333300000
          84.666666666666680000)
        FontSize = 7
      end
      inherited QRLabel45: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          486.833333333333400000
          410.104166666666800000)
        FontSize = 7
      end
      inherited QRLabel46: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          658.812500000000000000
          714.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel47: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          703.791666666666800000
          722.312500000000000000)
        FontSize = 7
      end
      inherited QRDBText36: TQRDBText
        Size.Values = (
          44.979166666666670000
          60.854166666666680000
          179.916666666666700000
          89.958333333333340000)
        FontSize = 7
      end
      inherited QRLabel48: TQRLabel
        Size.Values = (
          37.041666666666670000
          5.291666666666667000
          214.312500000000000000
          137.583333333333300000)
        FontSize = 7
      end
      inherited QRDBText37: TQRDBText
        Size.Values = (
          37.041666666666670000
          145.520833333333300000
          216.958333333333400000
          164.041666666666700000)
        FontSize = 7
      end
      inherited QRLabel49: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          296.333333333333400000
          140.229166666666700000)
        FontSize = 7
      end
      inherited QRDBText38: TQRDBText
        Size.Values = (
          44.979166666666670000
          150.812500000000000000
          296.333333333333400000
          108.479166666666700000)
        FontSize = 7
      end
      inherited QRDBText39: TQRDBText
        Size.Values = (
          44.979166666666670000
          515.937500000000000000
          447.145833333333400000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRDBText40: TQRDBText
        Size.Values = (
          44.979166666666670000
          629.708333333333400000
          296.333333333333400000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRLabel50: TQRLabel
        Size.Values = (
          44.979166666666670000
          574.145833333333400000
          296.333333333333400000
          50.270833333333330000)
        FontSize = 7
      end
      inherited QRDBText41: TQRDBText
        Size.Values = (
          44.979166666666670000
          158.750000000000000000
          256.645833333333400000
          132.291666666666700000)
        FontSize = 7
      end
      inherited QRLabel51: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          256.645833333333400000
          153.458333333333300000)
        FontSize = 7
      end
      inherited QRLabel52: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          783.166666666666800000
          714.375000000000000000)
        FontSize = 5
      end
      inherited QRDBText42: TQRDBText
        Size.Values = (
          34.395833333333340000
          82.020833333333340000
          105.833333333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRDBText43: TQRDBText
        Size.Values = (
          34.395833333333340000
          492.124999999999900000
          105.833333333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRLabel53: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          394.229166666666700000
          304.270833333333400000)
        FontSize = 7
      end
      inherited QRShape20: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          481.541666666666700000
          714.375000000000000000)
      end
    end
  end
  inherited QRDUPLICATA: TQuickRep [16]
    Left = 304
    Top = 573
    Width = 816
    Height = 529
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      10.000000000000000000
      1400.000000000000000000
      10.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRIMPDUPLICATA: TQRBand
      Top = 4
      Width = 740
      Height = 508
      Size.Values = (
        1344.083333333333000000
        1957.916666666667000000)
      inherited DBTituloPrim: TQRDBText
        Left = 4
        Top = 8
        Width = 733
        Size.Values = (
          58.208333333333300000
          10.583333333333300000
          21.166666666666700000
          1939.395833333330000000)
        FontSize = 14
      end
      inherited DBTituloSec: TQRDBText
        Left = 6
        Width = 731
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape3: TQRShape
        Size.Values = (
          2.645833333333330000
          7.937500000000000000
          156.104166666667000000
          1942.041666666670000000)
      end
      inherited QRShape1: TQRShape
        Size.Values = (
          2.645833333333330000
          7.937500000000000000
          164.041666666667000000
          1942.041666666670000000)
      end
      inherited QRLabel1: TQRLabel
        Size.Values = (
          44.979166666666700000
          21.166666666666700000
          211.666666666667000000
          341.312500000000000000)
        FontSize = 10
      end
      inherited QRLabel2: TQRLabel
        Left = 632
        Size.Values = (
          44.979166666666700000
          1672.166666666670000000
          211.666666666667000000
          275.166666666667000000)
        FontSize = 10
      end
      inherited QRLabel3: TQRLabel
        Size.Values = (
          44.979166666666700000
          423.333333333333000000
          211.666666666667000000
          238.125000000000000000)
        FontSize = 10
      end
      inherited QRLabel4: TQRLabel
        Size.Values = (
          44.979166666666700000
          656.166666666667000000
          211.666666666667000000
          338.666666666667000000)
        FontSize = 10
      end
      inherited QRLabel5: TQRLabel
        Size.Values = (
          44.979166666666700000
          1016.000000000000000000
          211.666666666667000000
          232.833333333333000000)
        FontSize = 10
      end
      inherited QRLabel6: TQRLabel
        Left = 488
        Size.Values = (
          44.979166666666700000
          1291.166666666670000000
          211.666666666667000000
          357.187500000000000000)
        FontSize = 10
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.645833333333330000
          7.937500000000000000
          349.250000000000000000
          1942.041666666670000000)
      end
      inherited QRShape4: TQRShape
        Size.Values = (
          2.645833333333330000
          7.937500000000000000
          357.187500000000000000
          1942.041666666670000000)
      end
      inherited QRDBText1: TQRDBText
        Size.Values = (
          44.979166666666700000
          21.166666666666700000
          275.166666666667000000
          341.312500000000000000)
        Font.Height = -13
        FontSize = 10
      end
      inherited QRDBText2: TQRDBText
        Left = 160
        Width = 89
        Size.Values = (
          44.979166666666700000
          423.333333333333000000
          275.166666666667000000
          235.479166666667000000)
        Font.Height = -13
        FontSize = 10
      end
      inherited QRDBText3: TQRDBText
        Size.Values = (
          44.979166666666700000
          656.166666666667000000
          275.166666666667000000
          341.312500000000000000)
        Font.Height = -13
        FontSize = 10
      end
      inherited QRDBText4: TQRDBText
        Size.Values = (
          44.979166666666700000
          1016.000000000000000000
          275.166666666667000000
          235.479166666667000000)
        Font.Height = -13
        FontSize = 10
      end
      inherited QRDBText5: TQRDBText
        Left = 488
        Size.Values = (
          44.979166666666700000
          1291.166666666670000000
          275.166666666667000000
          362.479166666667000000)
        FontSize = 10
      end
      inherited QRDBText6: TQRDBText
        Left = 632
        Size.Values = (
          44.979166666666700000
          1672.166666666670000000
          275.166666666667000000
          277.812500000000000000)
        FontSize = 10
      end
      inherited QRLabel8: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          666.750000000000000000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel9: TQRLabel
        Left = 608
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          523.875000000000000000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRLabel10: TQRLabel
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          523.875000000000000000
          84.666666666666680000)
        FontSize = 10
      end
      inherited QRLabel11: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          595.312500000000000000
          902.229166666666800000)
        FontSize = 10
      end
      inherited QRLabel12: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          523.875000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel13: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          452.437500000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel14: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          381.000000000000000000
          277.812500000000000000)
        FontSize = 10
      end
      inherited QRShape5: TQRShape
        Size.Values = (
          2.645833333333330000
          7.937500000000000000
          735.541666666667000000
          1942.041666666670000000)
      end
      inherited QRSysData1: TQRSysData
        Left = 24
        Top = 453
        Size.Values = (
          44.979166666666700000
          63.500000000000000000
          1198.562500000000000000
          365.125000000000000000)
        FontSize = 10
      end
      inherited QRShape6: TQRShape
        Top = 469
        Size.Values = (
          2.645833333333330000
          42.333333333333300000
          1240.895833333330000000
          362.479166666667000000)
      end
      inherited QRLabel15: TQRLabel
        Left = 24
        Top = 470
        Size.Values = (
          44.979166666666700000
          63.500000000000000000
          1243.541666666670000000
          365.125000000000000000)
        FontSize = 8
      end
      inherited QRShape7: TQRShape
        Left = 488
        Top = 469
        Size.Values = (
          2.645833333333330000
          1291.166666666670000000
          1240.895833333330000000
          619.125000000000000000)
      end
      inherited QRLabel16: TQRLabel
        Left = 488
        Top = 470
        Size.Values = (
          44.979166666666700000
          1291.166666666670000000
          1243.541666666670000000
          621.770833333333000000)
        FontSize = 8
      end
      inherited QRShape8: TQRShape
        Left = 220
        Top = 469
        Size.Values = (
          2.645833333333330000
          582.083333333333000000
          1240.895833333330000000
          621.770833333333000000)
      end
      inherited QRLabel17: TQRLabel
        Left = 220
        Top = 470
        Size.Values = (
          44.979166666666700000
          582.083333333333000000
          1243.541666666670000000
          621.770833333333000000)
        FontSize = 8
      end
      inherited QRDBText7: TQRDBText
        Size.Values = (
          44.979166666666670000
          351.895833333333400000
          381.000000000000000000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRDBText8: TQRDBText
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          452.437500000000000000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRDBText9: TQRDBText
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          523.875000000000000000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText10: TQRDBText
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          523.875000000000000000
          74.083333333333340000)
        FontSize = 10
      end
      inherited QRDBText11: TQRDBText
        Left = 656
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          523.875000000000000000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRDBText12: TQRDBText
        Size.Values = (
          44.979166666666670000
          224.895833333333300000
          666.750000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBRichText1: TQRDBRichText
        Top = 282
        Height = 50
        Size.Values = (
          132.291666666667000000
          42.333333333333300000
          746.125000000000000000
          1865.312500000000000000)
      end
      inherited QRDBText13: TQRDBText
        Top = 333
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          881.062500000000000000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QRShape9: TQRShape
        Top = 491
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1299.104166666670000000
          1942.041666666670000000)
      end
      inherited QRLabel7: TQRLabel
        Left = 608
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          381.000000000000000000
          140.229166666666700000)
        FontSize = 10
      end
      inherited QRDBText14: TQRDBText
        Left = 661
        Size.Values = (
          44.979166666666670000
          1748.895833333334000000
          381.000000000000000000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QRRODAPEDUPLICATA: TQRDBRichText
        Top = 492
        Width = 739
        Height = 16
        Size.Values = (
          42.333333333333340000
          0.000000000000000000
          1301.750000000000000000
          1955.270833333333000000)
      end
      inherited QRHIST3: TQRDBText
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          746.125000000000000000
          185.208333333333300000)
        FontSize = 10
      end
    end
  end
  inherited QRFinalSimples: TQuickRep [17]
    Top = 592
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand6: TQRBand
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      inherited QRDBText62: TQRDBText
        Size.Values = (
          60.854166666666680000
          10.583333333333330000
          21.166666666666670000
          1939.395833333333000000)
        FontSize = 14
      end
      inherited QRDBText63: TQRDBText
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape34: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
      end
      inherited QRShape35: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
      end
      inherited QRShape36: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape37: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel84: TQRLabel
        Size.Values = (
          47.625000000000000000
          42.333333333333340000
          552.979166666666700000
          590.020833333333400000)
        FontSize = 10
      end
      inherited QRLabel86: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel87: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape38: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          714.375000000000000000
          1942.041666666667000000)
      end
      inherited QRLabel88: TQRLabel
        Size.Values = (
          34.395833333333300000
          7.937500000000000000
          1092.729166666670000000
          1942.041666666670000000)
        FontSize = 7
      end
      inherited QRShape39: TQRShape
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
      end
      inherited QRLabel89: TQRLabel
        Top = 51
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        FontSize = 16
      end
      inherited QRLabel90: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          232.833333333333400000
          232.833333333333400000)
        FontSize = 10
      end
      inherited QRLabel91: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333400000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel92: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          722.312500000000000000
          431.270833333333400000)
        FontSize = 10
      end
      inherited QRLabel93: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRLabel94: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRDBText64: TQRDBText
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel95: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText65: TQRDBText
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          383.645833333333400000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel96: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText66: TQRDBText
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText67: TQRDBText
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel97: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRDBText68: TQRDBText
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel98: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel99: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1119.187500000000000000
          1942.041666666667000000)
        FontSize = 7
      end
      inherited QrlVlrImportancia: TQRLabel
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRVLRSimples: TQRLabel
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          87.312500000000000000)
        FontSize = 10
      end
      inherited QRDBText69: TQRDBText
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          235.479166666666700000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRRDocumento: TQRRichText
        Size.Values = (
          87.312500000000000000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
      end
      inherited QRDataRec1: TQRLabel
        Size.Values = (
          39.687500000000000000
          1785.937500000000000000
          158.750000000000000000
          92.604166666666680000)
        FontSize = 8
      end
    end
  end
  inherited PBotoes: TPanel [18]
    Left = 817
    Height = 22
  end
  inherited QRReciboGFinal: TQuickRep [19]
    Width = 816
    Height = 1056
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBRecFin: TQRBand
      Width = 740
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      inherited QRDBText54: TQRDBText
        Size.Values = (
          60.854166666666680000
          10.583333333333330000
          21.166666666666670000
          1939.395833333333000000)
        FontSize = 14
      end
      inherited QRDBText55: TQRDBText
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape28: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
      end
      inherited QRShape29: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
      end
      inherited QRShape30: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape31: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel69: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          560.916666666666800000
          590.020833333333400000)
        FontSize = 10
      end
      inherited QRLabel70: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel71: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape32: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
      end
      inherited QRLabel72: TQRLabel
        Size.Values = (
          34.395833333333300000
          7.937500000000000000
          1092.729166666670000000
          1942.041666666670000000)
        FontSize = 7
      end
      inherited QRShape33: TQRShape
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
      end
      inherited QRLabel73: TQRLabel
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        FontSize = 16
      end
      inherited QRLabel74: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          232.833333333333400000
          232.833333333333400000)
        FontSize = 10
      end
      inherited QRLabel75: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333400000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel76: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          722.312500000000000000
          460.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel77: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRLabel78: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRDBText56: TQRDBText
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel79: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText57: TQRDBText
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          383.645833333333400000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel80: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText58: TQRDBText
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText60: TQRDBText
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel81: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRDBText61: TQRDBText
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel82: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel83: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1119.187500000000000000
          1942.041666666667000000)
        FontSize = 7
      end
      inherited QRLImportanciaF: TQRLabel
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel85: TQRLabel
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          171.979166666666700000)
        FontSize = 10
      end
      inherited QRDBText59: TQRDBText
        Size.Values = (
          44.979166666666670000
          645.583333333333400000
          560.916666666666800000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRRDocumentos: TQRRichText
        Size.Values = (
          66.145833333333340000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
      end
      inherited QRDataRec4: TQRLabel
        Size.Values = (
          39.687500000000000000
          1788.583333333333000000
          158.750000000000000000
          92.604166666666680000)
        FontSize = 8
      end
    end
  end
  inherited QRReciboValor: TQuickRep
    Width = 816
    Height = 1056
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBandReciboValor: TQRBand
      Width = 740
      Size.Values = (
        1214.437500000000000000
        1957.916666666667000000)
      inherited QRDBText45: TQRDBText
        Size.Values = (
          58.208333333333300000
          10.583333333333300000
          21.166666666666700000
          1939.395833333330000000)
        FontSize = 14
      end
      inherited QRDBText46: TQRDBText
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape22: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
      end
      inherited QRShape23: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
      end
      inherited QRShape24: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape25: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel54: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          595.312500000000000000
          590.020833333333300000)
        FontSize = 10
      end
      inherited QRLabel55: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel56: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape26: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
      end
      inherited QRLabel57: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1124.479166666667000000
          1942.041666666667000000)
        FontSize = 7
      end
      inherited QRShape27: TQRShape
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          1121.833333333333000000
          1942.041666666667000000)
      end
      inherited QRLabel58: TQRLabel
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        FontSize = 16
      end
      inherited QRLabel59: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel60: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333300000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel61: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          762.000000000000000000
          460.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel62: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          965.729166666666800000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRLabel63: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          1010.708333333333000000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRDBText47: TQRDBText
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel64: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText48: TQRDBText
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          383.645833333333300000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel65: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText49: TQRDBText
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText50: TQRDBText
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          595.312500000000000000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRDBText51: TQRDBText
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel66: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRDBText52: TQRDBText
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel67: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel68: TQRLabel
        Size.Values = (
          34.395833333333340000
          7.937500000000000000
          1150.937500000000000000
          1942.041666666667000000)
        FontSize = 7
      end
      inherited QRDBText53: TQRDBText
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          232.833333333333300000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRDBText85: TQRDBText
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          232.833333333333300000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRLabel127: TQRLabel
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRDBText90: TQRDBText
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          706.437500000000000000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel128: TQRLabel
        Size.Values = (
          39.687500000000000000
          1796.520833333333000000
          158.750000000000000000
          92.604166666666670000)
        FontSize = 8
      end
    end
  end
  inherited QRCarne: TQuickRep [21]
    Top = 573
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      26.458333333333330000
      2100.000000000000000000
      60.007500000000000000
      0.000000000000000000
      0.000000000000000000)
    inherited QRBandCarne: TQRBand
      Size.Values = (
        912.812500000000000000
        2039.937500000000000000)
      inherited QRShape40: TQRShape
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          21.166666666666670000
          5.291666666666667000)
      end
      inherited QRlbAg: TQRLabel
        Size.Values = (
          52.916666666666670000
          381.000000000000000000
          21.166666666666670000
          100.541666666666700000)
        FontSize = 11
      end
      inherited QRShape41: TQRShape
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          21.166666666666670000
          5.291666666666667000)
      end
      inherited QRShape42: TQRShape
        Size.Values = (
          894.291666666666800000
          550.333333333333400000
          5.291666666666667000
          2.645833333333333000)
      end
      inherited QRlbAg2: TQRLabel
        Size.Values = (
          52.916666666666670000
          846.666666666666700000
          21.166666666666670000
          100.541666666666700000)
        FontSize = 11
      end
      inherited lbLinhaDig: TQRLabel
        Size.Values = (
          52.916666666666670000
          997.479166666666700000
          21.166666666666670000
          875.770833333333300000)
        FontSize = 10
      end
      inherited QRShape43: TQRShape
        Size.Values = (
          44.979166666666670000
          825.500000000000100000
          21.166666666666670000
          5.291666666666667000)
      end
      inherited QRShape44: TQRShape
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          21.166666666666670000
          5.291666666666667000)
      end
      inherited QRLabellocal: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          74.083333333333330000
          177.270833333333300000)
        FontSize = 5
      end
      inherited QRShape45: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          124.354166666666700000
          1463.145833333333000000)
      end
      inherited QRLbv: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          74.083333333333330000
          103.187500000000000000)
        FontSize = 5
      end
      inherited QRShape46: TQRShape
        Size.Values = (
          476.250000000000000000
          1693.333333333333000000
          71.437500000000000000
          2.645833333333333000)
      end
      inherited QRShape47: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          177.270833333333300000
          1463.145833333333000000)
      end
      inherited QRLbagced: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          127.000000000000000000
          227.541666666666700000)
        FontSize = 5
      end
      inherited usobcn: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          232.833333333333300000
          124.354166666666700000)
        FontSize = 5
      end
      inherited vlordoc: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          232.833333333333300000
          201.083333333333300000)
        FontSize = 5
      end
      inherited QRShape48: TQRShape
        Size.Values = (
          55.562500000000000000
          740.833333333333400000
          230.187500000000000000
          2.645833333333333000)
      end
      inherited QRShape49: TQRShape
        Size.Values = (
          55.562500000000000000
          910.166666666666600000
          230.187500000000000000
          2.645833333333333000)
      end
      inherited carteira: TQRLabel
        Size.Values = (
          21.166666666666670000
          931.333333333333300000
          232.833333333333300000
          68.791666666666670000)
        FontSize = 5
      end
      inherited QRShape50: TQRShape
        Size.Values = (
          55.562500000000000000
          1132.416666666667000000
          230.187500000000000000
          2.645833333333333000)
      end
      inherited especie: TQRLabel
        Size.Values = (
          21.166666666666670000
          1143.000000000000000000
          232.833333333333300000
          74.083333333333330000)
        FontSize = 5
      end
      inherited QRShape51: TQRShape
        Size.Values = (
          55.562500000000000000
          1259.416666666667000000
          230.187500000000000000
          2.645833333333333000)
      end
      inherited qunt: TQRLabel
        Size.Values = (
          21.166666666666670000
          1270.000000000000000000
          232.833333333333300000
          100.541666666666700000)
        FontSize = 5
      end
      inherited cip: TQRLabel
        Size.Values = (
          21.166666666666670000
          762.000000000000000000
          232.833333333333300000
          34.395833333333330000)
        FontSize = 5
      end
      inherited QRdtdoc: TQRLabel
        Size.Values = (
          21.166666666666670000
          568.854166666666700000
          179.916666666666700000
          142.875000000000000000)
        FontSize = 5
      end
      inherited QRShape52: TQRShape
        Size.Values = (
          55.562500000000000000
          762.000000000000000000
          177.270833333333300000
          2.645833333333333000)
      end
      inherited QRlbndoc: TQRLabel
        Size.Values = (
          21.166666666666670000
          783.166666666666700000
          179.916666666666700000
          150.812500000000000000)
        FontSize = 5
      end
      inherited QRShape53: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          230.187500000000000000
          1463.145833333333000000)
      end
      inherited QRShape54: TQRShape
        Size.Values = (
          55.562500000000000000
          1079.500000000000000000
          177.270833333333300000
          2.645833333333333000)
      end
      inherited QRLbespd: TQRLabel
        Size.Values = (
          21.166666666666670000
          1100.666666666667000000
          179.916666666666700000
          174.625000000000000000)
        FontSize = 5
      end
      inherited QRShape55: TQRShape
        Size.Values = (
          55.562500000000000000
          1322.916666666667000000
          177.270833333333300000
          2.645833333333333000)
      end
      inherited QRLaceite: TQRLabel
        Size.Values = (
          21.166666666666670000
          1333.500000000000000000
          179.916666666666700000
          58.208333333333330000)
        FontSize = 5
      end
      inherited QRShape56: TQRShape
        Size.Values = (
          55.562500000000000000
          1471.083333333333000000
          177.270833333333300000
          2.645833333333333000)
      end
      inherited dtproc: TQRLabel
        Size.Values = (
          21.166666666666670000
          1481.666666666667000000
          179.916666666666700000
          156.104166666666700000)
        FontSize = 5
      end
      inherited nossonum: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          179.916666666666700000
          127.000000000000000000)
        FontSize = 5
      end
      inherited QRShape57: TQRShape
        Size.Values = (
          55.562500000000000000
          1471.083333333333000000
          230.187500000000000000
          2.645833333333333000)
      end
      inherited valor: TQRLabel
        Size.Values = (
          21.166666666666670000
          1481.666666666667000000
          232.833333333333300000
          47.625000000000000000)
        FontSize = 5
      end
      inherited QRShape58: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          336.020833333333400000
          1463.145833333333000000)
      end
      inherited vlrdesc: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          285.750000000000000000
          134.937500000000000000)
        FontSize = 5
      end
      inherited QRShape59: TQRShape
        Size.Values = (
          55.562500000000000000
          910.166666666666600000
          283.104166666666700000
          2.645833333333333000)
      end
      inherited QRLabel108: TQRLabel
        Size.Values = (
          21.166666666666670000
          3040.062500000000000000
          1219.729166666667000000
          116.416666666666700000)
        FontSize = 5
      end
      inherited QRShape60: TQRShape
        Size.Values = (
          55.562500000000000000
          1333.500000000000000000
          283.104166666666700000
          2.645833333333333000)
      end
      inherited QRLabel109: TQRLabel
        Size.Values = (
          34.395833333333340000
          4640.791666666667000000
          1219.729166666667000000
          222.250000000000000000)
        FontSize = 5
      end
      inherited descaba: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          285.750000000000000000
          216.958333333333300000)
        FontSize = 5
      end
      inherited QRShape61: TQRShape
        Size.Values = (
          2.645833333333333000
          1693.333333333333000000
          441.854166666666700000
          341.312500000000000000)
      end
      inherited out: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          338.666666666666700000
          171.979166666666700000)
        FontSize = 5
      end
      inherited QRShape62: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          283.104166666666700000
          1463.145833333333000000)
      end
      inherited QRShape63: TQRShape
        Size.Values = (
          2.645833333333333000
          1693.333333333333000000
          494.770833333333400000
          341.312500000000000000)
      end
      inherited QRShape64: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          547.687500000000000000
          1463.145833333333000000)
      end
      inherited QRShape65: TQRShape
        Size.Values = (
          2.645833333333333000
          1693.333333333333000000
          388.937500000000000000
          341.312500000000000000)
      end
      inherited multa: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          391.583333333333300000
          124.354166666666700000)
        FontSize = 5
      end
      inherited acre: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          444.500000000000000000
          190.500000000000000000)
        FontSize = 5
      end
      inherited cobra: TQRLabel
        Size.Values = (
          21.166666666666670000
          1714.500000000000000000
          497.416666666666700000
          150.812500000000000000)
        FontSize = 5
      end
      inherited inst: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          338.666666666666700000
          113.770833333333300000)
        FontSize = 5
      end
      inherited sacado: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          550.333333333333400000
          84.666666666666680000)
        FontSize = 5
      end
      inherited saca: TQRLabel
        Size.Values = (
          34.395833333333340000
          571.500000000000000000
          664.104166666666800000
          190.500000000000000000)
        FontSize = 7
      end
      inherited QRShape66: TQRShape
        Size.Values = (
          2.645833333333333000
          571.500000000000000000
          693.208333333333400000
          1463.145833333333000000)
      end
      inherited auten: TQRLabel
        Size.Values = (
          29.104166666666670000
          1735.666666666667000000
          695.854166666666800000
          224.895833333333300000)
        FontSize = 6
      end
      inherited ficha: TQRLabel
        Size.Values = (
          39.687500000000000000
          1685.395833333333000000
          857.250000000000000000
          338.666666666666700000)
        FontSize = 8
      end
      inherited perman: TQRLabel
        Size.Values = (
          21.166666666666670000
          1354.666666666667000000
          285.750000000000000000
          222.250000000000000000)
        FontSize = 5
      end
      inherited descate: TQRLabel
        Size.Values = (
          21.166666666666670000
          918.104166666666700000
          285.750000000000000000
          116.416666666666700000)
        FontSize = 5
      end
      inherited parcela: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          74.083333333333330000
          68.791666666666670000)
        FontSize = 5
      end
      inherited venc: TQRLabel
        Size.Values = (
          21.166666666666670000
          306.916666666666700000
          74.083333333333330000
          103.187500000000000000)
        FontSize = 5
      end
      inherited QRShape67: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          124.354166666666700000
          404.812500000000000000)
      end
      inherited QRShape68: TQRShape
        Size.Values = (
          47.625000000000000000
          296.333333333333400000
          76.729166666666680000
          2.645833333333333000)
      end
      inherited QRLbced: TQRLabel
        Size.Values = (
          21.166666666666670000
          571.500000000000000000
          127.000000000000000000
          74.083333333333330000)
        FontSize = 5
      end
      inherited agced: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          127.000000000000000000
          227.541666666666700000)
        FontSize = 5
      end
      inherited QRShape69: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          177.270833333333300000
          404.812500000000000000)
      end
      inherited QRShape70: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          230.187500000000000000
          404.812500000000000000)
      end
      inherited QRShape71: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          283.104166666666700000
          404.812500000000000000)
      end
      inherited QRShape72: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          336.020833333333400000
          404.812500000000000000)
      end
      inherited QRShape73: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          388.937500000000000000
          404.812500000000000000)
      end
      inherited QRShape74: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          441.854166666666700000
          404.812500000000000000)
      end
      inherited QRShape75: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          494.770833333333400000
          404.812500000000000000)
      end
      inherited QRShape76: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          547.687500000000000000
          404.812500000000000000)
      end
      inherited cedente: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          179.916666666666700000
          74.083333333333330000)
        FontSize = 5
      end
      inherited valrcod: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          232.833333333333300000
          201.083333333333300000)
        FontSize = 5
      end
      inherited descabat: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          285.750000000000000000
          216.958333333333300000)
        FontSize = 5
      end
      inherited aotrasd: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          338.666666666666700000
          171.979166666666700000)
        FontSize = 5
      end
      inherited moramulta: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          391.583333333333300000
          124.354166666666700000)
        FontSize = 5
      end
      inherited ace: TQRLabel
        Size.Values = (
          26.458333333333330000
          137.583333333333300000
          444.500000000000000000
          190.500000000000000000)
        FontSize = 5
      end
      inherited vlrcob: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          497.416666666666700000
          150.812500000000000000)
        FontSize = 5
      end
      inherited QRShape77: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          600.604166666666800000
          404.812500000000000000)
      end
      inherited QRShape78: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          656.166666666666800000
          404.812500000000000000)
      end
      inherited numd: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          603.250000000000000000
          150.812500000000000000)
        FontSize = 5
      end
      inherited nosnum: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          550.333333333333400000
          127.000000000000000000)
        FontSize = 5
      end
      inherited sacad: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          658.812500000000000000
          84.666666666666680000)
        FontSize = 5
      end
      inherited QRShape79: TQRShape
        Size.Values = (
          2.645833333333333000
          127.000000000000000000
          783.166666666666800000
          404.812500000000000000)
      end
      inherited ReciboCarne: TQRLabel
        Left = 69
        Size.Values = (
          39.687500000000000000
          182.562500000000000000
          791.104166666666800000
          256.645833333333400000)
        FontSize = 8
      end
      inherited verso: TQRLabel
        Size.Values = (
          39.687500000000000000
          174.625000000000000000
          833.437500000000000000
          272.520833333333400000)
        FontSize = 7
      end
      inherited QRLbLocalPagtoComp: TQRLabel
        Top = 34
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          89.958333333333330000
          957.791666666666700000)
        FontSize = 7
      end
      inherited QRShape80: TQRShape
        Size.Values = (
          2.645833333333333000
          105.833333333333300000
          896.937500000000000000
          1992.312500000000000000)
      end
      inherited lbCedente: TQRLabel
        Top = 54
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          142.875000000000000000
          113.770833333333300000)
        FontSize = 7
      end
      inherited lbDtVenc: TQRLabel
        Left = 722
        Top = 34
        Size.Values = (
          34.395833333333330000
          1910.291666666667000000
          89.958333333333330000
          103.187500000000000000)
        FontSize = 7
      end
      inherited lbAgCodCed: TQRLabel
        Top = 54
        Size.Values = (
          34.395833333333330000
          1714.500000000000000000
          142.875000000000000000
          140.229166666666700000)
        FontSize = 7
      end
      inherited lbDtDoc: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          195.791666666666700000
          92.604166666666670000)
        FontSize = 7
      end
      inherited lbNumDoc: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          783.166666666666700000
          195.791666666666700000
          119.062500000000000000)
        FontSize = 7
      end
      inherited lbEspDoc: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          1143.000000000000000000
          195.791666666666700000
          108.479166666666700000)
        FontSize = 7
      end
      inherited lbAceite: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          1352.020833333333000000
          195.791666666666700000
          89.958333333333330000)
        FontSize = 7
      end
      inherited lbDtProcesso: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          1524.000000000000000000
          195.791666666666700000
          150.812500000000000000)
        FontSize = 7
      end
      inherited lbNossoNum: TQRLabel
        Top = 74
        Size.Values = (
          34.395833333333330000
          1714.500000000000000000
          195.791666666666700000
          145.520833333333300000)
        FontSize = 7
      end
      inherited lbCarteira: TQRLabel
        Top = 94
        Size.Values = (
          34.395833333333330000
          963.083333333333300000
          248.708333333333300000
          108.479166666666700000)
        FontSize = 7
      end
      inherited lbEspecie: TQRLabel
        Top = 94
        Size.Values = (
          34.395833333333330000
          1143.000000000000000000
          248.708333333333300000
          108.479166666666700000)
        FontSize = 7
      end
      inherited lbQuantidade: TQRLabel
        Top = 94
        Size.Values = (
          34.395833333333330000
          1270.000000000000000000
          248.708333333333300000
          145.520833333333300000)
        FontSize = 7
      end
      inherited lbValor: TQRLabel
        Top = 94
        Size.Values = (
          34.395833333333330000
          1598.083333333333000000
          248.708333333333300000
          76.729166666666670000)
        FontSize = 7
      end
      inherited lbNomeSacado: TQRLabel
        Top = 214
        Size.Values = (
          39.687500000000000000
          568.854166666666700000
          566.208333333333400000
          216.958333333333400000)
        FontSize = 8
      end
      inherited lbBairroCidCepPlan: TQRLabel
        Top = 238
        Size.Values = (
          39.687500000000000000
          568.854166666666700000
          629.708333333333400000
          283.104166666666700000)
        FontSize = 8
      end
      inherited lbDtVenc2: TQRLabel
        Left = 152
        Top = 34
        Width = 44
        Size.Values = (
          34.395833333333330000
          402.166666666666700000
          89.958333333333330000
          116.416666666666700000)
        FontSize = 7
      end
      inherited lbAgCodCed2: TQRLabel
        Width = 58
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          142.875000000000000000
          153.458333333333300000)
        FontSize = 7
      end
      inherited lbCedente2: TQRLabel
        Width = 48
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          195.791666666666700000
          127.000000000000000000)
        FontSize = 7
      end
      inherited lbNossoNum2: TQRLabel
        Width = 60
        Size.Values = (
          34.395833333333340000
          148.166666666666700000
          566.208333333333400000
          158.750000000000000000)
        FontSize = 7
      end
      inherited lbNumDoc2: TQRLabel
        Width = 50
        Size.Values = (
          34.395833333333340000
          148.166666666666700000
          619.125000000000000000
          132.291666666666700000)
        FontSize = 7
      end
      inherited lbSacador2: TQRLabel
        Left = 56
        Size.Values = (
          34.395833333333340000
          148.166666666666700000
          685.270833333333400000
          124.354166666666700000)
        FontSize = 7
      end
      inherited lbCPF2: TQRLabel
        Left = 56
        Size.Values = (
          34.395833333333340000
          148.166666666666700000
          727.604166666666800000
          84.666666666666680000)
        FontSize = 7
      end
      inherited lbValorDoc2: TQRLabel
        Left = 152
        Width = 51
        Size.Values = (
          34.395833333333330000
          402.166666666666700000
          248.708333333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited lbValorDoc: TQRLabel
        Left = 715
        Top = 94
        Size.Values = (
          34.395833333333330000
          1891.770833333333000000
          248.708333333333300000
          121.708333333333300000)
        FontSize = 7
      end
      inherited lbParcela: TQRLabel
        Top = 34
        Width = 39
        Size.Values = (
          34.395833333333330000
          127.000000000000000000
          89.958333333333330000
          103.187500000000000000)
        FontSize = 7
      end
      inherited ImCodBarra: TQRImage
        Size.Values = (
          145.520833333333300000
          571.500000000000000000
          709.083333333333400000
          1029.229166666667000000)
      end
      inherited lbEnd: TQRLabel
        Top = 225
        Size.Values = (
          39.687500000000000000
          568.854166666666700000
          595.312500000000000000
          82.020833333333340000)
        FontSize = 8
      end
      inherited imBanco: TQRDBImage
        Size.Values = (
          71.437500000000000000
          571.500000000000000000
          0.000000000000000000
          214.312500000000000000)
      end
      inherited imBanco1: TQRDBImage
        Size.Values = (
          71.437500000000000000
          127.000000000000000000
          0.000000000000000000
          214.312500000000000000)
      end
      inherited lbCpf: TQRLabel
        Top = 214
        Size.Values = (
          39.687500000000000000
          1479.020833333333000000
          566.208333333333400000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QrlCarneInst01: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          359.833333333333300000
          1098.020833333333000000)
        FontSize = 7
      end
      inherited QrlCarneInst02: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          391.583333333333300000
          1098.020833333333000000)
        FontSize = 7
      end
      inherited QrlCarneInst03: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          423.333333333333300000
          1098.020833333333000000)
        FontSize = 7
      end
      inherited QrlCarneInst04: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          455.083333333333300000
          1098.020833333333000000)
        FontSize = 7
      end
      inherited QrlCarneInst05: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          486.833333333333300000
          1098.020833333333000000)
        FontSize = 7
      end
    end
  end
  inherited MemoAuxiliarInstrucao: TRichEdit [22]
  end
  inherited FSRel: TfrReport
    Left = 512
    Top = 74
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMFINANC.DRel
    Left = 472
    Top = 74
  end
  inherited PMREL: TPopupMenu
    Left = 520
    object Fornecedores: TMenuItem
      Caption = 'Fornecedores'
      OnClick = FornecedoresClick
    end
    object Mensal: TMenuItem
      Caption = 'Mensal'
      OnClick = MensalClick
    end
    object Data: TMenuItem
      Caption = 'Data'
      OnClick = DataClick
    end
    object RelaodosPagamentos: TMenuItem
      Caption = 'Rela'#231#227'o dos Pagamentos'
      OnClick = RelaodosPagamentosClick
    end
    object PagamentodePreviso: TMenuItem
      Caption = 'Pagamento de Previs'#227'o'
      OnClick = PagamentodePrevisoClick
    end
    object RelCtasPagarFornecedor: TMenuItem
      Caption = 'Rel. Ctas. Pagar/Fornecedor'
      OnClick = RelCtasPagarFornecedorClick
    end
    object RelatrioCtasRateio: TMenuItem
      Caption = 'Relat'#243'rio Ctas. Rateio'
      OnClick = RelatrioCtasRateioClick
    end
    object Recibo1: TMenuItem
      Caption = 'Recibo'
      OnClick = Recibo1Click
    end
    object CtasapagarVencidas1: TMenuItem
      Caption = 'Ctas a pagar Vencidas'
      OnClick = CtasapagarVencidas1Click
    end
  end
  object frRecibo: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 564
    Top = 72
    ReportForm = {18000000}
  end
  object Recibo: TPopupMenu
    Left = 644
    Top = 80
    object Recibo2: TMenuItem
      Caption = 'Recibo'
      OnClick = Recibo2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      OnClick = DesmarcarTodas1Click
    end
    object Filtrarcontasmarcadas1: TMenuItem
      Caption = 'Filtrar contas marcadas'
      OnClick = Filtrarcontasmarcadas1Click
    end
    object AgruparContasSelecionadas1: TMenuItem
      Caption = 'Agrupar Contas Selecionadas'
      OnClick = AgruparContasSelecionadas1Click
    end
  end
end
