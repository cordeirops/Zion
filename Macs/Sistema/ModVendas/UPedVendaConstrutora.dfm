inherited FPedidoVendaConstrutora: TFPedidoVendaConstrutora
  Left = 197
  Top = 32
  Caption = 'Pedido de Venda'
  ClientHeight = 634
  ClientWidth = 899
  PixelsPerInch = 96
  TextHeight = 13
  inherited ImgFundo: TImage
    Left = -8
  end
  object Shape1: TShape [2]
    Left = 128
    Top = 202
    Width = 21
    Height = 21
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Visible = False
  end
  object Shape2: TShape [3]
    Left = 664
    Top = 202
    Width = 21
    Height = 21
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Visible = False
  end
  object Shape3: TShape [4]
    Left = 664
    Top = 154
    Width = 21
    Height = 21
    Brush.Color = clGradientActiveCaption
    Pen.Color = clGradientActiveCaption
    Visible = False
  end
  inherited LDescTitulo: TDRLabel
    Left = 361
    Caption = 'Pedido de Venda'
  end
  inherited PCadastro: TPanel
    Left = 10
    Top = 33
    Width = 881
    Height = 594
    inherited Panel4: TPanel
      Top = 30
      Width = 877
      Height = 557
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'BankGothic Md BT'
      ParentFont = False
      object Label1: TLabel
        Left = 6
        Top = 4
        Width = 271
        Height = 16
        Caption = 'Informe os dados para o pedido de venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Pvendedor: TPanel
        Left = 4
        Top = 125
        Width = 869
        Height = 85
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 2
        object Label24: TLabel
          Left = 11
          Top = 3
          Width = 73
          Height = 16
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 318
          Top = 3
          Width = 154
          Height = 16
          Caption = 'Forma de Pagamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 10
          Top = 43
          Width = 38
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 105
          Top = 43
          Width = 68
          Height = 16
          Caption = 'Desc.(%):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 106
          Top = 61
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 169
          Top = 59
          Width = 9
          Height = 20
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 649
          Top = 3
          Width = 37
          Height = 16
          Caption = 'Obs.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape9: TShape
          Left = 290
          Top = 20
          Width = 21
          Height = 19
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Shape10: TShape
          Left = 618
          Top = 20
          Width = 21
          Height = 19
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label17: TLabel
          Left = 251
          Top = 43
          Width = 45
          Height = 16
          Caption = 'Frete: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape13: TShape
          Left = 618
          Top = 59
          Width = 21
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label42: TLabel
          Left = 318
          Top = 42
          Width = 39
          Height = 16
          Caption = 'Obra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdComiss: TFloatEdit
          Left = 648
          Top = 32
          Width = 33
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Text = '0,00'
          Visible = False
          ValueFormat = '##,##0.00'
          ValueInteger = 0
        end
        object MmObs: TMemo
          Left = 648
          Top = 19
          Width = 217
          Height = 61
          TabOrder = 4
        end
        object EdNomeVendedor: TFlatEdit
          Left = 70
          Top = 20
          Width = 220
          Height = 19
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 11
        end
        object EDFORMPAG: TFlatEdit
          Left = 377
          Top = 20
          Width = 240
          Height = 19
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 12
        end
        object BtnProcVend: TBitBtn
          Left = 292
          Top = 20
          Width = 19
          Height = 19
          Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnProcVendClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object BtnProcFormPag: TBitBtn
          Left = 620
          Top = 19
          Width = 19
          Height = 19
          Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BtnProcFormPagClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdCodVend: TEdit
          Left = 10
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 0
          OnExit = EdCodVendExit
          OnKeyDown = EdCodVendKeyDown
        end
        object EDCODFORMPAG: TEdit
          Left = 317
          Top = 20
          Width = 60
          Height = 21
          TabOrder = 2
          OnExit = EDCODFORMPAGExit
          OnKeyDown = EDCODFORMPAGKeyDown
        end
        object EdDataVen: TMaskEdit
          Left = 10
          Top = 60
          Width = 90
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ReadOnly = True
          TabOrder = 5
          Text = '  /  /    '
        end
        object EdDescPed: TFloatEdit
          Left = 123
          Top = 60
          Width = 41
          Height = 20
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '0'
          OnExit = EdDescPedExit
          ValueFormat = '###,#0'
          ValueInteger = 0
        end
        object EdDescMoeda: TFloatEdit
          Left = 181
          Top = 60
          Width = 62
          Height = 20
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Text = '0,00'
          OnExit = EdDescMoedaExit
          ValueFormat = '####,##0.00'
          ValueInteger = 0
        end
        object EdFrete: TFloatEdit
          Left = 249
          Top = 60
          Width = 57
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Text = '0,00'
          OnExit = EdFreteExit
          ValueFormat = '#####,##0.00'
          ValueInteger = 0
        end
        object BtPesqObra: TBitBtn
          Left = 619
          Top = 60
          Width = 19
          Height = 19
          TabOrder = 10
          OnClick = BtPesqObraClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdDescricaoObra: TFlatEdit
          Left = 376
          Top = 59
          Width = 241
          Height = 19
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 14
        end
        object EdCodObra: TEdit
          Left = 319
          Top = 59
          Width = 57
          Height = 21
          TabOrder = 9
          OnExit = EdCodObraExit
        end
      end
      object PTransPlacaMoto: TPanel
        Left = 4
        Top = 20
        Width = 869
        Height = 54
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 0
        object Label4: TLabel
          Left = 10
          Top = 4
          Width = 49
          Height = 16
          Caption = 'Placa: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 255
          Top = 4
          Width = 73
          Height = 16
          Caption = 'Motorista: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape5: TShape
          Left = 659
          Top = 21
          Width = 21
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label7: TLabel
          Left = 126
          Top = 4
          Width = 42
          Height = 16
          Caption = 'Tara: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CbPlaca: TComboBox
          Left = 10
          Top = 22
          Width = 109
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          OnExit = CbPlacaExit
          OnKeyDown = CbPlacaKeyDown
        end
        object BtOpenMotorista: TBitBtn
          Left = 659
          Top = 23
          Width = 19
          Height = 19
          TabOrder = 3
          OnClick = BtOpenMotoristaClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object GbData: TGroupBox
          Left = 692
          Top = 4
          Width = 169
          Height = 45
          Caption = 'Entrada: '
          TabOrder = 5
          object EdData: TMaskEdit
            Left = 3
            Top = 16
            Width = 90
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '  /  /    '
          end
          object EdHora: TMaskEdit
            Left = 96
            Top = 16
            Width = 68
            Height = 21
            EditMask = '!90:00:00;1;_'
            MaxLength = 8
            ReadOnly = True
            TabOrder = 1
            Text = '  :  :  '
          end
        end
        object EdCodMoto: TEdit
          Left = 254
          Top = 22
          Width = 81
          Height = 21
          TabOrder = 2
          OnExit = EdCodMotoExit
          OnKeyUp = EdCodMotoKeyUp
        end
        object EdNomeMoto: TFlatEdit
          Left = 335
          Top = 22
          Width = 323
          Height = 22
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 4
        end
        object EdTara: TFloatEdit
          Left = 124
          Top = 22
          Width = 117
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0000'
          ValueFormat = '####0000'
          ValueInteger = 0
        end
      end
      object PCliente: TPanel
        Left = 4
        Top = 75
        Width = 869
        Height = 48
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 1
        object Label2: TLabel
          Left = 12
          Top = 4
          Width = 55
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 87
          Top = 4
          Width = 78
          Height = 16
          Caption = 'CPF/CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape7: TShape
          Left = 482
          Top = 20
          Width = 21
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label8: TLabel
          Left = 210
          Top = 3
          Width = 53
          Height = 16
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape6: TShape
          Left = 842
          Top = 19
          Width = 21
          Height = 21
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object Label6: TLabel
          Left = 513
          Top = 2
          Width = 113
          Height = 16
          Caption = 'Transportadora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdCpfCnpj: TFlatEdit
          Left = 82
          Top = 21
          Width = 121
          Height = 21
          ColorFlat = 16763590
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EdNomeCli: TFlatEdit
          Left = 206
          Top = 21
          Width = 275
          Height = 21
          TabStop = False
          ColorFlat = 16763590
          ReadOnly = True
          TabOrder = 5
        end
        object BtnProcPess: TBitBtn
          Left = 482
          Top = 22
          Width = 19
          Height = 19
          TabOrder = 2
          OnClick = BtnProcPessClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdCodCliente: TEdit
          Left = 10
          Top = 21
          Width = 71
          Height = 21
          TabOrder = 0
          OnExit = EdCodClienteExit
          OnKeyDown = EdCodClienteKeyDown
        end
        object BtnTransportadora: TBitBtn
          Left = 842
          Top = 20
          Width = 19
          Height = 20
          TabOrder = 4
          OnClick = BtnTransportadoraClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdNomeTrans: TFlatEdit
          Left = 570
          Top = 19
          Width = 271
          Height = 20
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 6
        end
        object EdCodTrans: TEdit
          Left = 512
          Top = 19
          Width = 57
          Height = 21
          TabOrder = 3
          OnExit = EdCodTransExit
          OnKeyDown = EdCodTransKeyDown
        end
      end
      object PProPedido: TFashionPanel
        Left = 4
        Top = 214
        Width = 868
        Height = 276
        BevelOuter = bvNone
        Color = 14933717
        TabOrder = 3
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
        Title = 'Lista de Produtos de Pedido:'
        LineWidth = 1
        LineColor = clAppWorkSpace
        Theme = ttCustom
        object GroupBox3: TGroupBox
          Left = 5
          Top = 154
          Width = 860
          Height = 119
          Caption = 'Lan'#231'amentos do Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object PCPedVenda: TPageControl
            Left = 3
            Top = 16
            Width = 854
            Height = 97
            ActivePage = Produtos
            TabOrder = 0
            OnChange = PCPedVendaChange
            object Produtos: TTabSheet
              Caption = 'Produtos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              object DBGProdutosPedido: TDBGrid
                Left = 0
                Top = 0
                Width = 845
                Height = 65
                DataSource = DMESTOQUE.DSSlave
                FixedColor = clSkyBlue
                Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlue
                TitleFont.Height = -12
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGProdutosPedidoDrawColumnCell
                OnKeyDown = DBGProdutosPedidoKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'COD_PEDVEN'
                    Title.Caption = 'Cod.Venda'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_ITENSPEDVEN'
                    Title.Caption = 'Cod. Item'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    PickList.Strings = (
                      'eu'
                      'voce')
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 250
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDEPROD'
                    Title.Caption = 'Mts. C'#250'bicos'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALUNIT'
                    Title.Caption = 'Val. Uni.'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORTOTAL'
                    Title.Caption = 'Total'
                    Width = 70
                    Visible = True
                  end>
              end
            end
            object Container: TTabSheet
              Caption = 'Container'
              ImageIndex = 1
              object DBGContainer: TDBGrid
                Left = 0
                Top = 0
                Width = 846
                Height = 65
                FixedColor = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlue
                TitleFont.Height = -14
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                OnCellClick = DBGContainerCellClick
                OnDrawColumnCell = DBGContainerDrawColumnCell
                OnKeyDown = DBGContainerKeyDown
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'COD_EQUIPAMENTO'
                    Title.Caption = 'Cod.'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTSAIDA'
                    Title.Caption = 'Dt. Saida'
                    Width = 120
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TEMPOALUGUEL'
                    Title.Caption = 'Tempo Aluguel'
                    Width = 120
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTDEVOLUCAO'
                    Title.Caption = 'Dt. Devolu'#231#227'o'
                    Width = 120
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Title.Caption = 'Valor'
                    Width = 180
                    Visible = True
                  end>
              end
            end
          end
        end
        object Panel3: TPanel
          Left = 5
          Top = 24
          Width = 860
          Height = 127
          BevelInner = bvLowered
          Color = 14933717
          TabOrder = 0
          object Label14: TLabel
            Left = 5
            Top = 47
            Width = 133
            Height = 16
            Caption = 'Produto Selecionado: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 5
            Top = 9
            Width = 100
            Height = 16
            Caption = 'Contr. Interno: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object luzformpag: TShape
            Left = 3
            Top = 24
            Width = 21
            Height = 19
            Brush.Color = clGradientActiveCaption
            Pen.Color = clGradientActiveCaption
            Visible = False
          end
          object Label11: TLabel
            Left = 206
            Top = 9
            Width = 81
            Height = 16
            Caption = 'Densidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 320
            Top = 9
            Width = 81
            Height = 16
            Caption = 'Peso Bruto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 447
            Top = 9
            Width = 96
            Height = 16
            Caption = 'Peso L'#237'quido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 569
            Top = 9
            Width = 25
            Height = 16
            Caption = 'M3:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 657
            Top = 9
            Width = 73
            Height = 16
            Caption = 'Valor Uni.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 664
            Top = 52
            Width = 41
            Height = 16
            Caption = 'Total:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 760
            Top = 9
            Width = 45
            Height = 16
            Caption = 'Desc.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 6
            Top = 65
            Width = 611
            Height = 27
          end
          object LSimilar: TLabel
            Left = 9
            Top = 68
            Width = 453
            Height = 21
            AutoSize = False
            Caption = 'PRODUTO N'#195'O ENCONTRADO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdCodInterno: TFlatEdit
            Left = 26
            Top = 26
            Width = 167
            Height = 19
            ColorFlat = 16763590
            TabOrder = 1
            OnExit = EdCodInternoExit
            OnKeyDown = EdCodInternoKeyDown
          end
          object BtnProcProd: TBitBtn
            Left = 5
            Top = 26
            Width = 19
            Height = 19
            Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnProcProdClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object EdDensidade: TFloatEdit
            Left = 205
            Top = 25
            Width = 108
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '000'
            ValueFormat = '####000'
            ValueInteger = 0
          end
          object EdPesoBruto: TFloatEdit
            Left = 320
            Top = 25
            Width = 121
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '000'
            OnExit = EdPesoBrutoExit
            ValueFormat = '####000'
            ValueInteger = 0
          end
          object EdPesoLiqui: TFloatEdit
            Left = 447
            Top = 25
            Width = 114
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            Text = '000'
            ValueFormat = '####000'
            ValueInteger = 0
          end
          object EDValUnit: TFloatEdit
            Left = 655
            Top = 25
            Width = 98
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = '0,00'
            OnExit = EDValUnitExit
            ValueFormat = '#####,##0.00'
            ValueInteger = 0
          end
          object EdTotal: TFloatEdit
            Left = 664
            Top = 68
            Width = 102
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
          object EdDesc: TFloatEdit
            Left = 761
            Top = 25
            Width = 88
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = '0'
            OnExit = EdDescExit
            ValueFormat = '###0'
            ValueInteger = 0
          end
          object BtnDeleteList: TBitBtn
            Left = 774
            Top = 72
            Width = 81
            Height = 25
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = BtnDeleteListClick
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
          end
          object BtnInsertProd: TBitBtn
            Left = 774
            Top = 49
            Width = 81
            Height = 25
            Caption = 'Inserir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = BtnInsertProdClick
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
          end
          object PUltCompra: TPanel
            Left = 6
            Top = 100
            Width = 851
            Height = 24
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = clBlue
            TabOrder = 11
            object LHistProd: TLabel
              Left = 302
              Top = 6
              Width = 71
              Height = 13
              Caption = 'LHistProd'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object LQtde: TLabel
              Left = 667
              Top = 6
              Width = 41
              Height = 13
              Alignment = taCenter
              Caption = 'LQtde'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object LHistValor: TLabel
              Left = 713
              Top = 6
              Width = 40
              Height = 13
              Alignment = taCenter
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object LHistData: TLabel
              Left = 766
              Top = 6
              Width = 70
              Height = 13
              Caption = 'LHistData'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object LHistNumDocumento: TLabel
              Left = 9
              Top = 6
              Width = 54
              Height = 13
              Caption = 'NumDoc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              Visible = False
            end
            object LHistCliente: TLabel
              Left = 96
              Top = 6
              Width = 50
              Height = 13
              Caption = 'Cliente'
              Visible = False
            end
          end
          object EDQuantidade: TFloatEdit
            Left = 566
            Top = 25
            Width = 83
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '0,00'
            OnExit = EDValUnitExit
            ValueFormat = '#####,##0.00'
            ValueInteger = 0
          end
        end
      end
      object PObra: TPanel
        Left = 7
        Top = 129
        Width = 5
        Height = 43
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 6
        Visible = False
      end
      object PContainer: TPanel
        Left = 4
        Top = 494
        Width = 869
        Height = 58
        BevelInner = bvLowered
        Color = 16772332
        TabOrder = 4
        object Label19: TLabel
          Left = 8
          Top = 6
          Width = 71
          Height = 16
          Caption = 'Container:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 357
          Top = 7
          Width = 69
          Height = 16
          Caption = 'Dt. Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 454
          Top = 7
          Width = 96
          Height = 16
          Caption = 'Tem. Aluguel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 579
          Top = 7
          Width = 73
          Height = 16
          Caption = 'Dt. Devol. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 675
          Top = 8
          Width = 42
          Height = 16
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape8: TShape
          Left = 322
          Top = 24
          Width = 21
          Height = 19
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object EdDtSaidaCon: TMaskEdit
          Left = 355
          Top = 24
          Width = 90
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ReadOnly = True
          TabOrder = 3
          Text = '  /  /    '
        end
        object EdTemAluguel: TEdit
          Left = 453
          Top = 24
          Width = 116
          Height = 21
          TabOrder = 4
          OnExit = EdTemAluguelExit
        end
        object EdDtDevolucao: TMaskEdit
          Left = 577
          Top = 24
          Width = 90
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          ReadOnly = True
          TabOrder = 5
          Text = '  /  /    '
        end
        object EdValor: TFloatEdit
          Left = 675
          Top = 24
          Width = 94
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = '0,00'
          ValueFormat = '###,##0.00'
          ValueInteger = 0
        end
        object BtOpenContainer: TBitBtn
          Left = 324
          Top = 24
          Width = 19
          Height = 19
          Hint = 'Pressione para selecionar um forma de pagamento para o pedido'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtOpenContainerClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object BtInserirCon: TBitBtn
          Left = 784
          Top = 4
          Width = 80
          Height = 25
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          Caption = '&Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtInserirConClick
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
        object EdCodCon: TEdit
          Left = 8
          Top = 24
          Width = 63
          Height = 21
          TabOrder = 0
          OnExit = EdCodConExit
          OnKeyDown = EdCodConKeyDown
        end
        object EdDescCon: TFlatEdit
          Left = 72
          Top = 24
          Width = 249
          Height = 20
          TabStop = False
          ColorFlat = 16121836
          ReadOnly = True
          TabOrder = 1
        end
        object BtExcluirCon: TBitBtn
          Left = 784
          Top = 29
          Width = 80
          Height = 25
          Caption = 'Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = BtExcluirConClick
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
        end
      end
      object PCodNomeMoto: TPanel
        Left = 338
        Top = 63
        Width = 365
        Height = 50
        Color = clWhite
        TabOrder = 5
        object DBMotorista: TDBGrid
          Left = 0
          Top = 1
          Width = 364
          Height = 48
          Color = clWhite
          DataSource = DMESTOQUE.DSAlx
          FixedColor = clMoneyGreen
          Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = 'BankGothic Md BT'
          TitleFont.Style = []
          OnCellClick = DBMotoristaCellClick
          OnExit = DBMotoristaExit
          OnKeyDown = DBMotoristaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_FUNC'
              Title.Color = clBlack
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 280
              Visible = True
            end>
        end
      end
    end
    inherited Panel1: TPanel
      Left = 3
      Top = 1
      Width = 876
      object Label36: TLabel [0]
        Left = 554
        Top = 9
        Width = 30
        Height = 17
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel [1]
        Left = 728
        Top = 9
        Width = 19
        Height = 17
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdValorPed: TColorEditFloat
        Left = 749
        Top = 4
        Width = 121
        Height = 23
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '0,00'
        OnExit = EdValorPedExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBNumPed: TFlatEdit
        Left = 585
        Top = 4
        Width = 121
        Height = 23
        ColorBorder = clBlack
        ColorFlat = clActiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = 'DBNumPed'
      end
    end
  end
  inherited PConsulta: TPanel
    Left = 11
    Top = 31
    Width = 881
    Height = 595
    OnExit = nil
    inherited Painel: TPanel [0]
      Width = 877
      inherited BtnApagar: TBitBtn
        Width = 116
      end
      inherited BtnConsultar: TBitBtn
        Left = 231
        Width = 117
      end
      inherited BtnRelatorio: TBitBtn
        Left = 347
        Width = 119
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Left = 465
        Width = 118
      end
      object BtAluguel: TBitBtn
        Left = 582
        Top = 2
        Width = 112
        Height = 25
        Caption = 'Aluguel'
        TabOrder = 5
        OnClick = BtAluguelClick
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
    end
    inherited GroupBox1: TGroupBox [1]
      Left = 498
      Top = 179
      Width = 11
      Height = 11
      inherited BtnSelecionar: TBitBtn [0]
        Left = 359
        Top = 32
        Width = 10
        Height = 9
        Visible = False
      end
      inherited EdNome: TFlatEdit [1]
        Left = 366
        Top = 30
        Width = 11
        Height = 11
        Text = ''
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 450
      Top = 176
      Width = 11
      Height = 11
    end
    object PPedidoVenda: TGroupBox
      Left = -7
      Top = 261
      Width = 878
      Height = 338
      Caption = 'Pedidos de venda / Localizar - F2'
      TabOrder = 4
      object Label34: TLabel
        Left = 10
        Top = 19
        Width = 57
        Height = 16
        Caption = 'N'#176' Ped.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 138
        Top = 19
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGPedidoPadrao: TDBGrid
        Left = 9
        Top = 61
        Width = 866
        Height = 264
        DataSource = DMSAIDA.DWPedV
        FixedColor = clSkyBlue
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGPedidoPadraoDrawColumnCell
        OnKeyDown = DBGPedidoPadraoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPED'
            Title.Caption = 'N'#176' Pedido'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'ST'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Title.Caption = 'Situa'#231#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COBRANCA'
            Title.Caption = 'Cobranca'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMPAG'
            Title.Caption = 'Pagamento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPEDVEN'
            Title.Caption = 'Data'
            Width = 60
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
            FieldName = 'NOMECLI'
            Title.Caption = 'Cliente'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_USUARIO'
            Title.Caption = 'Usuario'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR'
            Title.Caption = 'Vendedor'
            Visible = True
          end>
      end
      object EdNPedVenda: TEdit
        Left = 10
        Top = 37
        Width = 121
        Height = 21
        TabOrder = 1
        OnKeyDown = EdNPedVendaKeyDown
      end
      object EdClienteVenda: TEdit
        Left = 138
        Top = 37
        Width = 727
        Height = 21
        TabOrder = 2
        OnKeyDown = EdClienteVendaKeyDown
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 223
      Width = 877
      Height = 29
      BevelInner = bvLowered
      Color = 16772332
      TabOrder = 5
      object BtnTroca: TBitBtn
        Left = 111
        Top = 2
        Width = 108
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancel. Fech'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
      object BtnFechaPed: TBitBtn
        Left = 2
        Top = 2
        Width = 111
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha o pedido selecionado na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnFechaPedClick
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
      object BtnExporta: TBitBtn
        Left = 643
        Top = 2
        Width = 115
        Height = 25
        Caption = 'Exporta'
        TabOrder = 2
        OnClick = BtnExportaClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000000000000000
          00FF010101FF010101FF010101FF010101FF191919FF5A5A5AFF5E5E5EFF1B1B
          1BFF010101FF010101FF010101FF010101FF000000FF00000000000000000505
          05FF1F1F1FFF222222FF222222FF222222FF2E2E2EFF5A5A5AFF5B5B5BFF2E2E
          2EFF1F1F1FFF1E1F1EFF1E1E1EFF1B1B1BFF060606FF00000000000000001A1A
          1AFF626262FF5A5656FF484242FF4B4545FF686363FFBDAB98FFC4B09CFF6D69
          69FF474141FF433D3DFF4B4646FF5C5C5CFF1F1F1FFF00000000000000002F2F
          2FFF7D7D7DFF716F6FFF6A6868FF6B6969FF7A7979FFA29C97FFA49C95FF7A79
          79FF666464FF636161FF656363FF6C6C6CFF303030FF00000000000000003434
          34FFDEDEDEFFB8B8B8FFB8B8B8FFB8B8B8FFB3B2B1FFB0AEAAFFADACA8FFAEAD
          ABFFB5B5B5FFBDBDBDFFBDBDBDFFB5B5B5FF323232FF00000000000000001A1A
          1AFFC6C6C6FFC7C7C7FFBFBEBBFFA7A08EFF83785AFF6F6443FF6D6241FF7C71
          53FF97907CFFA5A4A0FFA5A4A4FF909090FF171717FF00000000000000000B0B
          0BFFCDCDCDFFD7D7D6FFB0A891FF786630FF8F7314FFB89B1BFFC3A733FFA086
          20FF73602AFF9A9279FFB4B3B2FF8E8D8DFF0F0F0FFF00000000000000000101
          01FFC7C7C7FFDCDBD8FFA08851FFCDAE1CFFEAD843FFFBF1B3FFF4E468FFEEDC
          54FFD2B41AFF9D8442FFB7B5B1FF8B8B8BFF070707FF00000000000000000000
          00FFB8B8B8FFD5CDC1FFB6880EFFECCF39FFF2D350FFF9D55DFFF6CB38FFF5D4
          51FFF6E281FFD5B03FFFB1A796FF868686FF000000FF00000000000000000000
          00FFA7A7A7FFB69568FFC9940FFFE9B92DFFF0BC37FFF9CE5DFFFAD164FFFBD2
          66FFF1C649FFECC756FFAA864BFF7A7A7AFF000000FF00000000000000000000
          00FF959595FFA7743BFFCD8F1DFFF8D069FFE8AB2EFFE39F17FFEFB840FFEAAC
          2BFFDB960FFFCC890EFFA4702EFF6E6E6EFF000000FF00000000000000000000
          0000838383FFAF7B47FFD29D50FFECB953FFDA931DFFD48911FFE3A432FFDE9C
          27FFD38D24FFCC9449FFA56F3DFF626262FF0000000000000000000000000000
          0000717171FFC5A084FFD6AD82FFE4BC83FFCF9D64FFCE995DFFE7BB75FFDBA9
          66FFE6BC7BFFD3A982FFA98268FF545454FF0000000000000000000000000000
          00005E5E5EFFEBE7E5FFBA8B72FFD7BBA4FFD4B599FFD0AE93FFD5B393FFD5B5
          98FFE6C8A4FFBD8C6DFFC4BEBAFF4B4B4BFF0000000000000000000000000000
          0000404040FFEEEEEEFFDBCEC8FFC09884FFDECABFFFDDCCC2FFE2CFC2FFE8D1
          BFFFBA917DFFBFB0A9FFC6C6C6FF383838FF0000000000000000000000000000
          0000000000001C1C1CFF1C1C1CFF1A1B14FF472614FF755746FF795643FF4424
          14FF1C1612FF191919FF171717FF000000000000000000000000}
      end
      object BtnSincronizar: TBitBtn
        Left = 757
        Top = 2
        Width = 117
        Height = 25
        Hint = 'Precione para sincronizar os bancos de dados'
        Caption = 'Sincroniza'
        TabOrder = 3
        OnClick = BtnSincronizarClick
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBF8C4E3C7F3F7F2FBFA
          F8C2E7C99EDDAE9DDAAAC1E3C6FBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1DF47B65B77C78675D59237DA76
          46D97B4ECA703FB85779C381F2F7F2FFFFFFFFFFFFFCFCFCF6F6F6EBEBEBDADA
          DAC9C9C9BCBCBCB4B4B4B7B3B698A99751BE685BD88459EA9652F19856D58162
          C6794FBF6532B04688C58CFFFEFEF6F6F6DCDCDCB8B8B89C9C9C9A9A9AA4A4A4
          ADADADB2B2B2B4B0B48FA08E72C58195E7B088F3B25EC3796887698E9B8D90B2
          9155B15E3CA946DCECDCFAFAFAE5E5E5B2B2B2BCBCBCE1E1E1FFFFFFFFFFFFFF
          FFFFFEFAFFC1D2C297CF9DB4E9C2ACEEC08ED69C829680AB9CA9EDDEEAD6E3D4
          7BBD7CDFEFDFFFFFFFF2F2F2B5B5B5C9C9C9E7E7E7FEFEFEFFFFFFFEFEFEF2F1
          F2D9DCD99BBB9B8EB48F88AE8880A881849C8682B38FA2DBB0AADFB5A0D5A7E7
          F3E8FFFFFFEFEFEFB2B2B2C9C9C9DFDFDFE2E2E2DCDCDCD8D8D8D6D5D6D2D2D2
          67AA6A83B084CAC2C9C6BCC5B0B2B06BCA8545D8774ACD7144BC5DB5DBB8FFFF
          FFEFEFEFC3C3C3B5B5B59696968888888282828383838786878B878A4196463A
          B0487BA97D93A593AFBFAE7ECC9357E89266E29363CB7DB4DAB6FFFFFFFDFDFD
          E1E1E19A9A9A959595AFAFAFBEBEBEC6C6C6C4C3C4C0BABF8DAB8D54B86075CF
          867FC98E81D69986F3B38FF6BB9FE6B5A8E0B5B9DCBAFFFFFFFBFBFBC5C5C5C2
          C2C2E8E8E8FFFFFFFFFFFFFFFFFFF7F7F7E3E2E3CECBCE82AB8266BB718ADC9D
          98E9B286E5A685D29599CC9C7FC487B8DBBAFFFFFFF0F0F0B2B2B2C8C8C8E6E6
          E6FCFCFCFEFEFEFBFBFBEDEDEDDDDDDDCFCED0BFBBBF90A59074A3776FA37471
          9974D6E0D5FFFFFFC9E2C9EAF4EAFFFFFFEFEFEFB2B2B2C8C8C8D5D5D5D2D2D2
          CACACAC5C5C5C2C2C2C0C0C0C0C0C0C0C0C0C6C2C6C2BDC1B4B1B39D989CEDEA
          EDFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0C5C5C5A8A8A88989898080807F7F7F82
          82828585858585858484848484848787878F8F8FB8B8B8D0CFD0EDEDEDFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEDBDBDBA0A0A0AEAEAECECECEDDDDDDE4E4E4DDDD
          DDCECECEBEBEBEACACAC9D9D9D9191919A9A9AEAEAEAFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF7F7F7BDBDBDC7C7C7EBEBEBFFFFFFFFFFFFFFFFFFF4F4F4DFDFDF
          CBCBCBB7B7B7ACACACA7A7A79C9C9CA7A7A7F4F4F4FFFFFFFFFFFFFFFFFFFFFF
          FFEFEFEFB2B2B2C6C6C6E7E7E7FDFDFDFFFFFFFDFDFDF4F4F4E7E7E7D8D8D8C7
          C7C7B9B9B9ABABAB999999919191E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEE
          B5B5B5D4D4D4E5E5E5ECECECF0F0F0F3F3F3F7F7F7F8F8F8F4F4F4F0F0F0E8E8
          E8DDDDDDC9C9C9A2A2A2E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DDDDDDCA
          CACAC0C0C0CACACAD4D4D4DDDDDDE3E3E3E4E4E4DFDFDFD6D6D6CBCBCBBEBEBE
          BCBCBCD7D7D7F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAD7D7
          D7CCCCCCC6C6C6C2C2C2C3C3C3C2C2C2BCBCBCBCBCBCBEBEBEC8C8C8DDDDDDFE
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 40
      Width = 877
      Height = 175
      Caption = 'Ve'#237'culos no P'#225'tio: / Localizar - F2 '
      TabOrder = 3
      object Label31: TLabel
        Left = 10
        Top = 16
        Width = 58
        Height = 16
        Caption = 'N'#186' Ped.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 140
        Top = 16
        Width = 45
        Height = 16
        Caption = 'Placa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 270
        Top = 16
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtSaida: TBitBtn
        Left = 785
        Top = 11
        Width = 84
        Height = 46
        Caption = 'Sa'#237'da - F9'
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
      object EdNPedSaida: TEdit
        Left = 10
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 1
        OnKeyDown = EdNPedSaidaKeyDown
      end
      object EdPlacaSaida: TEdit
        Left = 140
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 2
        OnKeyDown = EdPlacaSaidaKeyDown
      end
      object EdClienteSaida: TEdit
        Left = 270
        Top = 34
        Width = 507
        Height = 21
        TabOrder = 3
        OnKeyDown = EdClienteSaidaKeyDown
      end
      object DBGVeiculoPatio: TDBGrid
        Left = 1
        Top = 60
        Width = 871
        Height = 110
        Color = 15794175
        DataSource = DMSAIDA.DAlx
        FixedColor = clSkyBlue
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGVeiculoPatioDrawColumnCell
        OnKeyDown = DBGVeiculoPatioKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPED'
            ImeName = 'NOMECLI'
            Title.Caption = 'N'#176' Pedido'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Title.Caption = 'Placa'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLI'
            Title.Caption = 'Cliente'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Visible = True
          end>
      end
    end
  end
  object PEndereco: TPanel [9]
    Left = 232
    Top = 264
    Width = 465
    Height = 145
    BevelInner = bvLowered
    TabOrder = 5
    object Label40: TLabel
      Left = 8
      Top = 24
      Width = 147
      Height = 13
      Caption = 'Endere'#231'o do banco de dados :'
      Color = clSkyBlue
      ParentColor = False
    end
    object Shape12: TShape
      Left = 2
      Top = 2
      Width = 461
      Height = 141
      Brush.Color = clSkyBlue
    end
    object BtIniciar: TBitBtn
      Left = 104
      Top = 104
      Width = 105
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = BtIniciarClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBF8C4E3C7F3F7F2FBFA
        F8C2E7C99EDDAE9DDAAAC1E3C6FBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1DF47B65B77C78675D59237DA76
        46D97B4ECA703FB85779C381F2F7F2FFFFFFFFFFFFFCFCFCF6F6F6EBEBEBDADA
        DAC9C9C9BCBCBCB4B4B4B7B3B698A99751BE685BD88459EA9652F19856D58162
        C6794FBF6532B04688C58CFFFEFEF6F6F6DCDCDCB8B8B89C9C9C9A9A9AA4A4A4
        ADADADB2B2B2B4B0B48FA08E72C58195E7B088F3B25EC3796887698E9B8D90B2
        9155B15E3CA946DCECDCFAFAFAE5E5E5B2B2B2BCBCBCE1E1E1FFFFFFFFFFFFFF
        FFFFFEFAFFC1D2C297CF9DB4E9C2ACEEC08ED69C829680AB9CA9EDDEEAD6E3D4
        7BBD7CDFEFDFFFFFFFF2F2F2B5B5B5C9C9C9E7E7E7FEFEFEFFFFFFFEFEFEF2F1
        F2D9DCD99BBB9B8EB48F88AE8880A881849C8682B38FA2DBB0AADFB5A0D5A7E7
        F3E8FFFFFFEFEFEFB2B2B2C9C9C9DFDFDFE2E2E2DCDCDCD8D8D8D6D5D6D2D2D2
        67AA6A83B084CAC2C9C6BCC5B0B2B06BCA8545D8774ACD7144BC5DB5DBB8FFFF
        FFEFEFEFC3C3C3B5B5B59696968888888282828383838786878B878A4196463A
        B0487BA97D93A593AFBFAE7ECC9357E89266E29363CB7DB4DAB6FFFFFFFDFDFD
        E1E1E19A9A9A959595AFAFAFBEBEBEC6C6C6C4C3C4C0BABF8DAB8D54B86075CF
        867FC98E81D69986F3B38FF6BB9FE6B5A8E0B5B9DCBAFFFFFFFBFBFBC5C5C5C2
        C2C2E8E8E8FFFFFFFFFFFFFFFFFFF7F7F7E3E2E3CECBCE82AB8266BB718ADC9D
        98E9B286E5A685D29599CC9C7FC487B8DBBAFFFFFFF0F0F0B2B2B2C8C8C8E6E6
        E6FCFCFCFEFEFEFBFBFBEDEDEDDDDDDDCFCED0BFBBBF90A59074A3776FA37471
        9974D6E0D5FFFFFFC9E2C9EAF4EAFFFFFFEFEFEFB2B2B2C8C8C8D5D5D5D2D2D2
        CACACAC5C5C5C2C2C2C0C0C0C0C0C0C0C0C0C6C2C6C2BDC1B4B1B39D989CEDEA
        EDFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0C5C5C5A8A8A88989898080807F7F7F82
        82828585858585858484848484848787878F8F8FB8B8B8D0CFD0EDEDEDFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEDBDBDBA0A0A0AEAEAECECECEDDDDDDE4E4E4DDDD
        DDCECECEBEBEBEACACAC9D9D9D9191919A9A9AEAEAEAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F7F7BDBDBDC7C7C7EBEBEBFFFFFFFFFFFFFFFFFFF4F4F4DFDFDF
        CBCBCBB7B7B7ACACACA7A7A79C9C9CA7A7A7F4F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFEFEFEFB2B2B2C6C6C6E7E7E7FDFDFDFFFFFFFDFDFDF4F4F4E7E7E7D8D8D8C7
        C7C7B9B9B9ABABAB999999919191E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEE
        B5B5B5D4D4D4E5E5E5ECECECF0F0F0F3F3F3F7F7F7F8F8F8F4F4F4F0F0F0E8E8
        E8DDDDDDC9C9C9A2A2A2E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DDDDDDCA
        CACAC0C0C0CACACAD4D4D4DDDDDDE3E3E3E4E4E4DFDFDFD6D6D6CBCBCBBEBEBE
        BCBCBCD7D7D7F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAD7D7
        D7CCCCCCC6C6C6C2C2C2C3C3C3C2C2C2BCBCBCBCBCBCBEBEBEC8C8C8DDDDDDFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
    end
    object EdEndereco: TFlatEdit
      Left = 8
      Top = 40
      Width = 422
      Height = 19
      ColorFlat = clBtnFace
      ParentColor = True
      TabOrder = 1
    end
    object BtProcurar: TBitBtn
      Left = 433
      Top = 40
      Width = 21
      Height = 21
      Caption = '...'
      TabOrder = 2
      OnClick = BtProcurarClick
    end
    object BtCancelar: TButton
      Left = 256
      Top = 104
      Width = 105
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BtCancelarClick
    end
    object BtDescompacta: TBitBtn
      Left = 104
      Top = 104
      Width = 105
      Height = 25
      Caption = 'Descompacta'
      TabOrder = 4
      OnClick = BtDescompactaClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FBF8C4E3C7F3F7F2FBFA
        F8C2E7C99EDDAE9DDAAAC1E3C6FBFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF1DF47B65B77C78675D59237DA76
        46D97B4ECA703FB85779C381F2F7F2FFFFFFFFFFFFFCFCFCF6F6F6EBEBEBDADA
        DAC9C9C9BCBCBCB4B4B4B7B3B698A99751BE685BD88459EA9652F19856D58162
        C6794FBF6532B04688C58CFFFEFEF6F6F6DCDCDCB8B8B89C9C9C9A9A9AA4A4A4
        ADADADB2B2B2B4B0B48FA08E72C58195E7B088F3B25EC3796887698E9B8D90B2
        9155B15E3CA946DCECDCFAFAFAE5E5E5B2B2B2BCBCBCE1E1E1FFFFFFFFFFFFFF
        FFFFFEFAFFC1D2C297CF9DB4E9C2ACEEC08ED69C829680AB9CA9EDDEEAD6E3D4
        7BBD7CDFEFDFFFFFFFF2F2F2B5B5B5C9C9C9E7E7E7FEFEFEFFFFFFFEFEFEF2F1
        F2D9DCD99BBB9B8EB48F88AE8880A881849C8682B38FA2DBB0AADFB5A0D5A7E7
        F3E8FFFFFFEFEFEFB2B2B2C9C9C9DFDFDFE2E2E2DCDCDCD8D8D8D6D5D6D2D2D2
        67AA6A83B084CAC2C9C6BCC5B0B2B06BCA8545D8774ACD7144BC5DB5DBB8FFFF
        FFEFEFEFC3C3C3B5B5B59696968888888282828383838786878B878A4196463A
        B0487BA97D93A593AFBFAE7ECC9357E89266E29363CB7DB4DAB6FFFFFFFDFDFD
        E1E1E19A9A9A959595AFAFAFBEBEBEC6C6C6C4C3C4C0BABF8DAB8D54B86075CF
        867FC98E81D69986F3B38FF6BB9FE6B5A8E0B5B9DCBAFFFFFFFBFBFBC5C5C5C2
        C2C2E8E8E8FFFFFFFFFFFFFFFFFFF7F7F7E3E2E3CECBCE82AB8266BB718ADC9D
        98E9B286E5A685D29599CC9C7FC487B8DBBAFFFFFFF0F0F0B2B2B2C8C8C8E6E6
        E6FCFCFCFEFEFEFBFBFBEDEDEDDDDDDDCFCED0BFBBBF90A59074A3776FA37471
        9974D6E0D5FFFFFFC9E2C9EAF4EAFFFFFFEFEFEFB2B2B2C8C8C8D5D5D5D2D2D2
        CACACAC5C5C5C2C2C2C0C0C0C0C0C0C0C0C0C6C2C6C2BDC1B4B1B39D989CEDEA
        EDFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0C5C5C5A8A8A88989898080807F7F7F82
        82828585858585858484848484848787878F8F8FB8B8B8D0CFD0EDEDEDFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEDBDBDBA0A0A0AEAEAECECECEDDDDDDE4E4E4DDDD
        DDCECECEBEBEBEACACAC9D9D9D9191919A9A9AEAEAEAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F7F7BDBDBDC7C7C7EBEBEBFFFFFFFFFFFFFFFFFFF4F4F4DFDFDF
        CBCBCBB7B7B7ACACACA7A7A79C9C9CA7A7A7F4F4F4FFFFFFFFFFFFFFFFFFFFFF
        FFEFEFEFB2B2B2C6C6C6E7E7E7FDFDFDFFFFFFFDFDFDF4F4F4E7E7E7D8D8D8C7
        C7C7B9B9B9ABABAB999999919191E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFEEEEEE
        B5B5B5D4D4D4E5E5E5ECECECF0F0F0F3F3F3F7F7F7F8F8F8F4F4F4F0F0F0E8E8
        E8DDDDDDC9C9C9A2A2A2E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3DDDDDDCA
        CACAC0C0C0CACACAD4D4D4DDDDDDE3E3E3E4E4E4DFDFDFD6D6D6CBCBCBBEBEBE
        BCBCBCD7D7D7F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAD7D7
        D7CCCCCCC6C6C6C2C2C2C3C3C3C2C2C2BCBCBCBCBCBCBEBEBEC8C8C8DDDDDDFE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
    end
  end
  object PPesquisaObra: TPanel [10]
    Left = 301
    Top = 208
    Width = 356
    Height = 202
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 6
    object GroupBox2: TGroupBox
      Left = 4
      Top = 8
      Width = 350
      Height = 190
      Caption = 'Relat'#243'rio de Obras por Per'#237'odo: '
      TabOrder = 0
      object LUZOPEN: TShape
        Left = 323
        Top = 70
        Width = 22
        Height = 24
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object Label43: TLabel
        Left = 36
        Top = 27
        Width = 25
        Height = 20
        Caption = 'De:'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label44: TLabel
        Left = 182
        Top = 27
        Width = 9
        Height = 20
        Caption = #225
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label47: TLabel
        Left = 7
        Top = 57
        Width = 54
        Height = 13
        Caption = 'Cod. Obra.:'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label48: TLabel
        Left = 74
        Top = 57
        Width = 60
        Height = 13
        Caption = 'Desc. Obra.:'
        Color = 16772332
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object EdDescObraRel: TFlatEdit
        Left = 72
        Top = 73
        Width = 248
        Height = 19
        ColorFlat = 16772332
        ParentColor = True
        TabOrder = 3
      end
      object EdCodObraRel: TEdit
        Left = 5
        Top = 73
        Width = 65
        Height = 21
        TabOrder = 2
        OnExit = EdCodObraRelExit
      end
      object GroupBox5: TGroupBox
        Left = 6
        Top = 139
        Width = 338
        Height = 46
        Color = 16772332
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 5
        object GroupBox7: TGroupBox
          Left = 36
          Top = 6
          Width = 95
          Height = 35
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object BtnVisualizar: TBitBtn
            Left = 3
            Top = 8
            Width = 90
            Height = 25
            Hint = 
              'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
              'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
              ' sua impress'#227'o.'
            Caption = '&Visualizar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnVisualizarClick
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
        end
        object GroupBox8: TGroupBox
          Left = 210
          Top = 6
          Width = 95
          Height = 35
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object BtCancelObra: TBitBtn
            Left = 3
            Top = 8
            Width = 90
            Height = 25
            Hint = 
              'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
              'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
              ' sua impress'#227'o.'
            Caption = '&Cancelar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtCancelObraClick
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
        end
      end
      object BtPesquisaObra: TBitBtn
        Left = 325
        Top = 73
        Width = 19
        Height = 19
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BtPesquisaObraClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object CbDtInicio: TcxDateEdit
        Left = 69
        Top = 27
        Width = 97
        Height = 21
        TabOrder = 0
      end
      object CbDtFim: TcxDateEdit
        Left = 205
        Top = 27
        Width = 97
        Height = 21
        TabOrder = 1
      end
      object RGOrdena: TRadioGroup
        Left = 6
        Top = 101
        Width = 337
        Height = 39
        Caption = 'Ordenar por '
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Obra'
          'Data'
          'Motorista')
        TabOrder = 6
      end
    end
  end
  object PRel: TPanel [11]
    Left = 272
    Top = 194
    Width = 393
    Height = 234
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 7
    Visible = False
    object Label51: TLabel
      Left = 20
      Top = 109
      Width = 72
      Height = 18
      Caption = 'Empresa:'
      Color = 16772332
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label52: TLabel
      Left = 14
      Top = 4
      Width = 217
      Height = 16
      Caption = 'Filtros de Relat'#243'rio de Vendas.'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LP: TLabel
      Left = 264
      Top = 112
      Width = 7
      Height = 13
      Caption = 'P'
      Visible = False
    end
    object CBEmpresa: TComboBox
      Left = 99
      Top = 108
      Width = 164
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 0
      Text = 'Ambas'
      Items.Strings = (
        'Filial'
        'Matriz'
        'Ambas')
    end
    inline FrmCli: TFrmBusca
      Left = 16
      Top = 139
      Width = 365
      Height = 47
      Color = 16772332
      ParentColor = False
      TabOrder = 1
      inherited LTextoBusca: TLabel
        Left = 5
        Width = 57
        Height = 18
        Caption = 'Cliente:'
        Font.Height = -15
      end
      inherited LUZOPEN: TShape
        Left = 313
        Top = 18
      end
      inherited LUZMINUS: TShape
        Left = 332
        Top = 18
      end
      inherited EdDescricao: TFlatEdit
        Left = 58
        Top = 21
      end
      inherited BTNOPEN: TBitBtn
        Left = 315
        Top = 21
        Width = 17
        OnClick = FrmCliBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 333
        Top = 21
        OnClick = FrmCliBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Left = 5
        Top = 21
        Width = 52
        OnKeyDown = FrmCliEDCodigoKeyDown
      end
    end
    object BtGeraRel: TBitBtn
      Left = 91
      Top = 194
      Width = 90
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Visualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtGeraRelClick
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
    object BtCanRel: TBitBtn
      Left = 203
      Top = 194
      Width = 90
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtCanRelClick
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
    object RGPed: TRadioGroup
      Left = 272
      Top = 34
      Width = 115
      Height = 61
      Caption = 'Pedidos '
      ItemIndex = 1
      Items.Strings = (
        'Abertos'
        'Fechados')
      TabOrder = 4
    end
    object GroupBox6: TGroupBox
      Left = 14
      Top = 34
      Width = 249
      Height = 60
      Caption = 'Intervalo de datas'
      Color = 16772332
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 5
      object Label49: TLabel
        Left = 8
        Top = 16
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object Label50: TLabel
        Left = 128
        Top = 18
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDataIni: TMaskEdit
        Left = 8
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EdDataFim: TMaskEdit
        Left = 128
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
  end
  object PFinanceiro: TPanel [12]
    Left = 221
    Top = 192
    Width = 497
    Height = 239
    BevelWidth = 4
    Color = clBlack
    TabOrder = 8
    Visible = False
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 227
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
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label38: TLabel
        Left = 8
        Top = 61
        Width = 116
        Height = 20
        Caption = 'Pagamento em :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LTotMostraCheque: TLabel
        Left = 80
        Top = 103
        Width = 101
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object PChqTerceiro: TPanel
        Left = 188
        Top = 58
        Width = 217
        Height = 166
        BevelWidth = 3
        Color = clInactiveCaptionText
        Enabled = False
        TabOrder = 10
        Visible = False
        object Shape11: TShape
          Left = 168
          Top = 6
          Width = 22
          Height = 24
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Shape = stRoundRect
          Visible = False
        end
        object LUZMINUS: TShape
          Left = 189
          Top = 6
          Width = 22
          Height = 24
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Shape = stRoundRect
          Visible = False
        end
        object LTotalChq: TDRLabel
          Left = 8
          Top = 140
          Width = 116
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          HiColor = clBlue
          LoColor = clNavy
          Border = boNone
          Ctl3D = True
          BlinkInterval = 300
          Blink = blNone
          Deep = 1
        end
        object DBText7: TDBText
          Left = 24
          Top = 30
          Width = 134
          Height = 17
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = DMBANCO.DWChequeRec
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BTNOPEN: TBitBtn
          Left = 171
          Top = 9
          Width = 19
          Height = 19
          Hint = 'Pressione para Inserir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Glyph.Data = {
            F6000000424DF600000000000000360000002800000007000000080000000100
            180000000000C000000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFA53C00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA53C00A53C00A53C
            00FFFFFFFFFFFF000000FFFFFFA53C00A53C00FFFFFFA53C00A53C00FFFFFF00
            0000A53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00000000FFFFFFFFFFFF
            FFFFFFA53C00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA53C00A53C00A53C
            00FFFFFFFFFFFF000000FFFFFFA53C00A53C00FFFFFFA53C00A53C00FFFFFF00
            0000A53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00000000}
        end
        object BTNMINUS: TBitBtn
          Left = 190
          Top = 9
          Width = 19
          Height = 19
          Hint = 'Pressione para apagar '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Glyph.Data = {
            F6000000424DF600000000000000360000002800000007000000080000000100
            180000000000C0000000000000000000000000000000000000000000FF0000FF
            FFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFF0000FF0000FFFFFFFF0000
            FF0000FFFFFFFF000000FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000000000FF0000FF
            FFFFFFFFFFFFFFFFFF0000FF0000FF000000FFFFFF0000FF0000FFFFFFFF0000
            FF0000FFFFFFFF000000FFFFFFFFFFFF0000FF0000FF0000FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF000000}
        end
        object DBGrid2: TDBGrid
          Left = 6
          Top = 45
          Width = 205
          Height = 94
          Ctl3D = False
          DataSource = DMBANCO.Dalx
          FixedColor = clInfoBk
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMCHEQUE'
              Title.Caption = 'N'#186' Cheque:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO'
              Title.Caption = 'Banco:'
              Visible = True
            end>
        end
        object BtnFechaChqTerc: TBitBtn
          Left = 190
          Top = 142
          Width = 19
          Height = 19
          Hint = 'Pressione para apagar '
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
        object DBCBCHEQUE: TDBLookupComboBox
          Left = 8
          Top = 8
          Width = 153
          Height = 21
          KeyField = 'COD_CHEQUEREC'
          ListField = 'NUMCHEQUE; VALOR'
          ListSource = DMBANCO.DWChequeRec
          TabOrder = 4
        end
      end
      object PMostraCta: TPanel
        Left = 187
        Top = 68
        Width = 286
        Height = 45
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 9
        Visible = False
        object DBText1: TDBText
          Left = 8
          Top = 15
          Width = 41
          Height = 12
          Alignment = taRightJustify
          DataField = 'NUMAGENCIA'
          DataSource = DMBANCO.DWCtaCor
        end
        object DBText2: TDBText
          Left = 8
          Top = 29
          Width = 181
          Height = 17
          DataField = 'DESCBANCO'
          DataSource = DMBANCO.DWCtaCor
        end
        object Label39: TLabel
          Left = 51
          Top = 15
          Width = 5
          Height = 13
          Caption = '/'
        end
        object DBText3: TDBText
          Left = 58
          Top = 15
          Width = 105
          Height = 12
          DataField = 'NUMCTACOR'
          DataSource = DMBANCO.DWCtaCor
        end
      end
      object CBPagamento: TComboBox
        Left = 9
        Top = 82
        Width = 176
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'Carteira'
        OnExit = CBPagamentoExit
        OnKeyPress = CBPagamentoKeyPress
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o'
          'Chq. Terc.'
          'Banco')
      end
      inline FrmMoeda: TFrmBusca
        Left = 6
        Top = 23
        Width = 478
        Height = 43
        Enabled = False
        Color = 16772332
        ParentColor = False
        TabOrder = 8
        inherited LTextoBusca: TLabel
          Width = 168
          Caption = 'Moeda para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 429
        end
        inherited LUZMINUS: TShape
          Left = 453
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
        end
        inherited BTNOPEN: TBitBtn
          Left = 428
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
        end
      end
      inline FrmConta: TFrmBusca
        Left = 7
        Top = 114
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Width = 164
          Caption = 'Conta para Lan'#231'amento:'
        end
        inherited LUZOPEN: TShape
          Left = 426
          Top = 39
        end
        inherited LUZMINUS: TShape
          Left = 450
          Top = 39
        end
        inherited EdDescricao: TFlatEdit
          Left = 2
          Top = 42
          Width = 423
          TabOrder = 1
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
          TabOrder = 2
          OnClick = FrmContaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
          TabOrder = 3
          OnClick = FrmContaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 151
        end
      end
      object GBFRETE: TGroupBox
        Left = 10
        Top = 182
        Width = 465
        Height = 105
        Caption = 'DADOS REFERENTE AO FRETE'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Visible = False
        object Label45: TLabel
          Left = 25
          Top = 60
          Width = 108
          Height = 16
          Caption = 'Pagamento em :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object PBanco1: TPanel
          Left = 158
          Top = 11
          Width = 283
          Height = 89
          BevelWidth = 3
          Enabled = False
          TabOrder = 2
          Visible = False
          object DBGCTA1: TDBGrid
            Left = 5
            Top = 6
            Width = 273
            Height = 76
            Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
            Color = 16121836
            Ctl3D = False
            DataSource = DMBANCO.DWCtaCor
            Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = [fsBold]
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
        inline FrmFormPagFrete: TFrmBusca
          Left = 23
          Top = 17
          Width = 418
          Height = 43
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Width = 139
            Caption = 'Forma de Pagamento'
          end
          inherited LUZOPEN: TShape
            Left = 393
            Width = 23
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 313
          end
          inherited EdDescricao: TFlatEdit
            Width = 317
            ColorFlat = clWhite
          end
          inherited BTNOPEN: TBitBtn
            Left = 392
          end
          inherited BTNMINUS: TBitBtn
            Left = 310
            Visible = False
          end
          inherited EDCodigo: TFlatEdit
            ColorFlat = clLightGreen
          end
        end
        object CBPagamento1: TComboBox
          Left = 26
          Top = 75
          Width = 125
          Height = 22
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ItemHeight = 14
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = 'Carteira'
          Items.Strings = (
            'Carteira'
            'Cheque'
            'Cart'#227'o')
        end
        object PMostraCta1: TPanel
          Left = 156
          Top = 65
          Width = 286
          Height = 36
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 3
          Visible = False
          object DBText4: TDBText
            Left = 8
            Top = 7
            Width = 41
            Height = 12
            Alignment = taRightJustify
            DataField = 'NUMAGENCIA'
            DataSource = DMBANCO.DWCtaCor
          end
          object DBText5: TDBText
            Left = 8
            Top = 21
            Width = 181
            Height = 17
            DataField = 'DESCBANCO'
            DataSource = DMBANCO.DWCtaCor
          end
          object Label46: TLabel
            Left = 51
            Top = 7
            Width = 6
            Height = 12
            Caption = '/'
          end
          object DBText6: TDBText
            Left = 58
            Top = 7
            Width = 105
            Height = 12
            DataField = 'NUMCTACOR'
            DataSource = DMBANCO.DWCtaCor
          end
        end
      end
      object BtnMoedaOK: TBitBtn
        Left = 150
        Top = 198
        Width = 75
        Height = 25
        Caption = '&Ok'
        TabOrder = 6
        OnClick = BtnMoedaOKClick
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
      object BtnMoedaCancelar: TBitBtn
        Left = 262
        Top = 198
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 7
        OnClick = BtnMoedaCancelarClick
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
      object Panel2: TPanel
        Left = 310
        Top = 117
        Width = 163
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 3
        object LTextoBusca: TLabel
          Left = 1
          Top = -3
          Width = 155
          Height = 20
          Caption = 'Data de Fechamento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
          Left = 3
          Top = 16
          Width = 97
          Height = 22
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
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object CBGeraFinanceiro: TCheckBox
        Left = 162
        Top = 133
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object PBanco: TPanel
        Left = 194
        Top = 65
        Width = 283
        Height = 89
        BevelWidth = 3
        Enabled = False
        TabOrder = 4
        Visible = False
        object DBGCTA: TDBGrid
          Left = 5
          Top = 6
          Width = 273
          Height = 76
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
    end
  end
  inherited PComunica: TPanel
    Left = 229
    Top = 251
    Caption = ''
    object PExp: TPanel
      Left = 6
      Top = 21
      Width = 459
      Height = 56
      TabOrder = 0
      Visible = False
      object LBCONEXAO: TLabel
        Left = 8
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
        Left = 8
        Top = 29
        Width = 441
        Height = 20
        TabOrder = 0
      end
    end
  end
  inherited PTitulo: TPanel
    Width = 897
    inherited ImgTitulo: TImage
      Width = 897
    end
  end
  inherited PBotoes: TPanel
    Left = 855
    Width = 20
    inherited BtnFecha: TSpeedButton
      Top = -2
    end
    object BtnFechar: TSpeedButton
      Left = 0
      Top = 0
      Width = 21
      Height = 19
      Cursor = crHandPoint
      Hint = 'Pressione para fechar o sistema. <ESC>'
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
      OnClick = BtnFechaClick
    end
  end
  object FSRel: TfrReport
    Dataset = TBalancaSPreco
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 856
    Top = 36
    ReportForm = {18000000}
  end
  object TBalancaSPreco: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 824
    Top = 36
  end
  object PMRel: TPopupMenu
    Left = 452
    Top = 61
    object Comprovante1: TMenuItem
      Caption = 'Comprovante'
      OnClick = Comprovante1Click
    end
    object ConprovanteSPreo1: TMenuItem
      Caption = 'Conprovante s/ Pre'#231'o'
      OnClick = ConprovanteSPreo1Click
    end
    object RelatrioVendas1: TMenuItem
      Caption = 'Relat'#243'rio Vendas'
      OnClick = RelatrioVendas1Click
    end
    object RelatrioPermuta1: TMenuItem
      Caption = 'Relat'#243'rio Permuta'
      OnClick = RelatrioPermuta1Click
    end
    object RelatrioObraporPerodo1: TMenuItem
      Caption = 'Relat'#243'rio de Obra por Per'#237'odo'
      OnClick = RelatrioObraporPerodo1Click
    end
    object RelatriodeDesempenho1: TMenuItem
      Caption = 'Relat'#243'rio de Desempenho'
      OnClick = RelatriodeDesempenho1Click
    end
    object RelatrioAnalticodeVendas1: TMenuItem
      Caption = 'Relat'#243'rio Anal'#237'tico de Vendas'
      OnClick = RelatrioAnalticodeVendas1Click
    end
  end
  object PMConsultar: TPopupMenu
    Left = 335
    Top = 61
    object VeculosnoPtio1: TMenuItem
      Caption = 'Ve'#237'culos no P'#225'tio'
      OnClick = VeculosnoPtio1Click
    end
    object PedidosVenda1: TMenuItem
      Caption = 'Pedidos Venda'
      OnClick = PedidosVenda1Click
    end
  end
  object PMApagar: TPopupMenu
    Left = 215
    Top = 61
    object VeculosnoPtio2: TMenuItem
      Caption = 'Ve'#237'culos no P'#225'tio'
      OnClick = VeculosnoPtio2Click
    end
    object PedidosdeVenda1: TMenuItem
      Caption = 'Pedidos de Venda'
      OnClick = PedidosdeVenda1Click
    end
  end
  object BCK: TBackupFile
    Version = '3.00'
    BackupMode = bmAll
    CompressionLevel = clDefault
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 830
    Top = 279
  end
  object ODProcurar: TOpenDialog
    Left = 800
    Top = 280
  end
  object FSAlx: TfrReport
    Dataset = FRDSAlx
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 648
    Top = 76
    ReportForm = {18000000}
  end
  object FRDSAlx: TfrDBDataSet
    DataSource = DMESTOQUE.DSAlx
    Left = 616
    Top = 76
  end
  object RVRel: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = RVRelPrint
    Left = 861
    Top = 277
  end
end
