inherited FOrcamento3: TFOrcamento3
  Left = 235
  Top = 94
  Caption = 'FOrcamento3'
  ClientHeight = 602
  ClientWidth = 790
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel [0]
    Left = 184
    Top = 220
    Width = 444
    Height = 62
  end
  inherited PConsulta: TPanel [1]
    Left = 5
    Top = 4
    Width = 780
    Height = 598
    inherited GroupBox1: TGroupBox
      Width = 775
      inherited EdNome: TFlatEdit
        Left = 136
        Width = 526
        Text = ''
        OnKeyPress = nil
      end
      inherited BtnSelecionar: TBitBtn
        Left = 664
        Top = 18
      end
      object EdNumero: TFlatEdit
        Left = 4
        Top = 19
        Width = 129
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
        Text = 'N'#250'mero'
        OnEnter = EdNumeroEnter
        OnExit = EdNumeroExit
        OnKeyDown = EdNumeroKeyDown
      end
    end
    inherited Painel: TPanel
      Width = 775
      inherited BtnRelatorio: TBitBtn
        PopupMenu = PopupRelatorio
        OnClick = BtnRelatorioClick
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 775
      Height = 507
      ReadOnly = False
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMORC'
          Title.Caption = 'N'#250'mero'
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
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Caption = 'Valor Total'
          Visible = True
        end>
    end
  end
  inherited PCadastro: TPanel
    Top = 9
    Width = 777
    Height = 596
    inherited Panel4: TPanel
      Left = 10
      Top = 32
      Width = 771
      Height = 562
      object Label28: TLabel
        Left = 8
        Top = 58
        Width = 76
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 510
        Top = 99
        Width = 78
        Height = 13
        Caption = 'Data Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 599
        Top = 99
        Width = 82
        Height = 13
        Caption = 'Dt. Validade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 685
        Top = 99
        Width = 79
        Height = 13
        Caption = 'Hora Abert.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 510
        Top = 135
        Width = 28
        Height = 13
        Caption = 'Obs:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 7
        Top = 10
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
      object Label4: TLabel
        Left = 681
        Top = 9
        Width = 67
        Height = 16
        Caption = 'ICMS S.T:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 510
        Top = 208
        Width = 60
        Height = 13
        Caption = 'Garantia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 143
        Width = 73
        Height = 13
        Caption = 'Solicitante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 175
        Width = 46
        Height = 13
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 310
        Top = 175
        Width = 35
        Height = 13
        Caption = #193'rea:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 9
        Top = 212
        Width = 128
        Height = 13
        Caption = 'Prazo de Despacho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 181
        Top = 212
        Width = 135
        Height = 13
        Caption = 'Modo de Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 104
        Width = 66
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 216
        Top = 104
        Width = 143
        Height = 13
        Caption = 'Forma de pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 457
        Top = 10
        Width = 67
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 280
        Top = 143
        Width = 48
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PageControl1: TPageControl
        Left = 7
        Top = 253
        Width = 758
        Height = 306
        Cursor = crHandPoint
        ActivePage = TabSheet1
        TabOrder = 17
        object TabSheet1: TTabSheet
          Caption = 'Produtos'
          object Panel2: TPanel
            Left = -4
            Top = -4
            Width = 760
            Height = 275
            BevelOuter = bvNone
            TabOrder = 0
            object Shape6: TShape
              Left = 4
              Top = 4
              Width = 750
              Height = 252
              Brush.Color = 16772332
              Pen.Color = clMaroon
            end
            object LTotaisQtde: TLabel
              Left = 592
              Top = 260
              Width = 124
              Height = 14
              Caption = 'Qtd L: 0    Qtd T: 0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Panel3: TPanel
              Left = 6
              Top = 7
              Width = 745
              Height = 93
              BevelInner = bvLowered
              Color = 16772332
              TabOrder = 0
              object Label18: TLabel
                Left = 360
                Top = 7
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
                Left = 472
                Top = 8
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
                Left = 420
                Top = 8
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
                Left = 644
                Top = 8
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
              object Label26: TLabel
                Left = 549
                Top = 8
                Width = 68
                Height = 16
                Caption = 'ICMS S.T:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LProduto: TLabel
                Left = 32
                Top = 56
                Width = 43
                Height = 13
                Caption = 'LProduto'
              end
              object pPesquisaAgil: TPanel
                Left = 34
                Top = 6
                Width = 312
                Height = 48
                BevelOuter = bvNone
                Color = 16772332
                Enabled = False
                TabOrder = 1
                Visible = False
                object lPesquisa: TLabel
                  Left = 0
                  Top = 0
                  Width = 70
                  Height = 16
                  Caption = 'Pesquisa:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object edPesquisaAgil: TFlatEdit
                  Left = 0
                  Top = 17
                  Width = 300
                  Height = 24
                  ColorBorder = clBlack
                  ColorFlat = clWhite
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnEnter = edPesquisaAgilEnter
                  OnKeyDown = edPesquisaAgilKeyDown
                  OnKeyUp = edPesquisaAgilKeyUp
                end
              end
              object BtnInsertProd: TBitBtn
                Left = 672
                Top = 48
                Width = 70
                Height = 21
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                Caption = '&Inserir'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
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
                Spacing = 10
              end
              object BtnDeleteProd: TBitBtn
                Left = 672
                Top = 68
                Width = 70
                Height = 21
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = '&Excluir'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                OnClick = BtnDeleteProdClick
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
                Left = 360
                Top = 24
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
                TabOrder = 2
                Text = '0,00'
                OnExit = EDQuantidadeExit
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDValUnit: TColorEditFloat
                Left = 472
                Top = 24
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
                TabOrder = 4
                Text = '0,00'
                OnExit = EDQuantidadeExit
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDDesc: TColorEditFloat
                Left = 420
                Top = 24
                Width = 51
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
                OnExit = EDQuantidadeExit
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object EDTotal: TColorEditFloat
                Left = 644
                Top = 24
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
                TabOrder = 6
                Text = '0,00'
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object BtnProcProd: TBitBtn
                Left = 16
                Top = 23
                Width = 17
                Height = 20
                Hint = 'Pressione para localizar o Produto'
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
              object edICMS: TColorEditFloat
                Left = 550
                Top = 24
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
                TabOrder = 5
                Text = '0,00'
                OnExit = EDQuantidadeExit
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object GroupBox5: TGroupBox
              Left = 7
              Top = 100
              Width = 744
              Height = 153
              Caption = 'Lista de produtos do or'#231'amento'
              Color = 16772332
              Ctl3D = False
              ParentColor = False
              ParentCtl3D = False
              TabOrder = 1
              object DbgProduto: TDBGrid
                Left = 3
                Top = 14
                Width = 738
                Height = 136
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
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Produto'
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
                    FieldName = 'MARCA'
                    Title.Caption = 'Marca'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODPRODFABR'
                    Title.Caption = 'C'#243'd. Fabricante'
                    Visible = True
                  end>
              end
            end
          end
          object pGridProdutos: TPanel
            Left = 37
            Top = 53
            Width = 529
            Height = 128
            BevelOuter = bvNone
            TabOrder = 1
            Visible = False
            object DbGridProdutos: TDBGrid
              Left = 0
              Top = 0
              Width = 505
              Height = 122
              DataSource = DMESTOQUE.DWSimilar
              FixedColor = clActiveCaption
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'COD_ESTOQUE'
                  Visible = False
                end
                item
                  Expanded = False
                  FieldName = 'CODFABRICANTE'
                  Title.Caption = 'Cod. Fabr.'
                  Width = 99
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTRINT'
                  Title.Caption = 'Contr.'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 264
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VENDVARV'
                  Title.Caption = 'Valor'
                  Width = 84
                  Visible = True
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Caracter'#237'sticas do Produto'
          ImageIndex = 1
          object Label24: TLabel
            Left = 35
            Top = -2
            Width = 61
            Height = 13
            Caption = 'Texto 01:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 401
            Top = -2
            Width = 61
            Height = 13
            Caption = 'Texto 02:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edDescProduto01: TFlatMemo
            Left = 35
            Top = 13
            Width = 302
            Height = 265
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            TabOrder = 0
          end
          object edDescProduto02: TFlatMemo
            Left = 401
            Top = 13
            Width = 302
            Height = 265
            ColorBorder = clBlack
            ColorFlat = clWhite
            ParentColor = True
            TabOrder = 1
          end
        end
      end
      object EdDescricao: TFlatEdit
        Left = 9
        Top = 75
        Width = 752
        Height = 19
        ColorBorder = clBlue
        ColorFlat = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object cbGarantia: TFlatComboBox
        Left = 509
        Top = 222
        Width = 145
        Height = 24
        Color = clWindow
        ColorArrowBackground = clMenu
        ColorBorder = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          '3 Meses'
          '6 Meses'
          '1 Ano'
          '2 Anos'
          '3 Anos')
        ParentFont = False
        TabOrder = 15
        ItemIndex = -1
      end
      object edSolicitante: TFlatEdit
        Left = 8
        Top = 157
        Width = 257
        Height = 19
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edEmail: TFlatEdit
        Left = 8
        Top = 189
        Width = 297
        Height = 20
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object edArea: TFlatEdit
        Left = 310
        Top = 189
        Width = 179
        Height = 20
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object edModoPagamento: TFlatEdit
        Left = 180
        Top = 226
        Width = 309
        Height = 20
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object edHrAbertura: TFlatEdit
        Left = 686
        Top = 113
        Width = 77
        Height = 19
        ColorBorder = clBlack
        ColorFlat = cl3DLight
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object edIcmsSt: TColorEditFloat
        Left = 682
        Top = 25
        Width = 65
        Height = 22
        Color = clWhite
        Ctl3D = False
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
        Text = '0,00'
        OnExit = EDQuantidadeExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object edDtValidade: TMaskEdit
        Left = 600
        Top = 112
        Width = 81
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 12
        Text = '  /  /    '
      end
      object Panel5: TPanel
        Left = 664
        Top = 206
        Width = 100
        Height = 50
        BevelOuter = bvNone
        TabOrder = 16
        object Label9: TLabel
          Left = 6
          Top = 2
          Width = 39
          Height = 13
          Caption = 'Frete:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rbFob: TFlatRadioButton
          Left = 5
          Top = 21
          Width = 47
          Height = 17
          Caption = 'FOB'
          ColorDown = clBlack
          ColorBorder = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object rbCif: TFlatRadioButton
          Left = 54
          Top = 21
          Width = 42
          Height = 17
          Caption = 'CIF'
          ColorDown = clBlack
          ColorBorder = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object edPrazoDespacho: TFlatEdit
        Left = 8
        Top = 226
        Width = 162
        Height = 20
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object edVendedor: TEdit
        Left = 8
        Top = 120
        Width = 193
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edFormaPagamento: TEdit
        Left = 216
        Top = 120
        Width = 273
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edDtAbertura: TMaskEdit
        Left = 510
        Top = 112
        Width = 83
        Height = 21
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  /  /    '
      end
      object Nome: TEdit
        Left = 8
        Top = 24
        Width = 441
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object OBSmemo: TMemo
        Left = 512
        Top = 152
        Width = 249
        Height = 57
        Lines.Strings = (
          '')
        TabOrder = 14
      end
      object EdTelefone: TEdit
        Left = 456
        Top = 24
        Width = 217
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object EdCidade: TFlatEdit
        Left = 280
        Top = 157
        Width = 209
        Height = 19
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    inherited Panel1: TPanel
      Width = 771
      Height = 32
      object Label3: TLabel [0]
        Left = 454
        Top = 7
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
      object Label2: TLabel [1]
        Left = 605
        Top = 7
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
      inherited BtnGravar: TBitBtn
        Top = 3
      end
      inherited BtnCancelar: TBitBtn
        Top = 3
      end
      object EdValorPed: TColorEditFloat
        Left = 472
        Top = 3
        Width = 128
        Height = 27
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = 16772332
        Ctl3D = True
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
      object DBNumPed: TDBColorEdit
        Left = 638
        Top = 3
        Width = 130
        Height = 27
        Color = 16772332
        Ctl3D = True
        DataField = 'NUMORC'
        DataSource = DMSAIDA.DOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object MEscolheProc: TPopupMenu
    Left = 834
    Top = 176
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = ControleInterno1Click
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFab1Click
    end
    object C1: TMenuItem
      Caption = 'C'#243'd. Composto'
      OnClick = C1Click
    end
  end
  object PopupRelatorio: TPopupMenu
    Left = 821
    Top = 92
    object CompOramento1: TMenuItem
      Caption = 'Comp. Or'#231'amento'
      OnClick = CompOramento1Click
    end
  end
  object frxRelOrcamento: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41934.633196342600000000
    ReportOptions.LastChange = 42374.697633159730000000
    ScriptLanguage = 'PascalScript'
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
    Left = 1037
    Top = 116
    Datasets = <
      item
        DataSet = frxOrcamento
        DataSetName = 'frxORCAMENTO'
      end
      item
        DataSet = frxOrcCidade
        DataSetName = 'frxORCCIDADE'
      end
      item
        DataSet = frxOrcCliente
        DataSetName = 'frxORCCLIENTE'
      end
      item
        DataSet = frxOrcEmpresa
        DataSetName = 'frxORCEMPRESA'
      end
      item
        DataSet = frxOrcFunc
        DataSetName = 'frxORCFUNC'
      end
      item
        DataSet = frxOrcLoja
        DataSetName = 'frxORCLOJA'
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
        Height = 260.409448820000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 321.260050000000000000
          Top = 15.118120000000000000
          Width = 259.745392850000000000
          Height = 36.040507140000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'OR'#195#8225'AMENTO DE VENDAS')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 281.574803150000000000
          Height = 90.330708660000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = frxOrcLoja
          DataSetName = 'frxORCLOJA'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          Left = 650.858690000000000000
          Width = 66.442475430000000000
          Height = 13.984251970000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero ')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 650.858267720000000000
          Top = 43.576791840000000000
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
        object Memo39: TfrxMemoView
          Left = 650.858690000000000000
          Top = 59.673038240000000000
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
            '[frxORCAMENTO."dtabert"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 650.599430740000000000
          Top = 15.545521760000000000
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
            '[frxORCAMENTO."numorc"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 539.218679320000000000
          Top = 98.267718980000000000
          Width = 49.133858270000000000
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
          Left = 563.348199150000000000
          Top = 117.342054250000000000
          Width = 42.308493070000000000
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
          Left = 563.348199150000000000
          Top = 136.889763780000000000
          Width = 42.453012730000000000
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
          Left = 1.779530000000000000
          Top = 94.506110130000000000
          Width = 532.463512860000000000
          Height = 19.047619050000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxORCEMPRESA."razao_social"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.779530000000000000
          Top = 116.728050200000000000
          Width = 558.295712010000000000
          Height = 16.130848860000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxORCEMPRESA."endereco"], [frxORCEMPRESA."bairro"], [frxORCCID' +
              'ADE."nome"] - CEP: [frxORCEMPRESA."cep"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1.424691290000000000
          Top = 136.818897640000000000
          Width = 208.978952010000000000
          Height = 15.350904780000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCEMPRESA."web_page"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 211.551645310000000000
          Top = 136.535392500000000000
          Width = 143.622047240000000000
          Height = 15.496060550000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Vendedor e Respons'#195#161'vel:')
          ParentFont = False
        end
        object frxORCFUNCfrxORCFUNC: TfrxMemoView
          Left = 357.547237280000000000
          Top = 136.818897640000000000
          Width = 204.094620000000000000
          Height = 15.496060550000000000
          ShowHint = False
          DataSet = frxOrcFunc
          DataSetName = 'frxORCFUNC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."vendedor"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA: TfrxMemoView
          Left = 591.114331500000000000
          Top = 98.488250000000000000
          Width = 121.770130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxOrcEmpresa
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCEMPRESA."cnpj"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA1: TfrxMemoView
          Left = 609.232451500000000000
          Top = 116.900697550000000000
          Width = 106.652010000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxOrcEmpresa
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCEMPRESA."insc_est"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA2: TfrxMemoView
          Left = 609.346444490000000000
          Top = 137.150080130000000000
          Width = 105.826771650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxOrcEmpresa
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCEMPRESA."fone"]')
          ParentFont = False
        end
        object frxORCEMPRESAfrxORCEMPRESA3: TfrxMemoView
          Left = 609.452921500000000000
          Top = 154.039287550000000000
          Width = 105.826771650000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataSet = frxOrcEmpresa
          DataSetName = 'frxORCEMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCEMPRESA."contato"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 3.023622050000000000
          Top = 175.299320000000000000
          Width = 712.062992130000000000
          Height = 63.056809520000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
        end
        object Memo15: TfrxMemoView
          Left = 57.353874060000000000
          Top = 177.822695590000000000
          Width = 335.733148090000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."nome"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 5.559060000000000000
          Top = 177.637910000000000000
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
          Left = 5.559060000000000000
          Top = 197.535433070000000000
          Width = 49.889758900000000000
          Height = 18.141729840000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CPF:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 215.433210000000000000
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
          Left = 425.605349140000000000
          Top = 178.771641340000000000
          Width = 42.141614910000000000
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
          Left = 435.201654220000000000
          Top = 198.425184650000000000
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
          Left = 77.327318120000000000
          Top = 215.453682440000000000
          Width = 241.889763780000000000
          Height = 18.141732280000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."solicitante"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 470.551181100000000000
          Top = 178.280415040000000000
          Width = 241.889763780000000000
          Height = 18.519685040000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."email_solicitante"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 470.993099920000000000
          Top = 198.425184650000000000
          Width = 240.677933040000000000
          Height = 18.519685040000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."area_solicitante"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 237.889920000000000000
          Width = 81.082847960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Memo21: TfrxMemoView
          Left = 2.779530000000000000
          Top = 240.755905510000000000
          Width = 78.863407830000000000
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
          Top = 238.110390000000000000
          Width = 368.881901970000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Left = 584.441250000000000000
          Top = 238.110236220000000000
          Width = 62.185197960000000000
          Height = 21.090967010000000000
          ShowHint = False
        end
        object Shape5: TfrxShapeView
          Left = 518.338900000000000000
          Top = 238.110236220000000000
          Width = 65.964727960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 452.008040000000000000
          Top = 238.110236220000000000
          Width = 65.964727960000000000
          Height = 21.165354330000000000
          ShowHint = False
        end
        object Shape7: TfrxShapeView
          Left = 645.961040000000000000
          Top = 238.110390000000000000
          Width = 68.787401574803100000
          Height = 21.090967010000000000
          ShowHint = False
        end
        object Memo23: TfrxMemoView
          Left = 456.567100000000000000
          Top = 240.755905510000000000
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
          Left = 522.252073460000000000
          Top = 240.755905510000000000
          Width = 59.293113920000000000
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
          Left = 645.693260000000000000
          Top = 240.755905510000000000
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
          Left = 582.709030000000000000
          Top = 240.755905510000000000
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
          Left = 83.149660000000000000
          Top = 240.755905510000000000
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
        object Memo22: TfrxMemoView
          Left = 56.692950000000000000
          Top = 196.535560000000000000
          Width = 142.977118080000000000
          Height = 18.125231900000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."cpf"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxOrcamento
        DataSetName = 'frxORCAMENTO'
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
            '[frxORCAMENTO."codprodfabr"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 84.506802730000000000
          Top = 4.669291340000000000
          Width = 359.084156590000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxORCAMENTO."descricao"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 454.543600000000000000
          Top = 4.669291340000000000
          Width = 64.629928580000000000
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
            '[frxORCAMENTO."qtd"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 526.354670000000000000
          Top = 4.669291340000000000
          Width = 55.559047800000000000
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
            '[frxORCAMENTO."vlrunit"]')
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
            '[frxORCAMENTO."vlrtotal"]')
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
          Left = 452.543600000000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 517.795287800000000000
          Height = 21.543307090000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 584.047620000000000000
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
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 59.338577800000000000
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
            '[frxORCAMENTO."vlricmssubs"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 657.638220000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo41: TfrxMemoView
          Left = 467.543307090000000000
          Top = 13.356309140000000000
          Width = 133.039370080000000000
          Height = 15.118107800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Total:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 467.543307090000000000
          Top = 39.079336510000000000
          Width = 133.039370080000000000
          Height = 16.220470000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Impostos ICMS S.T:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 467.543307090000000000
          Top = 66.392541020000000000
          Width = 133.064316660000000000
          Height = 16.220470000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Vlr. Total da NF:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 1.779530000000000000
          Top = 31.827073750000000000
          Width = 715.091836660000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 1.440940000000000000
          Top = 58.500488660000000000
          Width = 715.708858390000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 1.779530000000000000
          Top = 86.396039260000000000
          Width = 714.078905630000000000
          ShowHint = False
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
        object Memo59: TfrxMemoView
          Left = 615.576490480000000000
          Top = 40.260869570000000000
          Width = 100.273891010000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo59OnBeforePrint'
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxORCAMENTO."VLRICMSSUBS">,MasterData1)]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 616.091725000000000000
          Top = 67.130434780000000000
          Width = 99.404325790000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxORCAMENTO."vlrtotalorc"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 615.576490480000000000
          Top = 13.000000000000000000
          Width = 100.273891010000000000
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
          Memo.UTF8 = (
            '[xVlrOrc]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 1.779530000000000000
          Top = 96.992125980000000000
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
          Left = 154.999239860000000000
          Top = 96.992125980000000000
          Width = 559.370440000000000000
          Height = 17.385826770000000000
          ShowHint = False
          DataSet = frxOrcamento
          DataSetName = 'frxORCAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."descricaoformpag"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 2.000000000000000000
          Top = 134.948558930000000000
          Width = 37.820470000000000000
          Height = 17.385826770000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Frete:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 2.000000000000000000
          Top = 154.156309610000000000
          Width = 120.661410000000000000
          Height = 17.385826770000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Prazo de Despacho:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 2.000000000000000000
          Top = 173.690947950000000000
          Width = 57.240940000000000000
          Height = 17.385826770000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Garantia:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 2.000000000000000000
          Top = 116.267780000000000000
          Width = 127.928076660000000000
          Height = 17.500000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Modo de Pagamento:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 431.358153370000000000
          Top = 172.951410000000000000
          Width = 35.905511810000000000
          Height = 17.385826770000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NCM:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 132.283550000000000000
          Top = 116.267780000000000000
          Width = 448.784867820000000000
          Height = 17.391304350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."modo_pagamento"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 41.574830000000000000
          Top = 135.165430000000000000
          Width = 539.699040870000000000
          Height = 17.391304350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."frete"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 124.724490000000000000
          Top = 154.063080000000000000
          Width = 304.998427390000000000
          Height = 17.391304350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."prazo_despacho"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 60.472480000000000000
          Top = 172.960730000000000000
          Width = 98.329353910000000000
          Height = 17.385826770000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."garantia"]')
          ParentFont = False
        end
        object frxORCAMENTOfrxORCAMENTO1: TfrxMemoView
          Left = 469.661720000000000000
          Top = 172.960730000000000000
          Width = 162.519790000000000000
          Height = 17.385826770000000000
          ShowHint = False
          DataSet = frxOrcamento
          DataSetName = 'frxORCAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxORCAMENTO."ncm"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.779530000000000000
          Top = 195.637910000000000000
          Width = 755.460541740000000000
          Height = 35.419389130000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'Empresa Enquadrada no Simples Nacional, Permite Aproveitamento d' +
              'e [frxOrcEmpresa."IMPEST"]% de cr'#195#169'dito de ICMS')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 278.551181100000000000
          Top = 242.992270000000000000
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
            'Caracter'#195#173'sticas dos Produtos')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 1.779530000000000000
          Top = 260.110390000000000000
          Width = 715.708858390000000000
          ShowHint = False
          Frame.Width = 0.100000000000000000
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 2.779530000000000000
          Top = 262.669450000000000000
          Width = 351.496062990000000000
          Height = 390.614038570000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxORCAMENTO."caracteristica_produto01"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 363.010884290000000000
          Top = 262.894502080000000000
          Width = 351.496062990000000000
          Height = 390.425287170000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[frxORCAMENTO."caracteristica_produto02"]')
          ParentFont = False
        end
      end
    end
  end
  object frxOrcamento: TfrxDBDataset
    UserName = 'frxORCAMENTO'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 909
    Top = 324
  end
  object frxOrcCliente: TfrxDBDataset
    UserName = 'frxORCCLIENTE'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 877
    Top = 380
  end
  object frxOrcEmpresa: TfrxDBDataset
    UserName = 'frxORCEMPRESA'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 989
    Top = 188
  end
  object frxOrcCidade: TfrxDBDataset
    UserName = 'frxORCCIDADE'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 845
    Top = 220
  end
  object frxOrcFunc: TfrxDBDataset
    UserName = 'frxORCFUNC'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 925
    Top = 268
  end
  object frxOrcLoja: TfrxDBDataset
    UserName = 'frxORCLOJA'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 813
    Top = 268
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 922
    Top = 97
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 928
    Top = 17
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 880
    Top = 8
  end
end
