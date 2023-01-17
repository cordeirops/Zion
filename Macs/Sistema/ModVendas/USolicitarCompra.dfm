inherited FSolicitarCompra: TFSolicitarCompra
  Left = 423
  Top = 135
  Caption = 'FSolicitarCompra'
  ClientHeight = 527
  ClientWidth = 793
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 3
    Top = 6
    Width = 783
    Height = 488
    inherited Panel4: TPanel
      Width = 775
      Height = 454
      object Label3: TLabel
        Left = 723
        Top = 4
        Width = 48
        Height = 16
        Caption = 'TOTAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 650
        Top = 51
        Width = 122
        Height = 16
        Caption = 'Data Solicita'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PSelectCliente: TPanel
        Left = 5
        Top = 19
        Width = 530
        Height = 51
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label4: TLabel
          Left = 4
          Top = 15
          Width = 48
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 60
          Top = 15
          Width = 67
          Height = 13
          Caption = 'CPF/CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 172
          Top = 15
          Width = 41
          Height = 13
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LUZOPEN: TShape
          Left = 506
          Top = 27
          Width = 22
          Height = 23
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Visible = False
        end
        object LSelectPessoa: TLabel
          Left = 2
          Top = 0
          Width = 173
          Height = 13
          Caption = 'Informe o Fornecedor para o Pedido:'
        end
        object PPesCad: TPanel
          Left = 59
          Top = 28
          Width = 446
          Height = 22
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 2
          object DbCpf: TEdit
            Left = 0
            Top = 0
            Width = 111
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DbNomeCli: TEdit
            Left = 112
            Top = 0
            Width = 334
            Height = 22
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object EdCodCli: TEdit
          Left = 4
          Top = 28
          Width = 54
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, informe o cliente padr'#227'o consumidor'
          Color = 16777192
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = '0'
        end
        object EdCPF: TEdit
          Left = 59
          Top = 28
          Width = 111
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16777192
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
          TabOrder = 3
        end
        object EdNomeCli: TEdit
          Left = 171
          Top = 28
          Width = 334
          Height = 22
          Hint = 
            'Se voc'#234' deseja realizar o pedido com um cliente ou fornecedor n'#227 +
            'o cadastrado, pressione <ENTER> com o campo de c'#243'digo estando nu' +
            'lo (em branco ou com zeros). Para retornar ao modo de sele'#231#227'o pr' +
            'essione <ESC>.'
          Color = 16777192
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
          TabOrder = 4
        end
        object BtnProcPess: TBitBtn
          Left = 507
          Top = 29
          Width = 19
          Height = 19
          TabOrder = 1
          OnClick = BtnProcPessClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
      end
      object EdValorPed: TColorEditFloat
        Left = 650
        Top = 21
        Width = 121
        Height = 24
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clSkyBlue
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdData: TColorMaskEdit
        Left = 692
        Top = 67
        Width = 72
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 2
        Text = '  /  /    '
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object FPLista: TFashionPanel
        Left = 8
        Top = 128
        Width = 764
        Height = 321
        BevelOuter = bvNone
        Caption = 'FPLista'
        Color = 14933717
        TabOrder = 3
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
        Title = 'Lista de Produtos do Pedido:'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object Panel2: TPanel
          Left = 2
          Top = 21
          Width = 759
          Height = 103
          BevelInner = bvLowered
          Color = 16772332
          TabOrder = 0
          OnExit = EDQuantidadeExit
          object Label18: TLabel
            Left = 345
            Top = 20
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
            Left = 419
            Top = 20
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
            Left = 508
            Top = 20
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
            Left = 621
            Top = 20
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
            Left = 665
            Top = 2
            Width = 89
            Height = 13
            Hint = 'Estoque F'#237'sico'
            AutoSize = False
            Color = clMenu
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object pPesqBarraInterno: TPanel
            Left = 8
            Top = 18
            Width = 304
            Height = 46
            BevelOuter = bvNone
            Color = 14933717
            TabOrder = 1
            object Label15: TLabel
              Left = 28
              Top = 0
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
            object PCodFab: TPanel
              Left = 189
              Top = 0
              Width = 115
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 2
              object Label1: TLabel
                Left = 1
                Top = 3
                Width = 92
                Height = 16
                Caption = 'C'#243'd. Fabric.:'
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
                Width = 113
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
                OnKeyPress = EDCodFabKeyPress
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object PCodInterno: TPanel
              Left = 188
              Top = 0
              Width = 115
              Height = 41
              BevelOuter = bvNone
              Color = 16772332
              Enabled = False
              TabOrder = 1
              Visible = False
              object Label17: TLabel
                Left = 3
                Top = 3
                Width = 108
                Height = 16
                Caption = 'Contr. Interno:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EDCodInterno: TColorMaskEdit
                Left = 1
                Top = 19
                Width = 113
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
                OnKeyPress = EDCodInternoKeyPress
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
            end
            object EDCodBarra: TEdit
              Left = 28
              Top = 18
              Width = 157
              Height = 23
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
              OnKeyPress = EDCodBarraKeyPress
            end
            object BtnProcProd: TBitBtn
              Left = 5
              Top = 19
              Width = 20
              Height = 20
              Hint = 'Pressione para localizar o Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = BtnProcProdClick
              Glyph.Data = {
                B6000000424DB60000000000000036000000280000000A000000040000000100
                18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
            end
          end
          object pPesquisa: TPanel
            Left = 6
            Top = 18
            Width = 312
            Height = 51
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            object lPesquisa: TLabel
              Left = 24
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
            object edPesquisa: TEdit
              Left = 24
              Top = 18
              Width = 284
              Height = 23
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
              OnEnter = edPesquisaEnter
              OnKeyDown = edPesquisaKeyDown
              OnKeyUp = edPesquisaKeyUp
            end
            object btnBuscaProduto: TBitBtn
              Left = 2
              Top = 19
              Width = 20
              Height = 20
              Hint = 'Pressione para localizar o Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = BtnProcProdClick
              Glyph.Data = {
                B6000000424DB60000000000000036000000280000000A000000040000000100
                18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
                90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
                C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
            end
          end
          object Panel3: TPanel
            Left = 3
            Top = 69
            Width = 752
            Height = 30
            BevelOuter = bvNone
            Color = 16772332
            TabOrder = 8
            object Bevel1: TBevel
              Left = 4
              Top = 10
              Width = 745
              Height = 21
              Shape = bsFrame
            end
            object LSimilar: TLabel
              Left = 8
              Top = 11
              Width = 369
              Height = 13
              AutoSize = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LMarca: TLabel
              Left = 380
              Top = 11
              Width = 149
              Height = 13
              AutoSize = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LLocal: TLabel
              Left = 530
              Top = 11
              Width = 78
              Height = 13
              Hint = 'teste'
              AutoSize = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 7
              Top = -1
              Width = 92
              Height = 13
              Caption = 'PRODUTO SELECIONADO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial Narrow'
              Font.Style = []
              ParentFont = False
            end
          end
          object BtnInsertProd: TBitBtn
            Left = 685
            Top = 16
            Width = 70
            Height = 25
            Hint = 
              'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
              'na lista (ALT + I)'
            Caption = '&Inserir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
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
          object BtnDeleteList: TBitBtn
            Left = 685
            Top = 40
            Width = 70
            Height = 25
            Hint = 
              'Pressione para remover o produto selecionado na lista da mesma (' +
              'ALT + E)'
            Caption = '&Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
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
            Spacing = 10
          end
          object EDQuantidade: TColorEditFloat
            Left = 318
            Top = 37
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
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDValUnit: TColorEditFloat
            Left = 408
            Top = 37
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
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDDesc: TColorEditFloat
            Left = 497
            Top = 37
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
            OnExit = EDQuantidadeExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object EDTotal: TColorEditFloat
            Left = 562
            Top = 37
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
            OnExit = EDTotalExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BtnEscolheProc: TBitBtn
            Left = 306
            Top = 59
            Width = 12
            Height = 11
            Hint = 'Pressione para alterar o modo de procura (Alt+P)'
            Caption = '&P'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            OnClick = BtnEscolheProcClick
          end
          object PInfoExp: TPanel
            Left = 770
            Top = 3
            Width = 191
            Height = 85
            BevelWidth = 2
            TabOrder = 10
            Visible = False
            object PFashionInfoExport: TFashionPanel
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
              object LQuantInfoExport: TLabel
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
              object LInfoExport: TLabel
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
              object EdQuantExp: TColorEditFloat
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
                ValueFormat = '#,##0.00'
                ValueInteger = 0
                NotFoundText = 'N'#227'o Existe'
                InputText = 'Por favor entre na procura pelo crit'#233'rio'
                ButtonCaption = 'Ok'
              end
              object BtnInfoExport: TBitBtn
                Left = 129
                Top = 48
                Width = 27
                Height = 26
                TabOrder = 1
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
          object PLote: TPanel
            Left = 842
            Top = 52
            Width = 287
            Height = 45
            Hint = '<ENTER> Confirmar <ESC> Voltar'
            BevelWidth = 2
            Color = 16772332
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
            Visible = False
            object Label70: TLabel
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
            object Label71: TLabel
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
            object LObsLote: TLabel
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
            object EdLote: TColorMaskEdit
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
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdVenc: TColorMaskEdit
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
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EdObs: TColorMaskEdit
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
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object PSelectLote: TPanel
            Left = 802
            Top = 3
            Width = 285
            Height = 95
            BevelWidth = 2
            TabOrder = 12
            Visible = False
            object GDBLote: TDBGrid
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
        end
        object GroupBox5: TGroupBox
          Left = 3
          Top = 124
          Width = 761
          Height = 191
          Caption = 'Lista de produtos do pedido'
          Color = 16772332
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object LTotaisQtde: TLabel
            Left = 623
            Top = 173
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
          object DBGrid1: TDBGrid
            Left = 3
            Top = 13
            Width = 755
            Height = 158
            Color = 15794175
            Ctl3D = False
            DataSource = DMESTOQUE.DSSlave
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
                FieldName = 'COD_ITENSPEDC'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'contrint'
                Title.Caption = 'C'#243'd.'
                Width = 78
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
                FieldName = 'COD_ESTOQUE'
                Visible = False
              end>
          end
        end
      end
      object pGridProdutos: TPanel
        Left = 23
        Top = 209
        Width = 529
        Height = 128
        BevelOuter = bvNone
        TabOrder = 4
        Visible = False
        object DbGridProdutos: TDBGrid
          Left = 0
          Top = 0
          Width = 529
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
    inherited Panel1: TPanel
      Width = 775
      object Label2: TLabel [0]
        Left = 662
        Top = 6
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
      object EdNumeroPedido: TEdit
        Left = 691
        Top = 3
        Width = 81
        Height = 24
        Color = 16775658
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited PComunica: TPanel
    Left = 110
    Top = 140
  end
  inherited PConsulta: TPanel [2]
    Left = 5
    Top = 1
    Width = 777
    Height = 489
    inherited GroupBox1: TGroupBox
      Width = 767
      inherited EdNome: TFlatEdit
        Width = 646
        Text = 'Digite o Nome do Fornecedor'
        OnEnter = nil
        OnExit = nil
        OnKeyDown = nil
      end
      inherited BtnSelecionar: TBitBtn
        Left = 656
        Top = 18
        Visible = False
      end
    end
    inherited Painel: TPanel
      Width = 767
      inherited BtnFiltrar: TBitBtn [0]
        Left = 658
        Top = 34
        Enabled = False
        Visible = False
      end
      inherited BtnNovo: TBitBtn [1]
      end
      inherited BtnApagar: TBitBtn [2]
      end
      inherited BtnConsultar: TBitBtn [3]
      end
      inherited BtnRelatorio: TBitBtn [4]
        OnClick = BtnRelatorioClick
      end
      object BtnFechaPed: TBitBtn
        Left = 459
        Top = 2
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
      object BtnCancFechame: TBitBtn
        Left = 589
        Top = 2
        Width = 138
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancel. Fechamento'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnCancFechameClick
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
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 767
      Height = 392
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyPress = DBGridCadastroPadraoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PEDCOMP'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'Situa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'Pedido'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Fornecedor'
          Width = 467
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDCOMP'
          Title.Caption = 'Data'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor Total'
          Width = 96
          Visible = True
        end>
    end
  end
  object MEscolheProc: TPopupMenu
    Left = 619
    Top = 88
    object ControleInterno1: TMenuItem
      Caption = 'Controle Interno'
      OnClick = ControleInterno1Click
    end
    object CdFab1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFab1Click
    end
  end
  object frxComprovanteSolicitacao: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41907.701134641200000000
    ReportOptions.LastChange = 41919.664836481480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 62
    Top = 420
    Datasets = <
      item
        DataSet = dataSetFornecedor
        DataSetName = 'dataSetFornecedor'
      end
      item
        DataSet = dataSetItens
        DataSetName = 'dataSetItens'
      end
      item
        DataSet = dataSetLoja
        DataSetName = 'dataSetLoja'
      end
      item
        DataSet = dataSetPedido
        DataSetName = 'dataSetPedido'
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
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 638.299630000000000000
          Top = 1.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'N'#194#186' [dataSetPedido."NUMPED"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 1.779530000000000000
          Top = 1.000000000000000000
          Width = 166.299320000000000000
          Height = 64.252010000000000000
          ShowHint = False
          DataField = 'LOGOEMPRESA'
          DataSet = dataSetLoja
          DataSetName = 'dataSetLoja'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 175.637910000000000000
          Top = 5.000000000000000000
          Width = 453.543600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dataSetLoja."FANTASIA"] - CNPJ: [dataSetLoja."CNPJ"] ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 175.637910000000000000
          Top = 30.015770000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[dataSetLoja."ENDERECO"], [dataSetLoja."BAIRRO"], [dataSetLoja."' +
              'NUMERO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 629.740570000000000000
          Top = 22.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[dataSetPedido."dtpedcomp"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 1.000000000000000000
          Top = 74.031540000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'COMPROVANTE DE SOLICITA'#195#8225#195#402'O DE COMPRA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 175.637910000000000000
          Top = 51.913420000000000000
          Width = 434.645950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fone: [dataSetLoja."FONE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 68.031540000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 2.779530000000000000
          Top = 2.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Raz'#195#163'o Social:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 2.779530000000000000
          Top = 24.456710000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.346630000000000000
          Top = 24.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Telefone:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 2.779530000000000000
          Top = 46.354360000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 95.488250000000000000
          Top = 2.779530000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[dataSetFornecedor."NOME"]')
        end
        object Memo18: TfrxMemoView
          Left = 49.913420000000000000
          Top = 24.677180000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[dataSetFornecedor."CPFCNPJ"]')
        end
        object Memo19: TfrxMemoView
          Left = 334.378170000000000000
          Top = 24.677180000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[dataSetFornecedor."TELREL"]')
        end
        object Memo20: TfrxMemoView
          Left = 72.811070000000000000
          Top = 46.354360000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            
              '[dataSetFornecedor."ENDERECO"], [dataSetFornecedor."BAIRRO"], [d' +
              'ataSetFornecedor."CIDADE"] - [dataSetFornecedor."UF"]')
        end
      end
      object Header1: TfrxHeader
        Height = 21.543307086614170000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Left = 2.779530000000000000
          Top = 1.000000000000000000
          Width = 64.251968503937010000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cod. Int.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 71.590600000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cod. Fab.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 186.401670000000000000
          Top = 1.000000000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 549.134200000000000000
          Top = 1.000000000000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Marca')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 667.079160000000000000
          Top = 1.000000000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Estoque')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 69.590600000000000000
          Top = 1.000000000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 137.181200000000000000
          Top = 0.220470000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 546.913730000000000000
          Top = 1.133858270000000000
          Height = 20.787401570000000000
          ShowHint = False
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 665.858690000000000000
          Top = 1.133858270000000000
          Height = 20.787401570000000000
          ShowHint = False
          Diagonal = True
        end
        object Line9: TfrxLineView
          Top = 21.118120000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Diagonal = True
        end
        object Line10: TfrxLineView
          Top = 0.220470000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 184.519790000000000000
          Height = 20.787401570000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 138.842610000000000000
          Top = 1.000000000000000000
          Width = 43.464566930000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qtde.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        DataSet = dataSetItens
        DataSetName = 'dataSetItens'
        RowCount = 0
        object Memo21: TfrxMemoView
          Left = 2.779530000000000000
          Top = 3.779530000000000000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetItens."CONTRINT"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 71.590600000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetItens."CODPRODFABR"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 186.401670000000000000
          Top = 3.779530000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetItens."DESCRICAO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 549.165356770000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dataSetItens."MARCA"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 667.079160000000000000
          Top = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetItens."ESTFISICO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 665.858690000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 546.913730000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 136.960730000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line11: TfrxLineView
          Top = 22.677180000000000000
          Width = 718.110236220000000000
          ShowHint = False
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 68.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 138.842610000000000000
          Top = 3.779530000000000000
          Width = 43.464566930000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dataSetItens."qtde"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 184.196970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object dataSetFornecedor: TfrxDBDataset
    UserName = 'dataSetFornecedor'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 14
    Top = 451
  end
  object dataSetItens: TfrxDBDataset
    UserName = 'dataSetItens'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 46
    Top = 452
  end
  object dataSetLoja: TfrxDBDataset
    UserName = 'dataSetLoja'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 78
    Top = 452
  end
  object dataSetPedido: TfrxDBDataset
    UserName = 'dataSetPedido'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 110
    Top = 452
  end
end
