inherited FMovBanco: TFMovBanco
  Left = 213
  Top = 109
  ActiveControl = TCLancamentos
  Caption = 'FMovBanco'
  ClientHeight = 539
  ClientWidth = 786
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 785
    Height = 506
  end
  inherited LCaixa: TLabel
    Left = 646
    Top = 547
  end
  inherited LUsuario: TLabel
    Left = 481
    Top = 547
  end
  inherited ShapeRodape1: TShape
    Left = 642
    Top = 547
  end
  inherited ShapeRodape2: TShape
    Left = 640
    Top = 547
  end
  inherited LDescTitulo: TLabel
    Left = 507
    Top = 18
    Width = 175
    Caption = 'Movimenta'#231#227'o Banc'#225'ria'
  end
  inherited PCadastro: TPanel
    Left = 10
    Top = 49
    Width = 770
    Height = 484
    inherited Panel4: TPanel
      Left = 0
      Width = 768
      Height = 451
      object Label4: TLabel
        Left = 122
        Top = 48
        Width = 68
        Height = 20
        Caption = 'Dt. Lan'#231'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 335
        Top = 48
        Width = 76
        Height = 20
        Caption = 'Hrs. Lan'#231'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 440
        Top = 48
        Width = 76
        Height = 20
        Caption = 'Prev. Mov.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 543
        Top = 48
        Width = 74
        Height = 20
        Caption = 'Opera'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 104
        Width = 73
        Height = 20
        Caption = 'Cobran'#231'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 224
        Width = 66
        Height = 20
        Caption = 'Hist'#243'rico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 16
        Top = 165
        Width = 53
        Height = 20
        Caption = 'Moeda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 16
        Top = 48
        Width = 41
        Height = 20
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 228
        Top = 48
        Width = 59
        Height = 20
        Caption = 'Dt. Ref.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object PBanco: TPanel
        Left = 16
        Top = 149
        Width = 265
        Height = 90
        BevelWidth = 3
        Enabled = False
        TabOrder = 14
        Visible = False
        object DBGCTA: TDBGrid
          Left = 5
          Top = 6
          Width = 254
          Height = 79
          Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
          Color = 16121836
          Ctl3D = False
          DataSource = DMCONTA.DAlx
          Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGCTAKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMCAIXA'
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Caixa'
              Visible = True
            end>
        end
      end
      object PChequeEmit: TPanel
        Left = 288
        Top = 96
        Width = 465
        Height = 145
        BevelOuter = bvNone
        Color = 13750737
        TabOrder = 7
        Visible = False
        object Label13: TLabel
          Left = 0
          Top = 7
          Width = 81
          Height = 20
          Caption = 'N'#186' Cheque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNUMCHEQUEEMIT: TDBColorEdit
          Left = 1
          Top = 27
          Width = 200
          Height = 22
          Ctl3D = False
          DataField = 'NUMCHEQUE'
          DataSource = DMBANCO.DMovBanco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBDTVencExit
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object PChequeRec: TPanel
        Left = 288
        Top = 96
        Width = 465
        Height = 145
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 8
        Visible = False
        object Label14: TLabel
          Left = 0
          Top = 7
          Width = 81
          Height = 20
          Caption = 'N'#186' Cheque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 201
          Top = 7
          Width = 83
          Height = 20
          Caption = 'N'#186' Agencia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 333
          Top = 7
          Width = 68
          Height = 20
          Caption = 'N'#186' Conta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 0
          Top = 94
          Width = 147
          Height = 20
          Caption = 'Portador do Cheque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 325
          Top = 94
          Width = 66
          Height = 20
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNUMCHEQUEREC: TDBColorEdit
          Left = 1
          Top = 27
          Width = 200
          Height = 22
          Ctl3D = False
          DataField = 'NUMCHEQUE'
          DataSource = DMBANCO.DMovBanco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBDTVencExit
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        inline FrmBuscaBanco: TFrmBusca
          Left = 0
          Top = 51
          Width = 468
          Height = 40
          Color = 16772332
          ParentColor = False
          TabOrder = 3
          inherited LTextoBusca: TLabel
            Top = -3
            Width = 46
            Caption = 'Banco:'
          end
          inherited LUZOPEN: TShape
            Left = 418
          end
          inherited LUZMINUS: TShape
            Left = 436
          end
          inherited EdDescricao: TFlatEdit
            Left = 73
            Width = 346
          end
          inherited BTNOPEN: TBitBtn
            Left = 419
            OnClick = FrmBuscaBancoBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 437
            Hint = 'Pressione para apagar o banco'
            OnClick = FrmBuscaBancoBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            OnKeyPress = FrmBuscaBancoEDCodigoKeyPress
          end
        end
        object EdNumAg: TColorMaskEdit
          Left = 202
          Top = 27
          Width = 131
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdNumConta: TColorMaskEdit
          Left = 334
          Top = 27
          Width = 131
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDPORTADOR: TColorMaskEdit
          Left = 1
          Top = 114
          Width = 323
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDFONEPORT: TColorMaskEdit
          Left = 326
          Top = 114
          Width = 138
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      inline FrmConta: TFrmBusca
        Left = 16
        Top = 286
        Width = 744
        Height = 43
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        inherited LTextoBusca: TLabel
          Left = 0
          Width = 164
          Caption = 'Conta para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 693
        end
        inherited LUZMINUS: TShape
          Left = 711
        end
        inherited EdDescricao: TFlatEdit
          Left = 146
          Width = 548
        end
        inherited BTNOPEN: TBitBtn
          Left = 694
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 712
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Left = 0
          Width = 144
          OnKeyPress = FrmContaEDCodigoKeyPress
        end
      end
      object DBDTLanc: TDBColorEdit
        Left = 123
        Top = 67
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'DTLANC'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = DBDTLancExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHsLanc: TDBColorEdit
        Left = 335
        Top = 67
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'HORALANC'
        DataSource = DMBANCO.DMovBanco
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDTVenc: TDBColorEdit
        Left = 440
        Top = 67
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'DTVENC'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnExit = DBDTVencExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHistorico: TDBColorEdit
        Left = 16
        Top = 243
        Width = 737
        Height = 22
        Ctl3D = False
        DataField = 'HISTORICO'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBValor: TDBColorEdit
        Left = 16
        Top = 67
        Width = 97
        Height = 22
        Ctl3D = False
        DataField = 'VALOR'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBOperacao: TDBColorComboBox
        Left = 543
        Top = 67
        Width = 210
        Height = 24
        Ctl3D = False
        DataField = 'TIPOOP'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'ENTRADA'
          'SAIDA')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnExit = DBOperacaoExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBCobranca: TDBColorComboBox
        Left = 16
        Top = 123
        Width = 265
        Height = 24
        Ctl3D = False
        DataField = 'COBRANCA'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'CHEQUE'
          'DEP. AUTO'
          'DEP. CX'
          'D'#201'B. AUTO'
          'SAQUE C.E.'
          'CART'#195'O'
          'T. CAIXA'
          'T. CX CHQ')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnExit = DBCobrancaExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorComboBox3: TDBColorComboBox
        Left = 16
        Top = 184
        Width = 265
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 11
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object RGMOVIMENTO: TRadioGroup
        Left = 16
        Top = 352
        Width = 265
        Height = 48
        Caption = 'Este lan'#231'amento j'#225' foi movimentado'
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'SIM'
          'N'#195'O')
        ParentCtl3D = False
        TabOrder = 12
        OnClick = RGMOVIMENTOClick
      end
      object PDtMov: TPanel
        Left = 285
        Top = 352
        Width = 172
        Height = 46
        BevelOuter = bvNone
        Color = 16772332
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 13
        object Label2: TLabel
          Left = 3
          Top = -1
          Width = 62
          Height = 20
          Caption = 'Dt. Mov.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBColorEdit1: TMaskEdit
          Left = 3
          Top = 20
          Width = 113
          Height = 28
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
      end
      object DBColorEdit2: TDBColorEdit
        Left = 229
        Top = 67
        Width = 94
        Height = 22
        Ctl3D = False
        DataField = 'DTREF'
        DataSource = DMBANCO.DMovBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Width = 768
      object DBText1: TDBText [0]
        Left = 496
        Top = 5
        Width = 265
        Height = 17
        DataField = 'DESCBANCO'
        DataSource = DMBANCO.DWCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText [1]
        Left = 288
        Top = 5
        Width = 89
        Height = 17
        Alignment = taRightJustify
        DataField = 'NUMAGENCIA'
        DataSource = DMBANCO.DWCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText [2]
        Left = 391
        Top = 5
        Width = 106
        Height = 17
        DataField = 'NUMCTACOR'
        DataSource = DMBANCO.DWCtaCor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel [3]
        Left = 381
        Top = 5
        Width = 6
        Height = 20
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited PComunica: TPanel [10]
    Left = 117
  end
  inherited PConsulta: TPanel [11]
    Left = 10
    Top = 49
    Width = 772
    Height = 485
    object Bevel1: TBevel [0]
      Left = 0
      Top = 36
      Width = 765
      Height = 84
    end
    object Label1: TLabel [1]
      Left = 144
      Top = 42
      Width = 117
      Height = 13
      Caption = 'CONTA  CORRENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel [2]
      Left = 8
      Top = 453
      Width = 42
      Height = 16
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel [3]
      Left = 8
      Top = 466
      Width = 55
      Height = 16
      Caption = 'Anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel [4]
      Left = 70
      Top = 454
      Width = 31
      Height = 29
      Caption = '=>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel [5]
      Left = 459
      Top = 456
      Width = 95
      Height = 24
      Caption = 'Somat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel [6]
      Left = 556
      Top = 453
      Width = 31
      Height = 29
      Caption = '=>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PmostraCheque: TPanel [7]
      Left = 288
      Top = 296
      Width = 481
      Height = 153
      Hint = 'Pressione ESC para esconder este painel'
      BevelWidth = 3
      Color = 16772332
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      object Label20: TLabel
        Left = 9
        Top = 7
        Width = 83
        Height = 20
        Caption = 'N'#186' Agencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 141
        Top = 7
        Width = 68
        Height = 20
        Caption = 'N'#186' Conta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 8
        Top = 94
        Width = 147
        Height = 20
        Caption = 'Portador do Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 333
        Top = 94
        Width = 66
        Height = 20
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inline FRMMOSTRABANCO: TFrmBusca
        Left = 8
        Top = 51
        Width = 464
        Height = 40
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Top = -3
          Width = 46
          Caption = 'Banco:'
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 391
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 419
          Visible = False
        end
        inherited BTNMINUS: TBitBtn
          Left = 441
          Hint = 'Pressione para apagar o banco'
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Text = '00'
        end
      end
      object EDMOSTRANUMAG: TColorMaskEdit
        Left = 10
        Top = 27
        Width = 131
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDMOSTRANUMCONTA: TColorMaskEdit
        Left = 142
        Top = 27
        Width = 131
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDMOSTRAPORTADOR: TColorMaskEdit
        Left = 9
        Top = 114
        Width = 323
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDMOSTRAFONE: TColorMaskEdit
        Left = 334
        Top = 114
        Width = 138
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object TCLancamentos: TFlatTabControl [8]
      Left = 0
      Top = 167
      Width = 765
      Height = 285
      Tabs.Strings = (
        'N'#227'o movimentados'
        'Em atraso'
        'Movimentados')
      ActiveTab = 2
      OnTabChanged = TCLancamentosTabChanged
      object PMoviment: TPanel
        Left = 2
        Top = 18
        Width = 761
        Height = 265
        BevelInner = bvLowered
        Color = 13750737
        TabOrder = 2
        object DBGrid3: TDBGrid
          Left = 3
          Top = 3
          Width = 755
          Height = 260
          Color = 15794175
          Ctl3D = False
          DataSource = DMBANCO.DWMovB
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
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOOP'
              Title.Caption = 'Opera'#231#227'o'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor'
              Width = 53
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
              FieldName = 'DTVENC'
              Title.Caption = 'Dt. Venc.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTMOV'
              Title.Caption = 'Dt. Mov.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMCHEQUE'
              Title.Caption = 'Cheque'
              Width = 47
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
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORALANC'
              Title.Caption = 'Hrs. Lan'#231
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Classifica'#231#227'o'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'Conta'
              Width = 64
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
      object PNmov: TPanel
        Left = 2
        Top = 18
        Width = 761
        Height = 265
        BevelInner = bvLowered
        Color = 13750737
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 3
          Top = 3
          Width = 756
          Height = 260
          Color = 15794175
          Ctl3D = False
          DataSource = DMBANCO.DWMovB
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
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOOP'
              Title.Caption = 'Opera'#231#227'o'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANC'
              Title.Caption = 'Dt. Lan'#231'.'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Title.Caption = 'Dt. Venc.'
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
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORALANC'
              Title.Caption = 'Hrs. Lan'#231
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Classifica'#231#227'o'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'Conta'
              Width = 64
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
      object PAtraso: TPanel
        Left = 2
        Top = 18
        Width = 761
        Height = 265
        BevelInner = bvLowered
        Color = 13750737
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 3
          Top = 3
          Width = 755
          Height = 260
          Color = 15794175
          Ctl3D = False
          DataSource = DMBANCO.DWMovB
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'TIPOOP'
              Title.Caption = 'Opera'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor'
              Width = 53
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
              Title.Caption = 'Hrs. Lan'#231
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Title.Caption = 'Dt. Venc.'
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
              FieldName = 'COBRANCA'
              Title.Caption = 'Cobran'#231'a'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSIFICACAO'
              Title.Caption = 'Classifica'#231#227'o'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTA'
              Title.Caption = 'Conta'
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
    inherited GroupBox1: TGroupBox
      Left = 0
      Top = 126
      Width = 765
      Height = 38
      inherited EdNome: TFlatEdit
        Left = 464
        Top = 13
        Width = 209
        Height = 20
        Hint = 
          'Informe o hist'#243'rico e pressione ENTER para selecionar ou ESC par' +
          'a liberar todos de forma ordenada por hist'#243'rico'
        Font.Height = -11
        TabOrder = 5
        Text = 'Digite o hist'#243'rico e press enter'
      end
      inherited BtnSelecionar: TBitBtn
        Left = 610
        Top = 8
        Width = 92
        Height = 9
        TabOrder = 6
      end
      object EDDTLanc: TColorMaskEdit
        Left = 112
        Top = 13
        Width = 81
        Height = 20
        Hint = 
          'Informe a data de lan'#231'amento e pressione ENTER para selecionar o' +
          'u ESC para liberar todos de forma ordenada por data de lan'#231'ament' +
          'o'
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = EDDTLancKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDDTVenc: TColorMaskEdit
        Left = 200
        Top = 13
        Width = 81
        Height = 20
        Hint = 
          'Informe a data de vencimento e pressione ENTER para selecionar o' +
          'u ESC para liberar todos de forma ordenada por data de venciment' +
          'o'
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '  /  /    '
        OnKeyPress = EDDTVencKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object TCOper: TComboBox
        Left = 2
        Top = 13
        Width = 103
        Height = 21
        Hint = 
          'Informe a opera'#231#227'o e pressione ENTER para selecionar ou ESC para' +
          ' liberar todos de forma ordenada por opera'#231#227'o'
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyPress = TCOperKeyPress
        Items.Strings = (
          'ENTRADA'
          'SAIDA')
      end
      object EdNumCheque: TColorMaskEdit
        Left = 376
        Top = 13
        Width = 81
        Height = 20
        Hint = 
          'Informe o N'#186' do cheque e pressione ENTER para selecionar ou ESC ' +
          'para liberar todos de forma ordenada por N'#186' cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = 'N'#186' Chq'
        OnKeyPress = EdNumChequeKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object eddtmov: TColorMaskEdit
        Left = 288
        Top = 13
        Width = 81
        Height = 20
        Hint = 
          'Informe a data de moviment. e pressione ENTER para selecionar ou' +
          ' ESC para liberar todos de forma ordenada por data de moviment.'
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = '  /  /    '
        OnKeyPress = eddtmovKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object edNumeroCartao: TColorMaskEdit
        Left = 678
        Top = 12
        Width = 81
        Height = 20
        Hint = 
          'Informe o N'#186' do cheque e pressione ENTER para selecionar ou ESC ' +
          'para liberar todos de forma ordenada por N'#186' cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        Text = 'N'#186' Cart'#227'o'
        OnEnter = edNumeroCartaoEnter
        OnExit = edNumeroCartaoExit
        OnKeyPress = edNumeroCartaoKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 765
      inherited BtnRelatorio: TBitBtn
        Width = 89
        PopupMenu = RelatorioBanco
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 432
        Width = 71
      end
      object BtnBaixar: TBitBtn
        Left = 502
        Top = 2
        Width = 115
        Height = 25
        Hint = 'Pressione para efetuar a movimenta'#231#227'o do lan'#231'amento selecionado'
        Caption = 'Movimentar - F9'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnBaixarClick
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
      object BitBtn1: TBitBtn
        Left = 616
        Top = 2
        Width = 115
        Height = 25
        Hint = 'Pressione para efetuar a movimenta'#231#227'o do lan'#231'amento selecionado'
        Caption = 'Acumular Saldo'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BitBtn1Click
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777000000
          0000000000007777770788888888800000007777770F77777777800000007777
          770F77700777800000007777000F70000007800000007700EC0F777777778000
          000070EEEC0FFFFFFFFF700000000EEEEE00000000000000000070EEFEECCCBB
          BB3077000000770EFEEECC8BBBB3070000007770EEEE228BB13B070000007770
          EEE2222FB11B3000000077770EE22222111B3000000077770EE222211B000700
          0000777770E22222007777000000777770FEE2207777770000007777770EE007
          777777000000777777700777777777000000}
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 142
      Top = 55
      Width = 613
      Height = 62
      BorderStyle = bsNone
      Font.Height = -16
      Font.Style = [fsBold]
      ImeMode = imClose
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnCellClick = DBGridCadastroPadraoCellClick
      OnColumnMoved = DBGridCadastroPadraoColumnMoved
      OnKeyUp = DBGridCadastroPadraoKeyUp
      OnMouseUp = DBGridCadastroPadraoMouseUp
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
          Width = 350
          Visible = True
        end>
    end
    object EdTotMov: TFloatEdit
      Left = 588
      Top = 454
      Width = 182
      Height = 28
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0,00'
      ValueFormat = '#,##0.00'
      ValueInteger = 0
    end
    object BtnAbreFechaCX: TBitBtn
      Left = 16
      Top = 70
      Width = 105
      Height = 25
      Caption = 'BtnAbreFechaCX'
      TabOrder = 6
      OnClick = BtnAbreFechaCXClick
    end
    object EdSaldo: TFloatEdit
      Left = 104
      Top = 454
      Width = 140
      Height = 28
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
  end
  object RelatorioBanco: TPopupMenu
    Left = 524
    Top = 322
    object Movimentacao: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      OnClick = MovimentacaoClick
    end
    object ChequesEmitidos: TMenuItem
      Caption = 'Cheques Emitidos'
      OnClick = ChequesEmitidosClick
    end
    object ChequesRecebidos: TMenuItem
      Caption = 'Cheques Recebidos'
      OnClick = ChequesRecebidosClick
    end
    object SaldodeCtasCorrente: TMenuItem
      Caption = 'Saldo de Ctas. Corrente'
      OnClick = SaldodeCtasCorrenteClick
    end
    object MovimentaoporPeriodo: TMenuItem
      Caption = 'Movimenta'#231#227'o por Pedido'
      OnClick = MovimentaoporPeriodoClick
    end
  end
end
