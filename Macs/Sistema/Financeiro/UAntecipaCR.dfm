inherited FAntecipaCR: TFAntecipaCR
  Left = 420
  Top = 113
  Caption = 'Antecipa'#231#227'o de contas a receber'
  ClientHeight = 402
  ClientWidth = 440
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PEstornoLancamento: TPanel [0]
    Left = 8
    Top = 8
    Width = 425
    Height = 388
    BevelOuter = bvNone
    Color = clMenu
    TabOrder = 4
    object Label10: TLabel
      Left = 1
      Top = 0
      Width = 152
      Height = 20
      Caption = 'Valor para Estorno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 1
      Top = 176
      Width = 114
      Height = 13
      Caption = 'Valores Estornados:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 242
      Top = 0
      Width = 156
      Height = 20
      Caption = 'Data de refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 1
      Top = 61
      Width = 124
      Height = 16
      Caption = 'Taxa de cobrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdValorEstorno: TColorEditFloat
      Left = 1
      Top = 24
      Width = 177
      Height = 32
      Color = 16777100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object btnEstornaValores: TBitBtn
      Left = 243
      Top = 363
      Width = 169
      Height = 25
      Caption = 'Estornar Valores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnEstornaValoresClick
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 288
      Width = 411
      Height = 73
      Caption = 'Lan'#231'ar valores em'
      TabOrder = 4
      object PAntecipaCaixaEstorno: TPanel
        Left = 128
        Top = 8
        Width = 279
        Height = 61
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 3
        object Label15: TLabel
          Left = 4
          Top = 3
          Width = 145
          Height = 13
          Caption = 'Caixas dipon'#237'veis para estorno'
        end
        object DbgSelecionaCaixaEstorno: TDBGrid
          Left = 5
          Top = 17
          Width = 260
          Height = 41
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DbgSelecionaCaixaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'INSTITUICAO'
              Title.Caption = 'Caixa'
              Width = 200
              Visible = True
            end>
        end
      end
      object PAntecipaBancoEstorno: TPanel
        Left = 128
        Top = 8
        Width = 279
        Height = 61
        BevelOuter = bvNone
        Color = clSkyBlue
        TabOrder = 2
        object Label14: TLabel
          Left = 4
          Top = 3
          Width = 184
          Height = 13
          Caption = 'Conta corrente dispon'#237'vel para estorno'
        end
        object DbgSelecionaCtaCorrenteEstorno: TDBGrid
          Left = 5
          Top = 17
          Width = 268
          Height = 41
          DataSource = MDO.DConsulta
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DbgSelecionaCtaCorrenteKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTITUICAO'
              Width = 180
              Visible = True
            end>
        end
      end
      object rbCaixaEstorno: TRadioButton
        Left = 8
        Top = 47
        Width = 113
        Height = 17
        Caption = 'Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbCaixaEstornoClick
      end
      object rbBancoEstorno: TRadioButton
        Left = 8
        Top = 22
        Width = 113
        Height = 17
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbBancoEstornoClick
      end
    end
    object EdDataReferenciaEstorno: TColorMaskEdit
      Left = 243
      Top = 24
      Width = 176
      Height = 32
      Color = clMoneyGreen
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object MValoresEstornados: TMemo
      Left = 0
      Top = 192
      Width = 417
      Height = 81
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'R$ 15,00 - 4.10.001 -  Venda de mercadoria a prazo'
        ''
        'R$ 25,00 - 4.10.002 -  Presta'#231#227'o de servi'#231'os a prazo')
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EdTaxaEstorno: TColorEditFloat
      Left = 1
      Top = 77
      Width = 177
      Height = 28
      Color = 14803455
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      OnExit = edTaxaAntecipacaoExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    inline FrmContaTaxaEstorno: TFrmBusca
      Left = 0
      Top = 108
      Width = 425
      Height = 67
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      inherited LTextoBusca: TLabel
        Width = 277
        Caption = 'Conta para Lan'#231'amento do taxa cobrada:'
      end
      inherited LUZOPEN: TShape
        Left = 386
        Top = 39
        Width = 26
        Height = 28
      end
      inherited LUZMINUS: TShape
        Left = 426
        Top = 39
        Width = 23
      end
      inherited EdDescricao: TFlatEdit
        Left = 2
        Top = 42
        Width = 383
        Height = 22
        Font.Height = -13
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 385
        Top = 42
        Width = 23
        Height = 23
        OnClick = FrmContaTaxaEstornoBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 423
        Top = 42
        Visible = False
      end
      inherited EDCodigo: TFlatEdit
        Top = 19
        Width = 151
        Height = 22
        ColorFlat = clInactiveCaption
        Font.Height = -13
        Font.Style = []
        OnKeyPress = FrmContaTaxaEstornoEDCodigoKeyPress
      end
    end
  end
  object PLiquidar: TPanel [1]
    Left = 8
    Top = 8
    Width = 425
    Height = 388
    Color = 16772332
    TabOrder = 3
    object Label6: TLabel
      Left = 0
      Top = 0
      Width = 206
      Height = 16
      Caption = 'Pesquisa contas antecipadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label8: TLabel
      Left = 102
      Top = 16
      Width = 155
      Height = 13
      Caption = 'Vencimento:                                '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 266
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object EdNumParc: TColorMaskEdit
      Left = 3
      Top = 30
      Width = 90
      Height = 23
      Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyPress = EdNumParcKeyPress
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdVencimento: TColorMaskEdit
      Left = 102
      Top = 30
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
      TabOrder = 1
      Text = '  /  /    '
      OnKeyPress = EdVencimentoKeyPress
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object edvencimento2: TColorMaskEdit
      Left = 182
      Top = 30
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
      TabOrder = 2
      Text = '  /  /    '
      OnKeyPress = EdVencimentoKeyPress
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object ColorMaskEdit1: TColorMaskEdit
      Left = 267
      Top = 30
      Width = 150
      Height = 23
      Hint = 'Press ENTER para filtrar. Press ESC para mostrar todos ordenados'
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object DBGridCadastroPadrao: TDBGrid
      Left = 4
      Top = 66
      Width = 413
      Height = 315
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
      PopupMenu = PLiquida
      ReadOnly = True
      TabOrder = 4
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
          FieldName = 'COBRANCA'
          Title.Caption = 'Cobran'#231'a'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Width = 64
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
          FieldName = 'NUMCARTAO'
          Title.Caption = 'N'#186' Cart'#227'o'
          Width = 63
          Visible = True
        end>
    end
  end
  object PCancelar: TPanel [2]
    Left = 8
    Top = 8
    Width = 422
    Height = 449
    Color = 16772332
    TabOrder = 2
  end
  object PAntecipar: TPanel [3]
    Left = 8
    Top = 8
    Width = 425
    Height = 388
    BevelOuter = bvNone
    Color = clMenu
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 0
      Width = 176
      Height = 20
      Caption = 'Valor de antecipa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTaxaImportacao: TLabel
      Left = 1
      Top = 72
      Width = 139
      Height = 20
      Caption = 'Taxa de cobrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 224
      Width = 133
      Height = 20
      Caption = 'Saldo a receber:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 234
      Top = 224
      Width = 156
      Height = 20
      Caption = 'Data de refer'#234'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edValorAntecipacao: TColorEditFloat
      Left = 1
      Top = 24
      Width = 177
      Height = 32
      Color = 16777100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object edTaxaAntecipacao: TColorEditFloat
      Left = 1
      Top = 96
      Width = 177
      Height = 32
      Color = 16777147
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnExit = edTaxaAntecipacaoExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    inline FrmConta: TFrmBusca
      Left = 0
      Top = 143
      Width = 425
      Height = 75
      Color = 16772332
      ParentColor = False
      TabOrder = 2
      inherited LTextoBusca: TLabel
        Width = 287
        Height = 18
        Caption = 'Conta para Lan'#231'amento do Desconto:'
        Font.Height = -15
      end
      inherited LUZOPEN: TShape
        Left = 386
        Top = 43
        Width = 26
        Height = 28
      end
      inherited LUZMINUS: TShape
        Left = 426
        Top = 39
        Width = 23
      end
      inherited EdDescricao: TFlatEdit
        Left = 2
        Top = 46
        Width = 383
        Height = 24
        Font.Height = -15
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 385
        Top = 46
        Width = 23
        Height = 23
        OnClick = FrmContaBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 423
        Top = 42
        Visible = False
      end
      inherited EDCodigo: TFlatEdit
        Top = 19
        Width = 151
        Height = 24
        ColorFlat = clInactiveCaption
        Font.Height = -15
        Font.Style = []
        OnKeyPress = FrmContaEDCodigoKeyPress
      end
    end
    object edSaldoAntecipacao: TColorEditFloat
      Left = 1
      Top = 248
      Width = 177
      Height = 32
      Color = 12566527
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object btnAnteciparValores: TBitBtn
      Left = 243
      Top = 363
      Width = 169
      Height = 25
      Caption = 'Antecipar Valores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnAnteciparValoresClick
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 288
      Width = 411
      Height = 73
      Caption = 'Lan'#231'ar valores em'
      TabOrder = 6
      object PAntecipaBanco: TPanel
        Left = 128
        Top = 8
        Width = 279
        Height = 61
        BevelOuter = bvNone
        Color = clSkyBlue
        TabOrder = 2
        object Label2: TLabel
          Left = 4
          Top = 3
          Width = 122
          Height = 13
          Caption = 'Conta corrente dispon'#237'vel'
        end
        object DbgSelecionaCtaCorrente: TDBGrid
          Left = 5
          Top = 17
          Width = 268
          Height = 41
          DataSource = MDO.DConsulta
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DbgSelecionaCtaCorrenteKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INSTITUICAO'
              Width = 180
              Visible = True
            end>
        end
      end
      object PAntecipaCaixa: TPanel
        Left = 128
        Top = 8
        Width = 279
        Height = 61
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 3
        object Label4: TLabel
          Left = 4
          Top = 3
          Width = 83
          Height = 13
          Caption = 'Caixas dipon'#237'veis'
        end
        object DbgSelecionaCaixa: TDBGrid
          Left = 5
          Top = 17
          Width = 260
          Height = 41
          Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DbgSelecionaCaixaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'INSTITUICAO'
              Title.Caption = 'Caixa'
              Width = 200
              Visible = True
            end>
        end
      end
      object rbCaixa: TRadioButton
        Left = 8
        Top = 47
        Width = 113
        Height = 17
        Caption = 'Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rbCaixaClick
      end
      object rbBanco: TRadioButton
        Left = 8
        Top = 22
        Width = 113
        Height = 17
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rbBancoClick
      end
    end
    object edDataReferencia: TColorMaskEdit
      Left = 235
      Top = 248
      Width = 176
      Height = 32
      Color = clMoneyGreen
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  inherited PComunica: TPanel
    Left = 642
    Top = 352
  end
  object PLiquida: TPopupMenu
    Left = 32
    Top = 8
    object LiquidarConta1: TMenuItem
      Caption = 'Liquidar Conta'
      OnClick = LiquidarConta1Click
    end
  end
end
