inherited FFaturaContas: TFFaturaContas
  Left = 146
  Top = 46
  Caption = 'FFaturaContas'
  ClientHeight = 507
  ClientWidth = 850
  OldCreateOrder = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 12
    Top = 97
    Width = 98
    Height = 16
    Caption = 'Pagamento em :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [1]
    Left = 150
    Top = 97
    Width = 83
    Height = 16
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel [2]
    Left = 258
    Top = 97
    Width = 59
    Height = 16
    Caption = 'Data Ref.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [3]
    Left = 704
    Top = 441
    Width = 37
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [4]
    Left = 582
    Top = 441
    Width = 49
    Height = 16
    Caption = 'Subtotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [5]
    Left = 490
    Top = 441
    Width = 58
    Height = 16
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel [6]
    Left = 354
    Top = 441
    Width = 32
    Height = 16
    Caption = 'Multa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [7]
    Left = 12
    Top = 50
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [8]
    Left = 65
    Top = 50
    Width = 69
    Height = 16
    Caption = 'CPF/CNPJ:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [9]
    Left = 178
    Top = 50
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
  inherited PComunica: TPanel
    Left = 490
    Top = 664
    TabOrder = 10
  end
  inline FrmBuscaFormapag: TFrmBusca
    Left = 612
    Top = 54
    Width = 221
    Height = 43
    Color = 16772332
    ParentColor = False
    TabOrder = 11
    inherited LTextoBusca: TLabel
      Top = -3
      Width = 145
      Caption = 'Forma de pagamento:'
    end
    inherited LUZOPEN: TShape
      Left = 176
      Width = 20
      Visible = True
    end
    inherited LUZMINUS: TShape
      Left = 196
      Width = 20
      Visible = True
    end
    inherited EdDescricao: TFlatEdit
      Left = 34
      Width = 143
      TabStop = False
      ColorFlat = clWhite
      Font.Style = []
      TabOrder = 2
    end
    inherited BTNOPEN: TBitBtn
      Left = 177
      Hint = 'Pressione para selecionar forma de pgto.'
      OnClick = FrmBusca1BTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 196
      TabOrder = 0
      OnClick = FrmBuscaFormapagBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 32
      ColorFlat = 15269845
      Font.Style = []
      TabOrder = 3
    end
  end
  object cbPagamento: TComboBox
    Left = 12
    Top = 116
    Width = 130
    Height = 21
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = 'Carteira'
    OnExit = cbPagamentoExit
    OnKeyPress = cbPagamentoKeyPress
    Items.Strings = (
      'Carteira'
      'Cheque'
      'Banco'
      'Boleto'
      'Cr'#233'dito'
      'C - Cart'#227'o'
      'D - Cart'#227'o')
  end
  object EdDoc: TEdit
    Left = 150
    Top = 116
    Width = 101
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, informe o cliente padr'#227'o consumidor'
    Color = 16121836
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object EdDataRef: TMaskEdit
    Left = 259
    Top = 116
    Width = 92
    Height = 21
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 4
    Text = '  /  /    '
  end
  inline FrmBuscaConta: TFrmBusca
    Left = 355
    Top = 101
    Width = 478
    Height = 36
    Color = 16772332
    ParentColor = False
    TabOrder = 12
    inherited LTextoBusca: TLabel
      Top = -1
      Width = 164
      Caption = 'Conta para Lan'#231'amento:'
    end
    inherited LUZOPEN: TShape
      Left = 437
      Top = 13
      Width = 19
      Height = 19
    end
    inherited LUZMINUS: TShape
      Left = 457
      Top = 13
      Width = 17
      Height = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 112
      Width = 322
      TabStop = False
      Font.Style = []
      TabOrder = 2
    end
    inherited BTNOPEN: TBitBtn
      Left = 436
      OnClick = FrmBuscaContaBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 454
      TabOrder = 0
      OnClick = FrmBuscaContaBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Left = 1
      Width = 112
      TabStop = False
      ColorFlat = 15269845
      Font.Style = []
      TabOrder = 3
    end
  end
  object DBGridParcelas: TDBGrid
    Left = 11
    Top = 152
    Width = 822
    Height = 281
    Color = 15794175
    Ctl3D = False
    DataSource = DMFINANC.DSALX
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
    TabOrder = 13
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
        Width = 61
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
        FieldName = 'DTLANC'
        Title.Caption = 'Lan'#231'amento'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENC'
        Title.Caption = 'Vencimento'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 75
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
        Width = 148
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
        FieldName = 'CLASSIF'
        Title.Caption = 'Class. Conta'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCCONTA'
        Title.Caption = 'Desc. Conta'
        Width = 102
        Visible = True
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
      end
      item
        Expanded = False
        FieldName = 'BANDEIRA'
        Title.Caption = 'Bandeira'
        Visible = True
      end>
  end
  object edTotal: TEdit
    Left = 704
    Top = 460
    Width = 130
    Height = 26
    AutoSize = False
    Color = clGradientActiveCaption
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '0,00'
    OnExit = edTotalExit
  end
  object edSubTotal: TEdit
    Left = 582
    Top = 460
    Width = 115
    Height = 25
    AutoSize = False
    Color = clGradientActiveCaption
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '0,00'
  end
  object edDesconto: TEdit
    Left = 488
    Top = 460
    Width = 83
    Height = 25
    AutoSize = False
    Color = clGradientActiveCaption
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = '0,00'
    OnExit = edDescontoExit
  end
  object edMulta: TEdit
    Left = 352
    Top = 460
    Width = 83
    Height = 25
    AutoSize = False
    Color = clGradientActiveCaption
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = '0,00'
    OnExit = edMultaExit
  end
  object edCodigo: TEdit
    Left = 12
    Top = 69
    Width = 50
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, informe o cliente padr'#227'o consumidor'
    Color = 15269845
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object edNome: TEdit
    Left = 176
    Top = 69
    Width = 433
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
      'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
      'essione <ESC>.'
    Color = clWhite
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 7
  end
  object edCPFCNPJ: TEdit
    Left = 66
    Top = 69
    Width = 103
    Height = 21
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
      'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
      'essione <ESC>.'
    Color = clWhite
    Ctl3D = True
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 8
  end
  object Painel: TPanel
    Left = 13
    Top = 11
    Width = 820
    Height = 29
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 14
    object BtnFaturar: TBitBtn
      Left = 2
      Top = 2
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para obter novo cadastro'
      Caption = 'Faturar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnFaturarClick
    end
    object BtnApagar: TBitBtn
      Left = 116
      Top = 2
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
      Caption = 'Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnApagarClick
    end
  end
  object PTaxaCartao: TPanel
    Left = 160
    Top = 440
    Width = 185
    Height = 49
    BevelOuter = bvNone
    TabOrder = 16
    Visible = False
    object Label11: TLabel
      Left = 105
      Top = 1
      Width = 61
      Height = 16
      Caption = 'Tx. Cart'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdTxCartao: TEdit
      Left = 102
      Top = 20
      Width = 83
      Height = 25
      AutoSize = False
      Color = clSilver
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '0,00'
      OnExit = EdTxCartaoExit
    end
  end
  object cbImpReciboModelo01: TCheckBox
    Left = 11
    Top = 438
    Width = 206
    Height = 17
    Caption = 'Imprimir recibo modelo 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object EDDescPercento: TEdit
    Left = 451
    Top = 466
    Width = 38
    Height = 19
    Hint = 
      'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
      'o cadastrado, informe o cliente padr'#227'o consumidor'
    AutoSize = False
    Color = clWhite
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    Text = '0,00'
    OnExit = edDescontoExit
  end
  object PBanco: TPanel
    Left = 10
    Top = 135
    Width = 374
    Height = 95
    BevelWidth = 3
    Enabled = False
    TabOrder = 15
    Visible = False
    object DBGCTA: TDBGrid
      Left = 5
      Top = 6
      Width = 364
      Height = 83
      Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
      Color = 16121836
      Ctl3D = False
      DataSource = DMBANCO.DWCtaCor
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
          FieldName = 'NUMAGENCIA'
          Title.Caption = 'Ag'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCTACOR'
          Title.Caption = 'Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
          Width = 214
          Visible = True
        end>
    end
  end
  object cbImpComprovante: TCheckBox
    Left = 11
    Top = 474
    Width = 174
    Height = 17
    Caption = 'Imprimir comprovante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object cbImpReciboModelo02: TCheckBox
    Left = 11
    Top = 456
    Width = 205
    Height = 17
    Caption = 'Imprimir recibo modelo 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
end
