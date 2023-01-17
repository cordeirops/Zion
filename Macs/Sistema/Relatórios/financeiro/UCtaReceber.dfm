inherited FCtaReceber: TFCtaReceber
  Left = 214
  Top = 134
  Hint = ' o'
  Caption = 'FCtaReceber'
  ClientHeight = 549
  ClientWidth = 897
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 894
    Height = 515
  end
  inherited LCaixa: TLabel
    Left = 741
    Top = 532
  end
  inherited LUsuario: TLabel
    Left = 576
    Top = 532
  end
  inherited ShapeRodape1: TShape
    Left = 733
    Top = 532
  end
  inherited ShapeRodape2: TShape
    Left = 735
    Top = 532
  end
  inherited LDescTitulo: TLabel
    Left = 515
    Width = 127
    Caption = 'Contas a Receber'
  end
  inherited PConsultParc: TPanel [9]
    Width = 868
    Height = 490
    inherited Label15: TLabel
      Left = 584
    end
    object Label30: TLabel [5]
      Left = 8
      Top = 336
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
    object Label33: TLabel [6]
      Left = 144
      Top = 336
      Width = 209
      Height = 16
      Caption = 'Texto Complementar do Boleto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel [7]
      Left = 8
      Top = 384
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
    object Label31: TLabel [8]
      Left = 7
      Top = 432
      Width = 107
      Height = 16
      Caption = 'Conta Corrente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel [9]
      Left = 346
      Top = 223
      Width = 78
      Height = 16
      Caption = 'Valor Prod.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel [10]
      Left = 444
      Top = 223
      Width = 79
      Height = 16
      Caption = 'Valor Serv.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    inherited GroupBox7: TGroupBox [11]
      TabOrder = 13
      inherited DBText1: TDBText
        DataField = 'COBRANCA'
        DataSource = DMCONTA.DWCtaR
      end
      inherited DBText2: TDBText
        DataField = 'DTLANC'
        DataSource = DMCONTA.DWCtaR
      end
      inherited DBText3: TDBText
        DataField = 'NOME'
        DataSource = DMCONTA.DWParR
      end
      inherited DBText4: TDBText
        DataField = 'DESCRICAO'
        DataSource = DMCONTA.DWParR
      end
      inherited DBText5: TDBText
        DataField = 'HISTORICO'
        DataSource = DMCONTA.DWCtaR
      end
      inherited DBDocumento: TDBText
        DataField = 'NUMDOC'
        DataSource = DMCONTA.DWCtaR
      end
    end
    inherited Panel2: TPanel [12]
      TabOrder = 14
    end
    inherited DBColorEdit1: TDBColorEdit
      DataField = 'DTVENC'
      DataSource = DMCONTA.DParcCR
    end
    inherited DBColorEdit2: TDBColorEdit
      DataField = 'VALOR'
      DataSource = DMCONTA.DParcCR
    end
    inherited DBColorEdit4: TDBColorEdit
      Width = 527
      DataField = 'HISTORICO'
      DataSource = DMCONTA.DParcCR
      TabOrder = 6
    end
    inherited DBColorComboBox1: TDBColorComboBox
      Left = 584
      DataSource = DMCONTA.DParcCR
      Items.Strings = (
        'Carteira'
        'Cheque'
        'Banco')
      TabOrder = 5
    end
    inherited Panel8: TPanel
      Width = 865
      TabOrder = 12
    end
    inherited RGJuros2: TRadioGroup
      Left = 550
      Top = 289
      Width = 211
      TabOrder = 7
    end
    inherited DBColorEdit5: TDBColorEdit
      DataField = 'DTREF'
      DataSource = DMCONTA.DParcCR
    end
    object DBBoleto: TDBColorEdit
      Left = 8
      Top = 354
      Width = 121
      Height = 24
      DataField = 'NUMBOLETO'
      DataSource = DMCONTA.DParcCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBMemo1: TDBMemo
      Left = 144
      Top = 352
      Width = 617
      Height = 123
      DataField = 'TEXTOBLT'
      DataSource = DMCONTA.DParcCR
      TabOrder = 11
    end
    object DBFiscal: TDBColorEdit
      Left = 8
      Top = 402
      Width = 121
      Height = 24
      DataField = 'NUMFISC'
      DataSource = DMCONTA.DParcCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object ENomeConta: TEdit
      Left = 7
      Top = 449
      Width = 122
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = 'ENomeConta'
    end
    object DBColorEdit3: TDBColorEdit
      Left = 346
      Top = 243
      Width = 88
      Height = 24
      Color = clWhite
      Ctl3D = True
      DataField = 'VALORPROD'
      DataSource = DMCONTA.DParcCR
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = DBColorEdit3Exit
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBColorEdit6: TDBColorEdit
      Left = 444
      Top = 243
      Width = 88
      Height = 24
      Color = clWhite
      Ctl3D = True
      DataField = 'VALORSERV'
      DataSource = DMCONTA.DParcCR
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  inherited PCADASTRO: TPanel [10]
    Left = 11
    Width = 871
    Height = 491
    inherited Panel4: TPanel [0]
      Width = 864
      Height = 455
      object lbNumeroCartao: TLabel [6]
        Left = 529
        Top = 99
        Width = 60
        Height = 16
        Caption = 'N'#186' Cart'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      inherited PBanco: TPanel
        Left = 426
        Top = 91
        TabOrder = 20
      end
      inherited RGTipo: TRadioGroup
        TabOrder = 21
      end
      inherited GroupBox9: TGroupBox
        Width = 855
        Height = 270
        TabOrder = 19
        inherited DBGrid3: TDBGrid
          Left = 0
          Width = 855
          Height = 254
          DataSource = DMCONTA.DParcCR
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMPARC'
              Title.Caption = 'N'#186' Parcela'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMBOLETO'
              Title.Caption = 'N'#186' Boleto'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Title.Caption = 'Venc.:'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTREF'
              Title.Caption = 'Ref.:'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPROD'
              Title.Caption = 'Vlr. Produto'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORSERV'
              Title.Caption = 'Vlr. Servi'#231'o'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Width = 277
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COBRANCA'
              PickList.Strings = (
                'Carteira'
                'Cheque'
                'Banco')
              Title.Caption = 'Cobran'#231'a'
              Width = 109
              Visible = True
            end>
        end
      end
      inherited Panel7: TPanel
        Left = 723
        Top = 157
        Width = 131
        TabOrder = 16
        inherited btngerar: TBitBtn
          Width = 127
        end
      end
      inherited DBMOEDA: TDBLookupComboBox
        TabOrder = 17
      end
      inherited DBNumDoc: TDBColorEdit
        DataField = 'NUMDOC'
        DataSource = DMCONTA.DCtaR
        TabOrder = 6
      end
      inherited FrmCliFor: TFrmBusca
        inherited LTextoBusca: TLabel
          Width = 44
          Caption = 'Cliente:'
        end
      end
      inherited frmFormPag: TFrmBusca
        Width = 339
        TabOrder = 8
        inherited LUZOPEN: TShape
          Left = 297
        end
        inherited LUZMINUS: TShape
          Left = 315
        end
        inherited EdDescricao: TFlatEdit
          Left = 62
          Width = 237
        end
        inherited BTNOPEN: TBitBtn
          Left = 299
        end
        inherited BTNMINUS: TBitBtn
          Left = 317
        end
        inherited EDCodigo: TFlatEdit
          Width = 59
          OnKeyPress = frmFormPagEDCodigoKeyPress
        end
      end
      inherited RGJuros: TRadioGroup
        Left = 716
        Width = 117
        TabOrder = 15
      end
      inherited DBHISTORICO: TEdit
        TabOrder = 2
        OnKeyPress = DBHISTORICOKeyPress
      end
      inherited DBCobranca: TComboBox
        TabOrder = 3
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
        Left = 354
        TabOrder = 9
      end
      inherited EdDiaMes: TColorEditFloat
        Left = 355
        TabOrder = 10
      end
      inherited CdDtReferencia: TCheckBox
        Left = 473
        Top = 170
        TabOrder = 11
      end
      inherited PCartoes: TPanel
        TabOrder = 22
      end
      object RBDuplicata: TRadioButton
        Left = 591
        Top = 155
        Width = 68
        Height = 17
        Caption = 'Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object RBBoleto: TRadioButton
        Left = 591
        Top = 171
        Width = 68
        Height = 17
        Caption = 'Boleto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = RBBoletoExit
      end
      object edNumeroCartao: TEdit
        Left = 527
        Top = 116
        Width = 121
        Height = 21
        MaxLength = 15
        TabOrder = 18
        Visible = False
      end
      object RdCarne: TRadioButton
        Left = 663
        Top = 155
        Width = 57
        Height = 17
        Caption = 'Carn'#234
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = RdCarneExit
      end
    end
    inherited Panel1: TPanel [1]
      Width = 864
    end
  end
  inherited PCONSULTA: TPanel [11]
    Left = 11
    Width = 871
    Height = 490
    object PCartao: TPanel [0]
      Left = 5
      Top = 65
      Width = 859
      Height = 421
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 4
      Visible = False
      object Bevel7: TBevel
        Left = 4
        Top = 393
        Width = 171
        Height = 24
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        ParentShowHint = False
        ShowHint = True
      end
      object Label37: TLabel
        Left = 9
        Top = 402
        Width = 74
        Height = 13
        Hint = 'Simula'#231#227'o individual por parcela selecionada'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Bevel8: TBevel
        Left = 86
        Top = 396
        Width = 4
        Height = 19
      end
      object Label38: TLabel
        Left = 95
        Top = 402
        Width = 74
        Height = 13
        Hint = 'Simula'#231#227'o individual por parcela selecionada'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label39: TLabel
        Left = 138
        Top = 394
        Width = 31
        Height = 10
        Hint = 'Simula'#231#227'o individual por parcela selecionada'
        Alignment = taRightJustify
        Caption = 'MULTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label40: TLabel
        Left = 53
        Top = 394
        Width = 30
        Height = 10
        Hint = 'Simula'#231#227'o individual por parcela selecionada'
        Alignment = taRightJustify
        Caption = 'JUROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Bevel9: TBevel
        Left = 178
        Top = 393
        Width = 353
        Height = 23
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        ParentShowHint = False
        ShowHint = True
      end
      object Label41: TLabel
        Left = 404
        Top = 402
        Width = 122
        Height = 13
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Bevel10: TBevel
        Left = 392
        Top = 395
        Width = 4
        Height = 19
      end
      object Label42: TLabel
        Left = 206
        Top = 402
        Width = 74
        Height = 13
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label43: TLabel
        Left = 315
        Top = 402
        Width = 74
        Height = 13
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Bevel11: TBevel
        Left = 282
        Top = 395
        Width = 4
        Height = 19
      end
      object Label44: TLabel
        Left = 251
        Top = 395
        Width = 27
        Height = 10
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        Caption = 'JUROS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label45: TLabel
        Left = 362
        Top = 395
        Width = 27
        Height = 10
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        Caption = 'MULTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label46: TLabel
        Left = 472
        Top = 395
        Width = 51
        Height = 10
        Hint = 'Simula'#231#227'o por parcelas acumuladas'
        Alignment = taRightJustify
        Caption = 'TOTAL FINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Bevel12: TBevel
        Left = 126
        Top = 634
        Width = 208
        Height = 24
        Hint = 'Simula'#231#227'o individual por parcela selecionada'
        ParentShowHint = False
        ShowHint = True
      end
      object Panel6: TPanel
        Left = 5
        Top = 181
        Width = 344
        Height = 161
        Color = 16772332
        TabOrder = 9
        Visible = False
        OnExit = PBoletoManualExit
        object Label48: TLabel
          Left = 15
          Top = 12
          Width = 227
          Height = 16
          Caption = 'Controle de Boletos em Bancos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 16
          Top = 46
          Width = 68
          Height = 16
          Caption = 'Num. Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 143
          Top = 47
          Width = 89
          Height = 16
          Caption = 'Conta Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 143
          Top = 64
          Width = 183
          Height = 21
          ItemHeight = 13
          TabOrder = 1
        end
        object BitBtn17: TBitBtn
          Left = 110
          Top = 120
          Width = 106
          Height = 25
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = BtnGravaClick
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
        object BitBtn18: TBitBtn
          Left = 225
          Top = 120
          Width = 99
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = BitBtn14Click
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
        object Edit1: TEdit
          Left = 16
          Top = 64
          Width = 105
          Height = 21
          TabOrder = 0
        end
      end
      object DbgCartoes: TDBGrid
        Left = 4
        Top = 88
        Width = 850
        Height = 300
        Color = 15794175
        Ctl3D = False
        FixedColor = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridCadastroPadraoCellClick
        OnDrawColumnCell = DbgCartoesDrawColumnCell
        OnDblClick = DbgCartoesDblClick
        OnKeyDown = DBGridCadastroPadraoKeyDown
        OnKeyUp = DBGridCadastroPadraoKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'MARK'
            Title.Caption = 'M'
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
            FieldName = 'DESCRICAO'
            Title.Caption = 'Cart'#227'o'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANDEIRA'
            Title.Caption = 'Bandeira'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCARTAO'
            Title.Caption = 'N'#250'mero'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMPARC'
            Title.Caption = 'Doc.'
            Width = 72
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
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 262
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
            FieldName = 'HISTORICO'
            Title.Caption = 'Hist'#243'rico'
            Visible = True
          end>
      end
      object GroupBox23: TGroupBox
        Left = 248
        Top = 3
        Width = 94
        Height = 39
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
        object EdDtLancCartao: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 86
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
          OnKeyPress = EdDtLancCartaoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox24: TGroupBox
        Left = 152
        Top = 3
        Width = 89
        Height = 79
        Caption = 'Venc.'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        object EdVencCartao01: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 78
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
          OnKeyPress = EdVencCartao01KeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVencCartao02: TColorMaskEdit
          Left = 4
          Top = 45
          Width = 76
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
          TabOrder = 1
          Text = '  /  /    '
          OnKeyPress = EdVencCartao01KeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox30: TGroupBox
        Left = 348
        Top = 3
        Width = 254
        Height = 39
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
        object EdPessoaCartao: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 245
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
          OnKeyPress = EdPessoaCartaoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox31: TGroupBox
        Left = 248
        Top = 42
        Width = 94
        Height = 39
        Caption = 'Doc'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object EdDocCartao: TColorMaskEdit
          Left = 3
          Top = 13
          Width = 90
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
          OnKeyPress = EdDocCartaoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object FloatEdit1: TFloatEdit
        Left = 656
        Top = 391
        Width = 199
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
      object GroupBox32: TGroupBox
        Left = 607
        Top = 3
        Width = 248
        Height = 39
        Caption = 'Hist'#243'rico'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        object EdHistoricoCartao: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 239
          Height = 24
          Hint = 
            'Press ENTER para filtrar. Press ESC para mostrar todos ordenados' +
            '. Pressione Ctrl+Enter para procurar pelo n'#250'mero do cart'#227'o'
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
          OnKeyPress = EdHistoricoCartaoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox35: TGroupBox
        Left = 4
        Top = 3
        Width = 141
        Height = 39
        Caption = 'Cobran'#231'a'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object CBCobrancaCartao: TComboBox
          Left = 3
          Top = 15
          Width = 134
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = 'Todos'
          OnClick = cbFiltroCobrClick
          OnSelect = CBCobrancaCartaoSelect
          Items.Strings = (
            'Todos'
            'C - Cart'#227'o'
            'D - Cart'#227'o')
        end
      end
      object GroupBox33: TGroupBox
        Left = 4
        Top = 43
        Width = 141
        Height = 39
        Caption = 'Bandeira'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        object CBBandeira: TComboBox
          Left = 3
          Top = 15
          Width = 134
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Text = 'Todos'
          OnClick = cbFiltroCobrClick
          OnKeyPress = cbFiltroCobrKeyPress
          OnSelect = CBBandeiraSelect
          Items.Strings = (
            'Todos'
            'Visa'
            'Visa Electron'
            'Maestro'
            'MasterCard'
            'Cabal'
            'Sicredi'
            'Multi'
            'American Express'
            'Sodexo'
            'Visa Vale'
            'Hipercard'
            'Diners'
            'Avista'
            'Sorocred'
            'Discover'
            'Mais!'
            'OUTROS')
        end
      end
    end
    object PSPC: TPanel [1]
      Left = 4
      Top = 68
      Width = 771
      Height = 391
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 3
      Visible = False
      object DBGrid6: TDBGrid
        Left = 4
        Top = 50
        Width = 756
        Height = 309
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
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 7
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
            Width = 90
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
            FieldName = 'NUMFISC'
            Title.Caption = 'Fiscal'
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
          end
          item
            Expanded = False
            FieldName = 'COBRANCA'
            Title.Caption = 'Cobran'#231'a'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
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
            Width = 56
            Visible = True
          end>
      end
      object GroupBox20: TGroupBox
        Left = 230
        Top = 4
        Width = 85
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
        object EDDTLancSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 78
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
          OnKeyPress = EDDTLancSCPCKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox21: TGroupBox
        Left = 316
        Top = 4
        Width = 85
        Height = 37
        Caption = 'Venc.'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object EdDTVencSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 78
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
          OnKeyPress = EdDTVencSCPCKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox25: TGroupBox
        Left = 402
        Top = 4
        Width = 252
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
        object EDPessoaSCPC: TColorMaskEdit
          Left = 3
          Top = 13
          Width = 244
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
          OnKeyPress = EDFornecedorKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox26: TGroupBox
        Left = 4
        Top = 4
        Width = 93
        Height = 37
        Caption = 'Documento'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object EdDocSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 85
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
          OnKeyPress = EdDocSCPCKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object EdTotalSCPC: TFloatEdit
        Left = 576
        Top = 360
        Width = 182
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
      object GroupBox27: TGroupBox
        Left = 655
        Top = 4
        Width = 105
        Height = 37
        Caption = 'Hist'#243'rico'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        object EDHistoricoSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 97
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
          TabOrder = 0
          OnKeyDown = EDLANCAMENTOKeyDown
          OnKeyPress = EdHistoricoKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox28: TGroupBox
        Left = 99
        Top = 4
        Width = 78
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
        object EdBoletoSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 70
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
          OnKeyDown = EdNumBoletoBKeyDown
          OnKeyPress = EdBoletoSCPCKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox29: TGroupBox
        Left = 178
        Top = 4
        Width = 51
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
        object EdFiscSCPC: TColorMaskEdit
          Left = 4
          Top = 13
          Width = 44
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
          OnKeyPress = EdFiscSCPCKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
    end
    inherited PFiltrarParcelas: TPanel
      Left = 296
      inherited BtnFiltrarFiltro: TBitBtn
        Left = 154
      end
      object BitBtn13: TBitBtn [12]
        Left = 228
        Top = 192
        Width = 75
        Height = 25
        BiDiMode = bdLeftToRight
        Caption = 'Fi&ltrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 7
        OnClick = BtnFiltrarFiltroClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      inherited BitBtn15: TBitBtn
        TabOrder = 8
        Spacing = 1
      end
    end
    inherited Painel: TPanel [3]
      Width = 864
      inherited BtnRelatorio: TBitBtn
        PopupMenu = RelCtaReceber
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Visible = False
      end
      object BtnFaturaContas: TBitBtn
        Left = 747
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
        OnClick = BtnFaturaContasClick
      end
    end
    inherited TCConsultContas: TFlatTabControl [4]
      Width = 863
      Height = 440
      Tabs.Strings = (
        '&Pendentes (T'#237'tulos em Aberto)'
        '&Agrupados por refer'#234'ncia'
        'Bai&xados (T'#237'tulos que foram Baixados)'
        '&Confer'#234'ncia'
        '&Remessa'
        '&SCPC'
        'Car&t'#227'o')
      object PConfere: TPanel [0]
        Left = 1
        Top = 17
        Width = 859
        Height = 420
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 3
        Visible = False
        object Label19: TLabel
          Left = 121
          Top = 56
          Width = 29
          Height = 20
          Caption = 'At'#233':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 8
          Top = 56
          Width = 25
          Height = 20
          Caption = 'De:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 8
          Top = 80
          Width = 61
          Height = 20
          Caption = 'N'#186' Parc.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdDtConfere1: TColorMaskEdit
          Left = 38
          Top = 56
          Width = 80
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
          TabOrder = 1
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object RGFiltroDt: TRadioGroup
          Left = 8
          Top = 2
          Width = 226
          Height = 53
          Caption = ' Filtrar '
          Columns = 3
          Ctl3D = True
          ItemIndex = 2
          Items.Strings = (
            'Dt. Venc.'
            'Dt. D'#233'bito'
            'Livre')
          ParentCtl3D = False
          TabOrder = 0
        end
        object EdDtConfere2: TColorMaskEdit
          Left = 154
          Top = 56
          Width = 80
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
          TabOrder = 2
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object RGFiltroCtas: TRadioGroup
          Left = 235
          Top = 2
          Width = 79
          Height = 74
          Caption = 'Contas'
          Ctl3D = True
          ItemIndex = 2
          Items.Strings = (
            'Fechadas'
            'Abertas'
            'Todas')
          ParentCtl3D = False
          TabOrder = 3
        end
        object RgOrdem: TRadioGroup
          Left = 315
          Top = 2
          Width = 202
          Height = 74
          Caption = 'Ordenar por '
          Columns = 2
          Ctl3D = True
          ItemIndex = 0
          Items.Strings = (
            'N'#186' Parcela'
            'Dt. Vencimento'
            'Dt. D'#233'bito'
            'Hist'#243'rico')
          ParentCtl3D = False
          TabOrder = 4
        end
        object BtnFiltraMark: TBitBtn
          Left = 519
          Top = 8
          Width = 131
          Height = 22
          Caption = 'FILTRAR'
          TabOrder = 5
          OnClick = BtnFiltraMarkClick
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
        object BitBtn5: TBitBtn
          Left = 519
          Top = 29
          Width = 131
          Height = 22
          Caption = 'DESMARC. TODOS'
          TabOrder = 6
          OnClick = BitBtn5Click
          Glyph.Data = {
            4E010000424D4E01000000000000760000002800000012000000120000000100
            040000000000D800000000000000000000001000000000000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777770000007777717777747777770000007777111777444777770000007771
            7177777474777700000077177777777777477700000071777000000077747700
            000071770788888807747700000017770F77777807774700000017770F777778
            07774700000017770F77777807774700000017770F7777780777470000001777
            0F77777807774700000071770FFFFFF707747700000071777000000077747700
            0000771777777777774777000000777171777774747777000000777711177744
            477777000000777771777774777777000000}
        end
        object BitBtn6: TBitBtn
          Left = 519
          Top = 50
          Width = 131
          Height = 22
          Caption = 'MARCAR TODOS'
          TabOrder = 7
          OnClick = BitBtn6Click
          Glyph.Data = {
            36030000424D360300000000000036000000280000000F000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000007F7F007F
            7F00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
            0000000000007F7F007F7F000000000000007F7F007F7F00000000000000BFBF
            BFBFBFBFBFBFBF0000000000000000007F7F007F7F00000000000000FFFFFFFF
            FFFF0000000000007F7F007F7F00000000000000BFBFBF0000000000007F7F00
            000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000000000007F7F
            007F7F00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F
            7F7F0000FF0000FF0000FFFFFFFF000000000000000000000000BFBFBF7F7F7F
            000000FFFFFFFFFFFFBFBFBF7F7F7F0000FF0000FF0000FF0000FF7F7F7FFFFF
            FF0000000000000000007F7F7F7F0000FF00000000000000007F7F7FFFFFFF00
            00FFFFFFFFFFFFFF0000FF0000FF000000BFBFBFBFBFBF0000007F7F7FFF0000
            FF0000FF0000FF0000000000000000FFFFFFFFFFFF0000000000000000FF0000
            FFBFBFBFBFBFBF0000007F7F7FFF0000FF0000007F00007F00007F00007F0000
            0000000000FF0000FF00000000000000FF0000FFBFBFBF0000007F7F7FFF0000
            007F00007F00007F00007F00007F00FF0000007F00FF0000007F00000000BFBF
            BF0000FFBFBFBF0000007F7F7FFF0000FFFFFF007F00007F00FF0000007F0000
            7F00FF0000007F00007F00000000BFBFBFBFBFBFBFBFBF000000BFBFBF7F7F7F
            007F00FFFFFF007F00FF0000FF0000FF0000FF0000007F007F7F7F7F7F7FBFBF
            BFBFBFBFBFBFBF000000BFBFBF7F7F7FFF0000007F00FFFFFF007F00007F0000
            7F00007F00007F00000000BFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
            7F7F7F7F7F7FFF0000FFFFFF007F00007F007F7F7F000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
        end
        object BitBtn4: TBitBtn
          Left = 650
          Top = 8
          Width = 112
          Height = 22
          Caption = 'Imp. Marcados'
          TabOrder = 8
          OnClick = BitBtn4Click
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
        object BitBtn7: TBitBtn
          Left = 650
          Top = 29
          Width = 112
          Height = 22
          Caption = 'Imp. Desmarc.'
          TabOrder = 9
          OnClick = BitBtn7Click
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
        object EdNumParcMark: TColorMaskEdit
          Left = 78
          Top = 80
          Width = 123
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
          TabOrder = 10
          OnKeyPress = EdNumParcMarkKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      inherited PIndividual: TPanel
        Width = 859
        Height = 421
        object Bevel6: TBevel [0]
          Left = 4
          Top = 393
          Width = 171
          Height = 24
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          ParentShowHint = False
          ShowHint = True
        end
        object LTotJuro: TLabel [1]
          Left = 9
          Top = 402
          Width = 74
          Height = 13
          Hint = 'Simula'#231#227'o individual por parcela selecionada'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Bevel4: TBevel [2]
          Left = 86
          Top = 396
          Width = 4
          Height = 19
        end
        object LTotMulta: TLabel [3]
          Left = 95
          Top = 402
          Width = 74
          Height = 13
          Hint = 'Simula'#231#227'o individual por parcela selecionada'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label22: TLabel [4]
          Left = 138
          Top = 394
          Width = 31
          Height = 10
          Hint = 'Simula'#231#227'o individual por parcela selecionada'
          Alignment = taRightJustify
          Caption = 'MULTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label27: TLabel [5]
          Left = 53
          Top = 394
          Width = 30
          Height = 10
          Hint = 'Simula'#231#227'o individual por parcela selecionada'
          Alignment = taRightJustify
          Caption = 'JUROS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Bevel1: TBevel [6]
          Left = 178
          Top = 393
          Width = 353
          Height = 23
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          ParentShowHint = False
          ShowHint = True
        end
        object LTotJurMultaCalc: TLabel [7]
          Left = 404
          Top = 402
          Width = 122
          Height = 13
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Bevel2: TBevel [8]
          Left = 392
          Top = 395
          Width = 4
          Height = 19
        end
        object LTotJuroCalc: TLabel [9]
          Left = 206
          Top = 402
          Width = 74
          Height = 13
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object LTotMultaCalc: TLabel [10]
          Left = 315
          Top = 402
          Width = 74
          Height = 13
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Bevel3: TBevel [11]
          Left = 282
          Top = 395
          Width = 4
          Height = 19
        end
        object Label23: TLabel [12]
          Left = 251
          Top = 395
          Width = 27
          Height = 10
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          Caption = 'JUROS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label24: TLabel [13]
          Left = 362
          Top = 395
          Width = 27
          Height = 10
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          Caption = 'MULTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label25: TLabel [14]
          Left = 472
          Top = 395
          Width = 51
          Height = 10
          Hint = 'Simula'#231#227'o por parcelas acumuladas'
          Alignment = taRightJustify
          Caption = 'TOTAL FINAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Bevel5: TBevel [15]
          Left = 126
          Top = 634
          Width = 208
          Height = 24
          Hint = 'Simula'#231#227'o individual por parcela selecionada'
          ParentShowHint = False
          ShowHint = True
        end
        object PBoletoManual: TPanel [16]
          Left = 5
          Top = 181
          Width = 344
          Height = 161
          Color = 16772332
          TabOrder = 11
          Visible = False
          OnExit = PBoletoManualExit
          object Label26: TLabel
            Left = 15
            Top = 12
            Width = 227
            Height = 16
            Caption = 'Controle de Boletos em Bancos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 16
            Top = 46
            Width = 68
            Height = 16
            Caption = 'Num. Doc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 143
            Top = 47
            Width = 89
            Height = 16
            Caption = 'Conta Corrente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CBContaCor: TComboBox
            Left = 143
            Top = 64
            Width = 183
            Height = 21
            ItemHeight = 13
            TabOrder = 1
          end
          object BtnGrava: TBitBtn
            Left = 110
            Top = 120
            Width = 106
            Height = 25
            Caption = 'Gravar'
            TabOrder = 2
            OnClick = BtnGravaClick
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
          object BitBtn14: TBitBtn
            Left = 225
            Top = 120
            Width = 99
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 3
            OnClick = BitBtn14Click
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
          object DBENumDoc: TEdit
            Left = 16
            Top = 64
            Width = 105
            Height = 21
            TabOrder = 0
          end
        end
        inherited DBGridCadastroPadrao: TDBGrid
          Top = 88
          Width = 850
          Height = 300
          PopupMenu = PopupMenu1
          TabOrder = 9
          OnCellClick = DBGridCadastroPadraoCellClick
          OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
          OnDblClick = DBGridCadastroPadraoDblClick
          OnKeyDown = DBGridCadastroPadraoKeyDown
          OnKeyUp = DBGridCadastroPadraoKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'MARK'
              Title.Caption = 'M'
              Width = 16
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMPARC'
              Title.Caption = 'Parcela'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCTA'
              Title.Caption = 'N'#250'm. Conta'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANC'
              Title.Caption = 'Lan'#231'amento'
              Width = 64
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
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPG'
              Title.Caption = 'Pago'
              Visible = False
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
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_INTERNO'
              Title.Caption = 'C'#243'd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Class. Conta'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Desc. Conta'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Title.Caption = 'Hist'#243'rico'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_CTACOR'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NUMCARTAO'
              Title.Caption = 'N'#186' Cart'#227'o'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Title.Caption = 'Vendedor'
              Width = 95
              Visible = True
            end>
        end
        inherited GroupBox3: TGroupBox
          Left = 206
          Width = 85
          Height = 39
          TabOrder = 4
          inherited EDLANCAMENTO: TColorMaskEdit
            Width = 78
          end
        end
        inherited GroupBox4: TGroupBox
          Left = 296
          Width = 89
          Height = 79
          Caption = 'Venc.'
          TabOrder = 5
          inherited EdVencimento: TColorMaskEdit
            Width = 78
          end
          inherited edvencimento2: TColorMaskEdit
            Left = 4
            Top = 45
          end
        end
        inherited GroupBox5: TGroupBox
          Left = 391
          Width = 202
          Height = 79
          TabOrder = 6
          inherited EDFornecedor: TColorMaskEdit
            Left = 4
            Top = 45
            Width = 192
            TabOrder = 1
          end
          inherited EdCod_Interno: TColorMaskEdit
            Left = 4
            Width = 85
            TabOrder = 0
            OnKeyDown = nil
            OnKeyPress = EdCod_InternoKeyPress
          end
        end
        inherited GroupBox13: TGroupBox
          Left = 4
          Top = 42
          Width = 94
          Height = 39
          Caption = 'Doc'
          TabOrder = 1
          inherited EdNumParc: TColorMaskEdit
            Left = 3
            Width = 90
          end
        end
        inherited EdTotIndividual: TFloatEdit
          Left = 656
          Top = 391
          Width = 199
          TabOrder = 10
        end
        inherited GroupBox14: TGroupBox
          Left = 600
          Width = 254
          Height = 39
          TabOrder = 7
          inherited EdHistorico: TColorMaskEdit
            Width = 245
            Hint = 
              'Press ENTER para filtrar. Press ESC para mostrar todos ordenados' +
              '. Pressione Ctrl+Enter para procurar pelo n'#250'mero do cart'#227'o'
            ParentShowHint = False
            ShowHint = True
          end
        end
        inherited GroupBox17: TGroupBox
          Left = 105
          Top = 3
          Width = 94
          Height = 39
          TabOrder = 2
          inherited EdNumBoleto: TColorMaskEdit
            Width = 87
          end
        end
        inherited GroupBox18: TGroupBox
          Left = 105
          Top = 43
          Width = 94
          Height = 39
          TabOrder = 3
          inherited EdNumFiscal: TColorMaskEdit
            Width = 87
          end
        end
        inherited GroupBox210: TGroupBox
          Left = 4
          Top = 3
          Width = 94
          Height = 39
          TabOrder = 0
          inherited cbFiltroCobr: TComboBox
            Top = 15
            Width = 90
          end
        end
        object GroupBox22: TGroupBox
          Left = 600
          Top = 43
          Width = 254
          Height = 39
          Caption = 'Vendedor'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          object EdNomeVendedor: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 245
            Height = 24
            Hint = 
              'Press ENTER para filtrar. Press ESC para mostrar todos ordenados' +
              '. Pressione Ctrl+Enter para procurar pelo n'#250'mero do cart'#227'o'
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
            OnKeyPress = EdNomeVendedorKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PTextoBlt: TPanel
          Left = 269
          Top = 0
          Width = 344
          Height = 157
          Color = 16772332
          TabOrder = 12
          Visible = False
          object Label32: TLabel
            Left = 5
            Top = 8
            Width = 273
            Height = 16
            Caption = 'Informe o texto complementar do Boleto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 8
            Top = 115
            Width = 64
            Height = 12
            Caption = 'max 5 linhas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object BtnGravaTextoBlt: TBitBtn
            Left = 248
            Top = 124
            Width = 89
            Height = 24
            Caption = 'Ok'
            TabOrder = 0
            OnClick = BtnGravaTextoBltClick
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
          object TMTextoBlt: TMemo
            Left = 6
            Top = 28
            Width = 331
            Height = 89
            Lines.Strings = (
              'TMTextoBlt')
            TabOrder = 1
          end
          object CbDefineQuant: TCheckBox
            Left = 7
            Top = 134
            Width = 225
            Height = 17
            Hint = 
              'Envia diretamente para impressora, os boletos de todas as parcel' +
              'as relacionadas a parcela em quest'#227'o'
            Caption = 'Imprimir todas relacionadas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
        end
      end
      inherited PAgrupados: TPanel
        Width = 860
        Height = 421
        inherited GroupBox1: TGroupBox
          Left = 6
          Width = 847
          inherited DBGMestre: TDBGrid
            Left = 0
            Width = 847
            Height = 170
            DataSource = DMCONTA.DWCtaR
            OnDrawColumnCell = DBGMestreDrawColumnCell
            OnKeyDown = DBGMestreKeyDown
            Columns = <
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
                FieldName = 'DTLANC'
                Title.Caption = 'Lan'#231'amento'
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
                FieldName = 'HISTORICO'
                Title.Caption = 'Hist'#243'rico'
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
          Left = 6
          Width = 848
          Height = 200
          inherited DBGSLAVE: TDBGrid
            Left = 0
            Top = 17
            Width = 848
            Height = 183
            OnDrawColumnCell = DBGSLAVEDrawColumnCell
            OnKeyDown = DBGSLAVEKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPARC'
                Title.Caption = 'Parcela'
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
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Cliente'
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
          Left = 672
          Top = 391
        end
      end
      inherited PBaixadas: TPanel
        Width = 859
        Height = 420
        inherited Panel9: TPanel
          Left = 2
          Top = 391
          Width = 665
          TabOrder = 12
        end
        inherited DBGBAIXADAS: TDBGrid
          Top = 88
          Width = 849
          Height = 301
          PopupMenu = PopupMenu1
          TabOrder = 10
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
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Width = 41
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
              FieldName = 'DTDEBITO'
              Title.Caption = 'D'#233'bito'
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
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Cliente'
              Width = 167
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
              FieldName = 'NUMCARTAO'
              Title.Caption = 'N'#186' Cart'#227'o:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Title.Caption = 'Vendedor'
              Width = 92
              Visible = True
            end>
        end
        inherited GroupBox10: TGroupBox
          Left = 198
          Width = 83
          TabOrder = 4
          inherited EdLancBaixa: TColorMaskEdit
            Width = 76
          end
        end
        inherited GroupBox11: TGroupBox
          Left = 284
          Width = 89
          Height = 78
          TabOrder = 6
          inherited EdVencBaixa: TColorMaskEdit
            Width = 80
          end
          inherited EdVencBaixa2: TColorMaskEdit
            Left = 4
            Top = 44
            Width = 80
          end
        end
        inherited GroupBox6: TGroupBox
          Left = 3
          Top = 43
          Width = 94
          Caption = 'Doc'
          TabOrder = 1
          inherited EdNumpracB: TColorMaskEdit
            Left = 3
            Width = 90
          end
        end
        inherited EdTotBaixadas: TFloatEdit
          Left = 669
          Top = 392
          Width = 184
          Height = 25
          TabOrder = 11
        end
        inherited GroupBox8: TGroupBox
          Left = 376
          Top = 43
          Width = 220
          TabOrder = 8
          inherited EdHistFornec: TColorMaskEdit
            Width = 213
          end
        end
        inherited GroupBox15: TGroupBox
          Left = 101
          Top = 3
          Width = 94
          Height = 38
          TabOrder = 2
          inherited EdNumBoletoB: TColorMaskEdit
            Left = 3
            Width = 87
          end
        end
        inherited GroupBox16: TGroupBox
          Left = 101
          Top = 43
          Width = 94
          Height = 38
          TabOrder = 3
          inherited EdNumFiscalB: TColorMaskEdit
            Width = 87
          end
        end
        inherited GroupBox12: TGroupBox
          Left = 376
          Width = 220
          TabOrder = 7
          inherited EdFornecBaixa: TColorMaskEdit
            Left = 3
            Width = 213
          end
        end
        inherited GroupBox200: TGroupBox
          Left = 4
          Width = 94
          TabOrder = 0
          inherited cbFiltroCobrBaixadas: TComboBox
            Top = 15
            Width = 90
          end
        end
        object GBBaixa: TGroupBox
          Left = 198
          Top = 43
          Width = 83
          Height = 38
          Caption = 'Baixa'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          object MEBaixa: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 76
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
            TabOrder = 0
            Text = '  /  /    '
            OnKeyDown = MEBaixaKeyDown
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox36: TGroupBox
          Left = 600
          Top = 3
          Width = 254
          Height = 39
          Caption = 'Vendedor'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          object EdNomeVendedorBaixada: TColorMaskEdit
            Left = 4
            Top = 13
            Width = 245
            Height = 24
            Hint = 
              'Press ENTER para filtrar. Press ESC para mostrar todos ordenados' +
              '. Pressione Ctrl+Enter para procurar pelo n'#250'mero do cart'#227'o'
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
            OnKeyPress = EdNomeVendedorBaixadaKeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      object PRemessa: TPanel
        Left = 1
        Top = 20
        Width = 861
        Height = 419
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        Visible = False
        DesignSize = (
          861
          419)
        object Label2: TLabel
          Left = 4
          Top = 8
          Width = 74
          Height = 13
          Caption = 'Selecione os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 4
          Top = 19
          Width = 103
          Height = 13
          Caption = 'boletos do banco:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LNumRemessa: TDRLabel
          Left = 3
          Top = 272
          Width = 138
          Height = 16
          Caption = '0 Arquivos Gerados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
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
        object PRetorno: TPanel
          Left = 138
          Top = 74
          Width = 557
          Height = 311
          BevelWidth = 3
          Color = clInactiveCaptionText
          TabOrder = 7
          Visible = False
          object MRetorno: TMemo
            Left = 11
            Top = 11
            Width = 536
            Height = 270
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object BitBtn11: TBitBtn
            Left = 398
            Top = 284
            Width = 75
            Height = 22
            Caption = 'Imprimir'
            TabOrder = 1
            OnClick = BitBtn11Click
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
          object BitBtn12: TBitBtn
            Left = 472
            Top = 284
            Width = 75
            Height = 22
            Caption = 'Fechar'
            TabOrder = 2
            OnClick = BitBtn12Click
          end
        end
        object DBGRemessa: TDBGrid
          Left = 4
          Top = 76
          Width = 854
          Height = 197
          Color = 15794175
          Ctl3D = False
          DataSource = DMCONTA.DWParR
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
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGRemessaDrawColumnCell
          OnDblClick = DBGRemessaDblClick
          OnKeyDown = DBGRemessaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'REMESSA'
              Title.Caption = 'Remessa'
              Width = 62
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
              FieldName = 'NUMBOLETO'
              Title.Caption = 'Boleto'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMFISC'
              Title.Caption = 'Fiscal'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANC'
              Title.Caption = 'Lan'#231'.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Title.Caption = 'Venc.'
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
              Title.Caption = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Visible = True
            end>
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 5
          Top = 33
          Width = 268
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'COD_AGENCIA'
          ListField = 'DESCBANCO'
          ListSource = DMBANCO.DWCtaCor
          ParentFont = False
          TabOrder = 0
          OnClick = DBLookupComboBox1Click
          OnEnter = DBLookupComboBox1Enter
          OnExit = DBLookupComboBox1Exit
        end
        object BitBtn8: TBitBtn
          Left = 607
          Top = 24
          Width = 120
          Height = 25
          Caption = 'Gerar Arquivo'
          TabOrder = 1
          OnClick = BitBtn8Click
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B004000000000000000000000000000000000000FFC891FFC891
            FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC8
            91FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FF
            C891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891
            FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC888FFCA
            87FFCB88FFCB88FFCC88FFCC88FFCC88FFCC88FFCC88FFCD88FFCD88FFCE89FF
            CE8AFFCE8CFFC891FFC891FFC891FFC891FFC891FFC8889AC7E46AB1E25BAADD
            53A5DB4BA1DB479ED9469FD9439DD93F9BD83999D73596D72A91D52D8BCA3F8A
            BCFFCE8CFFC891FFC891FFC891FFC891FFCA876BB2E29ACCF08EC7EC77BAE86E
            B6E765B1E453A8E150A7E15AABE255AAE24AA3E03D9DDE1C87CF2774A8FFD08D
            FFC891FFC891FFC891FFC891FFCA8860ACDF94C9EC88C2E973B8E567B1E35BAA
            E1F7FBFDF7FBFD49A2DE49A1DE44A0DD3B9CDC2A8DD01C6DA4FFD18EFFC891FF
            C891FFC891FFC891FFCB8855A6DC7CBDE874B8E563AEE24CA2DEEFF7FCDDEDF8
            DDEDF8EDF5FB238ED72E94D93197DA2B8ED12271A5FFD18EFFC891FFC891FFC8
            91FFC891FFCC884EA2DA6CB5E667B1E450A4DEF2F7FC9CCBEC2E92D8238DD68E
            C6EBEDF5FC168AD62895DA298FD12372A5FFD18EFFC891FFC891FFC891FFC891
            FFCC8848A0DA60ADE35FACE2ECF6FBFFFFFFFDFEFEFFFFFFFFFFFFFDFDFEFFFF
            FFE5F2FA2395D92691D22173A7FFD18EFFC891FFC891FFC891FFC891FFCC8840
            9BD855A8E169B1E38DC4EA85C0E880BDE87BBDE774BCE76CBCE764BAE768BDE8
            33A3DF2092D31E71A7FFD18DFFC891FFC891FFC891FFC891FFCD893998D74DA5
            E04EA4DE81BDE788C2E981BFE97BBFE873BFE96DC0E86AC0E956BAE713A0DD1A
            97D51A73A9FFD18DFFC891FFC891FFC891FFC891FFCD893094D644A0DE439EDC
            E4F1F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAF2FA05A4DF1399D71572
            AAFFD18DFFC891FFC891FFC891FFC891FFCE892790D43A9BDC4AA2DE3195D924
            92D81D92D71694D90A99DA009EDD00A1DD00A5DF13AFE2099AD70F70AAFFD18D
            FFC891FFC891FFC891FFC891FFCE891F8BD22F96DB3196D9E3EFFAFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD9F3FA00ABE20097D70A6EAAFFD18DFFC891FF
            C891FFC891FFC891FFCF891787D22291D92E95DA74B9E682C0EA7EC1EA7CC3EA
            76C7EC72CAED6FCDED55C7EB00AAE30094D6066BA6FFD18EFFC891FFC891FFC8
            91FFC891FFCF8B1F82C40C7DCA2088CD1F87CD1C87CD1988CE168BCF1192D20A
            95D50496D40095D50094D6007CC5186AA0FFD18EFFC891FFC891FFC891FFC891
            FFCE8B3F90C51F6EA41467A01A6CA21B6AA11A6BA3196EA5146FA71071AA0E6F
            A80B6EA8066DAA186AA02C8EBFFFCE8CFFC891FFC891FFC891FFC891FFC891FF
            CE8BFFD18EFFD28EFFD18EFFD28EFFD18EFFD18EFFD18DFFD18DFFD18DFFD18D
            FFD18DFFD18EFFCE8CFFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC8
            91FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FF
            C891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891
            FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC8
            91FFC891FFC891FFC891}
        end
        object BitBtn9: TBitBtn
          Left = 727
          Top = 24
          Width = 130
          Height = 25
          Caption = 'Confirmar Remessa'
          TabOrder = 2
          OnClick = BitBtn9Click
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
        end
        object rdgLayoutArquivoRemessa: TRadioGroup
          Left = 288
          Top = 0
          Width = 93
          Height = 73
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Layout'
          ItemIndex = 1
          Items.Strings = (
            'CNAB240'
            'CNAB400'
            'Outro')
          TabOrder = 4
        end
        object GroupBox19: TGroupBox
          Left = 4
          Top = 295
          Width = 855
          Height = 122
          Caption = 'Relat'#243'rio do arquivo retorno'
          TabOrder = 5
          object txtRelatorioRetorno: TMemo
            Left = 2
            Top = 15
            Width = 851
            Height = 105
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object BitBtn10: TBitBtn
          Left = 668
          Top = 48
          Width = 120
          Height = 25
          Caption = 'Ler Retorno'
          TabOrder = 6
          OnClick = BitBtn10Click
          Glyph.Data = {
            A6020000424DA6020000000000003600000028000000100000000D0000000100
            18000000000070020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF636163636163636163636163636163636163FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63616363616363616352598C10
            49FFBD86731049FF636163636163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            638EC61049FF1049FF1049FF3186FFEFBE9CBD8673C6B6B53186FF1049FF6361
            63636163FFFFFFFFFFFFFFFFFFFFFFFF3186FFDEBEADFFDFADFFE7BDFFEFCEFF
            EFD6DE9E73FFE7BDFFF7EF7BA6FF637194636163636163FFFFFFFFFFFF5A8ECE
            4286F7FFDFBDFFDFBDFFEFCEFFF7E7EFC7ADFFCF94FFE7C6FFF7EFFFFFFF7BA6
            FF7BB6FF636163636163FFFFFF429EFF429EFFFFEFD6FFEFDEFFFFF7FFFFFFDE
            9E73FFDFADFFEFD6FFFFF7FFFFFFFFFFFF4A9EFF5A619C636163FFFFFF3996FF
            FFE7CEFFF7E7FFFFF7FFFFFFF7DFCEF7CF9CFFEFCEFFFFF7FFFFFFFFFFFFEFF7
            FF2996FF8496AD636163639ED6429EFFFFFFF7FFFFF7FFFFF7FFFFF7DE9E73FF
            DFADFFF7E7FFFFFFFFFFFFFFFFFF8CC7FF5AAEFF636163FFFFFF429EFFE7CFB5
            FFF7E7FFF7EFFFFFFFF7EFE7EFCFA5FFEFCEFFF7EFFFFFF7FFFFFFFFFFFF399E
            FF8C86BD636163FFFFFF429EFFFFEFDEFFFFFFFFFFFFCEDFFF9CBEFFB5BEDEFF
            EFDEFFFFFFFFFFFFFFFFFFA5D7FF52AEFF636163FFFFFFFFFFFF3196FF7BC7FF
            B5BEDEB5BEDEFFFFFFFFFFFFFFFFFFC6DFFFC6DFFFFFFFFFFFFFFF52B6FF6371
            94636163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFB5BEDEADD7FF7BC7FF63C7FF636163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BC7FF7BB6DEFFFF
            FFFFFFFFFFFFFFFFFFFF}
        end
      end
    end
  end
  inherited PComunica: TPanel [12]
    Left = 218
    Top = 186
  end
  inherited QRDUPLICATA02: TQuickRep [13]
    Left = 894
    Top = 569
    Height = 1123
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand02: TQRBand
      Height = 291
      Size.Values = (
        769.937500000000000000
        1899.708333333333000000)
      inherited QR02COD_INTERNO: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          391.583333333333400000
          198.437500000000000000)
        FontSize = 9
      end
      inherited QR02NUMDOC: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          391.583333333333400000
          256.645833333333400000)
        FontSize = 9
      end
      inherited QR02DTVENCIMENTO: TQRDBText
        Top = 189
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          500.062500000000100000
          320.145833333333400000)
        FontSize = 10
      end
      inherited QR02VLOR: TQRDBText
        Top = 189
        Size.Values = (
          44.979166666666670000
          542.395833333333400000
          500.062500000000100000
          306.916666666666700000)
        FontSize = 10
      end
      inherited QR02NOME: TQRDBText
        Left = 53
        Top = 99
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          261.937500000000000000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QR02TEXTO: TQRDBRichText
        Top = 245
        Size.Values = (
          95.250000000000000000
          145.520833333333300000
          648.229166666666800000
          830.791666666666800000)
      end
      inherited QR02VALEXT: TQRDBText
        Top = 230
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
          608.541666666666700000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QR02JUROS: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          391.583333333333400000
          301.625000000000000000)
        FontSize = 9
      end
      inherited QR0202VALEXT: TQRDBText
        Top = 230
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          608.541666666666800000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QR0202TEXTO: TQRDBRichText
        Top = 245
        Size.Values = (
          95.250000000000000000
          1047.750000000000000000
          648.229166666666800000
          830.791666666666800000)
      end
      inherited QR0202DTVENC: TQRDBText
        Top = 189
        Size.Values = (
          44.979166666666670000
          1092.729166666667000000
          500.062500000000100000
          320.145833333333400000)
        FontSize = 10
      end
      inherited QR0202VALOR: TQRDBText
        Top = 189
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          500.062500000000100000
          306.916666666666700000)
        FontSize = 10
      end
      inherited QR0202NUMDOC: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          1283.229166666667000000
          391.583333333333400000
          256.645833333333400000)
        FontSize = 9
      end
      inherited QR0202JUROS: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          391.583333333333400000
          301.625000000000000000)
        FontSize = 9
      end
      inherited QR0202COD_INTERNO: TQRDBText
        Top = 148
        Size.Values = (
          44.979166666666670000
          1116.541666666667000000
          391.583333333333400000
          198.437500000000000000)
        FontSize = 9
      end
      inherited QR0202NOME: TQRDBText
        Top = 99
        Size.Values = (
          44.979166666666670000
          1042.458333333333000000
          261.937500000000000000
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
  object QuickRep1: TQuickRep [14]
    Left = 1046
    Top = 289
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMCONTA.TRel
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
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 60
      Width = 718
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText15: TQRDBText
        Left = 0
        Top = 0
        Width = 12
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          0.000000000000000000
          0.000000000000000000
          31.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'MARK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 16
        Top = 0
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          42.333333333333300000
          0.000000000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'NUMPARC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText17: TQRDBText
        Left = 80
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          211.666666666667000000
          0.000000000000000000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'DTDEBITO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 152
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          0.000000000000000000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'DTVENC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 225
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          595.312500000000000000
          0.000000000000000000
          193.145833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 304
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          804.333333333333000000
          0.000000000000000000
          193.145833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'VALORPG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 380
        Top = 0
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1005.416666666670000000
          0.000000000000000000
          232.833333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'COBRANCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 472
        Top = 0
        Width = 249
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1248.833333333330000000
          0.000000000000000000
          658.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMCONTA.TRel
        DataField = 'HISTORICO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabel18: TQRLabel
        Left = 0
        Top = 2
        Width = 12
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          5.291666666666667000
          31.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'
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
      object QRLabel19: TQRLabel
        Left = 16
        Top = 2
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          5.291666666666667000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' Parc.:'
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
      object QRLabel21: TQRLabel
        Left = 80
        Top = 2
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          5.291666666666667000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. D'#233'bito:'
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
      object QRLabel22: TQRLabel
        Left = 152
        Top = 2
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          5.291666666666667000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dt. Venc.:'
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
      object QRLabel23: TQRLabel
        Left = 224
        Top = 2
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666800000
          5.291666666666667000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Devido:'
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
      object QRLabel24: TQRLabel
        Left = 312
        Top = 2
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000000000
          5.291666666666667000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Pago:'
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
      object QRLabel25: TQRLabel
        Left = 380
        Top = 2
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1005.416666666667000000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cobran'#231'a:'
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
      object QRLabel26: TQRLabel
        Left = 472
        Top = 2
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          5.291666666666667000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hist'#243'rico:'
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
    end
  end
  inherited QRReciboGFinal: TQuickRep [15]
    Left = 160
    Top = 616
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
        Top = 209
        Height = 18
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          552.979166666666700000
          590.020833333333300000)
        FontSize = 10
      end
      inherited QRLabel70: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel71: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape32: TQRShape
        Top = 270
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          714.375000000000000000
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
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel75: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333300000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel76: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
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
          502.708333333333300000
          383.645833333333300000
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
          402.166666666666700000
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
        Left = 116
        Top = 89
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          235.479166666666700000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRRDocumentos: TQRRichText
        Height = 33
        Size.Values = (
          87.312500000000000000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
        Font.Height = -11
      end
      inherited QRDataRec4: TQRLabel
        Left = 672
        Top = 56
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          148.166666666666700000
          105.833333333333300000)
        Font.Height = -13
        FontSize = 10
      end
    end
  end
  inherited QRReciboCupom: TQuickRep [16]
    Left = 210
    Top = 630
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
          447.145833333333300000
          500.062500000000000000)
        FontSize = 7
      end
      inherited QRLabel35: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          367.770833333333300000
          304.270833333333300000)
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
          34.395833333333330000
          5.291666666666667000
          105.833333333333300000
          74.083333333333330000)
        FontSize = 7
      end
      inherited QRLabel44: TQRLabel
        Size.Values = (
          34.395833333333330000
          402.166666666666700000
          105.833333333333300000
          84.666666666666670000)
        FontSize = 7
      end
      inherited QRLabel45: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          486.833333333333300000
          410.104166666666700000)
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
          60.854166666666670000
          179.916666666666700000
          89.958333333333330000)
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
          216.958333333333300000
          164.041666666666700000)
        FontSize = 7
      end
      inherited QRLabel49: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          296.333333333333300000
          140.229166666666700000)
        FontSize = 7
      end
      inherited QRDBText38: TQRDBText
        Size.Values = (
          44.979166666666670000
          150.812500000000000000
          296.333333333333300000
          108.479166666666700000)
        FontSize = 7
      end
      inherited QRDBText39: TQRDBText
        Size.Values = (
          44.979166666666670000
          515.937500000000000000
          447.145833333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRDBText40: TQRDBText
        Size.Values = (
          44.979166666666670000
          629.708333333333300000
          296.333333333333300000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRLabel50: TQRLabel
        Size.Values = (
          44.979166666666670000
          574.145833333333300000
          296.333333333333300000
          50.270833333333330000)
        FontSize = 7
      end
      inherited QRDBText41: TQRDBText
        Size.Values = (
          44.979166666666670000
          158.750000000000000000
          256.645833333333300000
          132.291666666666700000)
        FontSize = 7
      end
      inherited QRLabel51: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          256.645833333333300000
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
          34.395833333333330000
          82.020833333333330000
          105.833333333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRDBText43: TQRDBText
        Size.Values = (
          34.395833333333330000
          492.125000000000000000
          105.833333333333300000
          134.937500000000000000)
        FontSize = 7
      end
      inherited QRLabel53: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          394.229166666666700000
          304.270833333333300000)
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
  inherited QRDUPLICATA: TQuickRep [17]
    Left = 12
    Top = 636
    Width = 816
    Height = 1056
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.PaperSize = Letter
    Page.Ruler = True
    Page.Values = (
      10.000000000000000000
      2794.000000000000000000
      5.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRIMPDUPLICATA: TQRBand
      Top = 2
      Width = 740
      Height = 511
      Size.Values = (
        1352.020833333333000000
        1957.916666666667000000)
      inherited DBTituloPrim: TQRDBText
        Left = 2
        Top = 9
        Width = 735
        Size.Values = (
          58.208333333333330000
          5.291666666666667000
          23.812500000000000000
          1944.687500000000000000)
        FontSize = 14
      end
      inherited DBTituloSec: TQRDBText
        Left = 2
        Top = 33
        Width = 735
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          87.312500000000000000
          1944.687500000000000000)
        FontSize = 10
      end
      inherited QRShape3: TQRShape
        Top = 63
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          166.687500000000000000
          1942.041666666667000000)
      end
      inherited QRShape1: TQRShape
        Top = 66
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          174.625000000000000000
          1942.041666666667000000)
      end
      inherited QRLabel1: TQRLabel
        Top = 76
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          201.083333333333300000
          341.312500000000000000)
        FontSize = 10
      end
      inherited QRLabel2: TQRLabel
        Left = 616
        Top = 76
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          201.083333333333300000
          275.166666666666700000)
        Alignment = taRightJustify
        FontSize = 10
      end
      inherited QRLabel3: TQRLabel
        Top = 76
        Size.Values = (
          44.979166666666670000
          423.333333333333300000
          201.083333333333300000
          238.125000000000000000)
        FontSize = 10
      end
      inherited QRLabel4: TQRLabel
        Top = 76
        Size.Values = (
          44.979166666666670000
          656.166666666666800000
          201.083333333333300000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel5: TQRLabel
        Top = 76
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          201.083333333333300000
          232.833333333333400000)
        FontSize = 10
      end
      inherited QRLabel6: TQRLabel
        Top = 76
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          201.083333333333300000
          357.187500000000000000)
        FontSize = 10
      end
      inherited QRShape2: TQRShape
        Top = 124
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          328.083333333333400000
          1942.041666666667000000)
      end
      inherited QRShape4: TQRShape
        Top = 127
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          336.020833333333400000
          1942.041666666667000000)
      end
      inherited QRDBText1: TQRDBText
        Top = 100
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          264.583333333333400000
          341.312500000000000000)
        FontSize = 9
      end
      inherited QRDBText2: TQRDBText
        Top = 100
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          264.583333333333400000
          320.145833333333400000)
        FontSize = 9
      end
      inherited QRDBText3: TQRDBText
        Top = 100
        Size.Values = (
          44.979166666666670000
          656.166666666666800000
          264.583333333333400000
          341.312500000000000000)
        FontSize = 9
      end
      inherited QRDBText4: TQRDBText
        Top = 100
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          264.583333333333400000
          235.479166666666700000)
        FontSize = 9
      end
      inherited QRDBText5: TQRDBText
        Top = 100
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          264.583333333333400000
          362.479166666666700000)
        FontSize = 10
      end
      inherited QRDBText6: TQRDBText
        Left = 611
        Top = 100
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          264.583333333333400000
          277.812500000000000000)
        Alignment = taRightJustify
        FontSize = 10
      end
      inherited QRLabel8: TQRLabel
        Top = 241
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          637.645833333333300000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLabel9: TQRLabel
        Top = 193
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          510.645833333333300000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRLabel10: TQRLabel
        Top = 193
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          510.645833333333300000
          84.666666666666670000)
        FontSize = 10
      end
      inherited QRLabel11: TQRLabel
        Top = 214
        Width = 3
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          566.208333333333300000
          7.937500000000000000)
        Caption = #39
        FontSize = 10
      end
      inherited QRLabel12: TQRLabel
        Top = 193
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          510.645833333333300000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel13: TQRLabel
        Top = 160
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          423.333333333333300000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel14: TQRLabel
        Top = 133
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          351.895833333333300000
          277.812500000000000000)
        FontSize = 10
      end
      inherited QRShape5: TQRShape
        Top = 262
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
      end
      inherited QRSysData1: TQRSysData
        Left = 8
        Top = 379
        Width = 134
        Height = 21
        Size.Values = (
          55.562500000000000000
          21.166666666666670000
          1002.770833333333000000
          354.541666666666700000)
        ParentFont = False
        FontSize = 10
      end
      inherited QRShape6: TQRShape
        Left = 8
        Top = 398
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          1053.041666666667000000
          362.479166666666700000)
      end
      inherited QRLabel15: TQRLabel
        Left = 8
        Top = 399
        Width = 134
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          1055.687500000000000000
          354.541666666666700000)
        FontSize = 8
      end
      inherited QRShape7: TQRShape
        Left = 483
        Top = 398
        Size.Values = (
          2.645833333333333000
          1277.937500000000000000
          1053.041666666667000000
          619.125000000000000000)
      end
      inherited QRLabel16: TQRLabel
        Left = 483
        Top = 399
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          1055.687500000000000000
          621.770833333333400000)
        FontSize = 8
      end
      inherited QRShape8: TQRShape
        Left = 215
        Top = 398
        Size.Values = (
          2.645833333333333000
          568.854166666666700000
          1053.041666666667000000
          621.770833333333400000)
      end
      inherited QRLabel17: TQRLabel
        Left = 215
        Top = 399
        Size.Values = (
          44.979166666666670000
          568.854166666666700000
          1055.687500000000000000
          621.770833333333400000)
        FontSize = 8
      end
      inherited QRDBText7: TQRDBText
        Top = 133
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          351.895833333333300000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRDBText8: TQRDBText
        Top = 160
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          423.333333333333300000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRDBText9: TQRDBText
        Top = 193
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          510.645833333333300000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText10: TQRDBText
        Top = 193
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          510.645833333333300000
          74.083333333333330000)
        FontSize = 10
      end
      inherited QRDBText11: TQRDBText
        Top = 193
        Size.Values = (
          44.979166666666670000
          1672.166666666667000000
          510.645833333333300000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRDBText12: TQRDBText
        Top = 241
        Size.Values = (
          44.979166666666670000
          224.895833333333300000
          637.645833333333300000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBRichText1: TQRDBRichText
        Left = 17
        Top = 289
        Width = 713
        Height = 50
        Size.Values = (
          132.291666666666700000
          44.979166666666670000
          764.645833333333400000
          1886.479166666667000000)
      end
      inherited QRDBText13: TQRDBText
        Top = 342
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          904.875000000000000000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QRShape9: TQRShape
        Top = 416
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          1100.666666666667000000
          1942.041666666667000000)
      end
      inherited QRLabel7: TQRLabel
        Top = 133
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          351.895833333333300000
          140.229166666666700000)
        FontSize = 10
      end
      inherited QRDBText14: TQRDBText
        Top = 133
        Size.Values = (
          44.979166666666670000
          1685.395833333333000000
          351.895833333333300000
          129.645833333333300000)
        FontSize = 10
      end
      inherited QRRODAPEDUPLICATA: TQRDBRichText
        Top = 417
        Width = 714
        Height = 20
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          1103.312500000000000000
          1889.125000000000000000)
      end
      inherited QRHIST3: TQRDBText
        Top = 266
        Width = 82
        Height = 18
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          703.791666666666700000
          216.958333333333300000)
        Font.Height = -15
        ParentFont = False
        FontSize = 11
      end
      object QRLabel20: TQRLabel
        Left = 303
        Top = 57
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          150.812500000000000000
          354.541666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NOTA PROMISS'#211'RIA'
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
      object QRLabel100: TQRLabel
        Left = 16
        Top = 175
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          463.020833333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#250'm.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText70: TQRDBText
        Left = 79
        Top = 175
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          463.020833333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'endnumero'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited PBotoes: TPanel [18]
    Left = 847
  end
  inherited QRRECIBO: TQuickRep
    Left = 40
    Top = 620
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [LastPageFooter]
    Page.Ruler = True
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    inherited QRBand3: TQRBand
      Height = 443
      Size.Values = (
        1172.104166666667000000
        1899.708333333333000000)
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
        Frame.Style = psInsideFrame
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape13: TQRShape
        Frame.Style = psInsideFrame
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel36: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          595.312500000000000000
          590.020833333333300000)
        FontSize = 10
      end
      inherited QRLabel38: TQRLabel
        Top = 187
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          494.770833333333300000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel39: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
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
          34.395833333333340000
          7.937500000000000000
          1092.729166666667000000
          1942.041666666667000000)
        Transparent = True
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
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        FontSize = 10
      end
      inherited QRLValor: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333300000
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
        Left = 128
        Width = 39
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          338.666666666666700000
          103.187500000000000000)
        Font.Style = [fsBold]
        ParentFont = False
        FontSize = 10
      end
      inherited QRLabel29: TQRLabel
        Left = 127
        Size.Values = (
          44.979166666666670000
          336.020833333333300000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText25: TQRDBText
        Left = 189
        Size.Values = (
          44.979166666666670000
          500.062500000000000000
          383.645833333333300000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel30: TQRLabel
        Left = 127
        Size.Values = (
          44.979166666666670000
          336.020833333333300000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText27: TQRDBText
        Left = 191
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText31: TQRDBText
        Left = 242
        Size.Values = (
          44.979166666666670000
          640.291666666666700000
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
          232.833333333333300000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRDBText33: TQRDBText
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          232.833333333333300000
          164.041666666666700000)
        FontSize = 10
      end
      inherited QRLIMPORTANCIA: TQRLabel
        Left = 148
        Top = 187
        Width = 130
        Size.Values = (
          44.979166666666670000
          391.583333333333300000
          494.770833333333300000
          343.958333333333300000)
        Font.Style = [fsBold]
        ParentFont = False
        FontSize = 10
      end
      object QRLabel33: TQRLabel [31]
        Left = 328
        Top = 88
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          867.833333333333300000
          232.833333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENCIMENTO:'
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
      object QRDBText30: TQRDBText [32]
        Left = 420
        Top = 88
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1111.250000000000000000
          232.833333333333300000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'VENCIMENTO'
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
      inherited QRLabel101: TQRLabel
        Top = 297
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          785.812500000000000000
          497.416666666666700000)
        FontSize = 10
      end
      inherited QRHIST2: TQRDBText
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          709.083333333333300000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRDataRec2: TQRLabel
        Left = 672
        Top = 56
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          148.166666666666700000
          105.833333333333300000)
        Font.Height = -13
        FontSize = 10
      end
    end
  end
  inherited QRFinalSimples: TQuickRep [20]
    Left = 1152
    Top = 96
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
          42.333333333333330000
          552.979166666666700000
          590.020833333333300000)
        FontSize = 10
      end
      inherited QRLabel86: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel87: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
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
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
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
          42.333333333333330000
          722.312500000000000000
          431.270833333333300000)
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
        Width = 97
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          256.645833333333400000)
        Caption = 'QRVLRSimples'
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
        Left = 672
        Top = 56
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1778.000000000000000000
          148.166666666666700000
          105.833333333333300000)
        Font.Height = -13
        FontSize = 10
      end
    end
  end
  object QRReciboValor_LogoEmpresa: TQuickRep [21]
    Left = 192
    Top = 583
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand7: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 475
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand7BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1256.770833333333000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText44: TQRDBText
        Left = 216
        Top = 8
        Width = 497
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          571.500000000000000000
          21.166666666666670000
          1314.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TITULOPRIM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText71: TQRDBText
        Left = 256
        Top = 32
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          84.666666666666670000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'CNPJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape87: TQRShape
        Left = 0
        Top = 194
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          513.291666666666700000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape88: TQRShape
        Left = 0
        Top = 190
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          502.708333333333300000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape89: TQRShape
        Left = 0
        Top = 126
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          333.375000000000000000
          1942.041666666667000000)
        Shape = qrsRectangle
      end
      object QRShape90: TQRShape
        Left = 0
        Top = 158
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          418.041666666666700000
          1942.041666666667000000)
        Shape = qrsRectangle
      end
      object QRLabel102: TQRLabel
        Left = 16
        Top = 305
        Width = 223
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          806.979166666666700000
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
      object QRLabel103: TQRLabel
        Left = 16
        Top = 283
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
          748.770833333333300000
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
      object QRLabel104: TQRLabel
        Left = 16
        Top = 208
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
          550.333333333333300000
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
      object QRShape91: TQRShape
        Left = 0
        Top = 330
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          873.125000000000000000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel105: TQRLabel
        Left = 3
        Top = 449
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          1187.979166666667000000
          1942.041666666667000000)
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
      object QRShape92: TQRShape
        Left = 0
        Top = 444
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1174.750000000000000000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel106: TQRLabel
        Left = 0
        Top = 131
        Width = 745
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          0.000000000000000000
          346.604166666666700000
          1971.145833333333000000)
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
      object QROS: TQRLabel
        Left = 16
        Top = 168
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          444.500000000000000000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O.S.:'
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
      object QRLabel110: TQRLabel
        Left = 544
        Top = 168
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
          444.500000000000000000
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
      object QRDBDATA: TQRLabel
        Left = 16
        Top = 360
        Width = 174
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          952.500000000000000000
          460.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Toledo, 01 de Janeiro de 2005'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel112: TQRLabel
        Left = 0
        Top = 405
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
          1071.562500000000000000
          1971.145833333333000000)
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
      object QRLabel113: TQRLabel
        Left = 0
        Top = 422
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
          1116.541666666667000000
          1971.145833333333000000)
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
      object QRDBText72: TQRDBText
        Left = 129
        Top = 208
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          550.333333333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel114: TQRLabel
        Left = 128
        Top = 224
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
          592.666666666666700000
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
      object QRDBText73: TQRDBText
        Left = 190
        Top = 225
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
          595.312500000000000000
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
      object QRLabel115: TQRLabel
        Left = 128
        Top = 241
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
          637.645833333333300000
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
      object QRDBText74: TQRDBText
        Left = 192
        Top = 241
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
          637.645833333333300000
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
      object QRDBText75: TQRDBText
        Left = 244
        Top = 305
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          806.979166666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'NUMDOC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText76: TQRDBText
        Left = 590
        Top = 241
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
          637.645833333333300000
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
      object QRLabel116: TQRLabel
        Left = 542
        Top = 241
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
          637.645833333333300000
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
      object QRDBText77: TQRDBText
        Left = 611
        Top = 208
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
          550.333333333333300000
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
      object QRLabel117: TQRLabel
        Left = 542
        Top = 208
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
          550.333333333333300000
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
      object QRLabel118: TQRLabel
        Left = 3
        Top = 459
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          7.937500000000000000
          1214.437500000000000000
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
      object QRDBText78: TQRDBText
        Left = 620
        Top = 168
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          444.500000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBVALOREXTENSO: TQRLabel
        Left = 152
        Top = 283
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
          748.770833333333300000
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
      object QRDBText79: TQRDBText
        Left = 16
        Top = 339
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          896.937500000000000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMFINANC.TAlx
        DataField = 'HISTORICO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBImage2: TQRDBImage
        Left = 8
        Top = 8
        Width = 201
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.812500000000000000
          21.166666666666670000
          21.166666666666670000
          531.812500000000000000)
        DataField = 'LOGOEMPRESA'
        DataSet = DMMACS.TLoja
      end
      object QRLabel120: TQRLabel
        Left = 216
        Top = 32
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          84.666666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRENDERECO: TQRLabel
        Left = 216
        Top = 52
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          137.583333333333300000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ENDERE'#199'O:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel122: TQRLabel
        Left = 216
        Top = 72
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          190.500000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TELEFONE:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText80: TQRDBText
        Left = 216
        Top = 92
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          571.500000000000000000
          243.416666666666700000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'WEB_PAGE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText81: TQRDBText
        Left = 296
        Top = 72
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          783.166666666666700000
          190.500000000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FONE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel123: TQRLabel
        Left = 503
        Top = 32
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          84.666666666666670000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'I.E.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText82: TQRDBText
        Left = 536
        Top = 32
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          84.666666666666670000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'INSC_EST'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 668
        Top = 136
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1767.416666666667000000
          359.833333333333300000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 7
      end
      object QRDBText83: TQRDBText
        Left = 416
        Top = 72
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          190.500000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'TEL0800'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited QRReciboValor: TQuickRep
    Left = 978
    Top = 471
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBandReciboValor: TQRBand
      Size.Values = (
        1214.437500000000000000
        1899.708333333333000000)
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
  inherited MemoAuxiliarInstrucao: TRichEdit
    Left = 23
    Top = 576
  end
  inherited QRCarne: TQuickRep
    Left = 144
    Top = 557
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Page.Values = (
      100.012500000000000000
      2970.000000000000000000
      26.458333333333330000
      2100.000000000000000000
      52.916666666666670000
      0.000000000000000000
      0.000000000000000000)
    inherited QRBandCarne: TQRBand
      Left = 20
      Width = 774
      Height = 349
      Size.Values = (
        923.395833333333300000
        2047.875000000000000000)
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
          550.333333333333300000
          84.666666666666670000)
        FontSize = 5
      end
      inherited saca: TQRLabel
        Size.Values = (
          34.395833333333330000
          571.500000000000000000
          664.104166666666700000
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
          695.854166666666700000
          224.895833333333300000)
        FontSize = 6
      end
      inherited ficha: TQRLabel
        Top = 323
        Size.Values = (
          39.687500000000000000
          1685.395833333333000000
          854.604166666666700000
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
        Left = 132
        Size.Values = (
          21.166666666666670000
          349.250000000000000000
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
        Left = 128
        Size.Values = (
          47.625000000000000000
          338.666666666666700000
          76.729166666666670000
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
          550.333333333333300000
          127.000000000000000000)
        FontSize = 5
      end
      inherited sacad: TQRLabel
        Size.Values = (
          21.166666666666670000
          137.583333333333300000
          658.812500000000000000
          84.666666666666670000)
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
        Size.Values = (
          39.687500000000000000
          132.291666666666700000
          791.104166666666700000
          256.645833333333300000)
        FontSize = 8
      end
      inherited verso: TQRLabel
        Size.Values = (
          39.687500000000000000
          174.625000000000000000
          833.437500000000000000
          272.520833333333300000)
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
        Left = 704
        Top = 34
        Size.Values = (
          34.395833333333330000
          1862.666666666667000000
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
        Left = 504
        Top = 74
        Size.Values = (
          34.395833333333330000
          1333.500000000000000000
          195.791666666666700000
          89.958333333333330000)
        FontSize = 7
      end
      inherited lbDtProcesso: TQRLabel
        Left = 560
        Top = 74
        Size.Values = (
          34.395833333333330000
          1481.666666666667000000
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
        Left = 352
        Top = 94
        Size.Values = (
          34.395833333333330000
          931.333333333333300000
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
        Left = 560
        Top = 94
        Size.Values = (
          34.395833333333330000
          1481.666666666667000000
          248.708333333333300000
          76.729166666666670000)
        FontSize = 7
      end
      inherited lbNomeSacado: TQRLabel
        Top = 214
        Size.Values = (
          39.687500000000000000
          568.854166666666700000
          566.208333333333300000
          216.958333333333300000)
        FontSize = 8
      end
      inherited lbBairroCidCepPlan: TQRLabel
        Top = 238
        Size.Values = (
          39.687500000000000000
          568.854166666666700000
          629.708333333333300000
          283.104166666666700000)
        FontSize = 8
      end
      inherited lbDtVenc2: TQRLabel
        Left = 128
        Top = 34
        Width = 68
        Size.Values = (
          34.395833333333330000
          338.666666666666700000
          89.958333333333330000
          179.916666666666700000)
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
          34.395833333333330000
          148.166666666666700000
          566.208333333333300000
          158.750000000000000000)
        FontSize = 7
      end
      inherited lbNumDoc2: TQRLabel
        Width = 50
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          619.125000000000000000
          132.291666666666700000)
        FontSize = 7
      end
      inherited lbSacador2: TQRLabel
        Left = 56
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          685.270833333333300000
          124.354166666666700000)
        FontSize = 7
      end
      inherited lbCPF2: TQRLabel
        Left = 56
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          727.604166666666700000
          84.666666666666670000)
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
        Left = 696
        Top = 94
        Size.Values = (
          34.395833333333330000
          1841.500000000000000000
          248.708333333333300000
          121.708333333333300000)
        FontSize = 7
      end
      inherited lbParcela: TQRLabel
        Left = 56
        Top = 34
        Width = 73
        Size.Values = (
          34.395833333333330000
          148.166666666666700000
          89.958333333333330000
          193.145833333333300000)
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
          82.020833333333330000)
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
        Left = 535
        Top = 216
        Size.Values = (
          39.687500000000000000
          1415.520833333333000000
          571.500000000000000000
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
  inherited FSRel: TfrReport
    Left = 184
    Top = 38
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 152
    Top = 38
  end
  inherited PMREL: TPopupMenu
    Left = 215
    Top = 38
    object Duplicatas1: TMenuItem
      Caption = 'Duplicatas'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Boletos1: TMenuItem
      Caption = 'Boletos'
      object NovoBoleto1: TMenuItem
        Caption = 'Novo Boleto'
        OnClick = NovoBoleto1Click
      end
      object OutraVia1: TMenuItem
        Caption = 'Outra Via'
        OnClick = OutraVia1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Recibo1: TMenuItem
      Caption = 'Recibo'
    end
  end
  inherited gbTitulo1: TgbTitulo
    Left = 304
  end
  object P: TPrintDialog
    OnShow = PShow
    Options = [poPrintToFile]
    Left = 271
    Top = 37
  end
  object gbCobranca1: TgbCobranca
    NumeroArquivo = 1
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessa
    Left = 336
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Remessa.txt'
    Title = 'Gerar arquivo remessa em'
    Left = 592
    Top = 80
  end
  object gbTitulo2: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    XCarne = False
    AceiteDocumento = adNao
    EspecieDocumento = edRecibo
    Protesta = False
    DiasProtesta = 0
    ContRemessa = 0
    EmissaoBoleto = ebClienteEmite
    Left = 552
    Top = 79
  end
  object OpenDialog1: TOpenDialog
    Left = 704
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 215
    Top = 38
    object Declarao1: TMenuItem
      Caption = 'Declara'#231#227'o'
      OnClick = Declarao1Click
    end
    object CartaCobrana1: TMenuItem
      Caption = 'Carta Cobran'#231'a'
      OnClick = CartaCobrana1Click
    end
    object RecibodeFatura1: TMenuItem
      Caption = 'Comprovante de Fatura'
      OnClick = RecibodeFatura1Click
    end
    object Duplicatas3: TMenuItem
      Caption = 'Duplicatas'
      object Selecionada1: TMenuItem
        Caption = 'Selecionada'
        OnClick = Selecionada1Click
      end
      object odas1: TMenuItem
        Caption = 'Todas'
        OnClick = odas1Click
      end
      object AtaSelecionada1: TMenuItem
        Caption = 'At'#233' a Selecionada'
        OnClick = AtaSelecionada1Click
      end
      object AtaDtdeVencimento1: TMenuItem
        Caption = 'At'#233' a Dt. de Vencimento'
        OnClick = AtaDtdeVencimento1Click
      end
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object Carns1: TMenuItem
      Caption = 'Carn'#234's'
      object NovoCarn1: TMenuItem
        Caption = 'Novo Carn'#234
        OnClick = NovoCarn1Click
      end
      object OutraVia2: TMenuItem
        Caption = 'Outra Via Avulso'
        OnClick = OutraVia2Click
      end
      object OutraviadeTodas1: TMenuItem
        Caption = 'Outra Via de Todas'
        OnClick = OutraviadeTodas1Click
      end
    end
    object MenuItem3: TMenuItem
      Caption = 'Boletos'
      object MenuItem4: TMenuItem
        Caption = 'Novo Boleto'
        OnClick = NovoBoleto1Click
      end
      object MenuItem5: TMenuItem
        Caption = 'Outra Via'
        OnClick = OutraVia1Click
      end
      object Manual1: TMenuItem
        Caption = 'Manual'
        OnClick = Manual1Click
      end
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object Recibos1: TMenuItem
      Caption = 'Recibos'
      object GrandeComValorDevido1: TMenuItem
        Caption = '01 - Grande Com Valor Devido'
        OnClick = GrandeComValorDevido1Click
      end
      object GrandecomValorPagocomLogo1: TMenuItem
        Caption = '02 - Recibo Com Logo'
        OnClick = GrandecomValorPagocomLogo1Click
      end
      object GrandeComValorPago1: TMenuItem
        Caption = '03 - Grande Com Valor Pago'
        OnClick = GrandeComValorPago1Click
      end
      object GrandeComValorFinal1: TMenuItem
        Caption = '04 - Grande Com Valor Final'
        OnClick = GrandeComValorFinal1Click
      end
      object GrandeSemCorreo1: TMenuItem
        Caption = '05 - Grande Sem Corre'#231#227'o'
        OnClick = GrandeSemCorreo1Click
      end
      object N06RecibodaFatura1: TMenuItem
        Caption = '06 - Recibo da Fatura'
        OnClick = N06RecibodaFatura1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cupom1Coluna1: TMenuItem
        Caption = 'Cupom 1 Coluna'
        OnClick = Cupom1Coluna1Click
      end
      object Cupom2Colunas1: TMenuItem
        Caption = 'Cupom 2 Colunas'
        object ValorPago1: TMenuItem
          Caption = 'Valor Pago'
          OnClick = ValorPago1Click
        end
        object ValorDevido1: TMenuItem
          Caption = 'Valor Devido'
          OnClick = ValorDevido1Click
        end
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MarcarcomoSCPC1: TMenuItem
      Caption = 'Marcar/Desmarcar SCPC'
      OnClick = MarcarcomoSCPC1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ExtratodeContas1: TMenuItem
      Caption = 'Extrato de Contas'
      object ComdadosdePessoaJurdica1: TMenuItem
        Caption = 'Com dados de Pessoa Jur'#237'dica'
        OnClick = ComdadosdePessoaJurdica1Click
      end
      object ComdadosdePessoaFsica1: TMenuItem
        Caption = 'Com dados de Pessoa F'#237'sica'
        OnClick = ComdadosdePessoaFsica1Click
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      OnClick = DesmarcarTodas1Click
    end
    object FiltrarContasMarcadas1: TMenuItem
      Caption = 'Filtrar Contas Marcadas'
      OnClick = FiltrarContasMarcadas1Click
    end
    object AgruparContasSelecionadas1: TMenuItem
      Caption = 'Agrupar Contas Selecionadas'
      OnClick = AgruparContasSelecionadas1Click
    end
  end
  object FsDsRel02: TfrDBDataSet
    DataSource = DMCONTA.DRel
    Left = 376
    Top = 30
  end
  object FsRel02: TfrReport
    Dataset = FsDsRel02
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 408
    Top = 30
    ReportForm = {18000000}
  end
  object RelCtaReceber: TPopupMenu
    Left = 510
    Top = 41
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      OnClick = Clientes1Click
    end
    object Documento1: TMenuItem
      Caption = 'Documento'
      OnClick = Documento1Click
    end
    object DocumentoAgrupado1: TMenuItem
      Caption = 'Documento Agrupado'
      OnClick = DocumentoAgrupado1Click
    end
    object RelaodosRecebimentos1: TMenuItem
      Caption = 'Rela'#231#227'o dos Recebimentos'
      OnClick = RelaodosRecebimentos1Click
    end
    object DocumentoCorreo1: TMenuItem
      Caption = 'Documento Corre'#231#227'o'
      OnClick = DocumentoCorreo1Click
    end
    object FichadeCorreo1: TMenuItem
      Caption = 'Ficha de Corre'#231#227'o'
      OnClick = FichadeCorreo1Click
    end
    object SetordeVenda1: TMenuItem
      Caption = 'Setor de Venda'
      OnClick = SetordeVenda1Click
    end
    object ContasaReceberCliente1: TMenuItem
      Caption = 'Contas a Receber Cliente'
      OnClick = ContasaReceberCliente1Click
    end
    object BoletosEmitidos1: TMenuItem
      Caption = 'Boletos Emitidos'
      OnClick = BoletosEmitidos1Click
    end
    object ExtratodeClientes1: TMenuItem
      AutoCheck = True
      Caption = 'Extrato de Clientes'
      RadioItem = True
      object ComDadosdePessoaFsica2: TMenuItem
        Caption = 'Com Dados de Pessoa F'#237'sica'
        OnClick = ComDadosdePessoaFsica2Click
      end
      object ComDadosdePessoaJurdica2: TMenuItem
        Caption = 'Com Dados de Pessoa Jur'#237'dica'
        OnClick = ComDadosdePessoaJurdica2Click
      end
    end
    object CtasaReceberVencidaseBaixadas1: TMenuItem
      Caption = 'Ctas a Receber Vencidas e Baixadas'
      OnClick = CtasaReceberVencidaseBaixadas1Click
    end
  end
end
