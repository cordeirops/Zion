object FImpNfe: TFImpNfe
  Left = 238
  Top = 79
  BorderStyle = bsSingle
  Caption = 'FImpNfe'
  ClientHeight = 514
  ClientWidth = 876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 34
    Width = 154
    Height = 16
    Caption = 'Dados do Fornecedor'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 99
    Width = 868
    Height = 310
    Caption = 
      'Lista de Produtos da NFe:              (Clique duas vezes no pro' +
      'duto para modific'#225'-lo)'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Shape5: TShape
      Left = 4
      Top = 290
      Width = 12
      Height = 12
      Brush.Color = 5169141
    end
    object Label26: TLabel
      Left = 20
      Top = 289
      Width = 144
      Height = 13
      Caption = 'Itens sem valor de venda'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 20
      Top = 273
      Width = 166
      Height = 13
      Caption = 'Itens cadastrados no sistema'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape4: TShape
      Left = 4
      Top = 274
      Width = 12
      Height = 12
      Brush.Color = clMoneyGreen
    end
    object Label14: TLabel
      Left = 244
      Top = 273
      Width = 226
      Height = 13
      Caption = 'Itens que ser'#227'o cadastrados no sistema'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 228
      Top = 274
      Width = 12
      Height = 12
      Brush.Color = 5066239
    end
    object Label16: TLabel
      Left = 244
      Top = 289
      Width = 362
      Height = 13
      Caption = 'Itens com a descri'#231#227'o ou valor de venda alterados pelo usu'#225'rio'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape3: TShape
      Left = 228
      Top = 289
      Width = 12
      Height = 12
      Brush.Color = 16759644
    end
    object DBProdutos: TDBGrid
      Left = 4
      Top = 19
      Width = 862
      Height = 246
      Color = clWhite
      Ctl3D = False
      DataSource = MDO.DConsulta
      FixedColor = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBProdutosDrawColumnCell
      OnDblClick = DBProdutosDblClick
      OnKeyDown = DBProdutosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'nitem'
          Title.Caption = 'Item'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODFORN'
          Title.Caption = 'Codigo'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCPROD'
          Title.Caption = 'Descri'#231#227'o do Item no XML'
          Width = 355
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCPRODVINCULADO'
          Title.Caption = 'Produto Vinculado e Cadastrado no Sistema ou Alterado'
          Width = 313
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOUNIDADE'
          Title.Caption = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORUN'
          Title.Caption = 'Valor UN'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORTOTAL'
          Title.Caption = 'Valor Total'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CST'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORBASE'
          Title.Caption = 'Valor Base'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQICMS'
          Title.Caption = 'Aliq. ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORICMS'
          Title.Caption = 'Valor ICMS'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASESUBST'
          Title.Caption = 'Base Subst'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMSSUBST'
          Title.Caption = 'ICMS Subst'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORIPI'
          Title.Caption = 'Valor IPI'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORVENDA'
          Title.Caption = 'Valor Venda'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTONFE'
          Title.Caption = 'Custo NFe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORFRETE'
          Title.Caption = 'Valor frete'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQFRETE'
          Title.Caption = 'Aliq. frete'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORREP'
          Title.Caption = 'Valor rep.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLROUTROS'
          Title.Caption = 'Outros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRSEGURO'
          Title.Caption = 'Seguro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORCOFINS'
          Title.Caption = 'Cofins'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPIS'
          Title.Caption = 'Pis'
          Visible = True
        end>
    end
    object btnRecarregaProdutos: TButton
      Left = 703
      Top = 283
      Width = 161
      Height = 19
      Cursor = crHandPoint
      Hint = 'Atualiza os itens na grade sem perder os ajustes j'#225' realizados'
      Caption = 'Recarregar produtos da NF-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnRecarregaProdutosClick
    end
  end
  object pLabels: TPanel
    Left = 5
    Top = 413
    Width = 868
    Height = 100
    BevelOuter = bvNone
    TabOrder = 4
    object Label8: TLabel
      Left = 625
      Top = 7
      Width = 142
      Height = 19
      Caption = 'Total do Produtos:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BtnPercentual: TButton
      Left = 312
      Top = 72
      Width = 304
      Height = 23
      Hint = 
        'Ajusta os pre'#231'os de compra e venda com base nas configura'#231#245'es in' +
        'formadas'
      Caption = 'Ajustar Pre'#231'o de Compra e Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnPercentualClick
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 305
      Height = 96
      Caption = 'Ajustes de Pre'#231'os de Venda'
      Color = 12058623
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object Label20: TLabel
        Left = 53
        Top = 52
        Width = 41
        Height = 13
        Caption = 'Varejo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 178
        Top = 52
        Width = 52
        Height = 13
        Caption = 'Atacado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 154
        Top = 25
        Width = 147
        Height = 13
        Caption = 'Al'#237'quotas de reajuste (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape2: TShape
        Left = 53
        Top = 40
        Width = 244
        Height = 1
      end
      object CBAplicaCadastrados: TCheckBox
        Left = 44
        Top = 77
        Width = 256
        Height = 17
        Caption = 'Atualizar produtos j'#225' cadastrados'
        Checked = True
        Color = 12058623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object EdPercentual: TEdit
        Left = 97
        Top = 45
        Width = 65
        Height = 22
        TabOrder = 1
      end
      object EdPercentualAtac: TEdit
        Left = 233
        Top = 45
        Width = 65
        Height = 22
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 312
      Top = 0
      Width = 305
      Height = 71
      Caption = 'Ajustes de Pre'#231'os de Compra'
      Color = 12058623
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object CBAlteraValordeCompra: TCheckBox
        Left = 108
        Top = 28
        Width = 191
        Height = 15
        Caption = 'Alterar Valor de Compra'
        Checked = True
        Color = 12058623
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object EdTotalProd: TColorEditFloat
      Left = 770
      Top = 2
      Width = 96
      Height = 25
      Hint = 
        'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
        'informe o valor em total e pressione <ENTER>'
      Color = 15134463
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '0,00'
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BitBtn2: TBitBtn
      Left = 627
      Top = 70
      Width = 238
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
      Caption = 'Imprimir para Conferir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn2Click
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
  end
  object PSelectCliente: TPanel
    Left = 2
    Top = 50
    Width = 870
    Height = 46
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 1
    object Label4: TLabel
      Left = 4
      Top = 4
      Width = 55
      Height = 16
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 142
      Top = 4
      Width = 78
      Height = 16
      Caption = 'CPF/CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 308
      Top = 20
      Width = 47
      Height = 16
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LAtacadista: TLabel
      Left = 310
      Top = 6
      Width = 47
      Height = 16
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object EdCodForn: TEdit
      Left = 4
      Top = 21
      Width = 133
      Height = 22
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, informe o cliente padr'#227'o consumidor'
      Color = 16121836
      Ctl3D = False
      Enabled = False
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
      Text = '0'
    end
    object EdCNPJ: TEdit
      Left = 141
      Top = 21
      Width = 161
      Height = 22
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
        'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
        'essione <ESC>.'
      Color = 16121836
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object EdNomeForn: TEdit
      Left = 307
      Top = 21
      Width = 438
      Height = 22
      Hint = 
        'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
        'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
        'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
        'essione <ESC>.'
      Color = 16121836
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 2
    Top = 3
    Width = 871
    Height = 29
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 503
      Top = 11
      Width = 91
      Height = 13
      Caption = 'N'#186' da NFe:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 704
      Top = 11
      Width = 55
      Height = 13
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 277
      Top = 11
      Width = 100
      Height = 13
      Caption = 'Dt Emiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnCancelar: TBitBtn
      Left = 97
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
        ' o painel de consulta'
      Caption = 'Cancelar - F7'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnCancelarClick
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
    object BtnGravar: TBitBtn
      Left = 2
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
        'izadas'
      Caption = 'Confirmar- F5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
    object EdTotalNfe: TColorEditFloat
      Left = 760
      Top = 3
      Width = 105
      Height = 22
      Color = clActiveBorder
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = '0,00'
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdNumNfe: TEdit
      Left = 608
      Top = 3
      Width = 89
      Height = 22
      Color = clMoneyGreen
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object EdDtEmissao: TEdit
      Left = 384
      Top = 3
      Width = 113
      Height = 22
      Color = clMoneyGreen
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object PAlteracoes: TPanel
    Left = 144
    Top = 99
    Width = 625
    Height = 408
    BorderStyle = bsSingle
    Color = clMoneyGreen
    Ctl3D = False
    ParentBackground = True
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    object Label12: TLabel
      Left = 48
      Top = 344
      Width = 70
      Height = 13
      Caption = 'CST da NFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 168
      Top = 344
      Width = 87
      Height = 13
      Caption = 'CST de Venda:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 165
      Top = 166
      Width = 113
      Height = 20
      Caption = 'V. U. Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 29
      Top = 166
      Width = 99
      Height = 20
      Hint = 'Quantidade total do item editado'
      Caption = 'Quantidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelMarca: TLabel
      Left = 30
      Top = 270
      Width = 40
      Height = 13
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 215
      Top = 270
      Width = 60
      Height = 13
      Caption = 'Aliq. frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape6: TShape
      Left = 4
      Top = 4
      Width = 615
      Height = 32
      Brush.Color = 12961161
      Pen.Color = 12961161
    end
    object Label10: TLabel
      Left = 7
      Top = 7
      Width = 607
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 'E D I '#199' '#195' O   D O   I T E M   D E   P R O D U T O   D O   X M L '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 33
      Top = 109
      Width = 156
      Height = 20
      Caption = 'Produto em edi'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 317
      Top = 166
      Width = 110
      Height = 20
      Caption = 'V. T. Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 462
      Top = 166
      Width = 135
      Height = 20
      Caption = 'Custo Unit. Nf-e:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdCSTEnt: TEdit
      Left = 48
      Top = 360
      Width = 89
      Height = 22
      Color = 16121836
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object EdCstVenda: TEdit
      Left = 168
      Top = 360
      Width = 89
      Height = 22
      Color = 16121836
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object BtOk: TBitBtn
      Left = 532
      Top = 376
      Width = 75
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = BtOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtCancela: TBitBtn
      Left = 452
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 14
      OnClick = BtCancelaClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object Pproduto: TGroupBox
      Left = 31
      Top = 48
      Width = 561
      Height = 42
      Caption = 'Grade'
      TabOrder = 0
      object EdCodP: TEdit
        Left = 40
        Top = 15
        Width = 81
        Height = 19
        Color = 16759644
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object EdDescP: TEdit
        Left = 121
        Top = 15
        Width = 401
        Height = 19
        Color = 16772313
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object BTNOPENP: TBitBtn
        Left = 522
        Top = 15
        Width = 36
        Height = 19
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BTNOPENPClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
    object EdVlrCusto: TColorEditFloat
      Left = 164
      Top = 186
      Width = 114
      Height = 26
      Hint = 
        'Informe o valor total do item e a quantidade para o sistema calc' +
        'ular o valor unit'#225'rio'
      Color = 14286847
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 7995391
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdMarcaProduto: TEdit
      Left = 30
      Top = 286
      Width = 131
      Height = 22
      Color = 14024646
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BtCstVenda: TBitBtn
      Left = 266
      Top = 361
      Width = 19
      Height = 19
      Hint = 'Pressione para selecionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BtCstVendaClick
      Glyph.Data = {
        B6000000424DB60000000000000036000000280000000A000000040000000100
        18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    end
    object EdAliqFrete: TColorEditFloat
      Left = 214
      Top = 286
      Width = 65
      Height = 22
      Color = 14024646
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 14024646
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdCustoNfe: TColorEditFloat
      Left = 463
      Top = 186
      Width = 134
      Height = 25
      Hint = 
        'Custo unit'#225'rio do item de acordo com a Nf-e com finalidades de c' +
        'ustos'
      Color = 11075583
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 7995391
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EDCodigo: TEdit
      Left = 33
      Top = 129
      Width = 113
      Height = 30
      Color = 15461334
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object EdDescricao: TEdit
      Left = 146
      Top = 129
      Width = 401
      Height = 30
      Hint = 'Voc'#234' pode editar a descri'#231#227'o do produtos aqui'
      Color = 16316657
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object BTNOPEN: TBitBtn
      Left = 548
      Top = 129
      Width = 41
      Height = 30
      Hint = 
        'Pressione para selecionar e vincular este item junto a um produt' +
        'o j'#225' cadastrado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BTNOPENClick
      Glyph.Data = {
        B6000000424DB60000000000000036000000280000000A000000040000000100
        18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    end
    object Memo1: TMemo
      Left = 30
      Top = 211
      Width = 99
      Height = 45
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Informe aqui a '
        'quantidade total do '
        'item')
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object Memo2: TMemo
      Left = 164
      Top = 211
      Width = 114
      Height = 45
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Valor unit'#225'rio de '
        'compra.'
        'Calculado pelo sistema '
        '')
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object edValorCustoTotal: TColorEditFloat
      Left = 316
      Top = 186
      Width = 114
      Height = 26
      Hint = 'Informe o valor Total de compra do item'
      Color = 11075583
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      OnExit = edValorCustoTotalExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 7995391
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object Memo3: TMemo
      Left = 316
      Top = 211
      Width = 114
      Height = 45
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Informe aqui o valor '
        'total do item comprado')
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object Memo4: TMemo
      Left = 463
      Top = 211
      Width = 134
      Height = 45
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'Informe aqui o custo '
        'unit'#225'rio total do item na '
        'Nf-e para fins de custos.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object EdQtdEmbalagem: TColorEditFloat
      Left = 30
      Top = 186
      Width = 99
      Height = 26
      Hint = 'Informe o valor Total de compra do item'
      Color = 11075583
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = '0,00'
      OnExit = edValorCustoTotalExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 7995391
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object GroupBox4: TGroupBox
      Left = 316
      Top = 272
      Width = 281
      Height = 85
      Caption = 'Valores/Pre'#231'os de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object Label24: TLabel
        Left = 155
        Top = 33
        Width = 95
        Height = 13
        Caption = 'Atacado '#224' Vista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 30
        Top = 33
        Width = 84
        Height = 13
        Caption = 'Varejo '#224' Vista:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdValorAtacVista: TColorEditFloat
        Left = 154
        Top = 50
        Width = 97
        Height = 25
        Color = 14277119
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 8421631
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdValorVenda: TColorEditFloat
        Left = 26
        Top = 50
        Width = 88
        Height = 25
        Color = 14277119
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 8421631
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object RelatorioConferencia: TQuickRep
    Left = 884
    Top = 4
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = RelatorioConferenciaBeforePrint
    DataSet = DMMACS.TRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
      Top = 95
      Width = 1047
      Height = 39
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
        103.187500000000000000
        2770.187500000000000000)
      BandType = rbColumnHeader
      object QRLabel74: TQRLabel
        Left = 0
        Top = -196
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          -518.583333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
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
      object QRLabel75: TQRLabel
        Left = 56
        Top = -196
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          -518.583333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade:'
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
      object QRLabel76: TQRLabel
        Left = 144
        Top = -196
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          -518.583333333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o:'
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
      object QRLabel77: TQRLabel
        Left = 499
        Top = -196
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          -518.583333333333300000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Unit'#225'rio:'
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
      object QRLabel78: TQRLabel
        Left = 592
        Top = -196
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          -518.583333333333300000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Total:'
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
      object QRLabel70: TQRLabel
        Left = 678
        Top = -196
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          -518.583333333333300000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Equip.'
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
      object QRLabel1: TQRLabel
        Left = 0
        Top = -196
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          -518.583333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
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
      object QRLabel2: TQRLabel
        Left = 56
        Top = -196
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          148.166666666666700000
          -518.583333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade:'
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
      object QRLabel3: TQRLabel
        Left = 144
        Top = -196
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          -518.583333333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o:'
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
      object QRLabel4: TQRLabel
        Left = 499
        Top = -196
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          -518.583333333333300000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Unit'#225'rio:'
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
      object QRLabel5: TQRLabel
        Left = 592
        Top = -196
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          -518.583333333333300000
          166.687500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Total:'
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
      object QRLabel6: TQRLabel
        Left = 678
        Top = -196
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          -518.583333333333300000
          108.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Equip.'
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
      object QRLabel7: TQRLabel
        Left = 2
        Top = 3
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          7.937500000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 67
        Top = 3
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          7.937500000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 338
        Top = 3
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          894.291666666666700000
          7.937500000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NCM:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 410
        Top = 3
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1084.791666666667000000
          7.937500000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 490
        Top = 3
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1296.458333333333000000
          7.937500000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre'#231'o Unit'#225'rio'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 524
        Top = 16
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1386.416666666667000000
          42.333333333333330000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'de compra'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 424
        Top = 16
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1121.833333333333000000
          42.333333333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'comprada'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 596
        Top = 3
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1576.916666666667000000
          7.937500000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 610
        Top = 16
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1613.958333333333000000
          42.333333333333330000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'de compra'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 690
        Top = 3
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1825.625000000000000000
          7.937500000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre'#231'o Unit'#225'rio'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 732
        Top = 16
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1936.750000000000000000
          42.333333333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'de venda'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 800
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2116.666666666667000000
          7.937500000000000000
          58.208333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 834
        Top = 3
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2206.625000000000000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marca'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 944
        Top = 3
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2497.666666666667000000
          7.937500000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor unit'#225'rio'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 950
        Top = 18
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2513.541666666667000000
          47.625000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'de custo NF-e'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 2
        Top = 34
        Width = 1043
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          89.958333333333330000
          2759.604166666667000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 134
      Width = 1047
      Height = 28
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
        74.083333333333330000
        2770.187500000000000000)
      BandType = rbDetail
      object qrdbcodigo: TQRDBText
        Left = 0
        Top = 0
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          0.000000000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CODPRODFORN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbdescricao: TQRDBText
        Left = 72
        Top = 0
        Width = 265
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          0.000000000000000000
          701.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'DESCPROD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbncm: TQRDBText
        Left = 336
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          889.000000000000000000
          0.000000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'NCM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbquantidades: TQRDBText
        Left = 410
        Top = 0
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1084.791666666667000000
          0.000000000000000000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbvlrunit: TQRDBText
        Left = 488
        Top = 0
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          0.000000000000000000
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALORUN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbvlrtotal: TQRDBText
        Left = 592
        Top = 0
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          0.000000000000000000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALORTOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbvlrvenda: TQRDBText
        Left = 688
        Top = 0
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1820.333333333333000000
          0.000000000000000000
          269.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'VALORVENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbcst: TQRDBText
        Left = 800
        Top = 0
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2116.666666666667000000
          0.000000000000000000
          66.145833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CSTVENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbmarca: TQRDBText
        Left = 832
        Top = 0
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2201.333333333333000000
          0.000000000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbcustonfe: TQRDBText
        Left = 936
        Top = 0
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2476.500000000000000000
          0.000000000000000000
          285.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CUSTONFE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrdbdescricaovinculado: TQRDBText
        Left = 72
        Top = 12
        Width = 265
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          31.750000000000000000
          701.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'DESCPRODVINCULADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand11: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 57
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
        150.812500000000000000
        2770.187500000000000000)
      BandType = rbPageHeader
      object txtNumeroNfe: TQRLabel
        Left = 960
        Top = 15
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2540.000000000000000000
          39.687500000000000000
          222.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#250'mero NF-e'
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
      object txtRelValorTotal: TQRLabel
        Left = 973
        Top = 33
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2574.395833333333000000
          87.312500000000000000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Total'
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
      object QRShape46: TQRShape
        Left = 2
        Top = 50
        Width = 1043
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          5.291666666666667000
          132.291666666666700000
          2759.604166666667000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape49: TQRShape
        Left = 0
        Top = 107
        Width = 721
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          0.000000000000000000
          283.104166666666700000
          1907.645833333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape50: TQRShape
        Left = 0
        Top = 102
        Width = 721
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          0.000000000000000000
          269.875000000000000000
          1907.645833333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object txtRelEmitente: TQRLabel
        Left = 3
        Top = 3
        Width = 120
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          7.937500000000000000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dados do Emitente'
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
end
