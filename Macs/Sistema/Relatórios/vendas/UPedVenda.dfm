inherited FPedVenda: TFPedVenda
  Left = 140
  Top = 54
  Caption = 'FPedVenda'
  ClientHeight = 629
  ClientWidth = 811
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Height = 598
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 121
    Caption = 'Pedido de Venda'
  end
  inherited PCadastro: TPanel [5]
    Left = 4
    Top = 46
    Width = 793
    Height = 563
    inherited Label2: TLabel
      Left = 650
      Top = 9
      Width = 33
      Height = 22
      Font.Height = -19
      Font.Name = 'Courier New'
    end
    object Label80: TLabel [1]
      Left = 509
      Top = 11
      Width = 50
      Height = 18
      Caption = 'Fisc:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited PFisco: TPanel
      TabOrder = 3
      inherited EdVlrIpi: TColorEditFloat
        Top = 50
        Text = '1000'
        ValueNumeric = 1000.000000000000000000
        ValueInteger = 1000
      end
    end
    inherited Panel4: TPanel
      Top = 37
      Width = 787
      Height = 531
      TabOrder = 4
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
        Font.Height = -9
      end
      inherited Label13: TLabel
        Left = 460
        Top = 106
        Width = 72
        Caption = 'Prz. Entr.:'
      end
      inherited Label24: TLabel [4]
      end
      inherited luzvendedor: TShape [5]
        Left = 191
        Top = 83
        Width = 21
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      inherited luzformpag: TShape [6]
        Left = 431
        Top = 83
        Width = 21
        Height = 19
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      inherited LVlrComissao: TLabel [7]
        Left = 528
        Width = 108
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
        Font.Height = -9
      end
      inherited LDescMoe: TLabel [9]
        Left = 730
        Top = 56
        Width = 6
        Height = 12
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
      inherited Label14: TLabel [11]
        Left = 99
        Top = 105
      end
      inherited LabelValorFrete: TLabel
        Left = 669
      end
      inherited LabelValorOutros: TLabel
        Left = 736
      end
      inherited LabelValorIcmsSubstituicao: TLabel
        Left = 706
      end
      inherited LabelValorIpi: TLabel
        Left = 656
      end
      object Label92: TLabel [16]
        Left = 106
        Top = 69
        Width = 55
        Height = 10
        Caption = 'Comiss'#227'o %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object FPDespesa: TFashionPanel [17]
        Left = 11
        Top = 145
        Width = 764
        Height = 367
        BevelOuter = bvNone
        Caption = 'FPDespesa'
        Color = 16772332
        TabOrder = 23
        RoundRect = True
        About = 'Orion Software'
        ShadowDepth = 2
        ShadowSpace = 5
        ShowShadow = False
        ShadowColor = clBlack
        TitleColor = clSkyBlue
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Title = 'Lista de Despesas do Pedido'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttCustom
        object Label65: TLabel
          Left = 386
          Top = 40
          Width = 87
          Height = 16
          Caption = 'Vlr. Cobrado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label66: TLabel
          Left = 535
          Top = 40
          Width = 67
          Height = 16
          Caption = 'Vlr. Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 482
          Top = 40
          Width = 43
          Height = 16
          Caption = 'Desc.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object EdDespesa: TColorEditFloat
          Left = 28
          Top = 56
          Width = 344
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 40
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '0,00'
          OnExit = EdDespesaExit
          EditType = fltString
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrCobradoDesp: TColorEditFloat
          Left = 387
          Top = 56
          Width = 83
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnExit = EdQtdDExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrTotalDesp: TColorEditFloat
          Left = 528
          Top = 56
          Width = 73
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Text = '0,00'
          OnExit = EdVlrTotDExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object BitBtn9: TBitBtn
          Left = 613
          Top = 57
          Width = 70
          Height = 21
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          Caption = '&Inserir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BitBtn3Click
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
        object BitBtn11: TBitBtn
          Left = 613
          Top = 81
          Width = 70
          Height = 21
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BitBtn4Click
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
        object EdDesconto: TColorEditFloat
          Left = 472
          Top = 56
          Width = 54
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          OnExit = EdQtdDExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBGrid5: TDBGrid
          Left = 25
          Top = 130
          Width = 725
          Height = 201
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
          TabOrder = 7
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid5DrawColumnCell
          OnKeyDown = DBGrid5KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DESPESA'
              Title.Caption = 'Despesa'
              Width = 235
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Width = 131
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
              FieldName = 'VLRFINAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Cobrado'
              Width = 68
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
            end
            item
              Expanded = False
              FieldName = 'LUCMOE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Luc. ($)'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LUCPER'
              Title.Alignment = taRightJustify
              Title.Caption = 'Luc. (%)'
              Width = 71
              Visible = True
            end>
        end
        object PDespAdic: TPanel
          Left = 224
          Top = 80
          Width = 377
          Height = 41
          BevelOuter = bvNone
          Color = 16772332
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object Label63: TLabel
            Left = 10
            Top = 1
            Width = 43
            Height = 16
            Caption = 'Qtde.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label64: TLabel
            Left = 75
            Top = 1
            Width = 71
            Height = 16
            Caption = 'Vlr. Custo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 170
            Top = 1
            Width = 46
            Height = 16
            Caption = 'Marca:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 329
            Top = 1
            Width = 28
            Height = 16
            Caption = 'Un.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object EdQtdDesp: TColorEditFloat
            Left = 6
            Top = 18
            Width = 62
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = EdQtdDespExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrCustoDesp: TColorEditFloat
            Left = 70
            Top = 18
            Width = 75
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            OnExit = EdQtdDExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDMarca: TColorEditFloat
            Left = 169
            Top = 18
            Width = 148
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnExit = EdQtdDExit
            EditType = fltString
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdUnidade: TColorEditFloat
            Left = 330
            Top = 18
            Width = 33
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            OnExit = EdQtdDExit
            EditType = fltString
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inherited FPLista: TFashionPanel [18]
        Left = 11
        Height = 366
        Color = 16772332
        TabOrder = 20
        TitleColor = clSkyBlue
        TitleFont.Color = clBlack
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Theme = ttCustom
        object PAlteraQuantidade: TPanel [0]
          Left = 235
          Top = 76
          Width = 149
          Height = 98
          BevelWidth = 3
          Color = clBackground
          TabOrder = 6
          Visible = False
          object FashionPanel11: TFashionPanel
            Left = 4
            Top = 4
            Width = 141
            Height = 90
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
            Title = 'Quantidade'
            LineWidth = 0
            LineColor = clBlack
            Theme = ttCustom
            object EdNovaQtd: TColorEditFloat
              Left = 8
              Top = 32
              Width = 121
              Height = 35
              Color = 15395583
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -24
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              OnKeyDown = EdNovaQtdKeyDown
              ValueFormat = '##,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BitBtn1: TBitBtn
              Left = 176
              Top = 35
              Width = 115
              Height = 25
              Caption = 'Alterar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
        inherited PConversaoUnitaria: TPanel [1]
          Left = 396
          Top = 7
          Width = 365
          Height = 132
          inherited FPConversaoUnitaria: TFashionPanel
            Width = 357
            Height = 125
            Color = 13758938
            TabOrder = 5
            inherited lbConversaoUnitVenda: TLabel
              Top = 71
              Width = 99
              Caption = 'Qtd. Vendida:'
            end
            inherited lbConverUnitariaVenda: TLabel
              Width = 105
              Caption = 'Unid. Estoque:'
            end
            inherited lbConversaoUnitariaPara: TLabel
              Top = 74
              Width = 105
              Caption = 'Unid. Vendida:'
            end
            object Label84: TLabel [3]
              Left = 170
              Top = 22
              Width = 127
              Height = 16
              Caption = 'Sair'#225' do estoque:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            inherited btnVisualizarConvUnit: TcxButton
              Left = 330
              Top = 41
            end
          end
          inherited edQntConvertVenda: TColorEditFloat
            Top = 44
            Width = 132
            Color = 16053503
            TabOrder = 4
            OnKeyDown = edQntConvertVendaKeyDown
            OnKeyUp = edQntConvertVendaKeyUp
          end
          inherited edQntConvert: TColorEditFloat
            Top = 92
            Width = 132
            TabOrder = 2
            OnKeyDown = edQntConvertKeyDown
            OnKeyUp = edQntConvertKeyUp
          end
          inherited btnOkConversaoUnitaria: TcxButton
            Left = 317
            Top = 93
            TabOrder = 3
            OnClick = btnOkConversaoUnitariaClick
            OnKeyDown = btnOkConversaoUnitariaKeyDown
          end
          inherited cbConvUnitVendaConv: TDBLookupComboBox
            Top = 94
            OnExit = cbConvUnitVendaConvExit
            OnKeyDown = cbConvUnitVendaConvKeyDown
          end
          inherited cbUnidConvVenda: TDBLookupComboBox
            DataField = 'COD_BANCO'
            DataSource = DMBANCO.DAgencia
            ListSource = nil
          end
        end
        object Panel9: TPanel [2]
          Left = 326
          Top = 30
          Width = 281
          Height = 80
          BevelWidth = 2
          Color = 16772332
          TabOrder = 3
          Visible = False
          OnExit = PQtdConvertExit
          object Label81: TLabel
            Left = 169
            Top = 18
            Width = 100
            Height = 16
            Caption = 'Quant. Conv.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ColorEditFloat1: TColorEditFloat
            Left = 166
            Top = 48
            Width = 106
            Height = 22
            Color = 15657982
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
            OnKeyDown = EdQtdConvertKeyDown
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        inherited PAliqCusto: TPanel
          inherited FashionPanel1: TFashionPanel
            Color = 16772332
            TitleColor = clSkyBlue
            TitleFont.Style = []
            Theme = ttCustom
            inherited Panel6: TPanel
              Color = 16772332
            end
          end
        end
        inherited PConvertEmb: TPanel [4]
          Left = 324
          TabOrder = 5
          inherited edQntEmb: TColorEditFloat
            OnKeyPress = edQntEmbKeyPress
          end
          inherited edQntUnitEmb: TColorEditFloat
            OnKeyPress = edQntEmbKeyPress
          end
          inherited cxButton1: TcxButton
            OnKeyPress = edQntEmbKeyPress
          end
          inherited CBUnidEmb: TDBLookupComboBox
            OnKeyPress = edQntEmbKeyPress
          end
        end
        inherited Panel2: TPanel
          Color = 16772332
          object PTrocar: TPanel [7]
            Left = 379
            Top = 2
            Width = 304
            Height = 98
            BevelWidth = 3
            Color = clBackground
            TabOrder = 23
            Visible = False
            object FPTroca: TFashionPanel
              Left = 4
              Top = 4
              Width = 296
              Height = 90
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
              Title = 'Devolu'#231#227'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object GroupBox3: TGroupBox
                Left = 4
                Top = 19
                Width = 137
                Height = 68
                Caption = 'Devolver'
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                object EDQtdDev: TColorEditFloat
                  Left = 8
                  Top = 24
                  Width = 121
                  Height = 33
                  Color = 15395583
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -24
                  Font.Name = 'BankGothic Md BT'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  Text = '0,00'
                  ValueFormat = '##,##0.00'
                  ValueInteger = 0
                  NotFoundText = 'N'#227'o Existe'
                  InputText = 'Por favor entre na procura pelo crit'#233'rio'
                  ButtonCaption = 'Ok'
                end
              end
              object BtnDevolv: TBitBtn
                Left = 176
                Top = 27
                Width = 115
                Height = 25
                Caption = 'Devolver'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'BankGothic Md BT'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BtnDevolvClick
              end
              object BtnCancelD: TBitBtn
                Left = 176
                Top = 51
                Width = 115
                Height = 25
                Caption = 'Cancelar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'BankGothic Md BT'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BtnCancelDClick
              end
            end
          end
          inherited PQtdConvert: TPanel [8]
            Left = 338
            Top = 4
            Width = 271
            Height = 77
            TabOrder = 24
            inherited Label62: TLabel
              Left = 153
              Top = 18
            end
            inherited EdQtdConvert: TColorEditFloat
              Left = 149
              Top = 45
            end
            object DBGridConvert: TDBGrid
              Left = 4
              Top = 3
              Width = 136
              Height = 72
              Hint = 'Selecione a unidade de convers'#227'o'
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = 15794175
              Ctl3D = False
              DataSource = DMENTRADA.DAlx
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
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'SIGLA_UNID'
                  Title.Caption = 'DE'
                  Width = 60
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'SIGLA_UNID1'
                  Title.Caption = 'PARA'
                  Width = 60
                  Visible = True
                end>
            end
          end
          inherited PQuantDescarte: TPanel [9]
            inherited BtLote: TButton
              OnClick = BtLoteClick
            end
          end
          inherited PLote: TPanel [10]
            Color = 16772332
          end
          inherited Panel3: TPanel [11]
            Color = 16772332
            TabOrder = 16
            inherited Label7: TLabel
              Left = 6
              Top = 11
              Width = 92
              Font.Charset = ANSI_CHARSET
              Font.Height = -9
              Font.Name = 'Arial Narrow'
              ParentFont = False
            end
          end
          inherited PComiss: TPanel [12]
            Color = 16772332
          end
          inherited EdLocal: TFlatEdit [13]
            ColorFlat = 16772332
            ParentColor = False
            TabOrder = 15
          end
          inherited BtnAbrePAliq: TBitBtn [14]
          end
          inherited PSelectLote: TPanel [15]
          end
          inherited EDDesc: TColorEditFloat [16]
          end
          inherited PInfoExp: TPanel [17]
            TabOrder = 22
          end
          inherited PCodFab: TPanel [18]
            Color = 16772332
          end
          inherited PCodInterno: TPanel [19]
            Color = 16772332
          end
          inherited BTNDEVOLVER: TBitBtn [20]
            TabOrder = 18
          end
          inherited EDCodBarra: TEdit [21]
          end
          inherited BtnInsertProd: TBitBtn [22]
          end
          inherited BtnProcProd: TBitBtn [23]
          end
          inherited EDValUnit: TColorEditFloat [24]
          end
          inherited PImpostos: TPanel [25]
            Height = 55
          end
          inherited BtnDeleteList: TBitBtn [26]
          end
          inherited PVendItem: TPanel [27]
            Color = 16772332
            TabOrder = 17
          end
          inherited EDQuantidade: TColorEditFloat [28]
            OnEnter = EDQuantidadeEnter
            OnKeyDown = EDQuantidadeKeyDown
            OnKeyUp = EDQuantidadeKeyUp
          end
          inherited EDTotal: TColorEditFloat [29]
          end
          inherited PLabelConvertion: TPanel [30]
            TabOrder = 21
          end
          inherited BtnEscolheProc: TBitBtn [31]
            TabOrder = 14
          end
        end
        inherited GroupBox5: TGroupBox
          Height = 199
          Color = 16772332
          ParentColor = False
          object Shape2: TShape [0]
            Left = 4
            Top = 163
            Width = 453
            Height = 31
            Brush.Color = clMoneyGreen
            Pen.Color = clSilver
            Pen.Width = 2
          end
          object LHistData: TLabel [1]
            Left = 370
            Top = 177
            Width = 80
            Height = 16
            Caption = '01/01/1900'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LHistValor: TLabel [2]
            Left = 252
            Top = 177
            Width = 32
            Height = 16
            Caption = '0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LHistNumDocumento: TLabel [3]
            Left = 58
            Top = 177
            Width = 72
            Height = 16
            Caption = 'Documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LHistProd: TLabel [4]
            Left = 58
            Top = 165
            Width = 283
            Height = 12
            AutoSize = False
            Caption = 'Produto Selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object LQuantidade: TLabel [5]
            Left = 11
            Top = 166
            Width = 40
            Height = 12
            AutoSize = False
            Caption = 'Qtde.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object LQtde: TLabel [6]
            Left = 12
            Top = 177
            Width = 24
            Height = 16
            Caption = '111'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          inherited LQTDPROD: TLabel
            Left = 464
            Top = 160
            Width = 292
            Height = 13
            Font.Height = -11
            Font.Name = 'Verdana'
          end
          object LHistCliente: TLabel [8]
            Left = 328
            Top = 165
            Width = 124
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cliente Selecionado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          inherited DBGrid1: TDBGrid
            Top = 13
            Height = 143
            DataSource = DMESTOQUE.DSSlave
            PopupMenu = PMDevolver
            OnDrawColumnCell = DBGrid1DrawColumnCell
            OnKeyDown = DBGrid1KeyDown
            OnKeyPress = DBGrid1KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'OPERACAO'
                Title.Alignment = taCenter
                Title.Caption = 'ST'
                Width = 31
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO'
                Title.Caption = 'Lote'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'C'#243'd.'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Width = 248
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEPROD'
                Title.Caption = 'Quant.'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALUNIT'
                Title.Caption = 'Unit'#225'rio ($)'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORTOTAL'
                Title.Caption = 'Total ($)'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCPRO'
                Title.Caption = 'Desc (%)'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMISSAO'
                Title.Caption = 'Comis.'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Vendedor'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDDEV'
                Title.Caption = 'Qtd. Dev'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Icms'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. Icms'
                Width = 73
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'CST'
                Title.Alignment = taRightJustify
                Width = 36
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
              end>
          end
        end
      end
      inherited BtnProcVend: TBitBtn [19]
        Left = 191
        Top = 85
        Width = 19
        Height = 19
        TabOrder = 2
      end
      inherited EDNOMEVENDEDOR: TColorEditFloat [20]
        Left = 40
        Top = 85
        Width = 151
        Height = 19
        Font.Height = -11
        Font.Name = 'Verdana'
        TabOrder = 21
      end
      inherited EdValorPed: TColorEditFloat [21]
        Left = 661
        Top = 19
        Width = 121
        Height = 24
        Color = clSkyBlue
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        TabOrder = 19
      end
      inherited PCadVendedor: TPanel [22]
        Top = 83
        Width = 207
        Height = 25
        TabOrder = 17
        inherited dbvendedor: TEdit
          Top = 2
          Width = 201
        end
      end
      inherited PSelectCliente: TPanel [23]
        Left = 6
        Top = 13
        Width = 530
        inherited LUZOPEN: TShape
          Left = 505
          Top = 28
          Height = 23
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
        end
        inherited LSelectPessoa: TLabel [4]
          Width = 151
          Caption = 'Informe o Cliente para o Pedido:'
        end
        inherited LAtacadista: TLabel [5]
        end
        inherited PPesCad: TPanel
          Height = 24
          Color = 16772332
          TabOrder = 4
        end
        inherited EdCPF: TEdit
          TabOrder = 1
        end
        object BtnTransp: TButton [9]
          Left = 284
          Top = 5
          Width = 15
          Height = 15
          Hint = 'Clique para selecionar transportadora.'
          Anchors = [akTop, akRight, akBottom]
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'T'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BtnTranspClick
        end
        inherited EdNomeCli: TEdit
          TabOrder = 2
        end
        inherited BtnProcPess: TBitBtn
          Left = 505
          Top = 31
          Width = 19
          Height = 19
          TabOrder = 3
        end
      end
      inherited EdDescMoeda: TFloatEdit [24]
        Left = 739
        Top = 52
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 12
      end
      inherited DBPRAZOENT: TDBColorEdit [25]
        Left = 458
        Top = 121
        Width = 75
        DataField = 'ENTREGA'
        TabOrder = 9
      end
      object BtnProdutos: TBitBtn [26]
        Left = 11
        Top = 510
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
        TabOrder = 25
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
      object BtnDespesas: TBitBtn [27]
        Left = 85
        Top = 510
        Width = 75
        Height = 16
        Caption = '&DESPESAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        OnClick = BtnDespesasClick
        Glyph.Data = {
          7A010000424D7A0100000000000036000000280000000B000000090000000100
          1800000000004401000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0732DD1538C6D5B7B7B6AAAA9C8B8B6B4A40FFFFFF000000FFFF
          FFFFFFFFFFFFFF7C66851257FE2667E2D2A9A9A98080A6898997BC9C7D695C00
          0000FFFFFFFFFFFFBB9F92AA9FBF1B69FE3377DFD5B2B2B79292A072729F7272
          7D544C000000FFFFFFFFFFFFB1847DA188A6257EFE4186DDDABEBEBC9090CB98
          98BC8A8A7F5049000000FFFFFFFFFFFFB29C97AEA7C32E8EFE5198DBDABEBEBD
          8E8EA57373BB88887F4D46000000FFFFFFFFFFFF8E8B8BBCB5C899B2D354648D
          DABEBEBE8C8CB58282B885857F4B44000000807C72A18E86B1AEAEC8C2C2DFDD
          DEBDB8B9C5ACACC18181B97A7ABB8686824A430000005E6365A0A0A0B5B3B3DE
          DEDED5D5D5DCDDDDC5C3C3EFD9D9DDA7A7CD7C7C954B41000000737373ADADAD
          B9B9B9B1B1B19B9999A7A2A2AEACACDCBFBFC9AAAAB28F8FFFFFFF000000}
      end
      inherited EDCODFORMPAG: TColorEditFloat [28]
        Left = 219
        Width = 36
        TabOrder = 3
      end
      inherited EDFORMPAG: TColorEditFloat [29]
        Left = 255
        Width = 176
        TabOrder = 18
      end
      inherited BtnProcFormPag: TBitBtn [30]
        Left = 431
        Width = 19
        TabOrder = 4
      end
      inherited PGarantia: TPanel [31]
        Left = 548
        Top = 127
        Width = 91
        Height = 19
        Color = clWhite
        TabOrder = 16
        inherited CBGarantia: TCheckBox
          Left = 0
          Top = -1
        end
      end
      inherited EDDescPed: TFloatEdit [32]
        Left = 686
        Top = 52
        Width = 39
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 11
        OnKeyPress = nil
      end
      inherited EdCodVend: TColorEditFloat [33]
        Top = 85
        Width = 30
        Height = 19
        Font.Height = -11
        Font.Name = 'Verdana'
        TabOrder = 1
      end
      inherited DBMemo: TMemo [34]
        Left = 135
        Width = 315
        Height = 30
        Font.Charset = ANSI_CHARSET
        Font.Name = 'Verdana'
        ParentFont = False
        TabOrder = 8
      end
      inherited DBDATA: TColorMaskEdit [35]
        Top = 121
        TabOrder = 7
      end
      object PTransportadora: TPanel [36]
        Left = 800
        Top = 10
        Width = 441
        Height = 57
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16772332
        TabOrder = 24
        Visible = False
        inline FrmTransportadora: TFrmBusca
          Left = 9
          Top = 1
          Width = 438
          Height = 54
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Left = 10
            Top = 7
            Width = 107
            Caption = 'Transportadora:'
          end
          inherited LUZOPEN: TShape
            Left = 364
            Top = 19
            Width = 23
          end
          inherited LUZMINUS: TShape
            Left = 415
            Top = 6
            Width = 19
            Height = 19
          end
          inherited EdDescricao: TFlatEdit
            Left = 115
            Top = 22
            Width = 250
            ColorFlat = clWhite
          end
          inherited BTNOPEN: TBitBtn
            Left = 366
            Top = 22
            OnClick = FrmBusca1BTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 416
            Top = 7
            Width = 17
            Height = 17
            Caption = 'x'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = FrmTransportadoraBTNMINUSClick
            Glyph.Data = {00000000}
          end
          inherited EDCodigo: TFlatEdit
            Left = 11
            Top = 22
            Width = 103
            ColorFlat = clLightGreen
            OnKeyPress = FrmBusca1EDCodigoKeyPress
          end
        end
      end
      inherited EdValorOutros: TColorEditFloat [37]
        Left = 708
      end
      inherited EdValoIcmsSubstituicao: TColorEditFloat [38]
        Left = 708
        TabOrder = 14
      end
      inherited EdValorIpi: TColorEditFloat [39]
        Left = 654
        TabOrder = 10
      end
      inherited EdValorFrete: TColorEditFloat
        Left = 654
        TabOrder = 13
      end
      object EdComissao: TColorEditFloat
        Left = 160
        Top = 64
        Width = 47
        Height = 18
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        OnExit = EdComissaoExit
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object PVeiculo: TPanel
        Left = 456
        Top = 71
        Width = 329
        Height = 39
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Color = clWhite
        Ctl3D = True
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnExit = PVeiculoExit
        object Label94: TLabel
          Left = 152
          Top = 17
          Width = 92
          Height = 13
          Caption = 'Total Entrada:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotEnt: TLabel
          Left = 248
          Top = 17
          Width = 28
          Height = 13
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnAbreVeiculos: TBitBtn
          Left = 0
          Top = 8
          Width = 145
          Height = 29
          Hint = 'Pressione para inserir veiculos de entrada '
          Caption = 'Veiculos de Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnLimpaVeicClick
        end
      end
    end
    inherited Panel1: TPanel
      Width = 406
      TabOrder = 0
      inherited BtnGravar: TBitBtn [3]
      end
      inherited BtnDadosAdic: TBitBtn [4]
      end
      inherited BtnCancelar: TBitBtn [5]
      end
      object BtnComiss: TBitBtn
        Left = 305
        Top = 2
        Width = 100
        Height = 25
        Caption = '&Comissionados'
        TabOrder = 3
        OnClick = BtnComissClick
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777777770FFFFFF000000007777
          777770F8888F000000007777777770FFFFFF000000007777777770F8888F0000
          00007444444440FFFFFF000000007488888880F8888F000000007477777770FF
          FFFF000000007470070070000000000000007477777777774777700000007470
          0700700747777000000074777777777747747000000074444444444447444000
          000074F44F44F44F477470000000744444444444477770000000777777777777
          777770000000}
      end
    end
    inherited EdNumeroPedido: TEdit
      Left = 683
      Top = 1
      Width = 106
      Height = 28
      Font.Height = -19
      TabOrder = 2
      Text = '532'
    end
    object DBNumFisc: TDBColorEdit
      Left = 560
      Top = 5
      Width = 77
      Height = 24
      Color = 16775658
      Ctl3D = False
      DataField = 'NUMFISCAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object PVeiculoEnt: TPanel [6]
    Left = 416
    Top = 168
    Width = 373
    Height = 310
    BevelWidth = 3
    Caption = 'PVeiculoEnt'
    Color = clBackground
    TabOrder = 12
    object FashionPanel10: TFashionPanel
      Left = 4
      Top = 4
      Width = 365
      Height = 301
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
      Title = 'Ve'#237'culos de Entrada'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label48: TLabel
        Left = 24
        Top = 25
        Width = 53
        Height = 14
        Caption = 'Veiculo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label56: TLabel
        Left = 248
        Top = 25
        Width = 35
        Height = 14
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object luzbt: TShape
        Left = 302
        Top = 40
        Width = 21
        Height = 19
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Visible = False
      end
      object lbTotalEntrada: TLabel
        Left = 272
        Top = 281
        Width = 31
        Height = 14
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label93: TLabel
        Left = 232
        Top = 281
        Width = 38
        Height = 14
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label95: TLabel
        Left = 4
        Top = 288
        Width = 29
        Height = 10
        Caption = '<esc>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdDescVeic: TEdit
        Left = 16
        Top = 42
        Width = 209
        Height = 19
        BiDiMode = bdRightToLeft
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 13
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object BtnVeicEnt: TBitBtn
        Left = 302
        Top = 42
        Width = 19
        Height = 19
        Hint = 'Precione para selecionar o veiculo de entrada'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnVeicEntClick
        OnEnter = BtnProcFormPagEnter
        OnExit = BtnVeicEntExit
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object BtnInsereVeic: TBitBtn
        Left = 255
        Top = 75
        Width = 70
        Height = 25
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        Caption = '&Inserir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BtnInsereVeicClick
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
      object BtnExcluiVeiculo: TBitBtn
        Left = 255
        Top = 99
        Width = 70
        Height = 25
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnExcluiVeiculoClick
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
      object DBGrid6: TDBGrid
        Left = 16
        Top = 133
        Width = 321
        Height = 143
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DsAlx5
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Ve'#237'culo'
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
            Width = 95
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 16
        Top = 70
        Width = 233
        Height = 59
        BevelOuter = bvNone
        Color = 14933717
        TabOrder = 3
        object Label96: TLabel
          Left = 1
          Top = -2
          Width = 32
          Height = 16
          Caption = 'CST:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label97: TLabel
          Left = 38
          Top = -2
          Width = 40
          Height = 16
          Caption = 'ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label99: TLabel
          Left = 162
          Top = -2
          Width = 64
          Height = 16
          Caption = 'V. ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label101: TLabel
          Left = 87
          Top = -2
          Width = 72
          Height = 16
          Caption = 'BC. ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label102: TLabel
          Left = 1
          Top = 36
          Width = 8
          Height = 16
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object EdCSTEnt: TColorEditFloat
          Left = 0
          Top = 14
          Width = 33
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '000'
          EditType = fltString
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdICMSEnt: TColorEditFloat
          Left = 36
          Top = 14
          Width = 41
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '0,00'
          OnExit = EdICMSEntExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrICMSEnt: TColorEditFloat
          Left = 162
          Top = 14
          Width = 63
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdBCEnt: TColorEditFloat
          Left = 84
          Top = 14
          Width = 74
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnExit = EdBCEntExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object EdVlrVeiculo: TColorEditFloat
        Left = 228
        Top = 42
        Width = 74
        Height = 19
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnExit = EdVlrVeiculoExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object PLoteVenda: TPanel [7]
    Left = 400
    Top = 240
    Width = 329
    Height = 137
    BevelWidth = 3
    Color = clGradientActiveCaption
    TabOrder = 7
    Visible = False
    object FashionPanel6: TFashionPanel
      Left = 4
      Top = 4
      Width = 321
      Height = 129
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
      Title = 'Sele'#231#227'o de Lotes'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label55: TLabel
        Left = 8
        Top = 72
        Width = 118
        Height = 13
        Caption = 'Quant. Venda:'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label53: TLabel
        Left = 8
        Top = 24
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
      object Label54: TLabel
        Left = 184
        Top = 24
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
      object EdQuantVend: TColorEditFloat
        Left = 14
        Top = 90
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
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBSelecionaLote: TComboBox
        Left = 16
        Top = 42
        Width = 145
        Height = 24
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = CBSelecionaLoteExit
      end
      object EdQuantLote: TColorEditFloat
        Left = 206
        Top = 42
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
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        OnExit = EdQuantLoteExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnLoteVeOk: TBitBtn
        Left = 144
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Ok'
        TabOrder = 3
        OnClick = BtnLoteVeOkClick
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
      object BtnCancelaLotevend: TBitBtn
        Left = 230
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = BtnCancelaLotevendClick
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
    end
  end
  inherited PComissaoBanca: TPanel [8]
    TabOrder = 9
  end
  inherited PTroco: TPanel [9]
    TabOrder = 10
    inherited FashionPanel9: TFashionPanel
      inherited EdValorPago: TColorEditFloat
        OnExit = EdValorPagoExit
        OnKeyDown = EdValorPagoKeyDown
      end
    end
  end
  inherited PItensVendaAg: TPanel [10]
  end
  object PRelLote: TPanel [11]
    Left = 224
    Top = 96
    Width = 385
    Height = 201
    BevelWidth = 3
    Color = clGradientActiveCaption
    TabOrder = 8
    Visible = False
    object FashionPanel5: TFashionPanel
      Left = 4
      Top = 4
      Width = 377
      Height = 193
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
      Title = 'Relat'#243'rio de Lote'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label57: TLabel
        Left = 82
        Top = 104
        Width = 87
        Height = 16
        Caption = 'Data Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 194
        Top = 104
        Width = 78
        Height = 16
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline FrmBuscaLote: TFrmBusca
        Left = 8
        Top = 24
        Width = 353
        Height = 68
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 37
          Caption = 'Lote:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 16
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaLoteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaLoteBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      object EdDtInicial: TColorMaskEdit
        Left = 82
        Top = 121
        Width = 95
        Height = 22
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDtFinal: TColorMaskEdit
        Left = 194
        Top = 121
        Width = 95
        Height = 22
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnImpRelLote: TBitBtn
        Left = 104
        Top = 160
        Width = 89
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar o relat'#243'rio de Lote'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnImpRelLoteClick
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
      object BitBtn2: TBitBtn
        Left = 198
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = BitBtn2Click
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
      object BtnLimpaData: TBitBtn
        Left = 299
        Top = 121
        Width = 20
        Height = 20
        Hint = 'Pressione para apagar as datas'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnLimpaDataClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
  end
  inherited PComunica: TPanel [12]
    Top = 172
  end
  inherited PFinanceiro: TPanel [13]
    Left = 149
    Top = 129
    inherited FPFinanceiro: TFashionPanel
      Top = 8
      Height = 265
      inherited FrmConta: TFrmBusca [5]
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
      inherited PMostraCta: TPanel [7]
        Top = 44
      end
    end
  end
  inherited PPrecos: TPanel [14]
    Left = 377
    Top = 127
  end
  inherited PConsulta: TPanel [15]
    Left = 4
    Top = 46
    Width = 793
    Height = 579
    object LEmissor: TLabel [0]
      Left = 24
      Top = 563
      Width = 64
      Height = 16
      Caption = 'Emissor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object LEcf: TLabel [1]
      Left = 757
      Top = 563
      Width = 8
      Height = 16
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object PDevParc: TPanel [2]
      Left = 22
      Top = 60
      Width = 756
      Height = 359
      BevelWidth = 4
      Color = clBlack
      TabOrder = 3
      Visible = False
      object FashionPanel2: TFashionPanel
        Left = 6
        Top = 6
        Width = 744
        Height = 347
        BevelOuter = bvNone
        Caption = '$00FFECEC'
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
        Title = 'Devolu'#231#227'o Parcial'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttCustom
        object DRLabel1: TDRLabel
          Left = 3
          Top = 165
          Width = 149
          Height = 18
          Caption = 'Itens devolvidos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
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
        object PDevolveItem: TPanel
          Left = 184
          Top = 184
          Width = 558
          Height = 89
          BevelWidth = 2
          TabOrder = 6
          Visible = False
          OnExit = PDevolveItemExit
          object Label61: TLabel
            Left = 96
            Top = 8
            Width = 49
            Height = 13
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label67: TLabel
            Left = 16
            Top = 8
            Width = 44
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label68: TLabel
            Left = 16
            Top = 48
            Width = 79
            Height = 13
            Caption = 'Qtd. Vendida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label69: TLabel
            Left = 352
            Top = 8
            Width = 90
            Height = 13
            Caption = 'Qtd. Devolvida:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label72: TLabel
            Left = 472
            Top = 8
            Width = 72
            Height = 13
            Caption = 'Vlr. Unit'#225'rio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBTProddev: TDBText
            Left = 96
            Top = 22
            Width = 361
            Height = 17
            DataSource = DMESTOQUE.DSSlave
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBTCodigoDev: TDBText
            Left = 16
            Top = 22
            Width = 78
            Height = 17
            DataSource = DMESTOQUE.DSSlave
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBTQtdDev: TDBText
            Left = 11
            Top = 62
            Width = 81
            Height = 17
            Alignment = taRightJustify
            DataSource = DMESTOQUE.DSSlave
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object BitBtn13: TBitBtn
            Left = 379
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Devolver'
            TabOrder = 2
            OnClick = BitBtn13Click
          end
          object BitBtn14: TBitBtn
            Left = 467
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 3
            OnClick = BitBtn14Click
          end
          object EdQtdProdDev: TColorEditFloat
            Left = 356
            Top = 23
            Width = 84
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
            TabOrder = 0
            Text = '0,00'
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdvlrUnitProdDev: TColorEditFloat
            Left = 458
            Top = 23
            Width = 84
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
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object DBGrid4: TDBGrid
          Left = 1
          Top = 183
          Width = 735
          Height = 120
          Color = clCaptionText
          Ctl3D = False
          DataSource = DMESTOQUE.DSAlx
          FixedColor = clSilver
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
          Columns = <
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Title.Alignment = taCenter
              Title.Caption = 'ST'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOTE'
              Title.Caption = 'Lote'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'C'#243'd.'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEPROD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALUNIT'
              Title.Caption = 'Unit'#225'rio ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Total ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCPRO'
              Title.Caption = 'Desc (%)'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Caption = 'Comis.'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDEV'
              Title.Caption = 'Qtd. Dev'
              Visible = True
            end>
        end
        object BitBtn5: TBitBtn
          Left = 529
          Top = 310
          Width = 75
          Height = 25
          Caption = '&Ok'
          TabOrder = 1
          OnClick = BitBtn5Click
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
        object BitBtn8: TBitBtn
          Left = 641
          Top = 310
          Width = 97
          Height = 25
          Caption = 'C&ancelar'
          TabOrder = 2
          OnClick = BitBtn8Click
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
        object Panel14: TPanel
          Left = 310
          Top = 117
          Width = 163
          Height = 39
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 0
        end
        object DBGrid3: TDBGrid
          Left = 4
          Top = 29
          Width = 735
          Height = 120
          Color = 15794175
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlave
          FixedColor = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OPERACAO'
              Title.Alignment = taCenter
              Title.Caption = 'ST'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOTE'
              Title.Caption = 'Lote'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'C'#243'd.'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 306
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEPROD'
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALUNIT'
              Title.Caption = 'Unit'#225'rio ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Total ($)'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCPRO'
              Title.Caption = 'Desc (%)'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Caption = 'Comis.'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Vendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDDEV'
              Title.Caption = 'Qtd. Dev'
              Visible = True
            end>
        end
        object BtnDevolveItem: TBitBtn
          Left = 560
          Top = 152
          Width = 177
          Height = 24
          Caption = 'Devolver item silecionado'
          TabOrder = 5
          OnClick = BtnDevolveItemClick
          Glyph.Data = {
            8E050000424D8E05000000000000360000002800000017000000130000000100
            1800000000005805000000000000000000000000000000000000FFC891FFC891
            FFC891ACB095846546896D4E896D4E896D4E896D4E896D4E896D4E896D4E896D
            4E896D4E896D4E896D4E896D4E896D4E856E4D86834EFFC891FFC891FFC89100
            0000FFC891FFC891F2F8F2004D000D69160C68140C68140C68140C68140C6814
            0C68140C68140C68140C69140C69140C68140C68140B6C150C3D04664428FFC8
            91FFC891FFC891000000FFC891FFC891F6F5F4007B0000D33600CC3300CC3300
            CC3300CC3300CC3300CC3300CB3200D434008C4E002E0700DF3700CC3300D435
            068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891F6F5F4007B0000D3
            3600CC3300CC3300CC3300D13300D83600DE3700E23700ED3D00CDB700000000
            4B1300EB3A00D535068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891
            F6F5F4007B0000D33600CC3300CE3200D03200AF2F00661A0025090000000000
            0000000000000000000000390E00D334068B1E6B422AFFC891FFC891FFC89100
            0000FFC891FFC891F6F5F4007B0000D33600CD3200CF35008831000F09000000
            00000000000000000000000000000000000000150500C431068D1E6B422AFFC8
            91FFC891FFC891000000FFC891FFC891F6F5F4007B0000D33600D23700954400
            0709000000002622008D7200D3AA00E9BA00987B00000000140500D43500D936
            068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891F6F5F4007B0000D5
            3300CB57002423000000005F3700E06600DC3C00CE2700D72D00AFA000040000
            E13800D03400D435068A1D6B422AFFC891FFC891FFC891000000FFC891FFC891
            8B8A9500000800061000000000050500020200030616281E24853B10BF3B01D1
            3500D33400D03400CD3300CC3300D435068A1D6B422AFFC891FFC891FFC89100
            0000FFC891596779000619002A44001C322A6E80002C41001923000405000000
            00040909160503460A00831800A12300BF2D00CD3200D434068A1D6B422AFFC8
            91FFC891FFC891000000C0C5CC001B3600537B008CC600121ED0FFFF005F8300
            4561001D2600010003362900A68800A68D00A57800B06100C54300CF3900D335
            068A1D6B422AFFC891FFC891FFC891000000314F6100538100A9E400DFFF001C
            27DEF2F8006E9600688E003E58001B160307042D68461AB44602D33900D23700
            CD3400CC3300D334068A1D6B422AFFC891FFC891FFC89100000002335100567A
            56F2FF89FFFF81A0A6F5FEFF80C9DD8FD5E838A0B8002D430001062349311FA5
            3E01CA3100CC3200CB3200CB3200D434068A1D6B422AFFC891FFC891FFC89100
            000000456E01293A271D163E2725332B2AF0E9E73E26204A2F281F434A00405F
            00070D1C4A2D1CAE4101CE3500D03400CF3400CF3400D736068B1F6A3E26FFC8
            91FFC891FFC891000000185B7B00B6F122F3FF2AFFFF002A2FE4FEFF00BEF700
            C1F50087B000364F00080D124F2100921E00A51200A51200A51200A51200AB13
            007100716142FFC891FFC891FFC89100000081A5B9009DDB67EFFFD2FFFF192D
            2ABBFFFF00C7F304DCFF00769D00283D080D0FA5B5A7A4BFA09DBB989DBB989D
            BB999DBB999DBB9994BC92DCF1E1FFC891FFC891FFC891000000F2E9E94782A3
            78E2FBABFFFF1C525407354100CEFF009BC5004160000009878686FFC891FFC8
            91FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC89100
            0000FFC891F2D3D4927287309AC201C2FF00A5DB0079A5003E5C000914636466
            FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC8
            91FFC891FFC891000000FFC891FFC891FDE3E3C2878F534963003F6004293A41
            4B51C0C3C6FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891FFC891
            FFC891FFC891FFC891FFC891FFC891000000}
        end
      end
    end
    inherited GroupBox1: TGroupBox
      Left = 23
      Top = 60
      Width = 752
      Height = 60
      object Label49: TLabel [0]
        Left = 6
        Top = 17
        Width = 66
        Height = 12
        Caption = 'N'#250'm. Pedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel [1]
        Left = 113
        Top = 17
        Width = 87
        Height = 12
        Caption = 'N'#250'm. Nota Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel [2]
        Left = 220
        Top = 17
        Width = 85
        Height = 12
        Caption = 'Nome do Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited EdNome: TFlatEdit
        Left = 218
        Top = 31
        Width = 425
        TabOrder = 2
        Text = ''
        OnEnter = nil
        OnExit = nil
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        TabOrder = 3
      end
      inherited EdNumPed: TFlatEdit
        Top = 31
        Text = ''
      end
      object EdNumDoc: TFlatEdit
        Left = 111
        Top = 31
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
        OnKeyDown = EdNumDocKeyDown
      end
    end
    inherited PFiltrarParcelas: TPanel
      Left = 256
      Top = 176
      inherited RBDataFiltro: TcxRadioGroup
        Top = 46
        ItemIndex = 0
        Properties.Items = <
          item
            Caption = 'Enviadas'
            Tag = 0
          end
          item
            Caption = 'Canceladas'
            Tag = 0
          end
          item
            Caption = 'Devolu'#231#227'o'
            Tag = 0
          end>
      end
      inherited BtnVisualizarRel: TBitBtn
        OnClick = BtnVisualizarRelClick
      end
      inherited rbOrdenarNfe: TcxRadioGroup
        ItemIndex = 0
        Properties.Items = <
          item
            Caption = 'Data'
            Tag = 0
          end
          item
            Caption = 'N'#186' Fiscal'
            Tag = 0
          end>
      end
      inherited cbMiniDanfe: TcxCheckBox
        Left = 241
        Top = 111
        Properties.Caption = 'DANFE'
      end
      inherited cbNFeClientes: TcxCheckBox
        Left = 241
        Top = 128
        Properties.Caption = 'Clientes'
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 23
      Top = 168
      Width = 753
      Height = 396
      DataSource = DMSAIDA.DWPedV
      PopupMenu = PMDevolucao
      TabOrder = 5
      OnCellClick = DBGridCadastroPadraoCellClick
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnKeyUp = DBGridCadastroPadraoKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'FISCO'
          Title.Caption = 'F'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMORC'
          Title.Caption = 'N'#186' Or'#231'.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N'#186' Pedido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMFISCAL'
          Title.Caption = 'N'#186' Fiscal'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'ST'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'Situa'#231#227'o'
          Width = 61
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
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDVEN'
          Title.Caption = 'Data'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Cliente'
          Width = 439
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_USUARIO'
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDEDOR'
          Title.Caption = 'Vendedor'
          Width = 155
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Left = 22
      Top = 3
      Width = 754
      TabOrder = 1
      inherited BtnNovo: TBitBtn
        Width = 108
      end
      inherited BtnApagar: TBitBtn
        Left = 109
        Width = 108
      end
      inherited BtnConsultar: TBitBtn
        Left = 216
        Width = 108
      end
      inherited BtnRelatorio: TBitBtn
        Left = 323
        Width = 108
      end
      inherited BtnFiltrar: TBitBtn
        Left = 430
        Width = 108
        Hint = 'Pressione este bot'#227'o para gerar Documento Fiscal'
        Caption = '&Fiscal'
        PopupMenu = PMBtnFiscal
        OnClick = BtnFiltrarClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
          00000000000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBF
          BFBFBFBFBFBF000000000000000000000000000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000007F7F
          007F7F007F7F007F7F007F7F00000000000000000000BFBFBF7F00007F00007F
          00007F00007F00007F0000BFBFBF000000000000000000000000000000000000
          000000007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBF
          BFBF000000FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF00000000000000BFBF
          BFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF00000000000000000000
          0000000000000000BFBFBF7F7F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000BFBFBF00BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF000000FFFFFF7F7F7F7F7F7FFFFFFF000000BFBFBFBFBFBF00BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFF000000BFBFBF00BFBFBF000000000000000000000000000000
          FFFFFF000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
          7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
          BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      end
      inherited BtnFechaPed: TBitBtn
        Left = 537
        Width = 108
      end
      object BtnTroca: TBitBtn
        Left = 644
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancel. Fech'
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
    end
    object Panel8: TPanel [7]
      Left = 22
      Top = 31
      Width = 754
      Height = 29
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 2
      object BitBtn17: TBitBtn
        Left = 109
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Caption = 'Lote Fiscal'
        TabOrder = 0
        OnClick = BitBtn17Click
        OnMouseDown = BitBtn17MouseDown
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000EEEEEEEEEEEE
          E7E7E75C5757735757130E0E252525777777D8D8D8D4D4D4293A5F1765D60947
          A9000F34343536A7A7A7EEEEEEEEEEEE5957577C6666BAA5A54E3A3A00000000
          00000F0F0F1E325A0262E034B4FE2EBBFE0D7BF0003196161B28EEEEEE626161
          786565CBBBBBCDBDBD9E87870F0B0B00000000163E076EE20C97FF42BFFF42D0
          FF1FAEFF0579FA081842A09F9F6A5C5CD4C6C6DED3D3D8CBCBD1C2C244363600
          1A440A6FD8159FFC1FA7FF3AB8FF2EB1FF30B8FF0E87FA081942594F4FD6CACA
          EAE3E3E9E2E2E1D6D6E8E0E0978B941477D11A9EEE2AB1FE46C8FE3EC3FF1FAB
          FF0B86FF1578F5102044C6B7B7ECE4E4F4EEEEF4EEEEE9E0E0F2ECECDDD3D349
          90BC28ABF233AAF121AEFD51CDFF47D2FF17A3FF015BE2101B33B3A5A5EEE7E7
          DCD0D0E8E0E0ECE5E5FAF6F6F8F3F3959EAC26AAF224AEF827B7FF65D8FE68E4
          FE29B9FF0680FB081C43AAA2A2EDE8E8FBFAFAE3DBDBD1C4C4F1ECECFEFDFDDD
          D3D347AEDA31C2FF48C2F93BB7F64CD2FE4ACFFF1592FB081D43BAB9B9B2A8A8
          FFFFFFFFFFFFE9E2E2EDE6E6FEFDFDFEFEFE88A4B444B4EF2093E74CD0FE31C1
          FF28B8FF1B82EC101F37EAEAEA988F8FF4F1F1FFFFFFF0EBEBF7F5F5FCFBFBFE
          FEFED1C9CB3383CC38C8FC5ADCFF3FCDFF1DAAFF0376F5081C3CEEEEEEC2C1C1
          CBC1C1FEFEFEF7F4F4FCFBFBFFFFFFFFFEFEF8F5F57CACBE41D4FF5CD4FF56D7
          FF2CBCFF0C8CFC082045EEEEEEEEEEEEA49B9BF6F4F4FDFBFBFEFEFEFFFFFFFF
          FFFFF8F6F6A2ACB356D1FA19A6FF0D96FF2DA8FF209BFC0D274AEEEEEEEEEEEE
          C3C1C1D2CBCBFEFEFEFFFFFFFEFEFEEFEBEC9DB7C16ED7EF38C9FF21B0FF0F9B
          FF0183FE055CC856606DEEEEEEEEEEEEDFDFDF978F8FFAF8F8FEFEFEE1DDDF84
          BDD08DF0FB71EBFF43D3FF2ABBFF15A1FE0162C84E5967E7E7E7EEEEEEEEEEEE
          EEEEEEB3B0B0DDD5D5C6BCBC427EAE8AECFEACFFFF8AF6FF58DFFF2CBDFE0662
          B64E565FEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2E2E29991915250506D889D30
          8ECE74D7FA99F9FF5FDBFE0965B0525B65E7E7E7EEEEEEEEEEEE}
      end
      object BtnImpOrc: TBitBtn
        Left = 323
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pssibilita gerar or'#231'amentos'
        Caption = 'Or'#231'amento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnImpOrcClick
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D002000000000000000000000000000000000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEF
          EBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF000000EFEBEFEFEBEF
          6361636B696B636163636163EFEBEFEFEBEFEFEBEF6361636B6163636163EFEB
          EFEFEBEFEFEBEF000000EFEBEF6B61639C86848471736B61637B797B6B6163EF
          EBEF6B6163CEAEADA58E8C8471736B696BEFEBEFEFEBEF000000EFEBEF636163
          DEDFDED6BEBDBD9694847173636163EFEBEF6B696BD6C7C6CEB6B5BD96949C71
          73636163EFEBEF000000EFEBEFEFEBEFBDA6A5D6AEADB586849C86849CA6946B
          6163CEC7C6D6C7C6C69694C69694A58E8C636163EFEBEF000000EFEBEFBDA6A5
          F7C77BD69694DEAE843971395238316B51529C965AD6A6A5CE696B94696B7371
          73EFEBEFEFEBEF000000EFEBEFBDA6A5FFBE4AE7AE42D6A64A31613139A62152
          3831735118BD8E31DEAE84B586846B6163EFEBEFEFEBEF000000EFEBEFBDA6A5
          FFCF6B31613139A62139713921C74A08A618524110735118BD8E31F7AE42BD8E
          31636163EFEBEF000000EFEBEFBDA6A5FFE7943971394AE77B31D76B21BE4A18
          B63110AE21524110A57942E7B663C67973636163EFEBEF000000EFEBEFBDA6A5
          EFE7BD3161315AF78C4AE77B31D76B21BE4A18B631009E00D6BE84F7C77B9C96
          5A6B6163EFEBEF000000EFEBEFEFEBEFBDA6A539713939A62139A621009E0031
          D76B009E00D6BE84F7DF9CFFE794636163EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEF009E00009E009C8684BDA6A5BDA6A5E7CFA56361
          63EFEBEFEFEBEF000000EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEF009E00EF
          EBEFEFEBEFEFEBEFEFEBEFBDA6A5BDA6A5EFEBEFEFEBEF000000EFEBEFEFEBEF
          EFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEBEFEFEB
          EFEFEBEFEFEBEF000000}
      end
      object BtnDevolucao: TBitBtn
        Left = 430
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Caption = 'Devolu'#231#227'o'
        PopupMenu = PMDevolucao
        TabOrder = 2
        OnClick = BtnDevolucaoClick
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B803000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFA59E9C5A555A5A5D637B797BA5A2A5ADA6ADADAAADB5AEB5848284524D
          526B696BD6CBCEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF7B797B6B656BA5A2
          ADCEC3C6D6C7C6F7E3DEDECBBDBDAAA5BDAEA5E7D7D6DEDBDE94929C4A494AAD
          A6ADFFFFFFFFFFFF0000FFFFFF8C8A8C8C8A8CADA6ADB5A29CC6B2A5C6B2ADAD
          9A8C394D5A184D6B1838526B615AC6B2ADE7DFDEC6BAC64A494AB5AEADFFFFFF
          0000C6BEBDA59AA5A59E9C94796B947D6B5A4D396345183930211875AD31A6E7
          2175AD103410424129B5927BD6CBC6BDB6BD424142E7D7D60000B5AEB5A59EA5
          635139946D4A5A4529A57508DE9608735D18298AC631A2DE2986BD2175182149
          088C61399C7552D6CFCE7B798473716B0000BDBAC663514A6B45187B5121634D
          21F7AE21EFA610946D1818699431A2E72175AD297518295510844D217B4D189C
          795AD6D3D63938390000A59A9C5A38106B3C00733C00634518D6A221E7A2106B
          5518216994319EDE297DBD215D292949087341087B41086B3C089C8A73737173
          00008C7D736B38086B3800734108523C18C68E18DE9E08525D52299EDE319EDE
          319ADE296D631845086B38107B4500733C005A28009C928C0000947D73633400
          6B3C006B3C088C6921EFAA10DE9A0852614A299ADE319EDE399EE7317563216D
          085230088449006B3C0063300084757300008475636B38086B38007341109471
          21F7AE18E79E0852614A2192D6298AC6298ACE316D52216D0863380884450073
          3C085A30008C7D7B00007B7173522C006B3C006B3C089C7D39EFAA18D68E088C
          6D294A6D8C4A596B2949392986082179105230087B45086B38005A3408847D7B
          0000B5B2BD4228106B3800734108BDA284B59E845A49395A3C18BDAAADCEC3CE
          4A4942294D213941106B3C087341006B3C08948A845A555A0000E7E3EF5A514A
          5A30006B38007B5129A59EADB5AABD393831B5A294D6D3DE8479847B7184522C
          107B45006B38006B4D29B5B2BD524D520000FFFFFFBDB6BD4A30187B49189C7D
          5AD6CFCEB5AEBD5A514AA5825AE7CFC6D6CFD6847984735D4AA5754A5A30009C
          8E8C7B797BA59A9C0000FFFFFFFFFFFF9C969C634D39BD9E8CD6C7BDA59694B5
          A294D6BEADD6BEADBDAAA5A5968CD6B6A5846D52736563A5A6AD736D73FFFFFF
          0000FFFFFFFFFFFFFFFFFFA59EA563594A8C715ABD9E84D6B6A5D6BAADCEB6A5
          C6AA94AD8E736B51396B6563B5B2BD8C868CFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFC6C3CE736D6B5A45297B55317B55317B5129735129524939948A
          94BDBABDB5AAADFFFFFFFFFFFFFFFFFF0000}
      end
      object BitBtn12: TBitBtn
        Left = 537
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Caption = '&Comissionados'
        TabOrder = 3
        OnClick = BitBtn12Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777770000000000000007777777770FFFFFF000000007777
          777770F8888F000000007777777770FFFFFF000000007777777770F8888F0000
          00007444444440FFFFFF000000007488888880F8888F000000007477777770FF
          FFFF000000007470070070000000000000007477777777774777700000007470
          0700700747777000000074777777777747747000000074444444444447444000
          000074F44F44F44F477470000000744444444444477770000000777777777777
          777770000000}
      end
      object BitBtn15: TBitBtn
        Left = 644
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Caption = 'Sincronismo'
        TabOrder = 4
        OnClick = BitBtn15Click
        Glyph.Data = {
          E6010000424DE601000000000000360000002800000010000000090000000100
          180000000000B001000000000000000000000000000000000000C0C0C0948E8E
          7B73737B73737B73737B73737B73737B73737B73737B73737B73737B73737B73
          737B73739F9999C0C0C0A29B9B5E5959B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4
          AFB0B4AFB0B4AFB0B4AFB0B4AFB097C6A5B4AFB05E5959A29B9B7B7373B4AFB0
          D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D87975753DB1
          625F5C5CB4AFB07B73737B7373B4AFB0D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5
          D9D8E5D9D8E5D9D8E5D9D8618E6E0AEA54545151B4AFB07B73737B7373BDB8B9
          D8D6D5E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D8E5D9D879757531C0
          60646563B5B0B17B73737B7373C4BFBFD8D6D5FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9F7D9D9D6D6C6C2C17B7373CECBCBBCB8B8
          B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B4AFB0B5B0
          B1B4AFB0BCB8B8CECBCBC0C0C0E7E6E6D7D5D4C9C6C5E1E0E1EBEBEDEDEDEFED
          EDEFEDEDEFEDEDEFECECEEDFDEDFC9C6C5D7D5D4E7E6E6C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0DDDBDBD4D2D1CFCDCCCFCDCCCFCDCCCFCDCCD6D4D3DDDBDBC0C0
          C0C0C0C0C0C0C0C0C0C0}
      end
      object BtnTrocaProd: TBitBtn
        Left = 216
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Trocar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnTrocaProdClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BtCancelaECF: TBitBtn
        Left = 0
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Hint = 'Cancela o '#250'ltimo cupom fiscal'
        Caption = 'Cancela ECF'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtCancelaECFClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000232E0000232E00000000000000000000FFFFFFFEFDFC
          F4EADDE8D5B9E7D3B7E7D3B7E7D3B7E7D3B7E7D3B7E7D3B7E7D3B7E7D3B7E7D3
          B7E8D4B8ECDDC7FDFAF7FFFFFFFCF9F6E9D6BCE8D4B2F1E3CCF2E6D1F2E6D1F2
          E6D1F2E6D1F2E6D1F2E6D1F2E6D1F2E6D1EEE0C3DEC399FAF5EEFFFFFFF8F5F3
          D8C7B8E7DBC7FAF7F2F8F7F7EBEAF2F4F3F5FCFBF9FDFCF9FDFCF9FDFCF9FDFC
          F8F9F2E4DFC59BFAF5EDF9F9FCD2D2E77D79B39E99C6E0DFEFC3C3E87A7ACDAD
          ADDFEDEDF7FDFDFEFEFEFEFEFEFEFEFEFDFAF4E8E0C59DFAF5EED1D0E96E6DC1
          403DB83D3BB8706FCC4644BB3634B3403FB7A0A0DCF3F3F9FEFEFEFEFEFEFEFE
          FDFAF4E9E0C59DFAF5EE8D8CCA4744C53835C83734C43734BE3734BF3733BD36
          33B84E4DBBE3DFEDFEFBF6FEFBF6FEFBF6FAF3E7E0C59DFAF5EEBAB9DE5B58C7
          3B37D03834D43834D13834CE3834C93A36BE7B76C4ECE5E5FDF7EBFDF7EBFDF7
          ECFAF2E4E0C59CFAF5EEEBEAF59493D34340D53833E33833E33833DF3834D44C
          48BDCFC4D4F8EEE0FCF1E1FCF1E1FCF3E4FAF1E3E0C59CFAF5EEC6C5E76160D5
          3B36EA3734ED3D43EE3837ED3732E73C39D19992C9EFE2D5FAEDD8FAEDD8FAEE
          DBFAF0E1E0C59CFAF5EE8E8FD2576BEA3D42EF4757EF6984EA566DEE3C41EE42
          4FEA676DC7E5D7CDF8E9D1F8E9D1F9EBD5F9EFDFE0C59DFAF5EEC5C6E67383DA
          6580EA6D84DF7677C06A78CF6580E86F82DA9D95BEEDDBC8F8E6CCF8E6CCF9E9
          D0F9EFDEE0C59DFAF5EEF7F7FBC7C7E6787DC59492C7DDCBC3B8AABE7D7EC29F
          95BCE9D5C4F7E4C8F2DFC7CBBDC3C6BBC9D0C6CED9BE9CFAF5EEFFFFFFF9F6F4
          E1CFBCEBDDCCF6E4C9F5E1C6F1DEC6F3DFC6F7E4C7F7E4C7DDCDC44547B9393C
          B5635A93CEBCB0FAF7F4FFFFFFFCF9F5E8D5BCF1E2CDF8E9D1F9E9D1F9E9D1F9
          E9D1F9E9D1F9E9D1DED3CE4751BA5E68A6C3B4ABF7F3EFFFFFFFFFFFFFFCF9F6
          E9D7BEEBD8BDF3E3CEF4E6D1F4E6D1F4E6D1F4E6D1F4E6D1E0D4CB78739BC5B5
          AAF7F4EFFFFFFFFFFFFFFFFFFFFDFCFAF0E4D2E1C7A3E0C6A0E0C6A1E0C6A1E0
          C6A1E0C6A1E0C6A1DFC6A2DBC8B3F8F5F1FFFFFFFFFFFFFFFFFF}
      end
    end
    inherited GBFiltragem: TGroupBox
      Left = 24
      Top = 120
      Width = 751
      Height = 49
      TabOrder = 6
      inherited CbFiltroPedidosFechados: TCheckBox
        Left = 6
        Hint = 
          'Marque esta op'#231#227'o para mostrar os pedidos fechados na grade abai' +
          'xo'
      end
      object cxGroupBox2: TcxGroupBox [1]
        Left = 448
        Top = 8
        Width = 97
        Height = 41
        Alignment = alTopLeft
        Caption = 'Ordem'
        ParentFont = False
        TabOrder = 1
        object CBORDEM: TComboBox
          Left = 5
          Top = 15
          Width = 90
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          Text = 'N'#218'MERO'
          OnChange = CBORDEMChange
          OnExit = CBORDEMExit
          Items.Strings = (
            'N'#218'MERO'
            'DATA'
            'CLIENTE'
            'INSER'#199#195'O'
            '')
        end
      end
      inherited cxGroupBox1: TcxGroupBox
        Left = 547
        Top = 8
        TabOrder = 2
      end
    end
  end
  object QRRelLote: TQuickRep [17]
    Left = 128
    Top = 640
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = TLote
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
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
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
      Top = 38
      Width = 740
      Height = 123
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
        325.437500000000000000
        1957.916666666667000000)
      BandType = rbTitle
      object QRDBText38: TQRDBText
        Left = 8
        Top = 3
        Width = 545
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          1441.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'RAZAO_SOCIAL'
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
      object QRDBText39: TQRDBText
        Left = 8
        Top = 20
        Width = 345
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          52.916666666666660000
          912.812500000000100000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel75: TQRLabel
        Left = 8
        Top = 53
        Width = 753
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          140.229166666666700000
          1992.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio de Vendas por Lote'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData13: TQRSysData
        Left = 671
        Top = 1
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1775.354166666667000000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data: '
        Transparent = False
        FontSize = 8
      end
      object QRSysData14: TQRSysData
        Left = 671
        Top = 13
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1775.354166666667000000
          34.395833333333330000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Hora: '
        Transparent = False
        FontSize = 8
      end
      object QRSysData15: TQRSysData
        Left = 671
        Top = 25
        Width = 63
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1775.354166666667000000
          66.145833333333330000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Pag.:'
        Transparent = False
        FontSize = 8
      end
      object QRShape18: TQRShape
        Left = 0
        Top = 88
        Width = 737
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          232.833333333333400000
          1949.979166666667000000)
        Shape = qrsRectangle
      end
      object QRDBText1: TQRDBText
        Left = 48
        Top = 96
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          254.000000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLote
        DataField = 'Numero'
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
        Left = 8
        Top = 96
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          254.000000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lote:'
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
      object QRDBText2: TQRDBText
        Left = 104
        Top = 96
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          254.000000000000000000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLote
        DataField = 'DESCRICAO'
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 161
      Width = 740
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        1957.916666666667000000)
      Expression = 'TLote.cod_pedven'
      Master = QRRelLote
      ReprintOnNewPage = False
      object QRLabel2: TQRLabel
        Left = 8
        Top = 3
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          21.166666666666670000
          7.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pedido N.'#186
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel3: TQRLabel
        Left = 152
        Top = 3
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          402.166666666666600000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 648
        Top = 3
        Width = 62
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1714.500000000000000000
          7.937500000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Pedido'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object LbNomeCliente: TQRLabel
        Left = 152
        Top = 16
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          402.166666666666600000
          42.333333333333340000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
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
      object LbDtPed: TQRLabel
        Left = 648
        Top = 16
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1714.500000000000000000
          42.333333333333340000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
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
      object QRLabel5: TQRLabel
        Left = 88
        Top = 30
        Width = 34
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          232.833333333333400000
          79.375000000000000000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 168
        Top = 30
        Width = 41
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          444.500000000000000000
          79.375000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 376
        Top = 30
        Width = 59
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          994.833333333333400000
          79.375000000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel8: TQRLabel
        Left = 496
        Top = 30
        Width = 27
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1312.333333333333000000
          79.375000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        Pen.Style = psInsideFrame
        Shape = qrsRectangle
      end
      object LbNumPed: TQRLabel
        Left = 8
        Top = 16
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          21.166666666666670000
          42.333333333333340000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
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
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 203
      Width = 740
      Height = 16
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
        42.333333333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object LbCodigo: TQRLabel
        Left = 88
        Top = 0
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          232.833333333333400000
          0.000000000000000000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cliente'
        Color = clWhite
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
      object LbDescricao: TQRLabel
        Left = 168
        Top = 0
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          444.500000000000000000
          0.000000000000000000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cliente'
        Color = clWhite
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
      object LbQuantidade: TQRLabel
        Left = 376
        Top = 0
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          994.833333333333400000
          0.000000000000000000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cliente'
        Color = clWhite
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
      object LbValor: TQRLabel
        Left = 496
        Top = 0
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          1312.333333333333000000
          0.000000000000000000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cliente'
        Color = clWhite
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
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 219
      Width = 740
      Height = 30
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
        79.375000000000000000
        1957.916666666667000000)
      BandType = rbSummary
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 737
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          0.000000000000000000
          1949.979166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel9: TQRLabel
        Left = 0
        Top = 3
        Width = 737
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          7.937500000000000000
          1949.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MZR Sistemas & Contabilidade - Gest'#227'o com equilibrio e seguran'#231'a'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRLabel10: TQRLabel
        Left = 0
        Top = 13
        Width = 737
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          34.395833333333340000
          1949.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fone: (45) 3055-4745'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
  end
  inherited FSRel: TfrReport
    Left = 472
    Top = 37
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 440
    Top = 65533
  end
  inherited MEscolheProc: TPopupMenu
    Left = 610
    Top = 65535
  end
  inherited PMRel: TPopupMenu
    Left = 50
    Top = 55
    inherited Comprovante1: TMenuItem
      Caption = 'Comprovante Normal'
    end
    object ComprovanteTermal1: TMenuItem [2]
      Caption = 'Comprovante Cupom'
      OnClick = ComprovanteTermal1Click
    end
    object RelatriodeDanfe1: TMenuItem [3]
      Caption = 'Relat'#243'rio de Danfe'
      OnClick = RelatriodeDanfe1Click
    end
    object GeraCarn1: TMenuItem [4]
      Caption = 'Gera Carn'#234
    end
    object Lote1: TMenuItem [5]
      Caption = 'Lote'
      OnClick = Lote1Click
    end
    object Contaapagarepagos1: TMenuItem [6]
      Caption = 'Conta a Pagar/Pagos'
      OnClick = Contaapagarepagos1Click
    end
    object RelatriodeVendaspBanca1: TMenuItem [7]
      Caption = 'Relat'#243'rio de Vendas p/ Banca'
      OnClick = RelatriodeVendaspBanca1Click
    end
    object RelatriodevendascomDespesas1: TMenuItem
      Caption = 'Relat'#243'rio de Vendas com Despesas'
      OnClick = RelatriodevendascomDespesas1Click
    end
    object RelatriodeVendasdeVeculos1: TMenuItem
      Caption = 'Relat'#243'rio de Vendas de Ve'#237'culos'
      OnClick = RelatriodeVendasdeVeculos1Click
    end
  end
  inherited FSDSDesp: TfrDBDataSet
    Left = 705
    Top = 65532
  end
  inherited FSDSDataSet2: TfrDBDataSet
    Left = 640
  end
  inherited FSDSBanco: TfrDBDataSet
    Top = 5
  end
  object PMBtnFiscal: TPopupMenu
    Left = 12
    Top = 55
    object ConsultaNDocFiscal1: TMenuItem
      Caption = 'Consulta N'#186' Doc. Fiscal'
      OnClick = ConsultaNDocFiscal1Click
    end
    object AlteraNDocFiscal1: TMenuItem
      Caption = 'Altera N'#186' Doc. Fiscal'
      OnClick = AlteraNDocFiscal1Click
    end
    object ReimprimirNF1: TMenuItem
      Caption = 'Reimprimir NF'
      OnClick = ReimprimirNF1Click
    end
  end
  object PMDevolucao: TPopupMenu
    Left = 676
    Top = 6
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
      Hint = 'Fun'#231#245'es espec'#237'ficas para nota fiscal eletr'#244'nica'
    end
    object RecuperarDados1: TMenuItem
      Caption = 'Recuperar Dados de Nota Fiscal Eletr'#244'nica'
      Hint = 
        'Utilize este comando para recuperar junto ao sefaz os dados de R' +
        'ecibo e Protocolo da Nfe emitida'
      OnClick = RecuperarDados1Click
    end
    object NotaFiscalEletrnica1: TMenuItem
      Caption = 'Consultas de Nota Fiscal Eletr'#244'nica'
      object VisualizarDanfe1: TMenuItem
        Caption = 'Visualizar Danfe'
        Hint = 'Use para emitir/imprimir o danfe referente a Nfe selecionada'
        OnClick = VisualizarDanfe1Click
      end
      object VisualizarnoSefazNacional1: TMenuItem
        Caption = 'Visualizar no Sefaz'
        Hint = 
          'Abre o Site do Sefaz para consultar a integridade das informa'#231#245'e' +
          's da Nfe'
        OnClick = VisualizarnoSefazNacional1Click
      end
      object ConsultarStatusNfe1: TMenuItem
        Caption = 'Consultar Status Nfe'
        Hint = 
          'Consula o pedido selecionado junto a base do Sefaz para verifica' +
          'r se o pedido consta como enviado/cancelado e outros'
        OnClick = ConsultarStatusNfe1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object VerificarServidorSefaz1: TMenuItem
        Caption = 'Verificar Servidor Sefaz'
        OnClick = VerificarServidorSefaz1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object ListarNfe1: TMenuItem
        Caption = 'Listar Nfe'
        OnClick = ListarNfe1Click
      end
    end
    object Inutilizarnumeraodenotafisclaleletrnica1: TMenuItem
      Caption = 'Inutilizar Numera'#231#227'o de Nota Fiscal Eletr'#244'nica'
      OnClick = Inutilizarnumeraodenotafisclaleletrnica1Click
    end
    object GerarXMLDistribuio1: TMenuItem
      Caption = 'Gerar e Enviar XML Distribui'#231#227'o'
      OnClick = GerarXMLDistribuio1Click
    end
    object RecuperareEnviarXMLdeCancelamento1: TMenuItem
      Caption = 'Recuperar e Enviar XML de Cancelamento'
      OnClick = RecuperareEnviarXMLdeCancelamento1Click
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
      Hint = 
        'Utilize este comando para cancelar/inutilizar a Nota Fiscal j'#225' e' +
        'mitida '
      OnClick = CancelarNfe1Click
    end
    object CartadeCorreoEletrnica1: TMenuItem
      Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica'
      OnClick = CartadeCorreoEletrnica1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object NOTAFISCALFORMULRIO1: TMenuItem
      Bitmap.Data = {
        AA040000424DAA04000000000000360000002800000014000000130000000100
        1800000000007404000000000000000000000000000000000000FCFCFCFBFBFB
        E0E0E0D6D6D6D8D8D8D8D8D8D7D7D7DADADAD9D9D9D7D7D7D9D9D9D9D9D9D8D8
        D8D7D7D7D9D9D9D8D8D8D7D7D7D1D1D1E8E8E8FFFFFFFFFFFFC8C8C872727277
        77777C7C7C8282828686868686868484848282828080807E7E7E7D7D7D7B7B7B
        7878787676767575756E6E6E7F7F7FDCDCDCF6F6F6AAAAAAC6C6C6C8C8C8C6C6
        C6C8C8C8C7C7C7C1C1C1BFBFBFBDBDBDBCBCBCBBBBBBB9B9B9B8B8B8B6B6B6B5
        B5B5B3B3B3B5B5B5A5A5A5ABABABF4F4F4B4B4B4E1E1E1DCDCDCDBDBDBD7D7D7
        D4D4D4D2D2D2D1D1D1D0D0D0CDCDCDC9C9C9C9C9C9C7C7C7C4C4C4C1C1C1C0C0
        C0BEBEBEBBBBBBB0B0B0F3F3F3B5B5B5E1E1E1D0D0D0CCCCCCC9C9C9C6C6C6C5
        C5C5C4C4C4C4C4C4C0C0C0BDBDBDBCBCBCBCBCBCB9B9B9B5B5B5B5B5B5B8B8B8
        B9B9B9B5B5B5F3F3F3BBBBBBCECECEA8A8A8B1B1B1B4B4B4B3B3B3B1B1B1B1B1
        B1B0B0B0B1B1B1B2B2B2B1B1B1B1B1B1B0B0B0B0B0B0AFAFAFA4A4A4B6B6B6B9
        B9B9F2F2F2BCBCBCCDCDCDCECECEE3E3E3F8F8F8F9F9F9F9F9F9F8F8F8F7F7F7
        F8F8F8F8F8F8F7F7F7F6F6F6F9F9F9FBFBFBFDFDFDC8C8C8B0B0B0BDBDBDF1F1
        F1BBBBBBECECECE2E2E2E7E7E7EFEFEFECECECEBEBEBECECECECECECEAEAEAE9
        E9E9E9E9E9E8E8E8E8E8E8E8E8E8E4E4E4D5D5D5C7C7C7BCBCBCF7F7F7C0C0C0
        F7F7F7FFFFFFE2E2E2D7D7D7D9D9D9DBDBDBDBDBDBDBDBDBDADADADADADADADA
        DADBDBDBD7D7D7D6D6D6E0E0E0F4F4F4EDEDEDC2C2C2FFFFFFDEDEDED2D2D2E9
        E9E9ACACAC9D9D9DA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A4A4A4A4A4A4A3A3A3
        A3A3A3A2A2A2AFAFAFE7E7E7C6C6C6E8E8E8FEFEFEFFFFFFD9D9D9B9B9B9B6B6
        B6D0D0D0BABABABBBBBBBCBCBCBBBBBBBDBDBDBEBEBEBEBEBEBDBDBDC8C8C8D7
        D7D7B0B0B0BFBFBFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCF0F0F0
        E8E8E8E8E8E8E8E8E8E8E8E8E9E9E9E9E9E9EAEAEAEAEAEAEFEFEFEEEEEECDCD
        CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC9C9C9FCFCFCF6F6F6F3
        F3F3F4F4F4F3F3F3F8F8F8FDFDFDFEFEFEFDFDFDFDFDFDF2F2F2CDCDCDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCC8C8C8F4F4F4E0E0E0DFDFDFE0E0
        E0E0E0E0E2E2E2E7E7E7E9E9E9E6E6E6EEEEEEECECECCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFCFCCBCBCBEAEAEADADADAD9D9D9DADADADADADA
        D8D8D8D8D8D8D8D8D8D7D7D7E2E2E2E7E7E7CCCCCCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFCC8C8C8E3E3E3D4D4D4D1D1D1D1D1D1D1D1D1D2D2D2D3
        D3D3D3D3D3D2D2D2DCDCDCE2E2E2CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFBC6C6C6ECECECE2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E1E1E1E4E4E4E5E5E5CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FDFDC9C9C9CACACACCCCCCCCCCCCCBCBCBCBCBCBCBCBCBCBCBCBCBCBCBCACACA
        C9C9C9C7C7C7D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7
        F7EAEAEAEBEBEBEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEBEBEBEB
        EBEBF9F9F9FEFEFEFFFFFFFFFFFF}
      Caption = 'NOTA FISCAL FORMUL'#193'RIO'
      Hint = 'Fun'#231#245'es espec'#237'ficas para nota fiscal modelo 01'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar NF modelo 01 '
      OnClick = Cancelar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object NFeNF1: TMenuItem
      Caption = 'NFe/NF'
      Hint = 
        'Fun'#231#245'es de uso comum para  nota fiscal modelo 01 e nota fiscal e' +
        'letr'#244'nica'
    end
    object ReimprimirNotaFiscal1: TMenuItem
      Caption = 'Reimprimir NFe/NF'
      OnClick = ReimprimirNotaFiscal1Click
    end
    object EfetuarDevoluodeNFe1: TMenuItem
      Caption = 'Efetuar Devolu'#231#227'o de NFe/NF'
      OnClick = EfetuarDevoluodeNFe1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object DevoluoTotal1: TMenuItem
      Caption = 'Devolu'#231#227'o Total'
      OnClick = DevoluoTotal1Click
    end
    object DevoluoParcial1: TMenuItem
      Caption = 'Devolu'#231#227'o Parcial'
      OnClick = DevoluoParcial1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Gerarnovopedido1: TMenuItem
      Caption = 'Gerar novo pedido'
      Hint = 'Gera novo pedido com base no pedido selecionado'
      OnClick = Gerarnovopedido1Click
    end
    object InserirNFiscal1: TMenuItem
      Caption = 'Inserir N'#186' Fiscal'
      OnClick = InserirNFiscal1Click
    end
    object ApagarNFiscal1: TMenuItem
      Caption = 'Apagar N'#186' Fiscal'
      OnClick = ApagarNFiscal1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ControledeEntrega1: TMenuItem
      Caption = 'Controle de Entrega'
      OnClick = ControledeEntrega1Click
    end
    object ResumodeEntrega1: TMenuItem
      Caption = 'Resumo de Entrega'
      OnClick = ResumodeEntrega1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object CartaRedespacho: TMenuItem
      Caption = 'Carta Redespacho'
      OnClick = CartaRedespachoClick
    end
  end
  object PMNFe: TPopupMenu
    Left = 92
    Top = 47
    object ConsultarNFe1: TMenuItem
      Caption = 'Consultar NFe'
      OnClick = ConsultarNFe1Click
    end
    object ImprimirDANFE1: TMenuItem
      Caption = 'Imprimir DANFE'
      OnClick = Danfe1Click
    end
    object AbrirXML1: TMenuItem
      Caption = 'Abrir XML'
      OnClick = SalvarXML1Click
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
    object RelatrioDanfe1: TMenuItem
      Caption = 'Relat'#243'rio Danfe'
      OnClick = RelatrioDanfe1Click
    end
    object SalvarXMLDestinatrio1: TMenuItem
      Caption = 'Salvar XML Destinat'#225'rio'
      Visible = False
      OnClick = SalvarXMLDestinatrio1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 728
    Top = 5
  end
  object FSRelNfe: TfrReport
    Dataset = FSDSRelNfe
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 376
    Top = 4
    ReportForm = {18000000}
  end
  object FSDSRelNfe: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 336
    Top = 4
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 297
    Top = 5
  end
  object frShapeObject1: TfrShapeObject
    Left = 261
    Top = 5
  end
  object sdXmlDestinatario: TSaveDialog
    DefaultExt = 'xml'
    InitialDir = '%USERPROFILE%\Meus documentos'
    Title = 'Salvar'
    Left = 520
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 86
    object EmissodaNFe1: TMenuItem
      Caption = 'Emiss'#227'o da NF-e'
      Enabled = False
      Visible = False
      object Normal1: TMenuItem
        Caption = 'Normal'
        Hint = 
          'Procedimento padr'#227'o de emiss'#227'o da NF-e com transmiss'#227'o da NF-e p' +
          'ara a Secretaria de Fazenda de origem do emissor para obter a au' +
          'toriza'#231#227'o de uso, o DANFE ser'#225' impresso em papel comum ap'#243's o re' +
          'cebimento da autoriza'#231#227'o de uso da NF-e.'
        OnClick = Normal1Click
      end
      object ContingnciaFS1: TMenuItem
        Caption = 'Conting'#234'ncia FS'
        Hint = 
          'Emiss'#227'o da NF-e em conting'#234'ncia com a impress'#227'o do DANFE em Form' +
          'ul'#225'rio de Seguran'#231'a.'
        OnClick = ContingnciaFS1Click
      end
      object ContingnciaSCAN1: TMenuItem
        Caption = 'Conting'#234'ncia SCAN'
        Hint = 
          'Alternativa de emiss'#227'o da NF-e em conting'#234'ncia com transmiss'#227'o d' +
          'a NF-e para o Sistema de Conting'#234'ncia do Ambiente Nacional (SCAN' +
          '), nesta modalidade de conting'#234'ncia o DANFE pode ser impresso em' +
          ' papel comum e n'#227'o existe necessidade de transmiss'#227'o da NF-e par' +
          'a SEFAZ de origem quando cessarem os problemas t'#233'cnicos que impe' +
          'diam a transmiss'#227'o. Al'#233'm do uso de s'#233'rie espec'#237'fica reservada pa' +
          'ra o SCAN (s'#233'rie 900-999), o Sistema de Conting'#234'ncia do Ambiente' +
          ' Nacional depende de ativa'#231#227'o da SEFAZ de origem, o que signific' +
          'a dizer que o SCAN s'#243' entra em opera'#231#227'o quando a SEFAZ de origem' +
          ' estiver com problemas t'#233'cnicos que impossibilitam a recep'#231#227'o da' +
          ' NF-e.'
        OnClick = ContingnciaSCAN1Click
      end
      object ContingnciaDPEC1: TMenuItem
        Caption = 'Conting'#234'ncia DPEC'
        Hint = 
          'Alternativa de emiss'#227'o de NF-e em conting'#234'ncia com o registro pr' +
          #233'vio do resumo das NF-e emitidas. O registro pr'#233'vio das NF-e per' +
          'mite a impress'#227'o do DANFE em papel comum. A validade do DANFE es' +
          't'#225' condicionada '#224' posterior transmiss'#227'o da NF-e para a SEFAZ de ' +
          'Origem.'
      end
      object ContingnciaFSDA1: TMenuItem
        Caption = 'Conting'#234'ncia FS-DA'
        Hint = 
          'Modelo operacional similar ao modelo operacional da conting'#234'ncia' +
          ' com uso de Formul'#225'rio de Seguran'#231'a '#8211' FS, A '#250'nica diferen'#231'a '#233' a ' +
          'substitui'#231#227'o do FS pelo FS-DA. O FS-DA foi criado para aumentar ' +
          'a capilaridade dos pontos de venda do Formul'#225'rio de Seguran'#231'a co' +
          'm a cria'#231#227'o da figura do estabelecimento distribuidor do FS-DA q' +
          'ue poder'#225' adquirir FS-DA dos fabricantes para distribuir para os' +
          ' emissores de NF-e de sua regi'#227'o.'
      end
    end
    object Consultas2: TMenuItem
      Caption = 'Consultas'
      Visible = False
      object MenuItem1: TMenuItem
        Caption = 'Consultar Situa'#231#227'o NFe'
        OnClick = ConsultarNFe1Click
      end
      object MenuItem2: TMenuItem
        Caption = 'Copiar Chave NFe'
        OnClick = CopiarChaveNFe1Click
      end
      object MenuItem3: TMenuItem
        Caption = 'Consulta NFe PR'
        OnClick = ConsultaNFePR1Click
      end
      object MenuItem4: TMenuItem
        Caption = 'Consulta NFe Nacional'
        OnClick = ConsultaNFeNacinal1Click
      end
      object XML1: TMenuItem
        Caption = 'XML'
        object MenuItem5: TMenuItem
          Caption = 'Abrir XML'
          OnClick = SalvarXML1Click
        end
        object MenuItem6: TMenuItem
          Caption = 'Abrir XML Autoriza'#231#227'o'
          OnClick = AbrirXMLResposta1Click
        end
      end
    end
    object Inutilizao1: TMenuItem
      Caption = 'Inutiliza'#231#227'o'
      Visible = False
      object InutilizarNumerao1: TMenuItem
        Caption = 'Inutilizar Numera'#231#227'o'
      end
      object InutilizarNumeraoSCAN1: TMenuItem
        Caption = 'Inutilizar Numera'#231#227'o SCAN'
        Visible = False
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      Visible = False
      object MenuItem7: TMenuItem
        Caption = 'DANFE'
        Visible = False
        OnClick = Danfe1Click
      end
      object MenuItem8: TMenuItem
        Caption = 'Relat'#243'rio DANFE (Absoleto)'
        OnClick = RelatrioDanfe1Click
      end
    end
    object VerificarStatus1: TMenuItem
      Caption = 'Verificar Status'
      object WebService1: TMenuItem
        Caption = 'Web Service'
      end
      object WebServiceSCAN1: TMenuItem
        Caption = 'Web Service SCAN'
      end
    end
  end
  object FSDSRelLote: TfrDBDataSet
    DataSource = DMMACS.DSRel
    Left = 436
    Top = 108
  end
  object FSRelLote: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 476
    Top = 108
    ReportForm = {18000000}
  end
  object FSDSProdLote: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 516
    Top = 108
  end
  object TLote: TIBQuery
    Database = DMSAIDA.IBDB
    Transaction = DMSAIDA.IBT
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct itenspedven.cod_pedven from itenspedven')
    Left = 440
    Top = 488
  end
  object DSLote: TDataSource
    DataSet = TLote
    Left = 520
    Top = 496
  end
  object FDSContas: TfrDBDataSet
    DataSource = DMMACS.DSALX
    Left = 428
    Top = 46
  end
  object FDSPagas: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx2
    Left = 524
    Top = 62
  end
  object PMDevolver: TPopupMenu
    Left = 217
    Top = 472
    object Devolver1: TMenuItem
      Caption = 'Devolver'
      OnClick = Devolver1Click
    end
  end
end
