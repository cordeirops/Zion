inherited FOrcamentoMac: TFOrcamentoMac
  Left = 200
  Top = 107
  Caption = ''
  ClientHeight = 593
  ClientWidth = 806
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TLabel
    Left = 304
    Width = 175
    Caption = 'Or'#231'amento de Mec'#226'nica'
  end
  inherited PConsulta: TPanel [5]
    Left = 9
    Top = 39
    Width = 792
    Height = 546
    inherited GroupBox1: TGroupBox
      Width = 783
      inherited EdNome: TFlatEdit
        Left = 120
        Top = 16
        Width = 425
      end
      inherited BtnSelecionar: TBitBtn
        Left = 664
        Top = 15
      end
      object EdDataAbertura: TFlatEdit
        Left = 550
        Top = 16
        Width = 107
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
        Text = 'Data Abertura'
        OnEnter = EdDataAberturaEnter
        OnExit = EdDataAberturaExit
        OnKeyPress = EdDataAberturaKeyPress
      end
      object EDNumeroOrcMec: TFlatEdit
        Left = 8
        Top = 16
        Width = 105
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
        TabOrder = 3
        Text = 'N'#186' Or'#231'amento'
        OnEnter = EDNumeroOrcMecEnter
        OnExit = EDNumeroOrcMecExit
        OnKeyDown = EDNumeroOrcMecKeyDown
      end
    end
    inherited Painel: TPanel
      Width = 783
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 783
      Height = 424
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_ORCAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUMORC'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Or'#231'amento'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_FORMPAG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_USUARIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abert.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVALID'
          Title.Caption = 'Validade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMPAG'
          Title.Caption = 'Forma Pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_LOJA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FUNCIONARIO'
          Visible = False
        end>
    end
  end
  inherited PComunica: TPanel [6]
    Height = 102
  end
  inherited PCadastro: TPanel [7]
    Left = 9
    Top = 39
    Width = 792
    Height = 546
    inherited Panel4: TPanel
      Top = 32
      Width = 783
      Height = 505
      object lbNumFrota: TLabel
        Left = 647
        Top = 87
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero Frota:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 7566195
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 9
        Top = 120
        Width = 171
        Height = 17
        Caption = 'Contato no Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 9
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 115
        Top = 458
        Width = 76
        Height = 16
        Caption = 'Despesas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label42: TLabel
        Left = 205
        Top = 458
        Width = 60
        Height = 16
        Caption = 'Desc(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label32: TLabel
        Left = 303
        Top = 458
        Width = 67
        Height = 16
        Caption = 'Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label41: TLabel
        Left = 381
        Top = 458
        Width = 60
        Height = 16
        Caption = 'Desc(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 483
        Top = 458
        Width = 66
        Height = 16
        Caption = 'Servi'#231'os:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 581
        Top = 458
        Width = 60
        Height = 16
        Caption = 'Desc(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label34: TLabel
        Left = 716
        Top = 458
        Width = 54
        Height = 16
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      inline FrmCliente: TFrmBusca
        Left = 8
        Top = 48
        Width = 393
        Height = 38
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Width = 63
          Height = 17
          Caption = 'Cliente'
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 352
          Width = 41
        end
        inherited LUZMINUS: TShape
          Left = 352
          Width = 15
        end
        inherited EdDescricao: TFlatEdit
          Width = 279
          Height = 22
          Font.Height = -13
        end
        inherited BTNOPEN: TBitBtn
          Left = 353
          Top = 16
          Width = 16
          Height = 16
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 370
          Top = 16
          Width = 16
          Height = 16
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Height = 22
          ColorFlat = clSkyBlue
          Font.Height = -13
          OnKeyDown = FrmClienteEDCodigoKeyDown
        end
      end
      inline FrmPlaca: TFrmBusca
        Left = 408
        Top = 48
        Width = 369
        Height = 38
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Width = 45
          Height = 17
          Caption = 'Placa'
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited EdDescricao: TFlatEdit
          Left = 86
          Width = 243
          Height = 22
          Font.Height = -13
        end
        inherited BTNOPEN: TBitBtn
          Top = 16
          Width = 16
          Height = 16
          OnClick = FrmBusca2BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Top = 16
          Width = 16
          Height = 16
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 82
          Height = 22
          ColorBorder = clSilver
          ColorFlat = clSilver
          CharCase = ecUpperCase
          Font.Height = -13
          MaxLength = 8
          OnKeyDown = FrmPlacaEDCodigoKeyDown
          OnKeyPress = nil
        end
      end
      object EdObsFinanceira: TEdit
        Left = 8
        Top = 91
        Width = 353
        Height = 18
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      inline FrmFormaPag: TFrmBusca
        Left = 408
        Top = 120
        Width = 369
        Height = 38
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 162
          Height = 17
          Caption = 'Forma de Pagamento'
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited EdDescricao: TFlatEdit
          Height = 22
          Font.Height = -13
        end
        inherited BTNOPEN: TBitBtn
          Top = 16
          Width = 16
          Height = 16
          OnClick = FrmFormaPagBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Height = 22
          ColorFlat = clMoneyGreen
          Font.Height = -13
          OnKeyDown = FrmFormaPagEDCodigoKeyDown
        end
      end
      object EDContatoCliente: TEdit
        Left = 8
        Top = 136
        Width = 353
        Height = 22
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object PageControl1: TPageControl
        Left = 4
        Top = 163
        Width = 771
        Height = 286
        Cursor = crHandPoint
        ActivePage = TabSheet4
        TabOrder = 6
        object TabSheet4: TTabSheet
          Cursor = crHandPoint
          Caption = '&PRODUTOS'
          object Label1: TLabel
            Left = 328
            Top = 4
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
          object Label2: TLabel
            Left = 395
            Top = 5
            Width = 56
            Height = 16
            Caption = 'Desc %'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 464
            Top = 5
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
          object Label4: TLabel
            Left = 539
            Top = 5
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
          object lbEstoque: TLabel
            Left = 667
            Top = -3
            Width = 71
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbSaldoEstoque: TLabel
            Left = 667
            Top = 11
            Width = 71
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbProduto: TLabel
            Left = 49
            Top = 45
            Width = 55
            Height = 16
            Caption = 'Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868685
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LbLocal: TLabel
            Left = 400
            Top = 59
            Width = 26
            Height = 13
            Caption = 'Local'
            Visible = False
          end
          object LPesquisa: TLabel
            Left = 49
            Top = 1
            Width = 130
            Height = 16
            Caption = 'Pesquisar C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PListaProdutos: TPanel
            Left = 48
            Top = 75
            Width = 646
            Height = 174
            TabOrder = 9
            Visible = False
            object DBGrid1: TDBGrid
              Left = 3
              Top = 4
              Width = 638
              Height = 168
              Hint = 
                'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
                'sistema ir'#225' pesquisar pelo c'#243'digo'
              DataSource = DMESTOQUE.DWSimilar
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_ESTOQUE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CODFABRICANTE'
                  Title.Caption = 'C. Fabric.'
                  Width = 92
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Controle'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 255
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENDVARV'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Vlr.'
                  Width = 116
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'LOCALESTANTE'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Local'
                  Visible = True
                end>
            end
          end
          object ColorMaskEdit1: TColorMaskEdit
            Left = 320
            Top = 128
            Width = 121
            Height = 21
            TabOrder = 10
            Text = 'ColorMaskEdit1'
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDCodProd: TColorMaskEdit
            Left = 48
            Top = 19
            Width = 225
            Height = 24
            CharCase = ecUpperCase
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 30
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            OnKeyDown = EDCodProdKeyDown
            OnKeyUp = EDCodProdKeyUp
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BTNAddProd: TBitBtn
            Left = 10
            Top = 17
            Width = 28
            Height = 25
            Hint = 'Pressione para localizar o Produto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BTNAddProdClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object EDQtde: TColorEditFloat
            Left = 328
            Top = 21
            Width = 59
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
            OnExit = EDQtdeExit
            OnKeyPress = EDQtdeKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDescProd: TColorEditFloat
            Left = 393
            Top = 21
            Width = 64
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
            OnExit = EDDescProdExit
            OnKeyPress = EDDescProdKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDValorUnit: TColorEditFloat
            Left = 464
            Top = 21
            Width = 67
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
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDValorTotal: TColorEditFloat
            Left = 538
            Top = 21
            Width = 94
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
            TabOrder = 4
            Text = '0,00'
            OnExit = EDValorTotalExit
            OnKeyPress = EDValorTotalKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnInserirProd: TBitBtn
            Left = 663
            Top = 27
            Width = 89
            Height = 27
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            BiDiMode = bdLeftToRight
            Caption = '&INSERIR'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = BtnInserirProdClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077777707777770007777706077777000777706660777
              7000777066666077700077066666660770007000066600007000777706660777
              7000777706660777700077770666077770007777000007777000777777777777
              7000}
            Spacing = 10
          end
          object BtnRemoverProd: TBitBtn
            Left = 663
            Top = 53
            Width = 89
            Height = 23
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            BiDiMode = bdLeftToRight
            Caption = '&REMOVER'
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BtnRemoverProdClick
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777777777700077770000077770007777066607777000777706660777
              7000777706660777700070000666000070007706666666077000777066666077
              7000777706660777700077777060777770007777770777777000777777777777
              7000}
            Spacing = 10
          end
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 75
            Width = 763
            Height = 174
            Alignment = alTopLeft
            Caption = 'LISTA DE PRODUTOS'
            Ctl3D = False
            ParentCtl3D = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            TabOrder = 8
            object DBGridProdutos: TDBGrid
              Left = 1
              Top = 18
              Width = 761
              Height = 143
              Color = 15597546
              Ctl3D = False
              FixedColor = 11039232
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODPRODFABR'
                  Title.Caption = 'Cod. Fabric.'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Produto'
                  Width = 254
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COD_SIT_TRIB'
                  Title.Caption = 'S.T.'
                  Width = 32
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Caption = 'Qnt'
                  Width = 30
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNIT'
                  Title.Caption = 'V. Unit.'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Title.Caption = 'Desc %'
                  Width = 51
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTAL'
                  Title.Caption = 'V. Total'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ALIQICMS'
                  Title.Caption = 'Aliq. Icms'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRICMS'
                  Title.Caption = 'V. Icms'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Title.Caption = 'Data'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BASEICMS'
                  Title.Caption = 'B. Icms'
                  Width = 55
                  Visible = True
                end>
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = '&SERVI'#199'OS'
          ImageIndex = 1
          object Label60: TLabel
            Left = 8
            Top = 2
            Width = 66
            Height = 18
            Caption = 'Servi'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 663
            Top = -1
            Width = 94
            Height = 18
            Caption = 'Valor Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 477
            Top = 48
            Width = 31
            Height = 16
            Caption = 'Qtd:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label61: TLabel
            Left = 394
            Top = 49
            Width = 43
            Height = 16
            Caption = 'Valor:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label63: TLabel
            Left = 530
            Top = 48
            Width = 61
            Height = 16
            Caption = 'Desc %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EDDescricaoServ: TEdit
            Left = 8
            Top = 20
            Width = 585
            Height = 24
            CharCase = ecUpperCase
            Color = 12056055
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = EDDescricaoServKeyPress
          end
          object EDValorTotalServ: TColorEditFloat
            Left = 647
            Top = 19
            Width = 112
            Height = 26
            TabStop = False
            Color = 15329769
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnInserirServ: TBitBtn
            Left = 680
            Top = 50
            Width = 79
            Height = 25
            Caption = '&INSERIR'
            TabOrder = 4
            OnClick = BtnInserirServClick
            Glyph.Data = {
              9E010000424D9E0100000000000036000000280000000B0000000A0000000100
              1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
              D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
              ECD8E9ECD8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC00
              0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
              D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF000000
              00D8E9ECD8E9EC000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF00BF
              BF00BFBF00000000D8E9EC000000000000000000000000000000BFBF00BFBF00
              BFBF00000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000BFBF
              00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
              0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
              D8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9
              ECD8E9ECD8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC00
              0000}
          end
          object BtnRemoverServ: TBitBtn
            Left = 679
            Top = 75
            Width = 80
            Height = 25
            Caption = '&REMOVER'
            TabOrder = 5
            OnClick = BtnRemoverServClick
            Glyph.Data = {
              9E010000424D9E0100000000000036000000280000000B0000000A0000000100
              1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
              D8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000D8E9
              ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC00
              0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
              D8E9EC000000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9
              ECD8E9ECD8E9EC000000000000000000000000000000BFBF00BFBF00BFBF0000
              0000000000000000000000000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00
              BFBF00BFBF00BFBF00000000D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF
              00BFBF00BFBF00BFBF00000000D8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
              0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
              D8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
              ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC00
              0000}
          end
          object EDValorServ: TColorEditFloat
            Left = 333
            Top = 70
            Width = 103
            Height = 19
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
            OnExit = EDValorServExit
            OnKeyPress = EDValorServKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDQtdeServ: TColorEditFloat
            Left = 440
            Top = 70
            Width = 73
            Height = 19
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
            OnExit = EDQtdeServExit
            OnKeyPress = EDQtdeServKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDescontoServ: TColorEditFloat
            Left = 517
            Top = 70
            Width = 74
            Height = 19
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
            OnExit = EDDescontoServExit
            OnKeyPress = EDDescontoServKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 101
            Width = 762
            Height = 148
            Alignment = alTopLeft
            Caption = 'LISTA DE SERVI'#199'OS'
            Ctl3D = False
            ParentCtl3D = False
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            TabOrder = 6
            object DBGridServ: TDBGrid
              Left = 1
              Top = 19
              Width = 760
              Height = 118
              Color = 15597546
              Ctl3D = False
              FixedColor = 11039232
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESPESA'
                  Title.Caption = 'Servi'#231'o'
                  Width = 250
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd'
                  Width = 30
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'VLRFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'V. Unit'
                  Width = 45
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Desc %'
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'VLRTOTFIN'
                  Title.Alignment = taCenter
                  Title.Caption = 'V. Total'
                  Width = 60
                  Visible = True
                end>
            end
          end
        end
      end
      object EDDescricao: TEdit
        Left = 8
        Top = 24
        Width = 745
        Height = 22
        Hint = 'Descri'#231#227'o do Or'#231'amento'
        CharCase = ecUpperCase
        Color = clGradientActiveCaption
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 100
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = EDDescricaoKeyPress
      end
      object EdTotDesp: TColorEditFloat
        Left = 97
        Top = 473
        Width = 96
        Height = 24
        TabStop = False
        Color = 13816575
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '0,00'
        Visible = False
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTProd: TColorEditFloat
        Left = 201
        Top = 473
        Width = 64
        Height = 24
        Hint = 'Informe aqui os descontos para produtos'
        TabStop = False
        Color = 16777211
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        Text = '0,00'
        OnExit = EdDescTProdExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdtotalProd: TColorEditFloat
        Left = 265
        Top = 473
        Width = 107
        Height = 24
        TabStop = False
        Color = 15527167
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTServ: TColorEditFloat
        Left = 377
        Top = 473
        Width = 64
        Height = 24
        Hint = 'Informe aqui os descontos para servi'#231'os'
        TabStop = False
        Color = 16777194
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        Text = '0,00'
        OnExit = EdDescTServExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDTotalServ: TColorEditFloat
        Left = 441
        Top = 473
        Width = 107
        Height = 24
        TabStop = False
        Color = 14540287
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescTOrc: TColorEditFloat
        Left = 577
        Top = 473
        Width = 64
        Height = 24
        TabStop = False
        Color = 16777175
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdTotalOrc: TColorEditFloat
        Left = 641
        Top = 473
        Width = 130
        Height = 24
        TabStop = False
        Color = 12566527
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Width = 783
      object Label28: TLabel [0]
        Left = 407
        Top = 5
        Width = 24
        Height = 19
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel [1]
        Left = 592
        Top = 6
        Width = 15
        Height = 19
        Caption = '$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdValorOrc: TColorEditFloat
        Left = 615
        Top = 3
        Width = 164
        Height = 25
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        TabStop = False
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
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDNumOrc: TEdit
        Left = 432
        Top = 3
        Width = 153
        Height = 25
        Color = clActiveBorder
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inherited PBotoes: TPanel
    object PCProdServ: TPageControl
      Left = -733
      Top = -266
      Width = 752
      Height = 285
      ActivePage = TabSheet3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      TabPosition = tpBottom
      object TabSheet1: TTabSheet
        Caption = 'PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object Shape6: TShape
          Left = 5
          Top = 0
          Width = 735
          Height = 237
          Brush.Color = 16772332
          Pen.Color = clMaroon
        end
        object LQTDPROD: TLabel
          Left = 559
          Top = 237
          Width = 172
          Height = 16
          Hint = 'Informa a quantidade total de itens inseridos neste pedido'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'LOCAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object PQtdConvert: TPanel
          Left = 14
          Top = 7
          Width = 281
          Height = 80
          BevelWidth = 2
          Color = 16772332
          TabOrder = 2
          Visible = False
          object Label62: TLabel
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
          object EdQtdConvert: TColorEditFloat
            Left = 166
            Top = 48
            Width = 106
            Height = 19
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
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBGridConvert: TDBGrid
            Left = 4
            Top = 4
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
        object Panel2: TPanel
          Left = 9
          Top = 4
          Width = 728
          Height = 93
          BevelInner = bvLowered
          Color = 16772332
          TabOrder = 0
          object LProduto: TLabel
            Left = 29
            Top = 60
            Width = 55
            Height = 16
            Caption = 'Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868685
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 340
            Top = 4
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
          object Label19: TLabel
            Left = 452
            Top = 5
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
          object Label20: TLabel
            Left = 400
            Top = 5
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
          object Label21: TLabel
            Left = 520
            Top = 5
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
          object LEstoque: TLabel
            Left = 621
            Top = 3
            Width = 71
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LSaldoEstoque: TLabel
            Left = 621
            Top = 17
            Width = 71
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LMarcaProd: TLabel
            Left = 198
            Top = 74
            Width = 38
            Height = 16
            Caption = 'Marca'
          end
          object LLocal: TLabel
            Left = 446
            Top = 56
            Width = 33
            Height = 16
            Caption = 'Local'
          end
          object LCustoTot: TLabel
            Left = 447
            Top = 75
            Width = 90
            Height = 13
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LCtrint: TLabel
            Left = 30
            Top = 74
            Width = 38
            Height = 16
            Caption = 'Marca'
          end
          object PCodFab: TPanel
            Left = 195
            Top = 9
            Width = 131
            Height = 41
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 3
            Visible = False
            object Label10: TLabel
              Left = 1
              Top = 3
              Width = 120
              Height = 16
              Caption = 'C'#243'd. Fabricante:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EDCodFab: TColorMaskEdit
              Left = 0
              Top = 19
              Width = 129
              Height = 22
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PCodInterno: TPanel
            Left = 195
            Top = 9
            Width = 130
            Height = 41
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 4
            Visible = False
            object Label17: TLabel
              Left = 2
              Top = 3
              Width = 112
              Height = 16
              Caption = 'Contrl. Interno:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EDCodInterno: TColorEditFloat
              Left = 0
              Top = 19
              Width = 125
              Height = 19
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '0,00'
              EditType = fltString
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PCodComposto: TPanel
            Left = 195
            Top = 10
            Width = 129
            Height = 40
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 2
            Visible = False
            object Label16: TLabel
              Left = 2
              Top = 1
              Width = 116
              Height = 16
              Caption = 'C'#243'd. Composto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EDCodComposto: TColorMaskEdit
              Left = 0
              Top = 18
              Width = 125
              Height = 22
              Ctl3D = False
              EditMask = '000.000.000-000;1;_'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              MaxLength = 15
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              Text = '   .   .   -   '
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PBPCodBarra: TPanel
            Left = 28
            Top = 14
            Width = 165
            Height = 36
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 1
            object Label15: TLabel
              Left = -1
              Top = -1
              Width = 82
              Height = 16
              Caption = 'C'#243'd. Barra:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EDCodBarra: TEdit
              Left = 0
              Top = 14
              Width = 165
              Height = 22
              BiDiMode = bdRightToLeft
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              MaxLength = 13
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object BtnProcProd: TBitBtn
            Left = 6
            Top = 29
            Width = 22
            Height = 20
            Hint = 'Pressione para localizar o Produto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object BtnInsertProd: TBitBtn
            Left = 655
            Top = 48
            Width = 70
            Height = 21
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
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
          object BtnDeleteProd: TBitBtn
            Left = 655
            Top = 68
            Width = 70
            Height = 21
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
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
          object EDQuantidade: TColorEditFloat
            Left = 340
            Top = 21
            Width = 59
            Height = 19
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
            TabOrder = 5
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDValUnit: TColorEditFloat
            Left = 452
            Top = 21
            Width = 67
            Height = 19
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
            TabOrder = 7
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDesc: TColorEditFloat
            Left = 400
            Top = 21
            Width = 51
            Height = 19
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
            TabOrder = 6
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDTotal: TColorEditFloat
            Left = 520
            Top = 21
            Width = 94
            Height = 19
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
            TabOrder = 8
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnEscolheProc: TBitBtn
            Left = 309
            Top = 51
            Width = 11
            Height = 12
            Hint = 'Pressione para alterar o modo de procura (Alt+P)'
            Caption = '&P'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
          end
          object PLabelConvertion: TPanel
            Left = 331
            Top = 48
            Width = 76
            Height = 24
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 12
            object LQtdConvert: TLabel
              Left = 3
              Top = 3
              Width = 69
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object GroupBox5: TGroupBox
          Left = 11
          Top = 97
          Width = 725
          Height = 138
          Caption = 'Lista de produtos do or'#231'amento'
          Color = 16772332
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object DbgProduto: TDBGrid
            Left = 3
            Top = 14
            Width = 719
            Height = 122
            Color = 15597546
            Ctl3D = False
            DataSource = DMESTOQUE.DSSlave
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
            Columns = <
              item
                Expanded = False
                FieldName = 'CONTRINT'
                Title.Caption = 'Cont. Interno'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd.'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. Unit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Desc(%)'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPRODFABR'
                Title.Caption = 'C'#243'd. Fabricante'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Produto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARCA'
                Title.Caption = 'Marca'
                Visible = True
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'SERVI'#199'OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        ParentFont = False
        object Shape7: TShape
          Left = 5
          Top = 0
          Width = 736
          Height = 237
          Brush.Color = 16772332
          Pen.Color = 4227072
        end
        object LQTDSERV: TLabel
          Left = 566
          Top = 237
          Width = 172
          Height = 16
          Hint = 'Informa a quantidade total de itens inseridos neste pedido'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'LOCAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object Panel3: TPanel
          Left = 9
          Top = 4
          Width = 728
          Height = 86
          BevelInner = bvLowered
          Color = 16772332
          TabOrder = 0
          object LServico: TLabel
            Left = 29
            Top = 51
            Width = 5
            Height = 16
            Font.Charset = ANSI_CHARSET
            Font.Color = 4868685
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 333
            Top = 10
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
          object Label13: TLabel
            Left = 409
            Top = 11
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
          object Label9: TLabel
            Left = 487
            Top = 11
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
          object Label22: TLabel
            Left = 541
            Top = 11
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
          object LSubServico: TLabel
            Left = 30
            Top = 65
            Width = 3
            Height = 16
          end
          object Label27: TLabel
            Left = 165
            Top = 11
            Width = 96
            Height = 16
            Caption = 'C'#243'd. Interno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 31
            Top = 10
            Width = 116
            Height = 16
            Caption = 'C'#243'd. Composto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnProcServ: TBitBtn
            Left = 6
            Top = 29
            Width = 22
            Height = 20
            Hint = 'Pressione para localizar o Produto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object BtnInsertServ: TBitBtn
            Left = 653
            Top = 35
            Width = 70
            Height = 25
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
          object BtnDeleteServ: TBitBtn
            Left = 653
            Top = 59
            Width = 70
            Height = 25
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
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
          object EDQtdServ: TColorEditFloat
            Left = 333
            Top = 27
            Width = 73
            Height = 19
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
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDVlrUnitServ: TColorEditFloat
            Left = 409
            Top = 27
            Width = 75
            Height = 19
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
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDescServ: TColorEditFloat
            Left = 487
            Top = 27
            Width = 51
            Height = 19
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
            TabOrder = 5
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrtotalServ: TColorEditFloat
            Left = 541
            Top = 27
            Width = 81
            Height = 19
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
            TabOrder = 6
            Text = '0,00'
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdCodcompostoServ: TColorMaskEdit
            Left = 29
            Top = 27
            Width = 131
            Height = 22
            Ctl3D = False
            EditMask = '000.000.000-000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '   .   .   -   '
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdCodInternoServ: TColorEditFloat
            Left = 163
            Top = 27
            Width = 125
            Height = 19
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 13
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0'
            EditType = fltString
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox4: TGroupBox
          Left = 11
          Top = 91
          Width = 726
          Height = 143
          Caption = 'Lista de servi'#231'o do or'#231'amento'
          Color = 16772332
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object DbgServicos: TDBGrid
            Left = 3
            Top = 14
            Width = 719
            Height = 126
            Color = 14221052
            Ctl3D = False
            DataSource = DMESTOQUE.DSSlaveServ
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'VLRUNIT'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. Unit'#225'rio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD'
                Title.Alignment = taRightJustify
                Title.Caption = 'Quant.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Desc(%)'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Vlr. Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Servi'#231'o'
                Visible = True
              end>
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'DESPESAS'
        ImageIndex = 2
        object LQTDDESP: TLabel
          Left = 567
          Top = 237
          Width = 172
          Height = 16
          Hint = 'Informa a quantidade total de itens inseridos neste pedido'
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'LOCAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
        end
        object PCabDesp: TPanel
          Left = 3
          Top = 3
          Width = 742
          Height = 89
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 0
          object Shape15: TShape
            Left = 1
            Top = 1
            Width = 736
            Height = 73
            Brush.Color = 16772332
            Pen.Color = clGray
            Pen.Width = 2
          end
          object Label35: TLabel
            Left = 12
            Top = 5
            Width = 150
            Height = 16
            Caption = 'Descri'#231#227'o da despesa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 370
            Top = 5
            Width = 43
            Height = 16
            Caption = 'Qtde.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 422
            Top = 5
            Width = 71
            Height = 16
            Caption = 'Vlr. Custo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 497
            Top = 5
            Width = 87
            Height = 16
            Caption = 'Vlr. Cobrado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 659
            Top = 5
            Width = 67
            Height = 16
            Caption = 'Vlr. Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 151
            Top = 55
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
          object Label23: TLabel
            Left = 355
            Top = 55
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
          object Label24: TLabel
            Left = 597
            Top = 5
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
          object EdDescD: TColorEditFloat
            Left = 12
            Top = 21
            Width = 333
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 40
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            EditType = fltString
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdQtdD: TColorEditFloat
            Left = 350
            Top = 21
            Width = 62
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrCustoD: TColorEditFloat
            Left = 417
            Top = 21
            Width = 75
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrCobradoD: TColorEditFloat
            Left = 498
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdVlrTotD: TColorEditFloat
            Left = 646
            Top = 21
            Width = 79
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BitBtn3: TBitBtn
            Left = 585
            Top = 49
            Width = 70
            Height = 21
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
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
          object BitBtn4: TBitBtn
            Left = 655
            Top = 49
            Width = 70
            Height = 21
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
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
          object EDMarca: TColorEditFloat
            Left = 198
            Top = 52
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
            TabOrder = 1
            Text = '0,00'
            EditType = fltString
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdUnidade: TColorEditFloat
            Left = 384
            Top = 52
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
            EditType = fltString
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EdDesconto: TColorEditFloat
            Left = 587
            Top = 21
            Width = 54
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object DbgDespesas: TDBGrid
          Left = 5
          Top = 86
          Width = 734
          Height = 149
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
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'DESPESA'
              Title.Caption = 'Despesa'
              Width = 263
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'UN'
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
      end
    end
  end
end
