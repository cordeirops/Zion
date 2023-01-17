inherited FServico: TFServico
  Left = 205
  Top = 31
  Caption = 'FServico'
  ClientHeight = 625
  ClientWidth = 789
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 785
    Height = 594
  end
  inherited LDescTitulo: TLabel
    Left = 224
    Width = 154
    Alignment = taCenter
    Caption = 'Cadastro de Servi'#231'os'
  end
  inherited PComunica: TPanel [5]
    Left = 178
    Top = 176
  end
  inherited PBotoes: TPanel [6]
  end
  inherited PCadastro: TPanel [7]
    Left = 10
    Top = 49
    Width = 769
    Height = 568
    inherited Panel1: TPanel [0]
      Left = 0
      Width = 768
      TabOrder = 1
      inherited BtnCancelar: TBitBtn
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
      end
    end
    inherited Panel4: TPanel [1]
      Left = 0
      Width = 768
      Height = 538
      TabOrder = 0
      object Label137: TLabel
        Left = 12
        Top = 16
        Width = 52
        Height = 18
        Caption = 'Grade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LDescSimilar: TLabel
        Left = 87
        Top = 73
        Width = 163
        Height = 18
        Caption = 'Descri'#231#227'o do Servi'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LGarantia: TLabel
        Left = 259
        Top = 178
        Width = 125
        Height = 18
        Caption = 'Quant. Garantia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LEspecificacao: TLabel
        Left = 13
        Top = 125
        Width = 105
        Height = 18
        Caption = 'Especifica'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LTempo: TLabel
        Left = 13
        Top = 178
        Width = 59
        Height = 18
        Caption = 'Tempo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LExec: TLabel
        Left = 108
        Top = 178
        Width = 90
        Height = 18
        Caption = 'Executante:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 13
        Top = 73
        Width = 59
        Height = 18
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object GBFinanc: TShape
        Left = 11
        Top = 242
        Width = 742
        Height = 71
        Brush.Color = 16777200
        Pen.Color = clTeal
      end
      object LVlrUnit: TLabel
        Left = 24
        Top = 254
        Width = 61
        Height = 16
        Caption = 'Vlr Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LLucrat: TLabel
        Left = 120
        Top = 254
        Width = 70
        Height = 16
        Caption = 'Lucrat. (%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LCoef: TLabel
        Left = 217
        Top = 254
        Width = 86
        Height = 16
        Caption = 'Coef. Div. (%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LTotServ: TLabel
        Left = 339
        Top = 254
        Width = 69
        Height = 16
        Caption = 'Vlr. Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object PTabelaPreco: TPanel
        Left = 4
        Top = 315
        Width = 757
        Height = 216
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 17
      end
      object EdCodGrade: TEdit
        Left = 12
        Top = 35
        Width = 49
        Height = 26
        Hint = 
          'Informe o c'#243'digo da grade/produto e pressione enter para pesquis' +
          'a'
        Color = 16777192
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object EdDescricaoGrade: TEdit
        Left = 61
        Top = 35
        Width = 270
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object BtnProduto: TBitBtn
        Left = 332
        Top = 35
        Width = 23
        Height = 23
        Hint = 'Clique aqui para buscar dados da grade/produto'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = BtnProdutoClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object DBCODINTERNO: TDBColorEdit
        Left = 12
        Top = 93
        Width = 70
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'COD_INTERNO'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDESCRICAOSIM: TDBColorEdit
        Left = 87
        Top = 93
        Width = 669
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBQuant: TDBColorEdit
        Left = 258
        Top = 197
        Width = 39
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'QUANTGARANTIA'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDesc: TDBColorComboBox
        Left = 298
        Top = 197
        Width = 142
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'TIPOGARANTIA'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 18
        Items.Strings = (
          'Dias'
          'Meses'
          'Anos'
          'Km'
          'Hs')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        OnKeyPress = DBDescKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object dbcodbarra: TDBColorEdit
        Left = 12
        Top = 145
        Width = 743
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'ESPECSERV'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBTempo: TDBColorEdit
        Left = 12
        Top = 199
        Width = 88
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'TEMPSERV'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnExit = dbvalorunitarioExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBExec: TDBColorComboBox
        Left = 108
        Top = 198
        Width = 142
        Height = 26
        Color = clWhite
        Ctl3D = True
        DataField = 'EMPSERV'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 18
        Items.Strings = (
          'Empresa'
          'Terceiros')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBExecKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object dbvalorunitario: TDBEdit
        Left = 24
        Top = 272
        Width = 84
        Height = 27
        Hint = 'Valor unit'#225'rio pago no ato da compra ao fornecedor'
        Color = clWhite
        Ctl3D = True
        DataField = 'VLRUNIT'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = dbvalorunitarioExit
      end
      object dblucrat: TDBEdit
        Left = 120
        Top = 272
        Width = 84
        Height = 27
        Hint = 'Valor unit'#225'rio pago no ato da compra ao fornecedor'
        Color = clWhite
        Ctl3D = True
        DataField = 'LUCRAT'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnExit = dbvalorunitarioExit
      end
      object DBCoef: TDBEdit
        Left = 217
        Top = 272
        Width = 91
        Height = 27
        Hint = 'Valor unit'#225'rio pago no ato da compra ao fornecedor'
        Color = clWhite
        Ctl3D = True
        DataField = 'COEFDIV'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 11
      end
      object DBServFinal: TDBEdit
        Left = 339
        Top = 272
        Width = 102
        Height = 27
        Hint = 'Valor unit'#225'rio pago no ato da compra ao fornecedor'
        Color = 14934013
        Ctl3D = True
        DataField = 'VLRSUBSERV'
        DataSource = DMServ.DSubServ
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnEnter = dbvalorunitarioExit
        OnExit = DBServFinalExit
      end
      object GBDespachante: TGroupBox
        Left = 66
        Top = 332
        Width = 627
        Height = 57
        TabOrder = 14
        object CbFaturaVista: TCheckBox
          Left = 15
          Top = 24
          Width = 300
          Height = 17
          Caption = 'Fat. como Despesa a VISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object CBFaturaPrazo: TCheckBox
          Left = 258
          Top = 24
          Width = 302
          Height = 17
          Caption = 'Fat. como Despesa a PRAZO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object CbFaturarNao: TCheckBox
          Left = 500
          Top = 24
          Width = 110
          Height = 17
          Caption = 'N'#195'O Faturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      inline FrmContaServico: TFrmBusca
        Left = 20
        Top = 406
        Width = 405
        Height = 38
        Color = clWhite
        ParentColor = False
        TabOrder = 15
        inherited LTextoBusca: TLabel
          Width = 308
          Height = 14
          Caption = 'Conta para lan'#231'amento da Despesas do Servi'#231'o'
          Font.Height = -11
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 361
        end
        inherited LUZMINUS: TShape
          Left = 380
        end
        inherited EdDescricao: TFlatEdit
          Left = 89
          Width = 275
          Height = 20
          Font.Name = 'Courier New'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 363
          OnClick = FrmContaServicoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 382
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 1
          Width = 87
          Height = 20
          ColorFlat = 15269845
          Font.Name = 'Courier New'
          Font.Style = []
        end
      end
      inline FrmFormPag1: TFrmBusca
        Left = 21
        Top = 452
        Width = 271
        Height = 38
        Color = clWhite
        ParentColor = False
        TabOrder = 16
        inherited LTextoBusca: TLabel
          Width = 152
          Height = 13
          Caption = 'Forma de pagamento:'
          Font.Height = -11
          Font.Name = 'Courier'
        end
        inherited LUZOPEN: TShape
          Left = 226
        end
        inherited LUZMINUS: TShape
          Left = 245
        end
        inherited EdDescricao: TFlatEdit
          Left = 40
          Width = 186
          TabStop = False
          ColorFlat = clWhite
          Font.Name = 'Courier'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 227
          OnClick = FrmFormPag1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 245
        end
        inherited EDCodigo: TFlatEdit
          Left = 0
          Width = 39
          ColorFlat = 15269845
          Font.Name = 'Courier'
          Font.Style = []
        end
      end
    end
  end
  inherited PConsulta: TPanel [8]
    Left = 10
    Top = 49
    Width = 771
    Height = 567
    inherited GroupBox1: TGroupBox
      Visible = False
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 768
      Height = 33
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 0
      Width = 769
      Height = 123
      OnCellClick = DBGridCadastroPadraoCellClick
      OnKeyUp = DBGridCadastroPadraoKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERVICO'
          Title.Caption = 'Servi'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Title.Caption = 'Aplica'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO'
          Title.Caption = 'Grupo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBGRUPO'
          Title.Caption = 'Subgrupo'
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 31
      Width = 769
      Height = 49
      Caption = 'Localizar - F2'
      Color = clWhite
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 3
      object BitBtn1: TBitBtn
        Left = 648
        Top = 21
        Width = 108
        Height = 25
        Caption = 'Selecionar - F9'
        TabOrder = 0
        OnClick = BtnSelecionarClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777774F77777700000007777
          7777444F77777000000077777774444F777770000000700000444F44F7777000
          000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
          74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
          8777F07777774000000070FFFF00007777777000000070F88707077777777000
          000070FFFF007777777770000000700000077777777770000000777777777777
          777770000000}
      end
      object EDProduto: TEdit
        Left = 4
        Top = 21
        Width = 642
        Height = 25
        Hint = 
          'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
          'a liberar'
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = Edit1KeyDown
      end
    end
    object GBSIMILAR: TGroupBox
      Left = 0
      Top = 215
      Width = 769
      Height = 350
      Caption = 'LISTAGEM POR SIMILARES - F3'
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      object Label2: TLabel
        Left = 8
        Top = 23
        Width = 58
        Height = 22
        Caption = 'Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 244
        Top = 23
        Width = 92
        Height = 22
        Caption = 'SubGrupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 492
        Top = 23
        Width = 69
        Height = 22
        Caption = 'Servi'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 10
        Top = 40
        Width = 227
        Height = 14
        DataField = 'GRUPO'
        DataSource = DMServ.DWServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 246
        Top = 40
        Width = 245
        Height = 14
        DataField = 'SUBGRUPO'
        DataSource = DMServ.DWServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 492
        Top = 40
        Width = 268
        Height = 14
        DataField = 'SERVICO'
        DataSource = DMServ.DWServico
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 80
        Width = 754
        Height = 237
        Color = 15790307
        Ctl3D = False
        DataSource = DMServ.DSubServ
        FixedColor = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_INTERNO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFINAL'
            Title.Caption = 'Valor'
            Visible = True
          end>
      end
      object EDSimilar: TEdit
        Left = 188
        Top = 56
        Width = 574
        Height = 25
        Hint = 
          'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
          'a liberar'
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = EDSimilarKeyDown
      end
      object BtnSelecionar2: TBitBtn
        Left = 620
        Top = 9
        Width = 144
        Height = 25
        Caption = 'Selecionar - F9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = BtnSelecionarClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777774F77777700000007777
          7777444F77777000000077777774444F777770000000700000444F44F7777000
          000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
          74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
          8777F07777774000000070FFFF00007777777000000070F88707077777777000
          000070FFFF007777777770000000700000077777777770000000777777777777
          777770000000}
      end
      object EdCodComposto: TMaskEdit
        Left = 8
        Top = 57
        Width = 178
        Height = 24
        Hint = 
          'Informe o c'#243'digo de composi'#231#227'o. Pressione <ENTER> para seleciona' +
          'r e <ESC> para liberar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EdCodCompostoKeyDown
      end
      object EdVlrTotalServ: TFloatEdit
        Left = 8
        Top = 318
        Width = 121
        Height = 25
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
    end
  end
  object PMCadastro: TPopupMenu
    Left = 655
    Top = 53
    object CadastrarNovoProduto1: TMenuItem
      Caption = 'CADASTRAR NOVO SERVI'#199'O'
      OnClick = CadastrarNovoProduto1Click
    end
    object CadastrarumProdutoSimilar1: TMenuItem
      Caption = 'CADASTRAR UM SUBSERVI'#199'O'
      OnClick = CadastrarumProdutoSimilar1Click
    end
  end
end
