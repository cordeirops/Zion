inherited FPedCompra: TFPedCompra
  Left = 256
  Top = 0
  Caption = 'u'
  ClientHeight = 596
  ClientWidth = 794
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PTroco: TPanel [0]
    Left = 240
    Top = 184
    TabOrder = 7
  end
  inherited PComissaoBanca: TPanel [1]
    Left = 240
    Top = 224
    TabOrder = 5
  end
  inherited PPrecos: TPanel [2]
    Top = 85
    TabOrder = 4
  end
  object PExp: TPanel [3]
    Left = 112
    Top = 176
    Width = 577
    Height = 56
    TabOrder = 9
    Visible = False
    object LBCONEXAO: TLabel
      Left = 32
      Top = 8
      Width = 212
      Height = 16
      Alignment = taCenter
      Caption = 'FAZENDO CONEX'#195'O COM O BANCO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PBExport: TProgressBar
      Left = 30
      Top = 29
      Width = 516
      Height = 20
      TabOrder = 0
    end
  end
  inherited PComunica: TPanel [4]
    Left = 112
    Top = 210
  end
  inherited PItensVendaAg: TPanel [5]
    Left = 216
    Top = 216
    inherited FashionPanel7: TFashionPanel
      inherited GridItenAg: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_SUBPRODUTO'
            Title.Caption = 'Codigo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object PnLote: TPanel [6]
    Left = 328
    Top = 105
    Width = 436
    Height = 190
    Caption = 'PnLote'
    Color = clWhite
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object FashionPanel2: TFashionPanel
      Left = 2
      Top = 2
      Width = 431
      Height = 183
      BevelOuter = bvNone
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
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Lote'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label65: TLabel
        Left = 288
        Top = 24
        Width = 118
        Height = 13
        Caption = 'Qtd. Entrada:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label64: TLabel
        Left = 136
        Top = 24
        Width = 127
        Height = 13
        Caption = 'Qtd. Descarte:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label61: TLabel
        Left = 8
        Top = 22
        Width = 100
        Height = 13
        Caption = 'Qtd. Bruta:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label66: TLabel
        Left = 8
        Top = 72
        Width = 172
        Height = 13
        Caption = 'Motivo do Descarte:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label68: TLabel
        Left = 240
        Top = 120
        Width = 109
        Height = 13
        Caption = 'Quant. Lote:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label67: TLabel
        Left = 8
        Top = 128
        Width = 154
        Height = 13
        Caption = 'Lote Selecionado:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object EdQtdBruta: TColorEditFloat
        Left = 14
        Top = 42
        Width = 91
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQuantDescarte: TColorEditFloat
        Left = 134
        Top = 42
        Width = 123
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnExit = EdQuantDescarteExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQtdEntrada: TColorEditFloat
        Left = 286
        Top = 42
        Width = 115
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescarte: TEdit
        Left = 8
        Top = 88
        Width = 409
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object EdQtdLote: TColorEditFloat
        Left = 352
        Top = 114
        Width = 65
        Height = 22
        Color = 15329769
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnCancelaLote: TBitBtn
        Left = 320
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = BtnCancelaLoteClick
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
      object BtnLoteOk: TBitBtn
        Left = 240
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 6
        OnClick = BtnLoteOkClick
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
      object CBLoteSelecionado: TDBLookupComboBox
        Left = 8
        Top = 144
        Width = 161
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'COD_LOTE'
        ListField = 'NUMERO'
        ListSource = DMMACS.DSLote
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = CBLoteSelecionadoExit
      end
      object BtnAbreLote: TBitBtn
        Left = 174
        Top = 144
        Width = 19
        Height = 19
        TabOrder = 8
        OnClick = BtnAbreLoteClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
  end
  inherited PFinanceiro: TPanel [7]
    Left = 181
    Top = 87
    TabOrder = 3
    inherited FPFinanceiro: TFashionPanel
      inherited PMostraCta: TPanel
        Top = 44
      end
      inherited CBPagamento: TComboBox
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o'
          'Chq. Terc.'
          'Banco'
          'Boleto'
          'Cr'#233'dito'
          'C - Cart'#227'o'
          'D - Cart'#227'o')
      end
      inherited GBFRETE: TGroupBox
        inherited CBPagamento1: TComboBox
          Items.Strings = (
            'Carteira'
            'Banco'
            'Cheque'
            'Chq. Terc.'
            'Boleto'
            'Cr'#233'dito'
            'Cart'#227'o'
            'C - Cart'#227'o'
            'D - Cart'#227'o')
        end
      end
    end
  end
  inherited PCadastro: TPanel [8]
    Left = 0
    Top = 6
    Width = 793
    Height = 582
    inherited Label2: TLabel
      Left = 675
    end
    inherited PFisco: TPanel
      inherited GroupBox2: TGroupBox
        inherited Label44: TLabel
          Left = 176
        end
        inherited EdFisVlrFrete: TColorEditFloat
          Left = 144
        end
        inherited DBColorEdit1: TDBColorEdit
          Width = 133
        end
      end
      inherited FrmCFOP: TFrmBusca
        inherited LUZOPEN: TShape [0]
        end
        inherited LUZMINUS: TShape [1]
        end
        inherited LTextoBusca: TLabel [2]
        end
      end
    end
    inherited Panel4: TPanel [2]
      Top = 31
      Width = 787
      Height = 547
      inherited Label10: TLabel
        Left = 219
        Top = 69
      end
      inherited Label9: TLabel
        Left = 10
        Top = 105
      end
      inherited Label12: TLabel
        Left = 726
        Top = 41
        Width = 55
        Height = 12
        Caption = 'Descontos:'
        Font.Color = clBlack
        Font.Height = -9
      end
      inherited Label13: TLabel
        Left = 460
        Top = 69
        Width = 62
        Height = 14
        Font.Height = -12
      end
      inherited Label14: TLabel
        Left = 99
        Top = 105
      end
      inherited luzformpag: TShape [6]
        Left = 431
        Top = 83
        Width = 20
        Height = 19
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      inherited LVlrComissao: TLabel [7]
        Left = 539
        Width = 107
        Height = 12
        Font.Charset = ANSI_CHARSET
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
      end
      inherited LDescPer: TLabel [8]
        Left = 669
        Top = 56
        Width = 11
        Height = 12
        Font.Color = clBlack
        Font.Height = -9
      end
      inherited LDescMoe: TLabel [9]
        Left = 730
        Top = 56
        Width = 6
        Height = 12
        Font.Color = clBlack
        Font.Height = -9
      end
      inherited Label3: TLabel [10]
        Left = 733
        Top = 3
        Width = 48
        Height = 16
        Caption = 'TOTAL:'
        Font.Height = -13
        Font.Name = 'Courier New'
      end
      inherited LabelValorFrete: TLabel [11]
        Left = 670
      end
      inherited LabelValorOutros: TLabel [12]
        Left = 737
      end
      inherited LabelValorIcmsSubstituicao: TLabel [13]
        Left = 709
      end
      inherited LabelValorIpi: TLabel [14]
        Left = 657
      end
      inherited luzvendedor: TShape [15]
        Left = 192
      end
      object FPCLista: TFashionPanel [16]
        Left = 5
        Top = 145
        Width = 764
        Height = 382
        BevelOuter = bvNone
        Caption = 'FPCLista'
        Color = 14933717
        TabOrder = 16
        RoundRect = True
        About = 'Orion Software'
        ShadowDepth = 3
        ShadowSpace = 5
        ShowShadow = False
        ShadowColor = clBlack
        TitleColor = 12615680
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Title = 'Lista de Produtos de Consumo do Pedido:'
        LineWidth = 0
        LineColor = clGray
        Theme = ttBlue
        object Panel11: TPanel
          Left = 2
          Top = 21
          Width = 759
          Height = 140
          BevelInner = bvLowered
          Color = 16772332
          TabOrder = 0
          OnEnter = Panel2Enter
          object Label121: TLabel
            Left = 345
            Top = 9
            Width = 54
            Height = 16
            Caption = 'Quant.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label122: TLabel
            Left = 419
            Top = 9
            Width = 68
            Height = 16
            Caption = 'Vlr. Unit.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label123: TLabel
            Left = 508
            Top = 9
            Width = 45
            Height = 16
            Caption = 'Desc.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label124: TLabel
            Left = 621
            Top = 9
            Width = 41
            Height = 16
            Caption = 'Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label63: TLabel
            Left = 9
            Top = 9
            Width = 62
            Height = 16
            Caption = 'Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label69: TLabel
            Left = 265
            Top = 9
            Width = 32
            Height = 16
            Caption = 'CST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbCstconsumo: TLabel
            Left = 8
            Top = 56
            Width = 103
            Height = 16
            Caption = 'lbCstconsumo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object BtnInsereConsumo: TBitBtn
            Left = 685
            Top = 27
            Width = 70
            Height = 25
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = BtnInsereConsumoClick
            OnKeyDown = BtnInsertProdKeyDown
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077777707777770007777706077777000777706660777
              7000777066666077700077066666660770007000066600007000777706660777
              7000777706660777700077770666077770007777000007777000777777777777
              7000}
            Layout = blGlyphRight
            Spacing = 10
          end
          object BtExcluiConsumo: TBitBtn
            Left = 685
            Top = 51
            Width = 70
            Height = 25
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BtExcluiConsumoClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077770000077770007777066607777000777706660777
              7000777706660777700070000666000070007706666666077000777066666077
              7000777706660777700077777060777770007777770777777000777777777777
              7000}
            Layout = blGlyphRight
            Spacing = 10
          end
          object EdQtdConsumo: TColorEditFloat
            Left = 318
            Top = 26
            Width = 83
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnExit = EdQtdConsumoExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrUnitConsumo: TColorEditFloat
            Left = 408
            Top = 26
            Width = 81
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            OnExit = EdQtdConsumoExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDescontoConsumo: TColorEditFloat
            Left = 497
            Top = 26
            Width = 56
            Height = 22
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnExit = EdQtdConsumoExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdTotalConsumo: TColorEditFloat
            Left = 562
            Top = 26
            Width = 100
            Height = 22
            Hint = 
              'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
              'informe o valor em total e pressione <ENTER>'
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Text = '0,00'
            OnExit = EdTotalConsumoExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object Panel20: TPanel
            Left = 770
            Top = 3
            Width = 191
            Height = 85
            BevelWidth = 2
            TabOrder = 10
            Visible = False
            OnExit = PInfoExpExit
            object FashionPanel12: TFashionPanel
              Left = 2
              Top = 3
              Width = 186
              Height = 77
              BevelOuter = bvNone
              Caption = 'PFashionInfoExport'
              Color = 14933717
              TabOrder = 0
              RoundRect = True
              About = 'Orion Software'
              ShadowDepth = 2
              ShadowSpace = 5
              ShowShadow = False
              ShadowColor = clBlack
              TitleColor = 12615680
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              Title = 'Dados para exporta'#231#227'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttBlue
              object Label140: TLabel
                Left = 32
                Top = 27
                Width = 39
                Height = 13
                Caption = 'Quant.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label141: TLabel
                Left = 32
                Top = 40
                Width = 65
                Height = 13
                Caption = 'Exporta'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ColorEditFloat36: TColorEditFloat
                Left = 33
                Top = 54
                Width = 91
                Height = 22
                Color = clInactiveCaption
                Ctl3D = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                MaxLength = 13
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnExit = EDQuantidadeExit
                OnKeyPress = EdQuantExpKeyPress
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object BitBtn24: TBitBtn
                Left = 129
                Top = 48
                Width = 27
                Height = 26
                TabOrder = 1
                OnClick = BtnInfoExportClick
                Glyph.Data = {
                  6E040000424D6E04000000000000360000002800000013000000120000000100
                  1800000000003804000000000000000000000000000000000000D8E9ECD8E9EC
                  D8E9ECD8E9ECF0EBE8DDDCDAD5D6D8DCDAD8E6E4E2D8E9ECD8E9ECD8E9ECD8E9
                  ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECF9
                  F9F6ABA9A06C675D736F628D8A7B9D9A8B9A978A6D695E5A554A4F4C4257564F
                  A3A3A0F7F7F6D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECF4F4F294938A6E69
                  5CA29C8FC5C3B7D6D6CFE0DFDADDDDDABFC1BCA3A39D83817B69655B4D4A428F
                  8E89F5F4F5D8E9ECD8E9EC000000D8E9ECD8E9EC9F9E96737162B4B2A8D8D9D4
                  ECF0F0F1F2F7F0EFEEEFEEEAF3F3F2F4F4F1D6D7CFA1A0987370664B49419E9F
                  9BD8E9ECD8E9EC000000D8E9ECCECFCC716E64B3ADA1D9D9D7EFF5F7E1D4C7CF
                  A87CD4A059DCB15CDAC07EE0D8C4F0F0EDE1E3DDA09F976A695F56564DD7D5D6
                  D8E9EC000000D8E9EC8F8D87939084D4D2CBEFF1F4D7C6ADA56B3169390B9F5C
                  0DBE6F156D501C97885BD3D0BCEFF0EED4D4D289877E5B584D979391D8E9EC00
                  0000EAE8E679756CB2B0A7E3E4E2DCDDDAA9733DD77718854612984D0DC46112
                  381A05BA914FEADFC0D8D8D1ECEBEAA7A49E716D646F6B67EFF0F0000000CBC9
                  C87D7F78C6CBC7EFF1F1B3A28EB86414DC7618CE6C15964D11784210774A1DE2
                  983DF1CF9ADBD6C4EEEFEBBBBBB57B776D625E59E0E1E2000000B1B2AE7A5741
                  CA9E77ECECE98F7762C76205D96F11D76D13A5551443260EC48035E9A448EDBA
                  74D9C7A1E7E5E0C6C7C2726F64625E58DCDDDD000000AEB3B0722300D86419EA
                  E6DC887667B84E00D66609DB6F118A44104F2E12DB933CE4A04CEDA64FD1AE77
                  E8E4E2C2C3C069675C625F58E2E2E1000000D0D5D6653215D26213E6D4C0ABA7
                  A28D3500DC6106C05905552A09965518AC6E2BEE9E3FE69839CAA277EFF2EEA5
                  A7A462605574716AF1F1F0000000F0F3F45F5041AA5C13E2BD97DCE6E6714A34
                  A83B00742B0669340EC56818623711B36D1DBA772FD2C2B2EBEFEBA6A299625E
                  549D9B95D8E9EC000000D8E9EC9895936D4218D8AA75E7E6DAC4C7CB5F3D3252
                  1600933F00AD50087B320070421AB7A495F2F2F1DAD8D4AAA7986B665DD8D7D5
                  D8E9EC000000D8E9ECEAECEB5A5345926B44E7C5A1EBE4DBD2E0E49C99988A71
                  5F8A6C55A48373CEC8C4EBF5F0DEDED9BBB4AC706B5FA1A098D8E9ECD8E9EC00
                  0000D8E9ECD8E9ECC3C7C55042358E663AD99F62EBB98BE8D4C0E5E3DEE8EFF0
                  F0F5F2E9ECE9D6D4C9B1AEA1747165918C87D8E9ECD8E9ECD8E9EC000000D8E9
                  ECD8E9ECD8E9ECC2C6C95D5148703C09A94E00D05303D4632DCABAADCCC7BFB4
                  AEA5908B81706D639C9B94D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
                  D8E9ECD8E9ECEAECED969391604D4260311666280571695B79756D7D776E8D8A
                  84C8C7C6D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8
                  E9ECD8E9ECD8E9ECEFF3F5CFD1D9AFB2B1B0B0ACC6C5C3E6E6E4D8E9ECD8E9EC
                  D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000}
              end
            end
          end
          object Panel21: TPanel
            Left = 842
            Top = 52
            Width = 287
            Height = 45
            Hint = '<ENTER> Confirmar <ESC> Voltar'
            BevelWidth = 2
            Color = 16772332
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
            Visible = False
            object Label142: TLabel
              Left = 9
              Top = 3
              Width = 32
              Height = 16
              Caption = 'Lote:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label143: TLabel
              Left = 148
              Top = 3
              Width = 79
              Height = 16
              Caption = 'Vencimento:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label144: TLabel
              Left = 250
              Top = 3
              Width = 28
              Height = 16
              Caption = 'Obs:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ColorMaskEdit2: TColorMaskEdit
              Left = 9
              Top = 18
              Width = 136
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              CharCase = ecUpperCase
              Color = clInactiveCaptionText
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object ColorMaskEdit3: TColorMaskEdit
              Left = 148
              Top = 18
              Width = 89
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              Color = clInactiveCaptionText
              Ctl3D = False
              EditMask = '!99/99/0000;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              MaxLength = 10
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              Text = '  /  /    '
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object ColorMaskEdit4: TColorMaskEdit
              Left = 240
              Top = 18
              Width = 38
              Height = 22
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              CharCase = ecUpperCase
              Color = clInactiveCaptionText
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnKeyPress = EdLoteKeyPress
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object Panel22: TPanel
            Left = 802
            Top = 3
            Width = 285
            Height = 95
            BevelWidth = 2
            TabOrder = 9
            Visible = False
            object DBGrid6: TDBGrid
              Left = 4
              Top = 3
              Width = 277
              Height = 89
              Hint = '<ENTER> Confirmar <ESC> Voltar'
              Color = 16772055
              Ctl3D = False
              DataSource = DMESTOQUE.DSAlx
              FixedColor = 11039232
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clSilver
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = [fsBold]
              OnKeyPress = GDBLoteKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'LOTE'
                  Title.Caption = 'Lote'
                  Width = 130
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENCIMENTO'
                  Title.Caption = 'Venc.'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Quant.'
                  Width = 50
                  Visible = True
                end>
            end
          end
          object EdDescConsumo: TEdit
            Left = 8
            Top = 25
            Width = 249
            Height = 22
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object EdCstConsumo: TEdit
            Left = 264
            Top = 25
            Width = 49
            Height = 24
            Color = 15329769
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnExit = EdCstConsumoExit
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 164
          Width = 761
          Height = 213
          Caption = 'Lista de produtos consumo do pedido'
          Color = 16772332
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object Label153: TLabel
            Left = 464
            Top = 174
            Width = 292
            Height = 16
            Hint = 'Informa a quantidade total de itens inseridos neste pedido'
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'LOCAL:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBGrid5: TDBGrid
            Left = 9
            Top = 22
            Width = 744
            Height = 179
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DDesp
            FixedColor = 11039232
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'DESPESA'
                Title.Caption = 'Produto'
                Width = 235
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDADE'
                Title.Caption = 'Un.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtde.'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRREAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Custo'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Caption = 'Desc.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTFIN'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 73
                Visible = True
              end>
          end
        end
      end
      inherited FPLista: TFashionPanel [17]
        Height = 384
        Color = 16772332
        TabOrder = 15
        inherited Panel2: TPanel
          Color = 16772332
          inherited PQtdConvert: TPanel [6]
            Left = 174
            Top = 27
            Width = 439
            Height = 96
            TabOrder = 16
            inherited Label62: TLabel
              Left = 325
              Top = 45
            end
            object SpeedButton1: TSpeedButton [1]
              Left = 418
              Top = 1
              Width = 19
              Height = 19
              Cursor = crHandPoint
              Hint = 'Pressione para fechar esta tela'
              Flat = True
              Glyph.Data = {
                06030000424D060300000000000036000000280000000F0000000F0000000100
                180000000000D0020000C40E0000C40E00000000000000000000996733996733
                9967339967339967339967339967339967339967339967339967339967339967
                33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
                9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
                9967339967339967339967339967339967339967339967339967339967339967
                33B99D94996733000000996733B99D9499673399673399673399673399673399
                6733996733996733996733996733996733B99D94996733000000996733B99D94
                9967339967330000009967339967339967339967339967330000009967339967
                33B99D94996733000000996733B99D9499673399673399673300000099673399
                6733996733000000996733996733996733B99D94996733000000996733B99D94
                9967339967339967339967330000009967330000009967339967339967339967
                33B99D94996733000000996733B99D9499673399673399673399673399673300
                0000996733996733996733996733996733B99D94996733000000996733B99D94
                9967339967339967339967330000009967330000009967339967339967339967
                33B99D94996733000000996733B99D9499673399673399673300000099673399
                6733996733000000996733996733996733B99D94996733000000996733B99D94
                9967339967330000009967339967339967339967339967330000009967339967
                33B99D94996733000000996733B99D9499673399673399673399673399673399
                6733996733996733996733996733996733B99D94996733000000996733B99D94
                9967339967339967339967339967339967339967339967339967339967339967
                33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
                9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
                9967339967339967339967339967339967339967339967339967339967339967
                33996733996733000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            inherited EdQtdConvert: TColorEditFloat
              Left = 325
              Top = 69
            end
            object BitBtn12: TBitBtn
              Left = 323
              Top = 3
              Width = 88
              Height = 17
              Caption = 'ATUALIZAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BitBtn12Click
            end
            object BitBtn13: TBitBtn
              Left = 323
              Top = 19
              Width = 88
              Height = 17
              Caption = 'CONVERS'#213'ES'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = BitBtn13Click
            end
            object DBGridConvert: TDBGrid
              Left = 6
              Top = 5
              Width = 307
              Height = 84
              Hint = 'Selecione a unidade de convers'#227'o'
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = 15794175
              Ctl3D = False
              DataSource = DMESTOQUE.DSAlx
              FixedColor = 11039232
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnCellClick = DBGridConvertCellClick
              OnExit = DBGridConvertExit
              OnKeyPress = DBGridConvertKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'SIGLA_UNID'
                  Title.Caption = 'DE'
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SIGLA_UNID1'
                  Title.Caption = 'PARA'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDCONVERT'
                  Title.Caption = 'Qtd. Conv.'
                  Width = 94
                  Visible = True
                end>
            end
          end
          inherited PLabelConvertion: TPanel [7]
            Left = 579
            Top = 80
            TabOrder = 10
            object Panel5: TPanel
              Left = 80
              Top = 24
              Width = 169
              Height = 33
              Caption = 'Panel5'
              TabOrder = 0
            end
          end
          inherited PVendItem: TPanel [8]
            Color = 16772332
            TabOrder = 17
          end
          inherited Panel3: TPanel [9]
            Top = 95
            Height = 42
            Color = 16772332
            TabOrder = 14
            inherited Bevel1: TBevel
              Shape = bsFrame
              Style = bsRaised
            end
            inherited LSimilar: TLabel
              Top = 24
            end
            inherited LMarca: TLabel
              Top = 24
            end
            inherited LLocal: TLabel
              Top = 24
            end
            inherited LBonif: TLabel
              Top = 24
            end
            inherited LCustoTot: TLabel
              Top = 24
            end
            inherited Label7: TLabel
              Left = 7
              Top = 10
              Width = 116
              Height = 12
              Font.Charset = ANSI_CHARSET
              Font.Height = -9
              Font.Name = 'Arial Narrow'
              ParentFont = False
            end
          end
          inherited BtnProcProd: TBitBtn [10]
          end
          inherited BtnInsertProd: TBitBtn [11]
            TabOrder = 8
            OnKeyDown = BtnInsertProdKeyDown
          end
          inherited BtnDeleteList: TBitBtn [12]
            TabOrder = 9
            OnExit = BtnDeleteListExit
          end
          inherited EDQuantidade: TColorEditFloat [13]
            OnEnter = EDQuantidadeEnter
          end
          inherited EDValUnit: TColorEditFloat [14]
            OnEnter = EDValUnitEnter
            OnKeyDown = EDValUnitKeyDown
          end
          inherited EDDesc: TColorEditFloat [15]
          end
          inherited EDTotal: TColorEditFloat [16]
            OnKeyDown = EDTotalKeyDown
          end
          inherited BtnAbrePAliq: TBitBtn [17]
            Top = 37
            Height = 11
            TabOrder = 22
            OnKeyDown = BtnAbrePAliqKeyDown
          end
          inherited BTNDEVOLVER: TBitBtn [18]
            TabOrder = 13
          end
          inherited EdLocal: TFlatEdit [19]
            ColorFlat = 16772332
            ParentColor = False
            TabOrder = 15
            OnKeyDown = EdLocalKeyDown
          end
          inherited PInfoExp: TPanel [20]
            TabOrder = 18
          end
          inherited PImpostos: TPanel [21]
            Height = 51
            TabOrder = 6
            inherited LCstCadastrado: TLabel
              Caption = '......'
            end
            inherited EdimpIcms: TColorEditFloat
              OnKeyDown = EdimpIcmsKeyDown
            end
            inherited EdImpIpi: TColorEditFloat
              OnKeyDown = EdImpIpiKeyDown
            end
            inherited EdImpVlrIcms: TColorEditFloat
              OnKeyDown = EdImpVlrIcmsKeyDown
            end
            inherited EdImpVlrIpi: TColorEditFloat
              OnExit = EdImpVlrIpiExit
              OnKeyDown = EdImpVlrIpiKeyDown
            end
            inherited EdBCIcms: TColorEditFloat
              OnKeyDown = EdBCIcmsKeyDown
            end
          end
          inherited PLote: TPanel [22]
            Color = 16772332
            TabOrder = 21
          end
          inherited PSelectLote: TPanel [23]
            TabOrder = 20
          end
          inherited PQuantDescarte: TPanel [24]
            TabOrder = 11
            inherited BtLote: TButton
              OnClick = BtLoteClick
            end
          end
          inherited pPesqBarraInterno: TPanel [25]
            inherited PCodInterno: TPanel
              Color = 16772332
            end
            inherited PCodFab: TPanel
              Color = 16772332
            end
          end
          inherited PComiss: TPanel [26]
            Color = 16772332
            TabOrder = 12
          end
          inherited pValoresImportacao: TPanel
            TabOrder = 7
          end
          inherited PQtd4casas: TPanel
            Left = 314
            Top = 9
            TabOrder = 19
          end
        end
        inherited GroupBox5: TGroupBox
          Height = 218
          Color = 16772332
          ParentColor = False
          inherited LQTDPROD: TLabel
            Left = 464
            Width = 292
          end
          inherited DBGrid1: TDBGrid
            Left = 3
            Top = 13
            Height = 202
            DataSource = DMESTOQUE.DSSlave
            PopupMenu = PmItens
            OnDrawColumnCell = DBGrid1DrawColumnCell
            OnDblClick = DBGrid1DblClick
            OnMouseDown = DBGrid1MouseDown
            Columns = <
              item
                Expanded = False
                FieldName = 'AGRUP'
                Title.Caption = 'Agrupar'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPRODFABR'
                Title.Caption = 'C'#243'd.'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOTE'
                Title.Caption = 'Lote'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Width = 278
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEPROD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Title.Caption = 'Qtde.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD4CASAS'
                Title.Caption = 'Qtde. (4 c)'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALUNIT'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCPRO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Desc. (%)'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORTOTAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Width = 178
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEST'
                Title.Caption = 'Qtd. Estoque'
                Width = 78
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CST'
                Title.Alignment = taCenter
                Width = 35
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CFOP'
                Title.Alignment = taCenter
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Icms'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. Icms'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQIPI'
                Title.Alignment = taRightJustify
                Title.Caption = 'IPI'
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRIPI'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. IPI'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs'
                Title.Caption = 'Observa'#231#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEEXP'
                Title.Caption = 'Qtd. 02'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EDIT'
                Title.Caption = 'AG'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlripi'
                Title.Caption = 'Vlr. IPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vlricmssubs'
                Title.Caption = 'Vlr. Icms Subst.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'basecalcii'
                Title.Caption = 'B.C. II'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'outdespii'
                Title.Caption = 'Desp. II'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valorii'
                Title.Caption = 'Valor II'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valoriof'
                Title.Caption = 'Valor IOF'
                Visible = True
              end>
          end
        end
        inherited PAliqCusto: TPanel
          inherited FashionPanel1: TFashionPanel
            inherited Panel6: TPanel
              Enabled = True
            end
          end
        end
      end
      object PComisPedC: TPanel [18]
        Left = 25
        Top = 24
        Width = 163
        Height = 59
        BevelWidth = 3
        Color = 16772332
        TabOrder = 21
        Visible = False
        object Label50: TLabel
          Left = 92
          Top = 8
          Width = 64
          Height = 12
          Caption = 'Vlr. P/ Com.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 10
          Top = 8
          Width = 58
          Height = 12
          Caption = 'Comiss.(%)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DbComis: TDBColorEdit
          Left = 6
          Top = 20
          Width = 63
          Height = 19
          Ctl3D = False
          DataField = 'PERCOMIS'
          DataSource = DMENTRADA.DPedC
          ParentCtl3D = False
          TabOrder = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBColorEdit2: TDBColorEdit
          Left = 74
          Top = 20
          Width = 83
          Height = 19
          Ctl3D = False
          DataField = 'VLRPCOMIS'
          DataSource = DMENTRADA.DPedC
          ParentCtl3D = False
          TabOrder = 1
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BitBtn8: TBitBtn
          Left = 139
          Top = 39
          Width = 18
          Height = 15
          Caption = 'X'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn6Click
        end
      end
      inherited EDNOMEVENDEDOR: TColorEditFloat [19]
        Left = 40
        Top = 85
        Width = 151
        Height = 19
        Font.Height = -11
        Font.Name = 'Verdana'
        TabOrder = 20
      end
      inherited EDFORMPAG: TColorEditFloat [20]
        Left = 255
        Width = 176
        TabOrder = 22
      end
      inherited BtnProcFormPag: TBitBtn [21]
        Left = 431
        Width = 19
        TabOrder = 3
        OnKeyDown = BtnProcFormPagKeyDown
      end
      inherited EDDescPed: TFloatEdit [22]
        Left = 686
        Top = 52
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 9
        OnKeyDown = EDDescPedKeyDown
      end
      inherited DBPRAZOENT: TDBColorEdit [23]
        Left = 460
        Top = 85
        Width = 62
        DataField = 'PRAZOENTR'
        TabOrder = 4
      end
      inherited PCadVendedor: TPanel [24]
        Top = 83
        Width = 207
        TabOrder = 1
        inherited dbvendedor: TEdit
          Top = 2
          Width = 201
          Font.Charset = ANSI_CHARSET
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BitBtn9: TBitBtn
          Left = 249
          Top = 10
          Width = 12
          Height = 12
          TabOrder = 1
          OnClick = BitBtn9Click
          Glyph.Data = {
            AE000000424DAE00000000000000360000002800000006000000060000000100
            18000000000078000000C40E0000C40E00000000000000000000CFC8CFCFC8CF
            CFC8CFCFC8CFCFC8CF0000000000CFC8CFCFC8CFCFC8CFCFC8CF000000000000
            0000CFC8CFCFC8CFCFC8CF0000000000000000000000CFC8CFCFC8CF00000000
            00000000000000000000CFC8CF00000000000000000000000000000000000000
            000000000000000000000000000000000000}
        end
      end
      inherited PSelectCliente: TPanel [25]
        Top = 13
        Width = 530
        TabOrder = 0
        inherited LUZOPEN: TShape
          Left = 505
          Height = 23
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
        end
        inherited LSelectPessoa: TLabel
          Width = 173
          Caption = 'Informe o Fornecedor para o Pedido:'
        end
        inherited PPesCad: TPanel
          Color = 16772332
          TabOrder = 2
        end
        inherited EdCodCli: TEdit
          Height = 21
        end
        inherited BtnProcPess: TBitBtn
          Left = 505
          Top = 30
          Width = 19
          Height = 19
          TabOrder = 1
        end
      end
      inherited PGarantia: TPanel [26]
        Left = 535
        Top = 87
        Width = 97
        Height = 19
        Color = clWhite
        TabOrder = 19
        inherited CBGarantia: TCheckBox
          Left = 2
          Top = 1
        end
      end
      inline FrmDestinatario: TFrmBusca [27]
        Left = 301
        Top = 108
        Width = 323
        Height = 35
        Color = clWhite
        ParentColor = False
        TabOrder = 7
        inherited LUZOPEN: TShape [0]
          Left = 280
          Top = 13
          Width = 18
          Height = 19
        end
        inherited LUZMINUS: TShape [1]
          Left = 297
          Top = 13
          Width = 18
          Height = 19
        end
        inherited LTextoBusca: TLabel [2]
          Top = 1
          Width = 80
          Height = 13
          Caption = 'Destinat'#225'rio'
          Font.Height = -11
          Font.Style = [fsBold]
        end
        inherited EdDescricao: TFlatEdit
          Left = 53
          Width = 224
          ColorFlat = 15990760
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 277
          OnClick = frmFormPagBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 295
          Width = 17
          OnClick = FrmDestinatarioBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 50
          ColorFlat = 15138764
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          OnKeyPress = FrmDestinatarioEDCodigoKeyPress
        end
      end
      inherited EDCODFORMPAG: TColorEditFloat [28]
        Left = 219
        Width = 36
        TabOrder = 2
      end
      inherited BtnProcVend: TBitBtn [29]
        Left = 191
        Width = 19
        Height = 19
        TabOrder = 18
        OnKeyDown = BtnProcVendKeyDown
      end
      inherited EdCodVend: TColorEditFloat [30]
        Top = 85
        Width = 30
        Height = 19
        Font.Height = -11
        Font.Name = 'Verdana'
        TabOrder = 17
      end
      inherited EdDescMoeda: TFloatEdit [31]
        Left = 739
        Top = 52
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 10
      end
      inherited DBDATA: TColorMaskEdit [32]
        Top = 121
        Width = 72
        TabOrder = 5
      end
      inherited DBMemo: TMemo [33]
        Left = 135
        Width = 158
        Height = 31
        TabOrder = 6
      end
      inherited EdValorPed: TColorEditFloat [34]
        Left = 661
        Top = 19
        Width = 121
        Height = 24
        Color = clSkyBlue
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        TabOrder = 8
        OnKeyDown = EdValorPedKeyDown
      end
      inherited EdValorOutros: TColorEditFloat [35]
        Left = 709
        TabOrder = 12
      end
      inherited EdValorIpi: TColorEditFloat [36]
        Left = 655
        TabOrder = 13
      end
      inherited EdValorFrete: TColorEditFloat [37]
        Left = 655
        TabOrder = 11
      end
      inherited EdValoIcmsSubstituicao: TColorEditFloat
        Left = 709
        TabOrder = 14
      end
      object BtnProdutos: TBitBtn
        Left = 3
        Top = 529
        Width = 75
        Height = 16
        Caption = '&PRODUTOS'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
        OnClick = BtnProdutosClick
        Glyph.Data = {
          9E010000424D9E0100000000000036000000280000000B0000000A0000000100
          1800000000006801000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FF000000000000FFFFFF000000008080000000FFFFFF000000000000FFFFFF00
          000000000000FFFF00808000000000000000FFFF000000000000008080008080
          000000000000FFFFFF00000000FFFF008080008080FFFFFF00000000808000FF
          FF000000FFFFFF00000000000000808000000000FFFFFFFFFF00FFFFFFFFFF00
          FFFF00000000808000000000000000000000808000FFFFFFFFFF000000000000
          000000FFFFFF00FFFF0080800000000000000000000000000080800000000000
          00FFFFFF000000000000FFFFFF00000000000000000086868600000000FFFF00
          8080868686FFFFFF00000000FFFF008080000000FFFFFF000000FFFFFF000000
          008080000000000000FFFFFF00000000000000FFFF000000FFFFFF000000FFFF
          FFFFFFFF000000FFFFFFC0C0C0868686FFFFFFFFFFFF000000FFFFFFFFFFFF00
          0000}
      end
      object BtnConsumo: TBitBtn
        Left = 80
        Top = 529
        Width = 75
        Height = 16
        Caption = '&CONSUMOS'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        OnClick = BtnConsumoClick
        Glyph.Data = {
          9E010000424D9E0100000000000036000000280000000B0000000A0000000100
          1800000000006801000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FF000000000000FFFFFF000000008080000000FFFFFF000000000000FFFFFF00
          000000000000FFFF00808000000000000000FFFF000000000000008080008080
          000000000000FFFFFF00000000FFFF008080008080FFFFFF00000000808000FF
          FF000000FFFFFF00000000000000808000000000FFFFFFFFFF00FFFFFFFFFF00
          FFFF00000000808000000000000000000000808000FFFFFFFFFF000000000000
          000000FFFFFF00FFFF0080800000000000000000000000000080800000000000
          00FFFFFF000000000000FFFFFF00000000000000000086868600000000FFFF00
          8080868686FFFFFF00000000FFFF008080000000FFFFFF000000FFFFFF000000
          008080000000000000FFFFFF00000000000000FFFF000000FFFFFF000000FFFF
          FFFFFFFF000000FFFFFFC0C0C0868686FFFFFFFFFFFF000000FFFFFFFFFFFF00
          0000}
      end
    end
    inherited Panel1: TPanel [3]
      Width = 306
      object Label59: TLabel [3]
        Left = 415
        Top = 9
        Width = 32
        Height = 16
        Caption = 'Fisc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited BtnCancelar: TBitBtn
        OnKeyDown = BtnCancelarKeyDown
      end
      inherited BtnGravar: TBitBtn
        OnKeyDown = BtnGravarKeyDown
      end
      inherited BtnDadosAdic: TBitBtn
        OnKeyDown = BtnDadosAdicKeyDown
      end
      object DBColorEdit3: TDBColorEdit
        Left = 448
        Top = 3
        Width = 65
        Height = 22
        Color = clActiveBorder
        Ctl3D = False
        DataField = 'NUMFISCAL'
        DataSource = DMENTRADA.DPedC
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBColorEdit3KeyDown
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited EdNumeroPedido: TEdit [4]
      Left = 704
      Width = 81
      OnKeyDown = EdNumeroPedidoKeyDown
    end
  end
  inherited PConsulta: TPanel [9]
    Left = 1
    Top = 6
    Width = 793
    Height = 579
    inherited GroupBox1: TGroupBox
      Left = 10
      Top = 70
      Width = 771
      object edrazaosocial: TFlatEdit [0]
        Left = 200
        Top = 19
        Width = 249
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. <Ctrl+Espa'#231'o> para pesquisar parte do registro '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'Digite a Raz'#227'o Social'
        OnClick = edrazaosocialClick
        OnExit = edrazaosocialExit
        OnKeyDown = edrazaosocialKeyDown
      end
      inherited EdNome: TFlatEdit
        Left = 454
        Width = 203
        TabOrder = 3
        Text = 'Digite a Fantasia'
        OnClick = EdNomeClick
        OnEnter = nil
      end
      inherited BtnSelecionar: TBitBtn
        Left = 664
        Top = 18
        TabOrder = 4
      end
      inherited EdNumPed: TFlatEdit
        Width = 85
        OnClick = EdNumPedClick
        OnExit = EdNumPedExit
      end
      object EdNumDoc: TFlatEdit
        Left = 92
        Top = 19
        Width = 105
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
        TabOrder = 1
        Text = 'N'#186' Doc'
        OnClick = EdNumDocClick
        OnExit = EdNumDocExit
        OnKeyDown = EdNumDocKeyDown
      end
    end
    inherited PFiltrarParcelas: TPanel
      inherited cbMiniDanfe: TcxCheckBox
        Properties.Caption = 'DANFE'
      end
      inherited cbNFeClientes: TcxCheckBox
        Properties.Caption = 'Clientes'
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 10
      Top = 176
      Width = 771
      Height = 397
      DataSource = DMENTRADA.DWPEDC
      PopupMenu = PM_P_Grid
      OnDblClick = DBGridCadastroPadraoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'EXPORT'
          Title.Caption = 'E'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARK'
          Title.Caption = 'M'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDEV'
          Title.Caption = 'Dev.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N'#186' Pedido'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Title.Caption = 'Fiscal'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL_DEV'
          Title.Caption = 'N'#186' NFe Dev.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'Situa'#231#227'o'
          Width = 56
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
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDCOMP'
          Title.Caption = 'Data'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Fornecedor'
          Width = 387
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESTINATARIO'
          Title.Caption = 'Destinat'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Social'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Left = 10
      Width = 772
      Height = 55
      inherited BtnFiltrar: TBitBtn
        Hint = 'Pressione este bot'#227'o para gerar Documento Fiscal'
        Caption = '&Fiscal'
        PopupMenu = PMBtnFiscal
        OnClick = BtnFiltrarClick
        OnMouseDown = BtnFiltrarMouseDown
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D002000000000000000000000000000000000000D8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000000000000000000000000000
          00000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC7F0000D8E9ECD8E9ECD8E9EC00
          0000000000000000000000000000000000000000000000D8E9ECD8E9ECD8E9EC
          D8E9EC7F00007F0000D8E9ECD8E9EC000000007F7F007F7F007F7F007F7F007F
          7F0000000000000000007F00007F00007F00007F00007F00007F0000D8E9EC00
          0000000000000000000000000000000000000000007F7F000000D8E9ECD8E9EC
          D8E9EC7F00007F0000D8E9ECD8E9EC000000FFFFFFD8E9ECFFFFFFD8E9ECFFFF
          FFD8E9EC000000000000D8E9ECD8E9ECD8E9EC7F0000D8E9ECD8E9ECD8E9EC00
          0000000000000000000000000000000000D8E9EC7F7F7F000000D8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFF
          FF000000000000D8E9ECD8E9ECD8E9EC000000000000000000000000000000D8
          E9EC000000FFFFFF7F7F7F7F7F7FFFFFFF000000D8E9ECD8E9ECD8E9ECD8E9EC
          000000FFFFFFFFFFFFFFFFFF000000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFF
          FFFFFFFF000000D8E9EC000000000000000000000000000000FFFFFF000000D8
          E9ECD8E9ECD8E9EC000000000000000000000000000000D8E9EC000000FFFFFF
          FFFFFFFFFFFF000000FFFFFF000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9EC000000FFFFFF7F7F7FFFFFFF000000000000000000D8
          E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000FFFFFF
          7F7F7FFFFFFF000000000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9EC000000FFFFFFFFFFFF000000000000D8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000000000
          000000000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9EC}
      end
      object BtnTroca: TBitBtn
        Left = 626
        Top = 2
        Width = 135
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela o pedido selecionado'
        Caption = 'Cancelar Fechamento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnTrocaClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777747770FFFFFF000000007777
          744770F8888F000000007444444470FFFFFF000000007777744770F8888F0000
          00007777747770FFFFFF000000007777777770F8888F000000007770000070FF
          FFFF000000007770FFF07000000000000000700000F0777777777000000070FF
          F0F0777777777000000070F8F000777777777000000070F8F007777777777000
          000070FF00777777777770000000700007777777777770000000777777777777
          777770000000}
      end
      object BtnImportaNfe: TBitBtn
        Left = 2
        Top = 27
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para importar Nfe'
        Caption = '&Importa Nfe'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BtnImportaNfeClick
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
      object BitBtn1: TBitBtn
        Left = 106
        Top = 27
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para importar Nfe'
        Caption = 'Cont. Retornos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BitBtn1Click
        Glyph.Data = {
          0A020000424D0A0200000000000036000000280000000B0000000D0000000100
          180000000000D401000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC3A18A823A09853F10EBE0D9FFFF
          FFFFFFFFFFFFFF000000E4D4CAF1E8E3FFFFFFFFFFFFC3A18A823A09853F10EB
          E0D9FFFFFFFFFFFFDBC6B9000000DFCDC17E3402FFFFFFFFFFFFC3A18A823A09
          853F10EBE0D9FFFFFFE1CFC3874415000000E2D2C77A2E0094572DFFFFFFC6A5
          90823A09854010F2EBE6EADFD58037058E4F23000000E3D4CA7A2E00833C0C9E
          6741C6A791833C0B884516DECBBF874314843E0D8E4D21000000FFFFFFBA9479
          7F36048641128A47198945178A481A874212864112803807E0CFC2000000FFFF
          FFFFFFFFAB7A5A8138078945178A4719894618884415813806D3BAA9FFFFFF00
          0000FFFFFFFFFFFFFFFFFFA77653823A09894618894517813806D0B6A4FFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF9A6139823B0A803705BF9A82FFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93562CB99176FF
          FFFFFFFFFFFFFFFFFFFFFF000000}
      end
    end
    inherited GBFiltragem: TGroupBox
      Left = 10
      Top = 119
      Width = 771
      Height = 49
      inherited CbFiltroPedidosFechados: TCheckBox
        Left = 14
        Top = 22
        Width = 193
      end
      inherited cxGroupBox1: TcxGroupBox
        Left = 563
        Top = 8
      end
      inherited ControleFrete: TGroupBox
        Height = 37
      end
    end
  end
  inherited FSRel: TfrReport
    Left = 472
    Top = 65531
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 392
    Top = 65531
  end
  inherited MEscolheProc: TPopupMenu
    Left = 426
    Top = 65534
  end
  inherited PMRel: TPopupMenu
    Left = 348
    Top = 65529
    object AquisiodeSuprimentos: TMenuItem [1]
      Caption = 'Aquisi'#231#227'o de Suprimentos'
      OnClick = AquisiodeSuprimentosClick
    end
    object Etiquetas1: TMenuItem [3]
      Caption = 'Etiquetas C'#243'd. Barra'
      OnClick = Etiquetas1Click
    end
    object EtiquetaCdFabricante1: TMenuItem [4]
      Caption = 'Etiqueta C'#243'd. Fabricante'
      OnClick = EtiquetaCdFabricante1Click
    end
    object RelatriodeDanfes1: TMenuItem [5]
      Caption = 'Relat'#243'rio de Danfes'
      OnClick = RelatriodeDanfes1Click
    end
    object RelatriodeDestinatrio1: TMenuItem
      Caption = 'Relat'#243'rio de Destinat'#225'rio'
      OnClick = RelatriodeDestinatrio1Click
    end
  end
  inherited FSDSDesp: TfrDBDataSet
    Left = 721
    Top = 65532
  end
  inherited frDBDataSet1: TfrDBDataSet
    Left = 760
    Top = 65528
  end
  inherited FSDSDataSet2: TfrDBDataSet
    Left = 608
    Top = 0
  end
  inherited FSDSTmp: TfrDBDataSet
    Left = 576
    Top = 0
  end
  inherited FSDSBanco: TfrDBDataSet
    Left = 541
    Top = 5
  end
  inherited FSDSVeiculoEnt: TfrDBDataSet
    Left = 640
    Top = 16
  end
  inherited FSDSParc: TfrDBDataSet
    Left = 621
    Top = 3
  end
  inherited FSDSRelServ: TfrDBDataSet
    Left = 509
    Top = 13
  end
  inherited frxRelComprovante: TfrxReport
    ReportOptions.CreateDate = 42405.354720740740000000
    ReportOptions.LastChange = 42405.354720740740000000
    ScriptText.Strings = (
      'VAR'
      'Xvalor: real;'
      'XvalorImp: real;'
      'Xvalortotalnf: real;'
      'xOrc:Real;  '
      '  '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       Xvalor := Xvalor +  <frxORCAMENTO."vlrtotal">;'
      '       xOrc := xOrc + <frxORCAMENTO."vlricmssubs">;  '
      'end;  '
      '      '
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '       Memo46.Text := FormatFloat('#39'####0.00'#39', <frxORCAMENTO."vlr' +
        'totalorc"> - FloatToStr(xOrc)); //<frxORCAMENTO."vlrtotalorc"> -' +
        ' <frxORCAMENTO."vlricmssubs">;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 312
    Top = 65531
    Datasets = <>
    Variables = <>
    Style = <>
    inherited Page1: TfrxReportPage
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
      end
    end
    object TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
  end
  inherited dbSetTitulo: TfrxDBDataset
    Left = 216
    Top = 65528
  end
  inherited dbSetAux: TfrxDBDataset
    Left = 247
    Top = 65528
  end
  inherited dbSetSlave: TfrxDBDataset
    Left = 325
  end
  inherited dbSetDespesas: TfrxDBDataset
    Left = 360
    Top = 48
  end
  inherited dbSetFrete: TfrxDBDataset
    Left = 384
    Top = 40
  end
  inherited dbSetConta: TfrxDBDataset
    Left = 416
  end
  object PMBtnFiscal: TPopupMenu
    Left = 236
    Top = 13
    object ConsultaNDocFiscal1: TMenuItem
      Caption = 'Consulta N'#186' Doc. Fiscal'
      OnClick = ConsultaNDocFiscal1Click
    end
    object AlteraNDocFiscal1: TMenuItem
      Caption = 'Altera N'#186' Doc. Fiscal'
      OnClick = AlteraNDocFiscal1Click
    end
  end
  object PM_P_Grid: TPopupMenu
    Left = 565
    Top = 42
    object Criarnovopedido1: TMenuItem
      Caption = 'Gerar novo pedido'
      Hint = 'Criar novo pedido atrav'#233'z do pedido selecionado'
      OnClick = Criarnovopedido1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exportar1: TMenuItem
      Caption = 'Exportar Pedido'
      OnClick = Exportar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object EfetuarDevoluo1: TMenuItem
      Caption = 'Efetuar Devolu'#231#227'o'
      OnClick = EfetuarDevoluo1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object NOTAFISCALELETRNICA2: TMenuItem
      Bitmap.Data = {
        D6090000424DD60900000000000036000000280000001D0000001C0000000100
        180000000000A009000000000000000000000000000000000000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4
        F4F3F7FAF4E9DFF0C5A6F0D8CAF5F6F7F4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F5F5F5F0EDF0E9E6E9E8E5E7ECECECF3F3F3F6F7F7F4F6F7F3E2D7FAD6B8FA
        CAA3EEBB98F2E2D8F4F7F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F6F5F6EBE7E9C5CDC6B3
        C4B6C1C9C2CFCBCDD1CBCFDBD9DBF3DDCEFFD4B0FFD5B3FFDABAFACAA4EBB693
        F3EAE3F4F5F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F6F6F7F1EFF090BF9B52A46864AC7359A86D5CA16E
        7DA18A9FABADC5B2ADF8CAAAFFD8B5FFD8B7FDD4B3F1B78CF0D1BDF4F7F9F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4FCF7FAB1D3B752A169D6E1D583DEDC30C1B16CC2A058AB72349A634FA3
        979AACAEE1BFA5FCCFACFED5B4FCCFAAF0C9AFF4F5F8F4F7F9F4F4F5F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F6F5F6F6F6F576B8
        869EBBA1CCF0F91EC3BE98CAC9F6F4F9F4F6F4A5CEAC399F5F1A9A7AA8A99AEF
        BE9EF9D1B0FBD0ADECAB80F0CDB7F3EEE9F3F6F8F4F6F8F4F5F6F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F7F5F7F1F4F06EB37FB0C0AF83DEE042
        BEB7E1D3D3F6F4F3F9F6F8FFFBFFDFEBDE66B2786AA167D8B298EABFA6FBD3B2
        FAC9A0ECA97AECB18AEEC5ACEFCFBAF2EBE8F4F6F7F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F6F5F6F4F5F377B886A4BAA472D5D954C0BBDCD1D2F1F1F1
        F6F6F6F4F4F2E8C9BAC5A68B599B6455975CB3967ED4AC92FCD7B7FDD5B2F3B8
        8DF0AF80ECA777EDC1A6F4F3F2F4F5F6F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F5F4F5F9F7F88CC59A8EB09181D0D547C3BBD2CCCCEDECECF5F7F8E6E1DBD0BF
        B1C9BAB6CFCAC57BBC90367E466F5D4FAA8B76FBD2B1FFD9B8FED8B7F9CCA6EB
        A677EFD6C4F3F7F7F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4FDF8FBB4D8
        BA73A97B9BC9CD30C3BCBFC8C6E5E0E1F9FAF9FFFFFFFFFFFFFFFFF9FFFFFBFF
        FBF782C5983E814C9E7D6AE3BCA1FFD7B7FFD7B7FDD6B5F3BA8EECB695F5F1F1
        F4F5F6F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F9F6F9E0ECE168AE77A4BFB632
        C0BE95C5C1E6DCDCFFFFFFDBDBD9C0A791FBD5B2FCD3B0FFD5B6FAE0C570B680
        749F6CDFB39BEEC6A8FFD7B6FED6B5F8CBA4EBAA7DF2E1D8F4F6F9F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F5F4F5F9F7F88AC3978AB19062C0C450BEB6F1E9EA
        FFFFFF928378C39E81FFDCBAFED2AEFFD5B1FFDAB8F3DBBA5BAC6F94A579E2B6
        9EF4CDADFFD7B6FCD2AFEFAE81EED2BFF4F7F9F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4F3F4F4FCF8FBCDE3CF6AAB7497BFBC21B7B1CBEBE9FFFFFF8878699178
        63AE927BAC9078AB8D75AC8E77B28E7A989E7E479C5EB9AB89E5BA9EFAD2AFFD
        D7B6F2B589EFCEBAF4F8FBF4F4F4F4F4F400F4F4F4F4F4F4F3F4F4F4F6F7F6F7
        FBF8F8FA84C29485AE8B709F92ACC7B4FFFFFFEAE9E6E5E5E3DDDEDDDADCDBDA
        DCDBDADCDBDAD9D7C5B6B169926A609F63D8AF94ECC3A4FFDCBCEFB082EBB491
        F2EAE6F4F6F8F4F4F400F4F4F4F4F4F5F5F5F8F1E8E2F1D6C7FBEAE7D4E8DB5F
        A86DB39770E4BFA8FFFFFFE6E4E1B8ACA3F8E5D6FFF6E3FFF1E0FFEBD8FFFFFD
        E9E5E58C766561A86F8FA576E4B79EF8D2B4F8C7A1E79A67EDBFA2F5F2F2F4F6
        F700F4F5F5F3F2F2F0CFBDEEBB98EEAA7CEBAD85F9CDB59EC79B72A975DBAF93
        F2E8E2F0EFED7D6653987A61F2CAA9FFDAB5FECEA6FFF7ECE8EAEB917261C1C1
        9D52A163C7AD8FEAC1A4FFDCBDF1B88CE79B68EFCBB3F4F2F300F3F6F9F1E0D5
        F0B68DF8C79FFDD7B6F4BE94F4B589F4D8B770B98494A577E2B9A5F9F9F9E7E2
        DD8C7768876D59AA8A71CFB39BFFFFFDD3D1CFB08D73FFDABA7EB7827E9F6EE4
        B59CF6CFAEFCD4B3EFB181E89F6EF1D9CA00F3F4F6F7D9C1FED4B2FDD5B5FED5
        B4FFD9B8FED7B6FFD3B3D6D1AD5DAE76B2A881E3BBA9FCF9F6FAFCFDD3D1CFCA
        C7C5EDF1F4FBFCFCD8BFA9F0C5A0FFD9B8D6D2AF559E63C6A889EAC0A1FCD4B2
        FAD2AFEBA06CEDC0A400F3F3F3FBDABEFFD7B4FFD6B5FFD6B5FFD9B7FFD9B8FF
        D6B5FFDABAB8CFA660AA73C6A988E4BBA0FBE4D1FFFBF0FFFEF5FFF1E4F8DABF
        FBCFABFFD7B5FED2B1FFD7B875B37C909F73E6B69BFACFABFDD4B1ECA472EDC4
        AB00F4F7F9ECDED4EFC5A4FFD4B1FFD3B0EBC2A2F2CAACFFD5B3F3C8A7F6CCAF
        9CC59967A972CFB092E4B799F9CDACFFD5B2FFD3B0FED2AEFBD1AEFFD6B6FFD6
        B6FFD5B5B2C89B669E67DFB399FBC9A5F5C7A4E8C0A6F2E6DD00FAFAFADEDEDF
        8D857FE0C5AFFBE2CBBBAA9E927A67F2D4BCD9C6B6947A68EDC9AB94C5966CA9
        75D1B295E2B89EF5CEADFFD7B6FFD6B5FCD3B1FDD4B3FFD8B7FFD4B3E1D0AB61
        A46BBFA685A1A688C0BCB1E1E0E1F5F7F800F7F7F7FFFFFF919597BAB5B2FFFF
        FFFFFFFF8A7667D7C5B6FFFFFF8C7E70D9B093FFE4C391C5946AAA76CEB294E2
        B69BF0C9AAFFD6B6FFD8B6FFD5B2FCD0ABFAD2B2F1DDC66EAF7B98AA934FBCB6
        9CC8C8E1D9DBF5F5F600F5F5F5FFFFFFA8A9A8AFADACFDFDFDFFFFFFA09185BD
        A58FFFFFFFA69B92947862BF9B82C2A38A8FBE9164AC73BEB08DE2B49BECC1A4
        FDCCADF3C7A8EED2BCF7ECEBF9F9FA78B78995B5A159CAC88BC3C1E3D8D8F5F5
        F500F4F4F4FFFFFFC5C5C5D1D4D4D0C5BEF2EFECBAB2ACA38972FFFFFBF4F2F2
        E7E5E4DEDAD8B89B85FBD0B1B0CB9E5DAB739FAD808DA28A5FA299AEB5B4D8CE
        D1E9E4E8ECEDEB70B07FA2BBAB54CDCA8DBFBCE8DEDFF6F6F600F3F3F3FCFCFC
        F3F3F3F3F4F5A4978DF5F0E9D3D4D6897261FEF8EFECEBEAA4978DCCC6C0D0B7
        A0EBC1A3FFD7B9D4D1AC74B37E4CA5702AA89030A69D6CA8A8A9B1B5A7BEA762
        A36E84C6C135C0B8BCC8C8F2EDEEF5F5F500F3F3F3F8F8F8FFFFFFE6E6E6AEAF
        B0FFFFFFEDEFF0978172F3E3D6F7F7F7BCB5AEC3C2C2A6A6A8AEA9A5F7F4F3FF
        E2CEF4D4B7B3D4B777B7854CA87335A3754BA57841A1662AAE9431C3BC98CFCB
        F3EAEBF5F5F5F4F4F400F3F3F3F5F5F5FAFAFAF2F2F2EEEEEEF8F7F8FAFAFAEC
        E6E2F4F1EFFBF7F4FFFFFCFFFFFFF9F9FAEAEBEDF4F6F8F3F0EFF6ECE8FDF8FD
        F1F4F2D1E2D1B5D4B8B0D3B7B0DFD5A6E4E6D4EAE9FEF4F4F6F5F5F4F4F4F4F4
        F400F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F3F3F3F3F3F3F6F8F9F4F5F5F3F1F0
        F4F0EFF3F3F3F5F5F5F6F6F6F4F3F3F4F4F5F4F5F7F4F4F4F6F5F6FCF8FBFFFA
        FEFFFAFFFFF8FBFFF7F8FCF6F6F4F4F4F4F4F4F4F4F4F4F4F400}
      Caption = 'NOTA FISCAL ELETR'#212'NICA'
    end
    object RecuperarDadosdaNotaFiscalEletrnica1: TMenuItem
      Caption = 'Recuperar Dados da Nota Fiscal Eletr'#244'nica'
      OnClick = RecuperarDadosdaNotaFiscalEletrnica1Click
    end
    object NotaFiscalEletrnica1: TMenuItem
      Bitmap.Data = {
        D6090000424DD60900000000000036000000280000001D0000001C0000000100
        180000000000A009000000000000000000000000000000000000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4
        F4F3F7FAF4E9DFF0C5A6F0D8CAF5F6F7F4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F5F5F5F0EDF0E9E6E9E8E5E7ECECECF3F3F3F6F7F7F4F6F7F3E2D7FAD6B8FA
        CAA3EEBB98F2E2D8F4F7F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F4F4F4F6F5F6EBE7E9C5CDC6B3
        C4B6C1C9C2CFCBCDD1CBCFDBD9DBF3DDCEFFD4B0FFD5B3FFDABAFACAA4EBB693
        F3EAE3F4F5F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F6F6F7F1EFF090BF9B52A46864AC7359A86D5CA16E
        7DA18A9FABADC5B2ADF8CAAAFFD8B5FFD8B7FDD4B3F1B78CF0D1BDF4F7F9F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4FCF7FAB1D3B752A169D6E1D583DEDC30C1B16CC2A058AB72349A634FA3
        979AACAEE1BFA5FCCFACFED5B4FCCFAAF0C9AFF4F5F8F4F7F9F4F4F5F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F6F5F6F6F6F576B8
        869EBBA1CCF0F91EC3BE98CAC9F6F4F9F4F6F4A5CEAC399F5F1A9A7AA8A99AEF
        BE9EF9D1B0FBD0ADECAB80F0CDB7F3EEE9F3F6F8F4F6F8F4F5F6F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F7F5F7F1F4F06EB37FB0C0AF83DEE042
        BEB7E1D3D3F6F4F3F9F6F8FFFBFFDFEBDE66B2786AA167D8B298EABFA6FBD3B2
        FAC9A0ECA97AECB18AEEC5ACEFCFBAF2EBE8F4F6F7F4F4F4F4F4F4F4F4F4F4F4
        F400F4F4F4F4F4F4F6F5F6F4F5F377B886A4BAA472D5D954C0BBDCD1D2F1F1F1
        F6F6F6F4F4F2E8C9BAC5A68B599B6455975CB3967ED4AC92FCD7B7FDD5B2F3B8
        8DF0AF80ECA777EDC1A6F4F3F2F4F5F6F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4
        F5F4F5F9F7F88CC59A8EB09181D0D547C3BBD2CCCCEDECECF5F7F8E6E1DBD0BF
        B1C9BAB6CFCAC57BBC90367E466F5D4FAA8B76FBD2B1FFD9B8FED8B7F9CCA6EB
        A677EFD6C4F3F7F7F4F4F4F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4FDF8FBB4D8
        BA73A97B9BC9CD30C3BCBFC8C6E5E0E1F9FAF9FFFFFFFFFFFFFFFFF9FFFFFBFF
        FBF782C5983E814C9E7D6AE3BCA1FFD7B7FFD7B7FDD6B5F3BA8EECB695F5F1F1
        F4F5F6F4F4F4F4F4F400F4F4F4F4F4F4F4F4F4F9F6F9E0ECE168AE77A4BFB632
        C0BE95C5C1E6DCDCFFFFFFDBDBD9C0A791FBD5B2FCD3B0FFD5B6FAE0C570B680
        749F6CDFB39BEEC6A8FFD7B6FED6B5F8CBA4EBAA7DF2E1D8F4F6F9F4F4F4F4F4
        F400F4F4F4F4F4F4F4F4F4F5F4F5F9F7F88AC3978AB19062C0C450BEB6F1E9EA
        FFFFFF928378C39E81FFDCBAFED2AEFFD5B1FFDAB8F3DBBA5BAC6F94A579E2B6
        9EF4CDADFFD7B6FCD2AFEFAE81EED2BFF4F7F9F4F4F4F4F4F400F4F4F4F4F4F4
        F4F4F4F3F4F4FCF8FBCDE3CF6AAB7497BFBC21B7B1CBEBE9FFFFFF8878699178
        63AE927BAC9078AB8D75AC8E77B28E7A989E7E479C5EB9AB89E5BA9EFAD2AFFD
        D7B6F2B589EFCEBAF4F8FBF4F4F4F4F4F400F4F4F4F4F4F4F3F4F4F4F6F7F6F7
        FBF8F8FA84C29485AE8B709F92ACC7B4FFFFFFEAE9E6E5E5E3DDDEDDDADCDBDA
        DCDBDADCDBDAD9D7C5B6B169926A609F63D8AF94ECC3A4FFDCBCEFB082EBB491
        F2EAE6F4F6F8F4F4F400F4F4F4F4F4F5F5F5F8F1E8E2F1D6C7FBEAE7D4E8DB5F
        A86DB39770E4BFA8FFFFFFE6E4E1B8ACA3F8E5D6FFF6E3FFF1E0FFEBD8FFFFFD
        E9E5E58C766561A86F8FA576E4B79EF8D2B4F8C7A1E79A67EDBFA2F5F2F2F4F6
        F700F4F5F5F3F2F2F0CFBDEEBB98EEAA7CEBAD85F9CDB59EC79B72A975DBAF93
        F2E8E2F0EFED7D6653987A61F2CAA9FFDAB5FECEA6FFF7ECE8EAEB917261C1C1
        9D52A163C7AD8FEAC1A4FFDCBDF1B88CE79B68EFCBB3F4F2F300F3F6F9F1E0D5
        F0B68DF8C79FFDD7B6F4BE94F4B589F4D8B770B98494A577E2B9A5F9F9F9E7E2
        DD8C7768876D59AA8A71CFB39BFFFFFDD3D1CFB08D73FFDABA7EB7827E9F6EE4
        B59CF6CFAEFCD4B3EFB181E89F6EF1D9CA00F3F4F6F7D9C1FED4B2FDD5B5FED5
        B4FFD9B8FED7B6FFD3B3D6D1AD5DAE76B2A881E3BBA9FCF9F6FAFCFDD3D1CFCA
        C7C5EDF1F4FBFCFCD8BFA9F0C5A0FFD9B8D6D2AF559E63C6A889EAC0A1FCD4B2
        FAD2AFEBA06CEDC0A400F3F3F3FBDABEFFD7B4FFD6B5FFD6B5FFD9B7FFD9B8FF
        D6B5FFDABAB8CFA660AA73C6A988E4BBA0FBE4D1FFFBF0FFFEF5FFF1E4F8DABF
        FBCFABFFD7B5FED2B1FFD7B875B37C909F73E6B69BFACFABFDD4B1ECA472EDC4
        AB00F4F7F9ECDED4EFC5A4FFD4B1FFD3B0EBC2A2F2CAACFFD5B3F3C8A7F6CCAF
        9CC59967A972CFB092E4B799F9CDACFFD5B2FFD3B0FED2AEFBD1AEFFD6B6FFD6
        B6FFD5B5B2C89B669E67DFB399FBC9A5F5C7A4E8C0A6F2E6DD00FAFAFADEDEDF
        8D857FE0C5AFFBE2CBBBAA9E927A67F2D4BCD9C6B6947A68EDC9AB94C5966CA9
        75D1B295E2B89EF5CEADFFD7B6FFD6B5FCD3B1FDD4B3FFD8B7FFD4B3E1D0AB61
        A46BBFA685A1A688C0BCB1E1E0E1F5F7F800F7F7F7FFFFFF919597BAB5B2FFFF
        FFFFFFFF8A7667D7C5B6FFFFFF8C7E70D9B093FFE4C391C5946AAA76CEB294E2
        B69BF0C9AAFFD6B6FFD8B6FFD5B2FCD0ABFAD2B2F1DDC66EAF7B98AA934FBCB6
        9CC8C8E1D9DBF5F5F600F5F5F5FFFFFFA8A9A8AFADACFDFDFDFFFFFFA09185BD
        A58FFFFFFFA69B92947862BF9B82C2A38A8FBE9164AC73BEB08DE2B49BECC1A4
        FDCCADF3C7A8EED2BCF7ECEBF9F9FA78B78995B5A159CAC88BC3C1E3D8D8F5F5
        F500F4F4F4FFFFFFC5C5C5D1D4D4D0C5BEF2EFECBAB2ACA38972FFFFFBF4F2F2
        E7E5E4DEDAD8B89B85FBD0B1B0CB9E5DAB739FAD808DA28A5FA299AEB5B4D8CE
        D1E9E4E8ECEDEB70B07FA2BBAB54CDCA8DBFBCE8DEDFF6F6F600F3F3F3FCFCFC
        F3F3F3F3F4F5A4978DF5F0E9D3D4D6897261FEF8EFECEBEAA4978DCCC6C0D0B7
        A0EBC1A3FFD7B9D4D1AC74B37E4CA5702AA89030A69D6CA8A8A9B1B5A7BEA762
        A36E84C6C135C0B8BCC8C8F2EDEEF5F5F500F3F3F3F8F8F8FFFFFFE6E6E6AEAF
        B0FFFFFFEDEFF0978172F3E3D6F7F7F7BCB5AEC3C2C2A6A6A8AEA9A5F7F4F3FF
        E2CEF4D4B7B3D4B777B7854CA87335A3754BA57841A1662AAE9431C3BC98CFCB
        F3EAEBF5F5F5F4F4F400F3F3F3F5F5F5FAFAFAF2F2F2EEEEEEF8F7F8FAFAFAEC
        E6E2F4F1EFFBF7F4FFFFFCFFFFFFF9F9FAEAEBEDF4F6F8F3F0EFF6ECE8FDF8FD
        F1F4F2D1E2D1B5D4B8B0D3B7B0DFD5A6E4E6D4EAE9FEF4F4F6F5F5F4F4F4F4F4
        F400F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F3F3F3F3F3F3F6F8F9F4F5F5F3F1F0
        F4F0EFF3F3F3F5F5F5F6F6F6F4F3F3F4F4F5F4F5F7F4F4F4F6F5F6FCF8FBFFFA
        FEFFFAFFFFF8FBFFF7F8FCF6F6F4F4F4F4F4F4F4F4F4F4F4F400}
      Caption = 'Consultas de Nota Fiscal Eletr'#244'nica'
      object VisualizarDanfe1: TMenuItem
        Caption = 'Visualizar Danfe Simples'
        OnClick = VisualizarDanfe1Click
      end
      object VisualizarDanfecomComplementoFiscal1: TMenuItem
        Caption = 'Visualizar Danfe com Complemento Fiscal'
        OnClick = VisualizarDanfecomComplementoFiscal1Click
      end
      object VisualizarnoSefaz1: TMenuItem
        Caption = 'Visualizar no Sefaz'
        OnClick = VisualizarnoSefaz1Click
      end
      object ConsultarStatusNFe1: TMenuItem
        Caption = 'Consultar Status NFe'
        OnClick = ConsultarStatusNFe1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object VerificarServidorSefaz1: TMenuItem
        Caption = 'Verificar Servidor Sefaz'
        OnClick = VerificarServidorSefaz1Click
      end
      object ListarNFe1: TMenuItem
        Caption = 'Listar NFe'
        OnClick = ListarNFe1Click
      end
    end
    object InutilizarNumeraodaNotaFiscalEletrnica1: TMenuItem
      Caption = 'Inutilizar Numera'#231#227'o da Nota Fiscal Eletr'#244'nica'
      OnClick = InutilizarNumeraodaNotaFiscalEletrnica1Click
    end
    object XML1: TMenuItem
      Caption = 'XML'
      object SalvareenviarXmlporemail1: TMenuItem
        Caption = 'Salvar e enviar Xml por e-mail'
        OnClick = SalvareenviarXmlporemail1Click
      end
    end
    object CancelarNfe1: TMenuItem
      Bitmap.Data = {
        FE0B0000424DFE0B0000000000003600000028000000220000001D0000000100
        180000000000C80B000000000000000000000000000000000000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F3F4F5F3EFEBF3F2F1F4F5F5F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5
        F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F3F7FAF4E9DFF0C5A6F0D8CAF5F6F7F4F4
        F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F5
        F5F5F0EDF0E9E6E9E8E5E7ECECECF3F3F3F6F7F7F4F6F7F3E2D7FAD6B8FACAA3
        EEBB98F2E2D8F4F7F8F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F6F5F6EBE7E9C5CDC6B3C4B6C1C9C2CFCBCDD1CBCFDBD9DBF3DDCEFF
        D4B0FFD5B3FFDABAFACAA4EBB693F3EAE3F4F5F7F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F6F6F7F1EFF090BF9B52A46864AC7359A86D5CA16E7DA1
        8A9FABADC5B2ADF8CAAAFFD8B5FFD8B7FDD4B3F1B78CF0D1BDF4F7F9F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000DDDDF57A7AFAF4F4F4F4F4F4F4F4F4FCF7FAB1D3B752A169D6E1D583DEDC
        30C1B16CC2A058AB72349A634FA3979AACAEE1BFA5FCCFACFED5B4FCCFAAF0C9
        AFF4F5F8F4F7F9F4F4F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F400002E2EFD4D4DFC7A7AFA2626FDF6F5F6F6F6F576B8869E
        BBA1CCF0F91EC3BE98CAC9F6F4F9F4F6F4A5CEAC399F5F1A9A7AA8A99AEFBE9E
        F9D1B0FBD0ADECAB80F0CDB7F3EEE9F3F6F8F4F6F8F4F5F6F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400001717FEECECF4F4F4F4DDDDF52726
        FED3D5F26EB37FB0C0AF83DEE042BEB7E1D3D3F6F4F3F9F6F8FFFBFFDFEBDE66
        B2786AA167D8B298EABFA6FBD3B2FAC9A0ECA97AECB18AEEC5ACEFCFBAF2EBE8
        F4F6F7F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F400005C5CFBF4F4F4
        F4F4F4F4F4F41F1FFE2E2EFD3F61BF1517F44B8BE654C0BBDCD1D2F1F1F1F6F6
        F6F4F4F2E8C9BAC5A68B599B6455975CB3967ED4AC92FCD7B7FDD5B2F3B88DF0
        AF80ECA777EDC1A6F4F3F2F4F5F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        00001717FEA7A7F7CECEF6F4F4F42626FDDAD8F9090CF94758C875BCD90918F6
        D2CCCCEDECECF5F7F8E6E1DBD0BFB1C9BAB6CFCAC57BBC90367E466F5D4FAA8B
        76FBD2B1FFD9B8FED8B7F9CCA6EBA677EFD6C4F3F7F7F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000CECEF66464FBBEBEF6D5D5F52E2EFD302FFE5A6CDD73
        A97B4458E91B6DD9A1A9CF2B2AF91F1FFEFFFFFFFFFFFFFFFFF9FFFFFBFFFBF7
        82C5983E814C9E7D6AE3BCA1FFD7B7FFD7B7FDD6B5F3BA8EECB695F5F1F1F4F5
        F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4DDDDF50F0F
        FE7C7BFCE0ECE161A3801518F6217ED40E13F93330F77070FF8989E7302AE3FB
        D5B2FCD3B0FFD5B6FAE0C570B680749F6CDFB39BEEC6A8FFD7B6FED6B5F8CBA4
        EBAA7DF2E1D8F4F6F9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F5F4F5F9F7F84D6DC51116F10C18F83E94C61E1DFCB7B7
        FF0504FB866CA9A790D2604FE1A78BCCFFDAB8F3DBBA5BAC6F94A579E2B69EF4
        CDADFFD7B6FCD2AFEFAE81EED2BFF4F7F9F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F3F4F4FCF8FB93A3DD3250BE8EB3C0
        1678CC4C58F76868FF3C35BD917863AE927B967E890B09F64135CC2D24DE989E
        7E479C5EB9AB89E5BA9EFAD2AFFDD7B6F2B589EFCEBAF4F8FBF4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F4F3F4F4F4F6F7F6F7FBF8
        F8FA84C29485AE8B384FC98CA2C26060FF8B8AF0E5E5E3DDDEDD7A7BEB4B4CF3
        DADCDBCCCBDAB2A5B80D12EC609F63D8AF94ECC3A4FFDCBCEFB082EBB491F2EA
        E6F4F6F8F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F4F4F4F4F4F5F5F5
        F8F1E8E2F1D6C7FBEAE7D4E8DB5FA86DB39770E4BFA8C7C7FF1D1DFB5C56D1C9
        BADE1817FC5853F4403BF5FFFFFD6665F4352CC53054B7161AEAE4B79EF8D2B4
        F8C7A1E79A67EDBFA2F5F2F2F4F6F7F4F4F3F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F5F5F3F2F2F0CFBDEEBB98EEAA7CEBAD85F9CDB59EC79B72A975DBAF93F2E8
        E2D2D1EF4E40945544A62E26EFEFCCBAF6C8A9EFE8ED0707FE7F6475C1C19D15
        28D88271B6EAC1A4FFDCBDF1B88CE79B68EFCBB3F4F2F3F4F5F5F4F4F4F4F4F4
        0000F4F4F4F4F4F4F3F6F9F1E0D5F0B68DF8C79FFDD7B6F4BE94F4B589F4D8B7
        70B98494A577E2B9A5F9F9F9E7E2DD8C7768544497201AE49B86B48F8FFE4242
        F0B08D73FFDABA1822E72F3CC82B22EC0F0DFAB598C88E69B4E89F6EF1D9CAF4
        F6F8F4F4F4F4F4F40000F4F4F4F4F4F4F3F4F6F7D9C1FED4B2FDD5B5FED5B4FF
        D9B8FED7B6FFD3B3D6D1AD5DAE76B2A881E3BBA9FCF9F6FAFCFDD3D1CFCAC7C5
        EDF1F45757FEAF9BB9F0C5A0FFD9B82221F248857B1310F4A88ABCDCB9BC1814
        F75137CC4A3CE2F4F5F6F4F5F5F4F4F40000F4F4F4F4F4F5F3F3F3FBDABEFFD7
        B4FFD6B5FFD6B5FFD9B7FFD9B8FFD6B5FFDABAB8CFA660AA73C6A988E4BBA0FB
        E4D1FFFBF0FFFEF5FFF1E4F8DABFFBCFABFFD7B5FED2B1100DFB0F16EF5A63A8
        E6B69B6E5BDA7764DAECA4724337E79899FAF4F5F5F4F4F40000F4F4F4F4F4F4
        F4F7F9ECDED4EFC5A4FFD4B1FFD3B0EBC2A2F2CAACFFD5B3F3C8A7F6CCAF9CC5
        9967A972CFB092E4B799F9CDACFFD5B2FFD3B0FED2AEFBD1AEFFD6B6F7CFB860
        50E36F7DC1669E67CAA2A3100DF9DEB4ADE8C0A64441F58989FA6464FB1717FE
        0000F4F4F4F3F3F3FAFAFADEDEDF8D857FE0C5AFFBE2CBBBAA9E927A67F2D4BC
        D9C6B6947A68EDC9AB94C5966CA975D1B295E2B89EF5CEADFFD7B6FFD6B5FCD3
        B1FDD4B3FFD8B7FFD4B3E1D0AB61A46B5F53C22324E5AEAAB8A9A8E90808FFAF
        AFF71717FEE5E5F50000F4F4F4F3F3F3F7F7F7FFFFFF919597BAB5B2FFFFFFFF
        FFFF8A7667D7C5B6FFFFFF8C7E70D9B093FFE4C391C5946AAA76CEB294E2B69B
        F0C9AAFFD6B6FFD8B6FFD5B2FCD0ABFAD2B2F1DDC66EAF7B93A5963175D12C38
        EF3836F6B8B8F88181F98181F9F4F4F40000F4F4F4F4F4F4F5F5F5FFFFFFA8A9
        A8AFADACFDFDFDFFFFFFA09185BDA58FFFFFFFA69B92947862BF9B82C2A38A8F
        BE9164AC73BEB08DE2B49BECC1A4FDCCADF3C7A8EED2BCF7ECEBF9F9FA78B789
        95B5A159CAC88BC3C1E3D8D8F5F5F59090F86B6BFAF4F4F40000F4F4F4F4F4F4
        F4F4F4FFFFFFC5C5C5D1D4D4D0C5BEF2EFECBAB2ACA38972FFFFFBF4F2F2E7E5
        E4DEDAD8B89B85FBD0B1B0CB9E5DAB739FAD808DA28A5FA299AEB5B4D8CED1E9
        E4E8ECEDEB70B07FA2BBAB54CDCA8DBFBCE8DEDFF6F6F6ECECF44545FC3636FD
        0000F4F4F4F4F4F4F3F3F3FCFCFCF3F3F3F3F4F5A4978DF5F0E9D3D4D6897261
        FEF8EFECEBEAA4978DCCC6C0D0B7A0EBC1A3FFD7B9D4D1AC74B37E4CA5702AA8
        9030A69D6CA8A8A9B1B5A7BEA762A36E84C6C135C0B8BCC8C8F2EDEEF5F5F5F4
        F4F4F4F4F4DDDDF50000F4F4F4F4F4F4F3F3F3F8F8F8FFFFFFE6E6E6AEAFB0FF
        FFFFEDEFF0978172F3E3D6F7F7F7BCB5AEC3C2C2A6A6A8AEA9A5F7F4F3FFE2CE
        F4D4B7B3D4B777B7854CA87335A3754BA57841A1662AAE9431C3BC98CFCBF3EA
        EBF5F5F5F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4F3F3F3F5F5F5FAFA
        FAF2F2F2EEEEEEF8F7F8FAFAFAECE6E2F4F1EFFBF7F4FFFFFCFFFFFFF9F9FAEA
        EBEDF4F6F8F3F0EFF6ECE8FDF8FDF1F4F2D1E2D1B5D4B8B0D3B7B0DFD5A6E4E6
        D4EAE9FEF4F4F6F5F5F4F4F4F4F4F4F4F4F4F4F4F4F4F4F40000F4F4F4F4F4F4
        F4F4F4F3F3F3F3F3F3F4F4F4F6F6F6F3F3F3F3F3F3F6F8F9F4F5F5F3F1F0F4F0
        EFF3F3F3F5F5F5F6F6F6F4F3F3F4F4F5F4F5F7F4F4F4F6F5F6FCF8FBFFFAFEFF
        FAFFFFF8FBFFF7F8FCF6F6F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        0000}
      Caption = 'Cancelar Nota Fiscal Eletr'#244'nica'
      OnClick = CancelarNfe1Click
    end
    object CartadeCorreoEletrnica1: TMenuItem
      Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
      OnClick = CartadeCorreoEletrnica1Click
    end
    object ReinviarNotaFiscalEletrnica1: TMenuItem
      Caption = 'Reinviar Nota Fiscal Eletr'#244'nica'
      OnClick = ReinviarNotaFiscalEletrnica1Click
    end
  end
  object PMNFe: TPopupMenu
    Left = 436
    Top = 13
    object ImprimirDANFE1: TMenuItem
      Caption = 'Imprimir DANFE'
      OnClick = ImprimirDANFE1Click
    end
    object AbrirXML1: TMenuItem
      Caption = 'Abrir XML'
      OnClick = AbrirXML1Click
    end
    object AbrirXMLResposta1: TMenuItem
      Caption = 'Abrir XML Resposta'
      OnClick = AbrirXMLResposta1Click
    end
    object CopiarChaveNFe1: TMenuItem
      Caption = 'Copiar Chave NFe'
      OnClick = CopiarChaveNFe1Click
    end
    object ConsultaNFeNacinal1: TMenuItem
      Caption = 'Consulta NFe Nacional'
      OnClick = ConsultaNFeNacinal1Click
    end
    object ConsultaNFePR1: TMenuItem
      Caption = 'Consulta NFe PR'
      OnClick = ConsultaNFePR1Click
    end
  end
  object MnAgrupar: TPopupMenu
    Left = 58
    Top = 16
    object AgruparItensparaVenda1: TMenuItem
      Caption = 'Agrupar Itens para Venda'
      OnClick = AgruparItensparaVenda1Click
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 331
    Top = 43
    DOMVendorDesc = 'MSXML'
  end
  object PmItens: TPopupMenu
    Left = 327
    Top = 410
    object AlterarFinanceiro1: TMenuItem
      Caption = 'Alterar Financeiro'
      OnClick = AlterarFinanceiro1Click
    end
  end
  object frxRel: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41892.603255277800000000
    ReportOptions.LastChange = 42405.618047615740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 96
    Top = 8
    Datasets = <
      item
        DataSet = frxEmpresa
        DataSetName = 'frxEmpresa'
      end
      item
        DataSet = frxFornecedor
        DataSetName = 'frxFornecedor'
      end
      item
        DataSet = frxItens
        DataSetName = 'frxItens'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 215.433210000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 287.244280000000000000
          Top = 56.133890000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PEDIDO DE AQUISI'#195#8225#195#402'O DE SUPRIMENTOS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 597.945270000000000000
          Top = 26.456710000000000000
          Width = 117.165430000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxFornecedor."DATA"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 102.267780000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxEmpresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.881564690000000000
          Top = 5.559060000000000000
          Width = 281.574803150000000000
          Height = 90.330708660000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = frxEmpresa
          DataSetName = 'frxEmpresa'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo30: TfrxMemoView
          Left = 647.180772410000000000
          Top = 5.781491840000000000
          Width = 66.519689920000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 79.370130000000000000
          Top = 124.287110200000000000
          Width = 637.665842010000000000
          Height = 16.130848860000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxEmpresa."ENDERECO"], [frxEmpresa."NUMERO"] - [frxEmpresa."BA' +
              'IRRO"] - [frxEmpresa."CIDADE"] - [frxEmpresa."UF"] - CEP: [frxEm' +
              'presa."CEP"]')
          ParentFont = False
        end
        object frxORCFUNCfrxORCFUNC: TfrxMemoView
          Left = 100.641231970000000000
          Top = 147.779534880000000000
          Width = 204.094488190000000000
          Height = 15.496060550000000000
          ShowHint = False
          DataSetName = 'frxORCFUNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxEmpresa."contato"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA: TfrxMemoView
          Left = 606.334486190000000000
          Top = 102.267780000000000000
          Width = 110.431540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEmpresa."cnpj"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 147.401670000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RESPONS'#195#129'VEL:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 563.149970000000000000
          Top = 102.047310000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Top = 170.078850000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CONTATO - ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 75.590600000000000000
          Top = 170.078850000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TELEFONE: [frxEmpresa."FONE"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 192.756030000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'INSC. EST.:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 75.590600000000000000
          Top = 192.756030000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxEmpresa."INSC_EST"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Top = 196.535560000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'C'#195#179'd. Pedido :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Top = 196.535560000000000000
          Width = 110.431540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxEmpresa."cnpj"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 109.944960000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 1.779530000000000000
          Top = 5.220470000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1.779530000000000000
          Top = 45.692950000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FONE:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.779530000000000000
          Top = 64.590600000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'E-MAIL:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 1.779530000000000000
          Top = 87.267780000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PAGAMENTO:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 101.047310000000000000
          Top = 5.220470000000000000
          Width = 612.283860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxFornecedor."RAZAOSOCIAL"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 53.913420000000000000
          Top = 45.692950000000000000
          Width = 665.197280000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxFornecedor."TELEFONE"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 53.913420000000000000
          Top = 64.590600000000000000
          Width = 657.638220000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxFornecedor."EMAIL"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 91.708720000000000000
          Top = 87.267780000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxFornecedor."FORMAPAGAMENTO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.889763780000000000
          Top = 24.566924250000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VENDEDOR:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 24.566929130000000000
          Width = 634.961040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxItens."VENDEDOR"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        DataSet = frxItens
        DataSetName = 'frxItens'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 2.645669290000000000
          Top = 1.000000000000000000
          Width = 117.165354330000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItens."QTDE"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 123.724490000000000000
          Top = 1.000000000000000000
          Width = 495.118430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 622.866141730000000000
          Top = 1.000000000000000000
          Width = 92.598425196850400000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxItens."NUMPED"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 121.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 620.842920000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line7: TfrxLineView
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 717.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line11: TfrxLineView
          Top = 30.236240000000000000
          Width = 718.110236220472000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 2.779530000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 123.724490000000000000
          Top = 2.000000000000000000
          Width = 495.118430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DESCRI'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 622.842920000000000000
          Top = 2.000000000000000000
          Width = 92.598425196850400000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'C'#195#8220'D. DE NF.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Width = 716.220472440000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 121.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 620.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 717.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 1.000000000000000000
          Top = 18.897650000000000000
          Width = 716.220472440000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        Height = 124.280643330000000000
        Top = 521.575140000000000000
        Width = 718.110700000000000000
        object Line12: TfrxLineView
          Width = 715.708858390000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 193.913043480000000000
          Height = 14.674273330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Observa'#195#167#195#181'es')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Top = 22.677180000000000000
          Width = 715.708858390000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Top = 30.236240000000000000
          Width = 714.331170000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxItens."OBS"]')
        end
      end
      object Picture2: TfrxPictureView
        Left = 430.866420000000000000
        Top = 650.079160000000000000
        Width = 281.574803150000000000
        Height = 90.330708660000000000
        OnBeforePrint = 'Picture2OnBeforePrint'
        ShowHint = False
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxEmpresa: TfrxDBDataset
    UserName = 'frxEmpresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 162
    Top = 5
  end
  object frxItens: TfrxDBDataset
    UserName = 'frxItens'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 192
    Top = 6
  end
  object frxFornecedor: TfrxDBDataset
    UserName = 'frxFornecedor'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 130
    Top = 5
  end
  object pmCancelamentos: TPopupMenu
    Left = 243
    Top = 51
    object CancelarFechamento1: TMenuItem
      Caption = 'Cancelar Fechamento'
      OnClick = CancelarFechamento1Click
    end
    object CancelarDevoluo1: TMenuItem
      Caption = 'Cancelar Devolu'#231#227'o'
      OnClick = CancelarDevoluo1Click
    end
  end
end
