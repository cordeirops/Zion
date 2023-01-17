inherited FOrdemManutencao: TFOrdemManutencao
  Left = 174
  Top = 90
  Caption = 'FOrdemManutencao'
  ClientHeight = 562
  ClientWidth = 950
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 285
    Top = 191
  end
  inherited PConsulta: TPanel [1]
    Left = 4
    Top = 8
    Width = 941
    Height = 552
    inherited GroupBox1: TGroupBox
      Top = 33
      Width = 938
      Height = 50
      inherited EdNome: TFlatEdit
        Left = 144
        Width = 677
        Text = 'Digite o Fornecedor'
        OnKeyPress = nil
      end
      inherited BtnSelecionar: TBitBtn
        Left = 824
      end
      object EdNum: TFlatEdit
        Left = 6
        Top = 19
        Width = 131
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
        Text = 'Digite o N'#250'mero'
        OnEnter = EdNumEnter
        OnExit = EdNumExit
        OnKeyDown = EdNumKeyDown
      end
    end
    inherited Painel: TPanel
      Top = 0
      Width = 938
      inherited BtnApagar: TBitBtn
        Enabled = False
      end
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
      object BtnFechaPed: TBitBtn
        Left = 572
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
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 938
      Height = 461
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'SITUACAO'
          Title.Caption = 'Status'
          Width = 57
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N'#250'mero'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDCOMP'
          Title.Caption = 'Data'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Fornecedor'
          Width = 636
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 99
          Visible = True
        end>
    end
    object PFinanceiro: TPanel
      Left = 228
      Top = 93
      Width = 497
      Height = 318
      BevelWidth = 4
      Color = clBlack
      TabOrder = 3
      Visible = False
      object PBanco: TPanel
        Left = 127
        Top = 107
        Width = 266
        Height = 108
        BevelWidth = 3
        Color = 16772332
        TabOrder = 1
        Visible = False
        object Label115: TLabel
          Left = 8
          Top = 8
          Width = 95
          Height = 16
          Caption = 'Cta. Corrente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGCTA: TDBGrid
          Left = 5
          Top = 24
          Width = 252
          Height = 73
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
      object FPFinanceiro: TFashionPanel
        Left = 6
        Top = 6
        Width = 485
        Height = 307
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
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Title = 'Informa'#231#245'es para o financeiro'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttCustom
        object Label26: TLabel
          Left = 8
          Top = 36
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
        object Label27: TLabel
          Left = 289
          Top = 36
          Width = 115
          Height = 20
          Caption = 'Dt. Fechamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel7: TPanel
          Left = 286
          Top = 117
          Width = 123
          Height = 39
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 1
        end
        object BtnMoedaOK: TBitBtn
          Left = 134
          Top = 264
          Width = 75
          Height = 24
          Caption = '&Ok'
          TabOrder = 3
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
          Left = 254
          Top = 263
          Width = 97
          Height = 25
          Caption = 'C&ancelar'
          TabOrder = 4
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
        object CBPagamento: TComboBox
          Left = 9
          Top = 57
          Width = 216
          Height = 24
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = 'Carteira'
          OnClick = CBPagamentoClick
          OnExit = CBPagamentoExit
          OnKeyPress = CBPagamentoKeyPress
          Items.Strings = (
            'Carteira'
            'Cheque'
            'Cart'#227'o')
        end
        object EdDtFech: TColorMaskEdit
          Left = 290
          Top = 57
          Width = 119
          Height = 22
          Color = 15597546
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object CBGeraFinanceiro: TCheckBox
          Left = 186
          Top = 126
          Width = 123
          Height = 17
          Caption = 'N'#227'o gerar financeiro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object PanelBanco: TPanel
          Left = 10
          Top = 81
          Width = 283
          Height = 89
          BevelWidth = 3
          Enabled = False
          TabOrder = 7
          Visible = False
          object DBGridBanco: TDBGrid
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
            OnKeyDown = DBGridBancoKeyDown
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
        object PMostraConta: TPanel
          Left = 11
          Top = 76
          Width = 214
          Height = 37
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 8
          Visible = False
          object lbAgencia: TDBText
            Left = 8
            Top = 7
            Width = 41
            Height = 12
            Alignment = taRightJustify
            DataField = 'NUMAGENCIA'
            DataSource = DMBANCO.DWCtaCor
          end
          object lbBanco: TDBText
            Left = 8
            Top = 21
            Width = 181
            Height = 17
            DataField = 'DESCBANCO'
            DataSource = DMBANCO.DWCtaCor
          end
          object Label6: TLabel
            Left = 51
            Top = 7
            Width = 5
            Height = 13
            Caption = '/'
          end
          object lbConta: TDBText
            Left = 66
            Top = 7
            Width = 105
            Height = 12
            DataField = 'NUMCTACOR'
            DataSource = DMBANCO.DWCtaCor
          end
        end
        inline FrmConta: TFrmBusca
          Left = 6
          Top = 109
          Width = 472
          Height = 64
          Color = 16772332
          ParentColor = False
          TabOrder = 2
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
            ColorFlat = clWhite
          end
          inherited BTNOPEN: TBitBtn
            Left = 425
            Top = 42
            OnClick = FrmContaServBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 447
            Top = 42
            OnClick = FrmContaServBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 16
            Width = 167
            ColorFlat = 15329769
          end
        end
      end
    end
  end
  inherited PCadastro: TPanel [2]
    Left = 4
    Width = 941
    Height = 552
    inherited Panel4: TPanel
      Width = 938
      Height = 521
      object Shape2: TShape
        Left = 6
        Top = 91
        Width = 926
        Height = 427
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object Label9: TLabel
        Left = 842
        Top = 2
        Width = 50
        Height = 18
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 210
        Width = 210
        Height = 18
        Caption = 'Manuten'#231#227'o realizada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 528
        Top = 264
        Width = 110
        Height = 18
        Caption = 'Vlr. Unit.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 415
        Top = 263
        Width = 50
        Height = 18
        Caption = 'Qtde:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 679
        Top = 264
        Width = 60
        Height = 18
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 17
        Top = 96
        Width = 220
        Height = 18
        Caption = 'Produto em manuten'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LUZOPEN: TShape
        Left = 894
        Top = 111
        Width = 30
        Height = 27
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
        Shape = stRoundRect
        Visible = False
      end
      object DBGProdutos: TDBGrid
        Left = 13
        Top = 306
        Width = 912
        Height = 207
        Color = 15597546
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGProdutosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTRINT'
            Title.Caption = 'C'#243'digo'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'Manuten'#231#227'o'
            Width = 253
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDEPROD'
            Title.Caption = 'Quant.'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Caption = 'Vlr.Unit.'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'V. Total'
            Width = 74
            Visible = True
          end>
      end
      inline FrmFornecedor: TFrmBusca
        Left = 9
        Top = 4
        Width = 824
        Height = 41
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 3
          Top = -1
          Width = 110
          Height = 18
          Caption = 'Fornecedor:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 795
          Width = 28
          Height = 25
        end
        inherited LUZMINUS: TShape
          Left = 160
          Top = 11
        end
        inherited EdDescricao: TFlatEdit
          Left = 73
          Width = 723
          Height = 22
          TabStop = False
          ColorFlat = 16318450
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 798
          Top = 17
          Width = 20
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Height = -13
          Font.Name = 'Courier New'
          ParentFont = False
          TabOrder = 3
          OnClick = FrmFornecedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 167
          Top = 14
          Enabled = False
          TabOrder = 0
          TabStop = False
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Left = 3
          Width = 71
          Height = 22
          ColorFlat = 15400921
          CharCase = ecUpperCase
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MaxLength = 8
          TabOrder = 1
          OnExit = FrmFornecedorEDCodigoExit
          OnKeyDown = FrmFornecedorEDCodigoKeyDown
        end
      end
      inline FrmFormaPagamento: TFrmBusca
        Left = 592
        Top = 50
        Width = 337
        Height = 37
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Top = -1
          Width = 190
          Height = 18
          Caption = 'Forma de Pagamento:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 152
          Width = 23
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 312
          Top = 11
          Height = 25
        end
        inherited EdDescricao: TFlatEdit
          Left = 42
          Top = 14
          Width = 268
          Height = 22
          ColorFlat = clWhite
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 0
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Height = 21
          OnClick = FrmFormaPagamentoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 154
          Height = 21
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 14
          Width = 39
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 2
          OnExit = FrmFormaPagamentoEDCodigoExit
          OnKeyDown = FrmFormaPagamentoEDCodigoKeyDown
        end
      end
      object EdData: TColorMaskEdit
        Left = 842
        Top = 18
        Width = 79
        Height = 22
        Ctl3D = False
        Enabled = False
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
      inline FrmItens: TFrmBusca
        Left = 16
        Top = 139
        Width = 908
        Height = 42
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Left = 2
          Top = -2
          Width = 200
          Height = 18
          Caption = 'Itens de manuten'#231#227'o:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 878
          Width = 30
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 842
          Top = 18
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 880
          Top = 16
          Width = 24
          Height = 22
          TabOrder = 0
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 844
          Top = 21
          Enabled = False
          Visible = False
        end
        inherited EDCodigo: TFlatEdit [5]
          Top = 16
          Width = 68
          Height = 23
          ColorFlat = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Courier New'
          TabOrder = 1
          Visible = False
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 0
          Top = 16
          Width = 881
          Height = 22
          Enabled = True
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ReadOnly = False
          OnKeyDown = FrmItensEdDescricaoKeyDown
          OnKeyUp = FrmItensEdDescricaoKeyUp
        end
      end
      object EdDescricaoManutencao: TEdit
        Left = 15
        Top = 228
        Width = 905
        Height = 28
        Color = clGradientActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object BtnInsertItem: TBitBtn
        Left = 831
        Top = 257
        Width = 89
        Height = 22
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        BiDiMode = bdLeftToRight
        Caption = '&INSERIR'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BtnInsertItemClick
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
      object BtnDeleteItem: TBitBtn
        Left = 831
        Top = 281
        Width = 89
        Height = 22
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        BiDiMode = bdLeftToRight
        Caption = '&REMOVER'
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = BtnDeleteItemClick
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
      object EdVlrTotal: TFloatEdit
        Left = 680
        Top = 280
        Width = 145
        Height = 24
        Color = clGradientInactiveCaption
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
      object EdQtde: TFloatEdit
        Left = 415
        Top = 280
        Width = 106
        Height = 24
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = '0,00'
        OnExit = EdQtdeExit
        OnKeyPress = EdQtdeKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
      object EdVlrUnitario: TFloatEdit
        Left = 528
        Top = 280
        Width = 145
        Height = 24
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Text = '0,00'
        OnExit = EdVlrUnitarioExit
        OnKeyPress = EdVlrUnitarioKeyPress
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
      object EdDescricaoProduto: TEdit
        Left = 16
        Top = 183
        Width = 900
        Height = 28
        Color = 16772332
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      inline FrmResponsavel: TFrmBusca
        Left = 9
        Top = 46
        Width = 576
        Height = 42
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 13
        inherited LTextoBusca: TLabel
          Left = 2
          Top = 1
          Width = 120
          Height = 18
          Caption = 'Respons'#225'vel:'
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 542
          Top = 14
          Width = 30
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 290
          Top = -1
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 544
          Top = 18
          Width = 24
          Height = 23
          OnClick = FrmResponsavelBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 316
          Top = 2
          Enabled = False
          TabOrder = 3
          Visible = False
        end
        inherited EDCodigo: TFlatEdit [5]
          Top = 18
          Width = 68
          Height = 23
          ColorFlat = clInactiveCaption
          Font.Height = -15
          Font.Name = 'Courier New'
          TabOrder = 2
          Visible = False
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 2
          Top = 18
          Width = 540
          Height = 22
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ReadOnly = False
          TabOrder = 0
        end
      end
      object PListaProdutos: TPanel
        Left = 16
        Top = 177
        Width = 882
        Height = 155
        TabOrder = 12
        Visible = False
        object DBGridListaProdutos: TDBGrid
          Left = 0
          Top = 0
          Width = 881
          Height = 153
          DataSource = DMESTOQUE.DWSimilar
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridListaProdutosDblClick
          OnKeyPress = DBGridListaProdutosKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ESTOQUE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'Controle'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 774
              Visible = True
            end>
        end
      end
      object EdProdutoDescricao: TFlatEdit
        Left = 15
        Top = 114
        Width = 881
        Height = 22
        ColorBorder = clSkyBlue
        ColorFlat = 16775666
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnKeyDown = EdProdutoDescricaoKeyDown
        OnKeyUp = EdProdutoDescricaoKeyUp
      end
      object BTNOPEN: TBitBtn
        Left = 896
        Top = 114
        Width = 24
        Height = 23
        Hint = 'Pressione para selecionar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = BTNOPENClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
    inherited Panel1: TPanel
      Width = 938
      object Label13: TLabel [0]
        Left = 719
        Top = 5
        Width = 43
        Height = 19
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel [1]
        Left = 543
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
      object EdNumero: TEdit
        Left = 576
        Top = 2
        Width = 138
        Height = 31
        Color = clGradientInactiveCaption
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EdTotal: TFloatEdit
        Left = 781
        Top = 0
        Width = 156
        Height = 31
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
      end
    end
  end
  object pmRelatorios: TPopupMenu
    Left = 438
    Top = 16
    object ComprovanteManuteno1: TMenuItem
      Caption = 'Comprovante Manuten'#231#227'o'
      OnClick = ComprovanteManuteno1Click
    end
    object ProdutosManuteno1: TMenuItem
      Caption = 'Produtos Manuten'#231#227'o'
      OnClick = ProdutosManuteno1Click
    end
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 398
    Top = 16
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 358
    Top = 16
  end
end
