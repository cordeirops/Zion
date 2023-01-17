inherited FLanCHSaida: TFLanCHSaida
  Left = 338
  Top = 145
  Caption = 'FLanCHSaida'
  ClientHeight = 494
  ClientWidth = 642
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel [0]
    Width = 616
    Height = 475
    inherited Panel2: TPanel [0]
      Left = 5
      Top = 75
      Width = 612
      Height = 368
      inherited TCConsultCH: TFlatTabControl
        Left = 6
        Top = 86
        Height = 280
        inherited PNMov: TPanel
          Top = 18
          Width = 605
          Height = 261
          inherited DBGNMOV: TDBGrid
            Width = 598
            Height = 262
            DataSource = DMBANCO.DWMovB
            Font.Color = clBlack
            PopupMenu = PopupMenu1
            OnDrawColumnCell = DBGNMOVDrawColumnCell
            OnDblClick = DBGNMOVDblClick
            OnKeyDown = DBGNMOVKeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'MARK'
                Title.Alignment = taCenter
                Title.Caption = 'X'
                Width = 21
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' Cheque'
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
                FieldName = 'DTLANC'
                Title.Caption = 'Dt. Lan'#231
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORALANC'
                Title.Caption = 'Hr. Lan'#231
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DTMOV'
                Title.Caption = 'Movimento'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSIFICACAO'
                Title.Caption = 'Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_USUARIO'
                Visible = False
              end>
          end
        end
        inherited PMov: TPanel
          Height = 261
          inherited DBGMOV: TDBGrid
            Height = 260
            DataSource = DMBANCO.DMovBanco
            OnDrawColumnCell = DBGMOVDrawColumnCell
            OnKeyDown = DBGMOVKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'MARK'
                Title.Caption = 'X'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTLANC'
                Title.Caption = 'Dt. Lan'#231'.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORALANC'
                Title.Caption = 'Hr. Lan'#231'.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTMOV'
                Title.Caption = 'Movimento'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSIFICACAO'
                Title.Caption = 'Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end>
          end
        end
        inherited PVenc: TPanel
          Top = 15
          Height = 261
          inherited DBGVENC: TDBGrid
            Width = 598
            Height = 260
            DataSource = DMBANCO.DWMovB
            OnDrawColumnCell = DBGVENCDrawColumnCell
            OnKeyDown = DBGVENCKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMCHEQUE'
                Title.Caption = 'N'#186' Cheque'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTLANC'
                Title.Caption = 'Dt Lan'#231'.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORALANC'
                Title.Caption = 'Hr. Lan'#231'.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTMOV'
                Title.Caption = 'Movimento'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CLASSIFICACAO'
                Title.Caption = 'Conta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COD_USUARIO'
                Title.Caption = 'Usu'#225'rio'
                Visible = True
              end>
          end
        end
      end
      inherited PPesquisa: TPanel
        Left = 3
        Top = 36
        inherited GroupBox6: TGroupBox
          inherited EDNUMCHQ: TColorMaskEdit
            Color = clMenu
          end
        end
        inherited GroupBox8: TGroupBox
          Width = 204
          inherited EDHIST: TColorMaskEdit
            Width = 194
          end
        end
      end
    end
    inherited GroupBox1: TGroupBox [1]
      Left = 8
      Top = 86
    end
    inherited DBGridCadastroPadrao: TDBGrid [2]
      Left = 8
      Top = 136
      Height = 306
    end
    inherited EDTotal: TFloatEdit [3]
      Top = 443
    end
    inherited Painel: TPanel [4]
      inherited BtnRelatorio: TBitBtn
        PopupMenu = PopupMenu1
        OnClick = BtnRelatorioClick
      end
    end
    object DBGCTACOR: TDBGrid
      Left = 11
      Top = 50
      Width = 596
      Height = 59
      BorderStyle = bsNone
      Color = 15794175
      Ctl3D = False
      DataSource = DMBANCO.DWCtaCor
      FixedColor = 13750737
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeMode = imClose
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnCellClick = DBGCTACORCellClick
      OnKeyUp = DBGCTACORKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'AGENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'CONTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'BANCO'
          Width = 551
          Visible = True
        end>
    end
  end
  inherited PComunica: TPanel
    Top = 75
  end
  inherited PCadastro: TPanel [2]
    Height = 478
    inherited PLancmult: TPanel [0]
      Height = 444
      Color = 16772332
      inherited DBGParc: TDBGrid
        Height = 235
      end
      inherited FrmBusca2: TFrmBusca
        Color = 16772332
        inherited LUZOPEN: TShape
          Left = 543
        end
        inherited LUZMINUS: TShape
          Left = 561
        end
        inherited BTNMINUS: TBitBtn
          Left = 562
        end
      end
    end
    inherited Panel4: TPanel
      Width = 613
      Height = 443
    end
    inherited PLanUnic: TPanel [2]
      Height = 444
      inherited Label7: TLabel
        Top = 89
        Width = 111
        Height = 16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
      end
      inherited Label9: TLabel
        Left = 159
        Top = 89
        Width = 101
        Height = 16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
      end
      inherited Label1: TLabel
        Top = 146
        Width = 101
        Height = 16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
      end
      inherited Label2: TLabel
        Left = 514
        Top = 89
        Width = 61
        Height = 16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
      end
      object Label10: TLabel [4]
        Left = 32
        Top = 201
        Width = 131
        Height = 16
        Caption = 'Destinat'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited FrmBusca1: TFrmBusca
        Width = 556
        inherited LUZOPEN: TShape
          Left = 497
        end
        inherited LUZMINUS: TShape
          Left = 515
        end
        inherited EdDescricao: TFlatEdit
          Width = 424
        end
        inherited BTNOPEN: TBitBtn
          Left = 498
        end
        inherited BTNMINUS: TBitBtn
          Left = 516
        end
      end
      inherited DBDTVENC: TDBColorEdit
        Top = 339
        TabOrder = 7
        Visible = False
      end
      inherited DBNUMCHEQUEEMIT: TDBColorEdit
        Left = 157
        Top = 339
        TabOrder = 8
        Visible = False
      end
      inherited DBColorEdit3: TDBColorEdit
        Top = 365
        Width = 541
        DataField = 'HISTORICO'
        TabOrder = 10
        Visible = False
      end
      inherited DBColorEdit4: TDBColorEdit
        Left = 368
        Top = 339
        DataField = 'VALOR'
        TabOrder = 9
        Visible = False
      end
      inherited RGMOVIMENTO: TRadioGroup
        Top = 263
        TabOrder = 6
      end
      object DBColorEdit1: TDBColorEdit
        Left = 33
        Top = 394
        Width = 541
        Height = 22
        Ctl3D = False
        DataField = 'DESTINATARIOCH'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Visible = False
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVencimentoCheque: TColorMaskEdit
        Left = 35
        Top = 107
        Width = 120
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'EdVencimentoCheque'
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdNumCheque: TColorMaskEdit
        Left = 160
        Top = 107
        Width = 193
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'ColorMaskEdit1'
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdHistoricoCheque: TColorMaskEdit
        Left = 35
        Top = 165
        Width = 542
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'ColorMaskEdit1'
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDestinatarioCheque: TColorMaskEdit
        Left = 35
        Top = 216
        Width = 542
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'ColorMaskEdit1'
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorCheque: TColorEditFloat
        Left = 360
        Top = 107
        Width = 217
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      object DBAgencia: TDBText [0]
        Left = 524
        Top = 8
        Width = 86
        Height = 19
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'DESCBANCO'
        DataSource = DMBANCO.DWCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBNumConta: TDBText [1]
        Left = 400
        Top = 8
        Width = 112
        Height = 19
        Alignment = taRightJustify
        DataField = 'NUMCTACOR'
        DataSource = DMBANCO.DWCtaCor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited PMNovo: TPopupMenu
    Left = 333
    Top = 26
  end
  object PopupMenu1: TPopupMenu
    Left = 363
    Top = 26
    object Cheque: TMenuItem
      Caption = 'Imp. Cheque'
      OnClick = ChequeClick
    end
    object VisualizarRelatrio1: TMenuItem
      Caption = 'Visualizar Relat'#243'rio'
      OnClick = VisualizarRelatrio1Click
    end
  end
end
