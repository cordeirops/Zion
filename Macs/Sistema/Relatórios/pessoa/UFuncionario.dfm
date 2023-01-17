inherited FFuncionario: TFFuncionario
  Left = 161
  Top = 138
  Caption = 'FFuncionario'
  ClientHeight = 548
  ClientWidth = 803
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 801
    Height = 513
  end
  inherited LDescTitulo: TLabel
    Left = 504
    Top = 17
    Width = 93
    Caption = 'Funcion'#225'rios'
  end
  inherited PComunica: TPanel
    Top = 180
  end
  inherited PConsulta: TPanel
    Top = 47
    inherited GroupBox1: TGroupBox
      Left = 159
      Width = 610
      inherited EdNome: TFlatEdit
        Left = 83
        Width = 277
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 497
      end
      inherited EdCodigo: TFlatEdit
        Font.Color = clGray
        OnEnter = EdCodigoEnter
        OnExit = EdCodigoExit
        OnKeyUp = EdCodigoKeyUp
      end
      inherited EdCpf: TFlatEdit
        Left = 361
        Width = 134
        Font.Color = clGray
        Text = 'CPF/CNPJ'
        OnEnter = EdCpfEnter
        OnExit = EdCpfExit
        OnKeyUp = EdCpfKeyUp
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 767
      DataSource = DMPESSOA.DSVWFuncionario
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'MARK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = ' X '
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Funcion'#225'rio'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Left = 1
    end
    inherited RGORDEM: TRadioGroup
      Left = 2
    end
  end
  inherited PCadastro: TPanel
    Top = 47
    inherited Panel4: TPanel
      Top = 32
      Height = 455
      inherited TCPessoa: TFlatTabControl
        inherited PCompletoFisica: TPanel
          inherited GBLOCALTRABALHO: TGroupBox
            Visible = False
          end
          inherited GroupBox6: TGroupBox
            Left = 8
            Top = 66
          end
          inherited GroupBox7: TGroupBox
            Left = 8
            Top = 163
          end
          object GroupBox10: TGroupBox
            Left = 6
            Top = 267
            Width = 737
            Height = 95
            Caption = 'Observa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object MObs: TMemo
              Left = 8
              Top = 16
              Width = 721
              Height = 73
              Color = 15658717
              Lines.Strings = (
                '')
              TabOrder = 0
            end
          end
        end
        inherited PComplementoJURIDICA: TPanel [1]
        end
        inherited PPrincipal: TPanel [2]
          inherited Label14: TLabel
            Left = 303
            Top = 137
          end
          inherited Label15: TLabel
            Left = 127
            Top = 137
          end
          inherited Label17: TLabel
            Left = 14
            Top = 137
          end
          inherited Label20: TLabel
            Left = 618
          end
          inherited LProximidade: TLabel
            Left = 416
            Top = 176
          end
          inherited lbVerMapa: TLabel
            Left = 549
            Top = 139
          end
          inherited LBENDNUM: TLabel
            Left = 637
            Top = 137
          end
          inherited Label68: TLabel
            Left = 52
            Top = 138
          end
          inherited PPesJuridica: TPanel
            TabOrder = 1
            inherited DBCODINTERNOPJ: TDBColorEdit
              DataSource = DMPESSOA.DSFuncionario
            end
          end
          inherited PPesFisica: TPanel
            TabOrder = 0
            inherited DBINTERNO: TDBColorEdit
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DSFuncionario
            end
            object CBDemitido: TCheckBox
              Left = 574
              Top = 96
              Width = 161
              Height = 17
              Caption = 'Funcion'#225'rio Demitido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
          end
          inherited dbbairro: TDBColorEdit
            Left = 126
            Top = 152
            TabOrder = 3
          end
          inherited DBColorEdit4: TDBColorEdit
            Left = 303
            Top = 152
            TabOrder = 4
          end
          inherited DBColorEdit13: TDBColorEdit
            Left = 14
            Top = 152
            TabOrder = 2
          end
          inherited PageControl1: TPageControl
            TabOrder = 11
          end
          inherited DBDATACAD: TDBColorEdit
            Left = 616
            Width = 91
            TabOrder = 8
          end
          inherited FrmBusca1: TFrmBusca
            TabOrder = 6
            inherited LUZOPEN: TShape
              Left = 352
            end
            inherited LUZMINUS: TShape
              Left = 370
            end
          end
          inherited FrmRegiao: TFrmBusca
            TabOrder = 10
            inherited LUZMINUS: TShape
              Left = 295
            end
          end
          inherited FrmNatural: TFrmBusca
            TabOrder = 9
            inherited LUZOPEN: TShape
              Left = 353
            end
            inherited LUZMINUS: TShape
              Left = 371
            end
          end
          inherited DBProximidade: TDBColorEdit
            Left = 416
            Top = 191
            Width = 195
            TabOrder = 7
          end
          inherited DBEndNumero: TDBColorEdit
            Left = 636
            Top = 152
            TabOrder = 5
          end
        end
        inherited PEspecifico: TPanel [3]
          Height = 414
          object Label47: TLabel
            Left = 11
            Top = 9
            Width = 92
            Height = 16
            Caption = 'Data Admiss'#227'o:'
            FocusControl = DBEdit2
          end
          object Label1: TLabel
            Left = 10
            Top = 49
            Width = 93
            Height = 16
            Caption = 'Data Demiss'#227'o:'
            FocusControl = DBEdit2
          end
          object lbin: TLabel
            Left = 282
            Top = 65
            Width = 51
            Height = 16
            Caption = 'Intervalo:'
          end
          object Label16: TLabel
            Left = 10
            Top = 89
            Width = 35
            Height = 16
            Caption = 'Setor:'
            FocusControl = DBEdit6
          end
          object DBEdit1: TDBEdit
            Left = 10
            Top = 25
            Width = 111
            Height = 22
            Color = 15658717
            DataField = 'DATA_ADMIS'
            DataSource = DMPESSOA.DSFuncionario
            MaxLength = 10
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 10
            Top = 65
            Width = 111
            Height = 22
            Color = 15658717
            DataField = 'DATA_DEMIS'
            DataSource = DMPESSOA.DSFuncionario
            MaxLength = 10
            TabOrder = 1
          end
          object GroupBox4: TGroupBox
            Left = 2
            Top = 136
            Width = 743
            Height = 297
            Caption = 'Plano de Cargos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label44: TLabel
              Left = 71
              Top = 63
              Width = 86
              Height = 16
              Hint = 'Comiss'#227'o para Produtos vendido a Vista'
              Caption = 'C.P.V.V (%):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label40: TLabel
              Left = 9
              Top = 18
              Width = 161
              Height = 18
              Hint = 
                'Caso n'#227'o apare'#231'a nenhum cargo, pressione INSERT para cadastrar n' +
                'ovo'
              Caption = 'Cargos dispon'#237'veis:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label41: TLabel
              Left = 194
              Top = 63
              Width = 85
              Height = 16
              Hint = 'Comiss'#227'o para Produtos vendido a Prazo'
              Caption = 'C.P.V.P (%):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label42: TLabel
              Left = 317
              Top = 63
              Width = 87
              Height = 16
              Hint = 'Comiss'#227'o para Servi'#231'o prestado a Vista'
              Caption = 'C.S.V.V (%):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label43: TLabel
              Left = 440
              Top = 63
              Width = 86
              Height = 16
              Hint = 'Comiss'#227'o para Servi'#231'o prestado a prazo'
              Caption = 'C.S.V.P (%):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object Label46: TLabel
              Left = 563
              Top = 63
              Width = 82
              Height = 16
              Caption = 'Sal'#225'rio ($):'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 9
              Top = 36
              Width = 335
              Height = 24
              Hint = 
                'Caso n'#227'o apare'#231'a nenhum cargo, pressione INSERT para cadastrar n' +
                'ovo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = []
              KeyField = 'COD_CARGO'
              ListField = 'DESCRICAO'
              ListSource = DMPESSOA.DSCargo
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyDown = DBLookupComboBox1KeyDown
            end
            object EDCPVV: TColorEditFloat
              Left = 71
              Top = 79
              Width = 89
              Height = 19
              Hint = 'Comiss'#227'o para Produtos vendido a Vista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
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
            object EDCPVP: TColorEditFloat
              Left = 194
              Top = 79
              Width = 89
              Height = 19
              Hint = 'Comiss'#227'o para Produtos vendido a Prazo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object EDCSVV: TColorEditFloat
              Left = 317
              Top = 79
              Width = 89
              Height = 19
              Hint = 'Comiss'#227'o para Servi'#231'o prestado a Vista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
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
            object EDCSVP: TColorEditFloat
              Left = 440
              Top = 79
              Width = 89
              Height = 19
              Hint = 'Comiss'#227'o para Servi'#231'o prestado a prazo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BTNADICIONAR: TBitBtn
              Left = 135
              Top = 100
              Width = 153
              Height = 25
              Hint = 
                'Adic. o cargo selecionado junto com as comiss'#245'es descritas, como' +
                ' novo cargo exercido pelo funcion'#225'rio'
              Caption = 'Adicionar como Novo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = BTNADICIONARClick
              Glyph.Data = {
                EE030000424DEE03000000000000360000002800000012000000110000000100
                180000000000B8030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6060606060606060
                6060606060606060606060606060606060606060606060606060606060606060
                6060FFFFFFFFFFFF0000FFFFFF60606060CFDF009FCF2090C020A0CF20A0CF20
                A0CF30AFCF30AFCF30BFDF40BFD040BFD040BFD06F9FBF606060FFFFFFFFFFFF
                0000FFFFFF409FBF60CFDF0F70A02F90BF2F90BF2F90BF2F90BF2F90BF2F90BF
                2F90BF2F90BF2F90BF2F90BF2F90BF4080A0606060FFFFFF0000FFFFFF409FBF
                60CFDF2F8FB0B0FFFFB0FFFFB0FFFFAFFFFF90EFF090EFF090EFF0AFFFFFAFFF
                FFAFFFFF40AFC0606060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CF70B0CFC0FF
                FFC0FFFFCFCFAFA0604FA0604FA0604F506F6F10A0D0B0FFFFB0FFFF4080A060
                6060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CFBFE0EFD0FFFFCFCFAFAF40009F
                30009F3000A03F10BF5030706F6F40BFD0B0FFFF5F80A0606060FFFFFFFFFFFF
                0000FFFFFF409FBF40AFC0BFE0EFE0F0E0AF4000AF4000904F00106000AF4000
                A03F008F502F30809FB0FFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B0
                30AFCFCFE0EFF0D090BF5000D06F006F70000F8000BF6F00A05F004F70007F70
                4F8FDFEF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B030AFCFD0E0EFE0AF
                60D07000508F00AF8F00E09000EF80001F70000060004F5F00A0E0FF5F80A060
                6060FFFFFFFFFFFF0000FFFFFF3090B02F90BFD0E0EFF0EFB08F8F0020BF402F
                C050FFCF6FFF9000AF8F001F700030702FEFFFFF5F80A0606060FFFFFFFFFFFF
                0000FFFFFF308FB01F90BFD0E0EFFFFFEF20BF404FD070AFEFAFCFF0B0F0B04F
                D090004F7000AFCFAFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF308FB0
                0080B0D0E0EFFFFFFFBFEFC090D070CFF0B0D0E0904FC050EF8000CFA050FFFF
                FFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF2F8FB00080B0D0E0EFFFFF
                FFFFFFFFF0F0CFD0E0908FDF806FCF6FF0D090FFFFFFFFFFFFFFFFFF5F80A060
                6060FFFFFFFFFFFF0000FFFFFF2F8FB0007FB0D0E0EFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBF606060FFFFFFFFFFFF
                0000FFFFFF308FB000609F1F8FB01F90BF1F90BF1F90BF1F90BF1F90BF1F90BF
                1F90BF1F90BF1F90BF1F90BF6F9FBF606060FFFFFFFFFFFF0000FFFFFFFFFFFF
                5090C0B0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DF
                EFBFE0F06F9FBFFFFFFFFFFFFFFFFFFF0000}
            end
            object BTNALTERAR: TBitBtn
              Left = 288
              Top = 100
              Width = 153
              Height = 25
              Hint = 
                'Altera as comiss'#245'es do cargo selecionado nos registros de cargos' +
                ' exercido pelo funcion'#225'rio, pelas comiss'#245'es descritas a cima'
              Caption = 'Alterar selecionado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = BTNALTERARClick
              Glyph.Data = {
                CA020000424DCA0200000000000036000000280000000E0000000F0000000100
                18000000000094020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4F6F704F5F5F2F2F
                2F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                FFFFFFFF80CFE06FC0EF40A0C03F809F3F6F7F4F5F602F2F2F303030FFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF9FE0FF7FE0FF7FE0FF70DFFF60
                D0F04FB0D0408FA0405F6FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF90
                DFF080EFFF80EFFF80EFFF80EFFF8FEFFF8FEFFF4FA0BF2F2F2FFFFFFFFFFFFF
                0000FFFFFFFFFFFF6FCFF070CFEF9FFFFF90FFFF90EFF08FF0FF90FFFF8FF0FF
                90EFF040606FFFFFFFFFFFFF0000FFFFFFFFFFFF7FCFF05FCFF0B0EFF0B0FFFF
                EFE0C0C0DFCF9FFFFFAFDFD0D0EFE05F9FAF303030FFFFFF0000FFFFFFFFFFFF
                80DFF07FE0FF70DFFF70DFF080C0D0DFE0DFEFE0CFFFEFCFF0F0E0BFE0EF4F5F
                60FFFFFF0000FFFFFFFFFFFF9FEFF090FFFF90FFFF90E0DFC0AF80D0CFAFC0E0
                E0B0CFC08FBFC0BFE0F04F7F8FFFFFFF0000FFFFFFFFFFFFA0E0F09FFFFF9FF0
                EFE0B07FFFEFDFFFDFBFFFE0CFFFEFDFA07F4F4F4040FFFFFFFFFFFF0000FFFF
                FFFFFFFF5F9FAFAFE0F0A0E0F0608F9070604FEFBF90FFDFAFD0B08FF0CFA08F
                6F4FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
                805FF0CFA03F2F1FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF70604FE0B080202020FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF0000}
            end
            object BTNAPAGARCARGO: TBitBtn
              Left = 441
              Top = 100
              Width = 153
              Height = 25
              Hint = 'Apaga o cargo selecionado a baixo'
              Caption = 'Apagar selecionado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = BTNAPAGARCARGOClick
              Glyph.Data = {
                6E040000424D6E04000000000000360000002800000014000000120000000100
                18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF7F7F7F7F7F7F606060606060707070707070707070FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFDFB0EFE0C0FFF0CFFFF0CFEFDFC0CFC0AFAFAF9F7F7F70606060707070FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCF
                FFEFC0EFD0BFDFB0AFE0CFBFEFCFBFFFEFD0FFFFDFC0C0B07F7F707F7F7FFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFE0BFEFDFCFE0
                C0C0DFBFBF80BF6F60BF5F40B04080CF7FFFFFDFEFEFCF606060707070FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0F0C090EFDFDFEFD0D0E0C0
                C080BF6F009F00109F1020A02070C060FFF0CF80807F8F8F8FFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB0FFF0EFF0EFEFE0CFCFE0B0B080BF6F
                009F0030AF30DFF0DF50BF4FDFE0AF8F8F808F8F8FFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE0BFFFE0C0FFFFFFF0F0EFD0AFAFEFBFBF80BF70CFDFBF50
                BF509FDF9FBFE0AFCFD090B0B0A08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFE0BFFFFFE0FFFFF0E0CFCFD0AFAFE0BFBF60B050BFDFB09FDF9F009F
                0040B03FFFDFAFB0B09F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                EFD0FFFFEFFFFFEFEFDFD0F0EFE0E0D0D0BFCFA0009F00109F10009F0040B03F
                FFE0BFDFD0B08F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFFF
                DFFFFFDFFFFFE0FFFFEFC0EFF0E0E0E0BFDFB080CF8080CF7F70C060FFF0DFDF
                D0B0707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0D0FFF0D0
                EFF0DFCFEFEFD0EFE0EFF0DFF0E0D0FFFFE0FFFFEFFFFFE0FFFFEFF0F0D06060
                60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B0F0CF8FF0DFAFD0F0E0D0
                EFDFF0F0DFE0F0FFE0CFCFF0EFEFEFF0EFFFCF9FFFEFC0FFFFDF606060FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFAF8F6FDFD0AFE0EFD0FFF0E0F0FF
                FFF0FFFFEFE0E0FFFFFFBFC0AFF0C080FFC08FFFDFB0707070FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE0BFFFF0CFCFDFCF6FC0DFAFE0F0DFFFFFE0FFFF
                E0FFFFD0FFFFCFBF90AF9070C0B0A0FFC090707070FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFE0BFFFFFFFFFFFFF8FD0EF6FC0E07FD0EFAFF0F090
                E0EFFFC08FDFC0A0CFAF90FFCF908F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E0EF70CFE070CFE0FFE0
                CFFFD0AFFFDFBFFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object GroupBox9: TGroupBox
              Left = 8
              Top = 128
              Width = 726
              Height = 145
              Caption = 'Cargo que o funcion'#225'rio exerce/exerceu'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object DBGrid3: TDBGrid
                Left = 2
                Top = 17
                Width = 722
                Height = 120
                Color = 15794175
                Ctl3D = False
                DataSource = DMPESSOA.DSelectFC
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
                    FieldName = 'DATA'
                    Title.Caption = 'Data Opera'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Cargo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SALARIO'
                    Title.Caption = 'Sal'#225'rio'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COMISSAO_VVPRO'
                    Title.Caption = 'C.P.V.V.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COMISSAO_VPPRO'
                    Title.Caption = 'C.P.V.P.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COMISSAO_VVSER'
                    Title.Caption = 'C.S.V.V.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COMISSAO_VPSER'
                    Title.Caption = 'C.S.V.P.'
                    Visible = True
                  end>
              end
            end
            object EDSALARIO: TColorEditFloat
              Left = 563
              Top = 79
              Width = 108
              Height = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              Text = '0,00'
              ValueFormat = '#,##0.00'
              ValueInteger = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            inline FrmServico: TFrmBusca
              Left = 364
              Top = 23
              Width = 370
              Height = 38
              Color = 16772332
              ParentColor = False
              TabOrder = 10
              Visible = False
              inherited LTextoBusca: TLabel
                Top = -1
                Width = 49
                Caption = 'Servi'#231'o'
              end
              inherited LUZOPEN: TShape
                Left = 322
              end
              inherited LUZMINUS: TShape
                Left = 340
              end
              inherited EdDescricao: TFlatEdit
                Left = 67
              end
              inherited BTNOPEN: TBitBtn
                Left = 324
                OnClick = FrmServicoBTNOPENClick
              end
              inherited BTNMINUS: TBitBtn
                Left = 342
                OnClick = FrmServicoBTNMINUSClick
              end
              inherited EDCodigo: TFlatEdit
                Width = 65
              end
            end
          end
          object GroupBox8: TGroupBox
            Left = 280
            Top = 4
            Width = 465
            Height = 60
            Caption = ' Carteira de Trabalho '
            TabOrder = 2
            object Label38: TLabel
              Left = 181
              Top = 17
              Width = 34
              Height = 16
              Caption = 'S'#233'rie:'
              FocusControl = DBEdit4
            end
            object Label39: TLabel
              Left = 301
              Top = 17
              Width = 92
              Height = 16
              Caption = 'N'#250'mero do PIS:'
              FocusControl = DBEdit5
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 33
              Width = 169
              Height = 22
              Color = 15658717
              DataField = 'NUM_CTPS'
              DataSource = DMPESSOA.DSFuncionario
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 179
              Top = 33
              Width = 118
              Height = 22
              Color = 15658717
              DataField = 'SER_CTPS'
              DataSource = DMPESSOA.DSFuncionario
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 304
              Top = 33
              Width = 153
              Height = 22
              Color = 15658717
              DataField = 'NUM_PIS'
              DataSource = DMPESSOA.DSFuncionario
              TabOrder = 2
            end
          end
          object CBPalm: TCheckBox
            Left = 628
            Top = 70
            Width = 61
            Height = 17
            Caption = 'Palm'
            TabOrder = 3
            OnClick = CBPalmClick
          end
          object DBNumPalm: TDBEdit
            Left = 626
            Top = 89
            Width = 111
            Height = 22
            Color = 15658717
            DataField = 'NUMPALM'
            DataSource = DMPESSOA.DSFuncionario
            TabOrder = 4
          end
          object GroupBox11: TGroupBox
            Left = 128
            Top = 8
            Width = 137
            Height = 105
            Caption = 'Hor'#225'rio de Trabalho'
            TabOrder = 6
            object Label18: TLabel
              Left = 11
              Top = 17
              Width = 49
              Height = 16
              Caption = 'Entrada:'
              FocusControl = DBEdit2
            end
            object Label19: TLabel
              Left = 11
              Top = 57
              Width = 37
              Height = 16
              Caption = 'Sa'#237'da:'
              FocusControl = DBEdit2
            end
            object DBEdit7: TDBEdit
              Left = 10
              Top = 33
              Width = 111
              Height = 22
              Color = 15658717
              DataField = 'HORAENT'
              DataSource = DMPESSOA.DSFuncionario
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 10
              Top = 73
              Width = 111
              Height = 22
              Color = 15658717
              DataField = 'HORASAIDA'
              DataSource = DMPESSOA.DSFuncionario
              TabOrder = 1
            end
          end
          object MIntervalo: TMemo
            Left = 280
            Top = 80
            Width = 337
            Height = 57
            Color = 15658717
            Lines.Strings = (
              '')
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 10
            Top = 105
            Width = 111
            Height = 22
            Color = 15658717
            DataField = 'SETOR'
            DataSource = DMPESSOA.DSFuncionario
            MaxLength = 60
            TabOrder = 8
          end
        end
      end
      inherited PTipoPessoa: TPanel
        Top = 40
      end
    end
  end
  inherited PBotoes: TPanel
    Left = 757
    Top = -12
    inherited BtnFecha: TSpeedButton
      Left = 0
    end
  end
  inherited Relatorio: TPopupMenu
    Top = 30
    object RelFuncionrio1: TMenuItem
      Caption = 'Ficha do Funcion'#225'rio'
      OnClick = RelFuncionrio1Click
    end
  end
  inherited XMLDocument1: TXMLDocument
    Top = 86
  end
  inherited AlteraPessoa: TPopupMenu
    Top = 31
  end
  object FSRelFunc: TfrReport
    Dataset = FSDSFUNC
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 345
    Top = 47
    ReportForm = {18000000}
  end
  object FSDSFUNC: TfrDBDataSet
    DataSource = DMPESSOA.DSRel
    Left = 312
    Top = 48
  end
end
