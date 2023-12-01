inherited FOrcamentoMac: TFOrcamentoMac
  Left = 117
  Top = 54
  Caption = ''
  ClientHeight = 547
  ClientWidth = 809
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel [0]
    Left = 205
    Top = 203
    Height = 102
  end
  inherited PConsulta: TPanel [1]
    Left = 9
    Top = 7
    Width = 792
    Height = 546
    inherited GroupBox1: TGroupBox
      Width = 783
      TabOrder = 2
      inherited EdNome: TFlatEdit
        Left = 120
        Top = 16
        Width = 425
        TabOrder = 1
      end
      inherited BtnSelecionar: TBitBtn
        Left = 664
        Top = 15
        TabOrder = 3
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
        TabOrder = 0
        Text = 'N'#186' Or'#231'amento'
        OnEnter = EDNumeroOrcMecEnter
        OnExit = EDNumeroOrcMecExit
        OnKeyDown = EDNumeroOrcMecKeyDown
      end
    end
    inherited Painel: TPanel
      Width = 783
      TabOrder = 0
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 113
      Width = 783
      Height = 424
      PopupMenu = PopupMenu1
      TabOrder = 1
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
    object CbMostrarOrcamentosexportados: TCheckBox
      Left = 574
      Top = 94
      Width = 209
      Height = 17
      Caption = 'Mostrar Or'#231'amentos Exportados'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = CbMostrarOrcamentosexportadosClick
    end
  end
  inherited PCadastro: TPanel
    Left = 9
    Top = 7
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
            Top = 21
            Width = 275
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
            TabOrder = 0
            OnEnter = EDCodProdEnter
            OnKeyDown = EDCodProdKeyDown
            OnKeyUp = EDCodProdKeyUp
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BTNAddProd: TBitBtn
            Left = 19
            Top = 21
            Width = 26
            Height = 22
            Hint = 'Pressione para localizar o Produto'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
            TabOrder = 6
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
          object PListaProdutos: TPanel
            Left = 48
            Top = 46
            Width = 640
            Height = 165
            BevelOuter = bvNone
            TabOrder = 9
            Visible = False
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
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
              OnKeyUp = DBGrid1KeyUp
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
        end
        object TabSheet5: TTabSheet
          Caption = '&SERVI'#199'OS'
          ImageIndex = 1
          object Label60: TLabel
            Left = 273
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
            Left = 204
            Top = 52
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
            Left = 101
            Top = 52
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
            Left = 268
            Top = 52
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
          object Label29: TLabel
            Left = 1
            Top = 6
            Width = 162
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdRightToLeft
            Caption = 'Classifica'#231#227'o do Servi'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object EDDescricaoServ: TEdit
            Left = 274
            Top = 20
            Width = 366
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
            TabOrder = 1
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
            TabOrder = 9
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
            TabOrder = 6
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
            TabOrder = 7
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
            Left = 40
            Top = 70
            Width = 103
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
            OnExit = EDValorServExit
            OnKeyPress = EDValorServKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDQtdeServ: TColorEditFloat
            Left = 164
            Top = 70
            Width = 73
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
            OnExit = EDQtdeServExit
            OnKeyPress = EDQtdeServKeyPress
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDescontoServ: TColorEditFloat
            Left = 255
            Top = 70
            Width = 74
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
            TabOrder = 8
            object DBGridServ: TDBGrid
              Left = 1
              Top = 19
              Width = 760
              Height = 118
              Color = 15597546
              Ctl3D = False
              DataSource = DMESTOQUE.DSAlx3
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
                  Width = 240
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'QTD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtd'
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'VLRFINAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'V. Unit'
                  Width = 55
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
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Equipe'
                  Width = 135
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO1'
                  Title.Caption = 'Classifica'#231#227'o'
                  Width = 173
                  Visible = True
                end>
            end
          end
          object DbServicoClassificacao: TDBLookupComboBox
            Left = 2
            Top = 20
            Width = 238
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'COD_SUBSERVICO'
            ListField = 'DESCRICAO'
            ListSource = DMServ.DWSubserv
            ParentFont = False
            TabOrder = 0
          end
          object BTNMINUS: TBitBtn
            Left = 241
            Top = 31
            Width = 20
            Height = 12
            Hint = 'Limpar servi'#231'o selecionado'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnClick = BTNMINUSClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
              90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          object BTNOPEN: TBitBtn
            Left = 241
            Top = 20
            Width = 20
            Height = 12
            Hint = 'Abrir tela de servi'#231'os'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            OnClick = BTNOPENClick
            Glyph.Data = {
              B6000000424DB60000000000000036000000280000000A000000040000000100
              18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
              90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
              C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
          end
          inline FrmEquipe: TFrmBusca
            Left = 366
            Top = 52
            Width = 299
            Height = 44
            AutoScroll = False
            Color = 16772332
            ParentColor = False
            TabOrder = 5
            inherited LTextoBusca: TLabel
              Width = 150
              Caption = 'Equipe Respons'#225'vel:'
              Font.Style = [fsBold]
            end
            inherited LUZMINUS: TShape
              Left = 268
              Top = 15
              Width = 25
              Height = 27
            end
            inherited EdDescricao: TFlatEdit
              Left = 48
              Top = 18
              Width = 220
              Height = 22
              TabStop = False
              ColorBorder = clBlack
              ColorFlat = clWindow
              Font.Height = -15
              ParentShowHint = False
              ShowHint = True
            end
            inherited BTNOPEN: TBitBtn
              Left = 269
              Top = 17
              Width = 24
              Height = 23
              Hint = 'Pressione para selecionar a equipe respons'#225'vel'
              OnClick = FrmEquipeBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 384
              Top = 14
              Enabled = False
            end
            inherited EDCodigo: TFlatEdit
              Left = 1
              Top = 18
              Width = 48
              Height = 22
              ColorBorder = clBlack
              ColorFlat = 15329769
              Font.Height = -15
              MaxLength = 5
              OnExit = FrmEquipeEDCodigoExit
              OnKeyPress = FrmEquipeEDCodigoKeyPress
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 2
          object Label5: TLabel
            Left = 16
            Top = 16
            Width = 134
            Height = 13
            Caption = 'Observa'#231#245'es do or'#231'amento:'
          end
          object mObservacoes: TMemo
            Left = 16
            Top = 32
            Width = 377
            Height = 177
            TabOrder = 0
          end
        end
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
          OnKeyPress = FrmPlacaEDCodigoKeyPress
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
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 267
    Top = 42
  end
  object frxOrcMacCliente: TfrxDBDataset
    UserName = 'frxOrcMacCliente'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 113
    Top = 151
  end
  object frxOrcMacFunc: TfrxDBDataset
    UserName = 'frxOrcMacFunc'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 153
    Top = 151
  end
  object FrxOrcMacCidade: TfrxDBDataset
    UserName = 'FrxOrcMacCidade'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 193
    Top = 151
  end
  object FrxOrcMacEmpresa: TfrxDBDataset
    UserName = 'FrxOrcMacEmpresa'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 225
    Top = 151
  end
  object FrxOrcMacLoja: TfrxDBDataset
    UserName = 'FrxOrcMacLoja'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 265
    Top = 151
  end
  object frxOrcamentoMac: TfrxDBDataset
    UserName = 'frxOrcamentoMac'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 73
    Top = 151
  end
  object FrxRelOrcamentoMac: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41934.633196342600000000
    ReportOptions.LastChange = 45170.037173437500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'VAR'
      '   xValorProdutos: Real;       '
      '   xOrc:Real;'
      '   xValorServicos: Real;                      '
      '  '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '       xValorProdutos := xValorProdutos +  <frxOrcamentoMac."vlr' +
        'total">;'
      '       xOrc := xOrc + <frxOrcamentoMac."vlricmssubs">;  '
      'end;  '
      '      '
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       xValorProdutos := xValorProdutos - xOrc;      '
      
        '       Memo46.Text := '#39'R$ '#39'+FormatFloat('#39'####0.00'#39', xValorProdut' +
        'os);  '
      'end;'
      ''
      'procedure MasterData2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '    xValorServicos := xValorServicos + <FrxOrcMacServico."VLRTOT' +
        'FIN">;             '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   xValorProdutos := 0;                     '
      '   xOrc := 0;              '
      '   xValorServicos := 0;                '
      'end;'
      ''
      'procedure Memo71OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo71.Text := '#39'R$ '#39'+FormatFloat('#39'####0.00'#39', xValorServicos)' +
        ';  '
      'end;'
      ''
      'procedure Memo73OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '    Memo73.Text := '#39'R$ '#39'+FormatFloat('#39'####0.00'#39', xValorServicos ' +
        '+ xValorProdutos);  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 33
    Top = 151
    Datasets = <
      item
        DataSet = frxOrcamentoMac
        DataSetName = 'frxOrcamentoMac'
      end
      item
        DataSet = FrxOrcMacCidade
        DataSetName = 'FrxOrcMacCidade'
      end
      item
        DataSet = frxOrcMacCliente
        DataSetName = 'frxOrcMacCliente'
      end
      item
        DataSet = FrxOrcMacEmpresa
        DataSetName = 'FrxOrcMacEmpresa'
      end
      item
        DataSet = frxOrcMacFunc
        DataSetName = 'frxOrcMacFunc'
      end
      item
        DataSet = FrxOrcMacLoja
        DataSetName = 'FrxOrcMacLoja'
      end
      item
        DataSet = FrxOrcMacServico
        DataSetName = 'FrxOrcMacServico'
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
        Height = 342.425404330000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        object Memo2: TfrxMemoView
          Left = 268.346630000000000000
          Top = 7.559060000000000000
          Width = 199.272912850000000000
          Height = 20.922387140000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'OR'#195#8225'AMENTO DE VENDA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 585.606680000000000000
          Top = 88.283550000000000000
          Width = 58.883415430000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 474.220357720000000000
          Top = 88.285511840000000000
          Width = 36.283449920000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 513.795610000000000000
          Top = 88.043168240000000000
          Width = 66.359659700000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxOrcamentoMac."dtabert"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 647.938020740000000000
          Top = 88.049541760000000000
          Width = 66.359659690000000000
          Height = 15.652173910000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxOrcamentoMac."numorc"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 517.541499320000000000
          Top = 108.960668980000000000
          Width = 41.574798270000000000
          Height = 15.118107800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ.:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 510.434779150000000000
          Top = 128.814534250000000000
          Width = 27.190373070000000000
          Height = 15.449361940000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'I.E.:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 517.993839150000000000
          Top = 148.362243780000000000
          Width = 38.673482730000000000
          Height = 15.496062990000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Fone:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 2.779530000000000000
          Top = 94.640000130000000000
          Width = 237.660172860000000000
          Height = 19.047619050000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."razao_social"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA: TfrxMemoView
          Left = 562.759971500000000000
          Top = 108.960730000000000000
          Width = 152.006370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."cnpj"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA1: TfrxMemoView
          Left = 541.200911500000000000
          Top = 128.373177550000000000
          Width = 174.683550000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."insc_est"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA2: TfrxMemoView
          Left = 560.212554490000000000
          Top = 148.622560130000000000
          Width = 154.960661650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."fone"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA3: TfrxMemoView
          Left = 545.200911500000000000
          Top = 169.291297550000000000
          Width = 170.078781650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."contato"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 1.023622050000000000
          Top = 194.330860000000000000
          Width = 715.842522130000000000
          Height = 66.836339520000000000
          ShowHint = False
        end
        object Memo15: TfrxMemoView
          Left = 61.133404060000000000
          Top = 200.633765590000000000
          Width = 335.733148090000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacCliente."nome"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 53.718061880000000000
          Top = 220.346503070000000000
          Width = 203.449598080000000000
          Height = 18.125231900000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacCliente."telrel"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 61.277121880000000000
          Top = 240.318802520000000000
          Width = 353.471738100000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcMacCliente."cidade"] - [frxOrcMacCliente."UF_ESTADO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 9.338590000000000000
          Top = 200.448980000000000000
          Width = 49.832244350000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cliente:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 9.338590000000000000
          Top = 220.346503070000000000
          Width = 38.551168900000000000
          Height = 18.141729840000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Fone:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 9.338590000000000000
          Top = 240.352203370000000000
          Width = 49.832244340000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 423.307360000000000000
          Top = 200.448980000000000000
          Width = 71.081958230000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Solicitante:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 422.825819140000000000
          Top = 220.480361340000000000
          Width = 38.362084910000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Email:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 423.863064220000000000
          Top = 240.133904650000000000
          Width = 36.577610410000000000
          Height = 18.519685040000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #195#129'rea:')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 496.855148120000000000
          Top = 200.469452440000000000
          Width = 241.889763780000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcamentoMac."solicitante"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 466.771651100000000000
          Top = 219.989135040000000000
          Width = 211.653523780000000000
          Height = 18.519685040000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcamentoMac."email_solicitante"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 463.434039920000000000
          Top = 240.133904650000000000
          Width = 214.221223040000000000
          Height = 18.519685040000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcamentoMac."area_solicitante"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.519790000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Endere'#195#167'o:')
        end
        object Memo13: TfrxMemoView
          Left = 71.811070000000000000
          Top = 113.519790000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcMacEmpresa."endereco"]')
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.417440000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Bairro:')
        end
        object Memo22: TfrxMemoView
          Left = 49.133890000000000000
          Top = 132.417440000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ' [frxOrcMacEmpresa."bairro"]')
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 151.315090000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Cidade:')
        end
        object Memo6: TfrxMemoView
          Left = 60.472480000000000000
          Top = 151.315090000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            ' [frxOrcMacCidade."nome"]')
        end
        object Shape8: TfrxShapeView
          Left = 3.779530000000000000
          Top = 292.275820000000000000
          Width = 712.819131970000000000
          Height = 47.622064330000000000
          ShowHint = False
        end
        object Memo32: TfrxMemoView
          Left = 3.779530000000000000
          Top = 269.598640000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Dados do ve'#195#173'culo')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 7.559060000000000000
          Top = 296.055350000000000000
          Width = 52.913420000000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Ve'#195#173'culo:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 7.559060000000000000
          Top = 318.732530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Placa:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 400.630180000000000000
          Top = 296.055350000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Km Atual:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 3.779530000000000000
          Top = 173.992270000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 64.252010000000000000
          Top = 296.055350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."descequip"]')
        end
        object Memo67: TfrxMemoView
          Left = 64.252010000000000000
          Top = 318.732530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."placa"]')
        end
        object Memo68: TfrxMemoView
          Left = 472.441250000000000000
          Top = 296.055350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."kmatual"]')
        end
        object Memo1: TfrxMemoView
          Left = 83.149660000000000000
          Top = 173.992270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."descrorc"]')
        end
        object Memo11: TfrxMemoView
          Left = 185.196970000000000000
          Top = 296.055350000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Marca:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 185.196970000000000000
          Top = 318.732530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Modelo:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 238.110390000000000000
          Top = 296.055350000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."marca"]')
        end
        object Memo43: TfrxMemoView
          Left = 238.110390000000000000
          Top = 318.732530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[frxOrcamentoMac."modelo"]')
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 120.944881890000000000
          Height = 86.929133860000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = FrxOrcMacLoja
          DataSetName = 'FrxOrcMacLoja'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxOrcamentoMac
        DataSetName = 'frxOrcamentoMac'
        RowCount = 0
        object Memo27: TfrxMemoView
          Left = 3.000000000000000000
          Top = 4.559060000000000000
          Width = 78.992125980000000000
          Height = 15.229026270000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxOrcamentoMac."codprodfabr"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 84.506802730000000000
          Top = 4.669291340000000000
          Width = 347.745566590000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxOrcamentoMac."descricao"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 435.645950000000000000
          Top = 4.669291340000000000
          Width = 60.850398580000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxOrcamentoMac."qtd"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 499.897960000000000000
          Top = 4.669291340000000000
          Width = 70.677167800000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxOrcamentoMac."vlrunit"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 573.488560000000000000
          Top = 4.779530000000000000
          Width = 70.677167800000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxOrcamentoMac."vlrtotal"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 647.299630000000000000
          Top = 4.559060000000000000
          Width = 66.897637800000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxOrcamentoMac."VLRICMSSUBS"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 22.456710000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 83.527559060000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 433.645950000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 498.897637795276000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 572.709030000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 646.299630000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 715.331170000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 2.000000000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        Height = 7.558854960000000000
        Top = 668.976810000000000000
        Width = 718.110700000000000000
      end
      object Header1: TfrxHeader
        Height = 41.574830000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 21.015770000000000000
          Width = 81.082847960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Memo21: TfrxMemoView
          Left = 4.000000000000000000
          Top = 23.881755510000000000
          Width = 75.083877830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cod.fab.:')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 83.149660000000000000
          Top = 21.236240000000000000
          Width = 349.984251970000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Left = 573.102660000000000000
          Top = 21.236086220000000000
          Width = 73.523787960000000000
          Height = 21.090967010000000000
          ShowHint = False
        end
        object Shape5: TfrxShapeView
          Left = 499.441250000000000000
          Top = 21.236086220000000000
          Width = 73.523787960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 433.110390000000000000
          Top = 21.236086220000000000
          Width = 65.964727960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape7: TfrxShapeView
          Left = 645.961040000000000000
          Top = 21.236240000000000000
          Width = 68.787401570000000000
          Height = 21.090967010000000000
          ShowHint = False
        end
        object Memo23: TfrxMemoView
          Left = 437.669450000000000000
          Top = 23.881755510000000000
          Width = 58.671455470000000000
          Height = 15.496062990000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qtde.:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 503.354423460000000000
          Top = 23.881755510000000000
          Width = 66.852173920000000000
          Height = 15.496060550000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Vlr.Unit.:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 573.882190000000000000
          Top = 23.881755510000000000
          Width = 71.605616940000000000
          Height = 15.496060550000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Vlr.Tot.:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.961040000000000000
          Top = 23.881755510000000000
          Width = 66.126708080000000000
          Height = 15.496060550000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Icms ST:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 86.929190000000000000
          Top = 23.881755510000000000
          Width = 77.569105470000000000
          Height = 15.496062990000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Produto(s):')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 71.811070000000000000
        Top = 532.913730000000000000
        Width = 718.110700000000000000
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 29.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Servi'#195#167'o(s):')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 1.889763780000000000
          Top = 50.015770000000000000
          Width = 713.574803150000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.015770000000000000
          Width = 93.981527830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o:')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 371.692913390000000000
          Top = 50.236240000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 297.826771650000000000
          Top = 50.125984250000000000
          Height = 20.787401570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 419.527559060000000000
          Top = 50.125984250000000000
          Height = 20.787401570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 494.362204720000000000
          Top = 50.125984250000000000
          Height = 20.787401570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 568.818897640000000000
          Top = 50.125984250000000000
          Height = 20.787401570000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo55: TfrxMemoView
          Left = 373.582870000000000000
          Top = 52.015770000000000000
          Width = 44.847637830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qtde.:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 301.496290000000000000
          Top = 52.015770000000000000
          Width = 67.524817830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Vlr. Unit.:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 423.307360000000000000
          Top = 52.015770000000000000
          Width = 67.524817830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Vlr. Tot.:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 497.118430000000000000
          Top = 52.015770000000000000
          Width = 67.524817830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Desconto:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 572.488560000000000000
          Top = 52.015770000000000000
          Width = 67.524817830000000000
          Height = 15.652173920000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Equipe:')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 17.763779530000000000
        Top = 627.401980000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData2OnAfterPrint'
        DataSet = FrxOrcMacServico
        DataSetName = 'FrxOrcMacServico'
        RowCount = 0
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 291.023622050000000000
          Height = 11.449496270000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[FrxOrcMacServico."DESPESA"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 1.889763780000000000
          Height = 16.629921260000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 1.779530000000000000
          Top = 16.677180000000000000
          Width = 714.331170000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 373.582870000000000000
          Top = 1.779530000000000000
          Width = 44.220472440000000000
          Height = 11.449496270000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[FrxOrcMacServico."QTD"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 299.645950000000000000
          Top = 1.779530000000000000
          Width = 70.677165350000000000
          Height = 11.449496270000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxOrcMacServico."VLRFINAL"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 421.527830000000000000
          Top = 1.779530000000000000
          Width = 70.677165350000000000
          Height = 11.449496270000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxOrcMacServico."VLRTOTFIN"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 496.118430000000000000
          Top = 1.779530000000000000
          Width = 70.677165350000000000
          Height = 11.449496270000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[FrxOrcMacServico."DESCONTO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 570.709030000000000000
          Top = 1.779530000000000000
          Width = 143.244135980000000000
          Height = 11.449496270000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FrxOrcMacServico."EQUIPE"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 715.464566930000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 568.709030000000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 494.338900000000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 419.527830000000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 297.716760000000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 371.527559060000000000
          Height = 16.629921259842500000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 86.929190000000000000
        Top = 737.008350000000000000
        Width = 718.110700000000000000
        object Line9: TfrxLineView
          Left = 1.779530000000000000
          Top = 5.575063749999999000
          Width = 715.091836660000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
        object Memo44: TfrxMemoView
          Left = 1.779530000000000000
          Top = 8.267635980000006000
          Width = 150.715213340000000000
          Height = 17.500000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Condi'#195#167#195#163'o de Pagamento:')
          ParentFont = False
        end
        object frxORCAMENTOfrxORCAMENTO: TfrxMemoView
          Left = 0.038509860000000000
          Top = 27.165285980000000000
          Width = 215.433210000000000000
          Height = 17.385826770000000000
          ShowHint = False
          DataSetName = 'frxORCAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxOrcamentoMac."descricaoformpag"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Top = 84.677180000000010000
          Width = 723.267918390000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo71: TfrxMemoView
          Left = 630.813023390000000000
          Top = 39.438990860000000000
          Width = 81.376241010000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo71OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 630.813023390000000000
          Top = 64.116170860000000000
          Width = 81.376241010000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo73OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 630.813023390000000000
          Top = 13.338590000000000000
          Width = 81.376241010000000000
          Height = 15.118110240000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 529.134200000000000000
          Top = 38.438990860000000000
          Width = 99.023600080000000000
          Height = 15.118107800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Servi'#195#167'os:')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 529.134200000000000000
          Top = 63.116170860000000000
          Width = 99.023600080000000000
          Height = 15.118107800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Total:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 529.134200000000000000
          Top = 12.338590000000000000
          Width = 99.023600080000000000
          Height = 15.118107800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Produtos:')
          ParentFont = False
        end
      end
    end
  end
  object FrxOrcMacServico: TfrxDBDataset
    UserName = 'FrxOrcMacServico'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 301
    Top = 147
  end
  object PopupMenu1: TPopupMenu
    Left = 73
    Top = 103
    object MarcarcomoExportado1: TMenuItem
      Caption = 'Marcar como Exportado'
      OnClick = MarcarcomoExportado1Click
    end
    object DesmarcarcomoExportado1: TMenuItem
      Caption = 'Desmarcar como Exportado'
      OnClick = DesmarcarcomoExportado1Click
    end
  end
end
