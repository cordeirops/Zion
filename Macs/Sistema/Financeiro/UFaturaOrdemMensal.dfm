inherited FFaturaOrdemMensal: TFFaturaOrdemMensal
  Left = 101
  Top = 59
  Caption = 'FFaturaOrdemMensal'
  ClientHeight = 559
  ClientWidth = 834
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 96
  end
  object Panel1: TPanel
    Left = 4
    Top = 11
    Width = 826
    Height = 539
    Caption = 'Panel1'
    TabOrder = 1
    object PcFaturas: TPageControl
      Left = 5
      Top = 5
      Width = 814
      Height = 528
      ActivePage = TabSheet1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = PcFaturasChange
      object TabSheet1: TTabSheet
        Caption = 'Nova Fatura'
        object PFinanceiro: TPanel
          Left = 148
          Top = 67
          Width = 497
          Height = 279
          BevelWidth = 4
          Color = clBlack
          TabOrder = 5
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
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Courier New'
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
            Height = 267
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
              Top = 84
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
              Top = 72
              Width = 70
              Height = 16
              Caption = 'Dt. Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 385
              Top = 72
              Width = 69
              Height = 16
              Caption = 'Hs Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object BtnMoedaOK: TBitBtn
              Left = 134
              Top = 231
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
              Left = 254
              Top = 231
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
            object CBPagamento2: TComboBox
              Left = 9
              Top = 105
              Width = 176
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
              TabOrder = 1
              Text = 'Carteira'
              Items.Strings = (
                'Carteira'
                'Cheque'
                'C - Cart'#227'o'
                'D - Cart'#227'o'
                'Banco')
            end
            inline FrmFormPag: TFrmBusca
              Left = 7
              Top = 23
              Width = 478
              Height = 43
              Color = 16772332
              ParentColor = False
              TabOrder = 0
              inherited LTextoBusca: TLabel
                Width = 145
                Caption = 'Forma de pagamento:'
              end
              inherited LUZOPEN: TShape
                Left = 429
              end
              inherited LUZMINUS: TShape
                Left = 453
              end
              inherited EdDescricao: TFlatEdit
                Width = 354
                ColorFlat = 16318450
              end
              inherited BTNOPEN: TBitBtn
                Left = 431
                Width = 18
                OnClick = FrmFormPagBTNOPENClick
              end
              inherited BTNMINUS: TBitBtn
                Left = 450
                OnClick = FrmFormPagBTNMINUSClick
              end
              inherited EDCodigo: TFlatEdit
                ColorFlat = 15269845
              end
            end
            object DBDATAENTREGA: TColorMaskEdit
              Left = 290
              Top = 89
              Width = 87
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
              TabOrder = 2
              Text = '  /  /    '
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DBHORAENTREGA: TColorMaskEdit
              Left = 386
              Top = 89
              Width = 87
              Height = 22
              Color = 15597546
              Ctl3D = False
              EditMask = '!90:00;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              Text = '  :  '
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            inline FrmContaServ: TFrmBusca
              Left = 6
              Top = 156
              Width = 472
              Height = 64
              Color = 16772332
              ParentColor = False
              TabOrder = 5
              inherited LTextoBusca: TLabel
                Width = 246
                Caption = 'Conta para Lan'#231'amento de Servi'#231'os:'
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
                Width = 151
                ColorFlat = 15329769
              end
            end
            object Panel7: TPanel
              Left = 286
              Top = 117
              Width = 123
              Height = 39
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 4
              object Label29: TLabel
                Left = 4
                Top = 0
                Width = 93
                Height = 16
                Caption = 'Dt Fechamento:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
              end
              object EdDtFech: TColorMaskEdit
                Left = 4
                Top = 15
                Width = 97
                Height = 22
                Color = 15597546
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
          end
        end
        object PLimpaOSSelecionada: TPanel
          Left = 0
          Top = 0
          Width = 809
          Height = 498
          BevelOuter = bvNone
          TabOrder = 4
          object Label6: TLabel
            Left = 0
            Top = 64
            Width = 807
            Height = 57
            Alignment = taCenter
            AutoSize = False
            Caption = 'Selecione uma OS para Fatura!'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PUltimaFatura: TPanel
          Left = 0
          Top = 96
          Width = 804
          Height = 128
          TabOrder = 1
          object Shape3: TShape
            Left = 2
            Top = 4
            Width = 800
            Height = 119
            Brush.Color = clBtnFace
            Pen.Color = clMaroon
            Pen.Width = 8
          end
          object Label1: TLabel
            Left = 15
            Top = 14
            Width = 506
            Height = 39
            Caption = #218'ltimo Per'#237'odo Apurado:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
          end
          object EdUltimoPeriodoApurado: TEdit
            Left = 15
            Top = 46
            Width = 538
            Height = 47
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '00/00/0000 - 00/00/0000'
          end
        end
        object POrdem: TPanel
          Left = 2
          Top = 7
          Width = 802
          Height = 74
          TabOrder = 0
          object Shape4: TShape
            Left = 2
            Top = 2
            Width = 800
            Height = 65
            Brush.Color = clBtnFace
            Pen.Color = clGray
            Pen.Width = 8
          end
          object EdNumero: TEdit
            Left = 16
            Top = 12
            Width = 97
            Height = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'EdNumero'
          end
          object EdData: TEdit
            Left = 115
            Top = 12
            Width = 179
            Height = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'EdData'
          end
          object EdNome: TEdit
            Left = 296
            Top = 12
            Width = 358
            Height = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = 'EdNome'
          end
          object EdValor: TFloatEdit
            Left = 658
            Top = 12
            Width = 134
            Height = 44
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0,00'
            OnExit = EdValorExit
            ValueFormat = '##,##0.00'
            ValueInteger = 0
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 240
          Width = 804
          Height = 212
          TabOrder = 2
          object Shape5: TShape
            Left = 2
            Top = 4
            Width = 800
            Height = 203
            Brush.Color = clBtnFace
            Pen.Color = clTeal
            Pen.Width = 8
          end
          object Label2: TLabel
            Left = 18
            Top = 17
            Width = 204
            Height = 33
            Caption = 'Nova Fatura:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 91
            Top = 58
            Width = 85
            Height = 33
            Caption = 'Meses'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 242
            Top = 17
            Width = 272
            Height = 33
            Caption = 'Per'#237'odo '#205'nicial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 554
            Top = 17
            Width = 238
            Height = 33
            Caption = 'Per'#237'odo Final:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EdNumeroMeses: TSpinEdit
            Left = 18
            Top = 48
            Width = 67
            Height = 43
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            MaxLength = 2
            MaxValue = 12
            MinValue = 1
            ParentFont = False
            TabOrder = 0
            Value = 1
            OnChange = EdNumeroMesesChange
          end
          object EdPeriodoInicialNovaFatura: TEdit
            Left = 242
            Top = 48
            Width = 271
            Height = 41
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = '00/00/0000'
          end
          object EdPeriodoFinalNovaFatura: TEdit
            Left = 554
            Top = 48
            Width = 234
            Height = 41
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            Text = '00/00/0000 '
          end
          object EdVlrFinal: TColorEditFloat
            Left = 554
            Top = 104
            Width = 234
            Height = 41
            Color = 11777023
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -29
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            Text = '0,00'
            ValueFormat = '##,##0.00'
            ValueInteger = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object PDadosFatura: TPanel
            Left = 16
            Top = 120
            Width = 533
            Height = 74
            BevelInner = bvLowered
            Color = clInactiveCaption
            TabOrder = 4
            object Label12: TLabel
              Left = 6
              Top = 3
              Width = 66
              Height = 22
              Caption = 'Dia do'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 6
              Top = 20
              Width = 110
              Height = 22
              Caption = 'Vencimento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 124
              Top = 3
              Width = 77
              Height = 22
              Caption = 'Tipo do'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 124
              Top = 20
              Width = 99
              Height = 22
              Caption = 'Pagamento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 252
              Top = 3
              Width = 88
              Height = 22
              Caption = 'Forma de'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 252
              Top = 20
              Width = 99
              Height = 22
              Caption = 'Pagamento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdDiaVencimento: TSpinEdit
              Left = 6
              Top = 38
              Width = 107
              Height = 32
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              MaxLength = 2
              MaxValue = 31
              MinValue = 1
              ParentFont = False
              TabOrder = 0
              Value = 1
              OnChange = EdNumeroMesesChange
            end
            object CBPagamento: TComboBox
              Left = 125
              Top = 40
              Width = 121
              Height = 30
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ItemHeight = 22
              ParentFont = False
              TabOrder = 1
              Text = 'Carteira'
              Items.Strings = (
                'Carteira'
                'Banco'
                'Boleto')
            end
            object EDCodigoFormPag: TFlatEdit
              Left = 252
              Top = 41
              Width = 39
              Height = 27
              Hint = 
                'Para selecionar diretamente. Informe o c'#243'digo e pressione <ENTER' +
                '>'
              ColorBorder = clSkyBlue
              ColorFlat = 15400921
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnKeyDown = EDCodigoFormPagKeyDown
            end
            object EdDescricaoFormPag: TFlatEdit
              Left = 291
              Top = 41
              Width = 215
              Height = 27
              ColorBorder = clSkyBlue
              ColorFlat = clWhite
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object btnBuscaFormPag: TBitBtn
              Left = 507
              Top = 42
              Width = 21
              Height = 25
              Hint = 'Pressione para selecionar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnBuscaFormPagClick
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
        object BitBtn1: TBitBtn
          Left = 208
          Top = 457
          Width = 377
          Height = 37
          Caption = 'Faturar Novo Per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Faturas em Aberto'
        ImageIndex = 1
        object DBGridCadastroPadrao: TDBGrid
          Left = 0
          Top = 32
          Width = 801
          Height = 433
          Color = 15794175
          Ctl3D = False
          DataSource = DMFINANC.DSALX
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
              FieldName = 'DTFATURA'
              Title.Caption = 'Dt. Fatura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTINI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Inicial'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTFIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Final'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Vencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTDEBITO'
              Title.Caption = 'Dt. D'#233'bito'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPG'
              Title.Caption = 'Vlr. Pago'
              Visible = True
            end>
        end
        object btnCancelaFatura: TBitBtn
          Left = 2
          Top = 474
          Width = 167
          Height = 23
          Caption = 'Cancelar Fatura'
          TabOrder = 1
          OnClick = btnCancelaFaturaClick
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
      object TabSheet3: TTabSheet
        Caption = 'Faturas Liquidadas'
        ImageIndex = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 32
          Width = 801
          Height = 465
          Color = 15794175
          Ctl3D = False
          DataSource = DMFINANC.DSALX
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
              FieldName = 'DTFATURA'
              Title.Caption = 'Dt. Fatura'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTINI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Inicial'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTFIM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Final'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTVENC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Caption = 'Dt. Vencimento'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTDEBITO'
              Title.Caption = 'Dt. D'#233'bito'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPG'
              Title.Caption = 'Vlr. Pago'
              Width = 77
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'OS a Faturar'
        ImageIndex = 3
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 88
          Height = 16
          Caption = 'Data Limite'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 136
          Top = 8
          Width = 56
          Height = 16
          Caption = 'N'#250'mero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 264
          Top = 8
          Width = 128
          Height = 16
          Caption = 'Nome do Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 568
          Top = 70
          Width = 232
          Height = 16
          Caption = 'Duplo clique para nova fatura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object DbgaFaturar: TDBGrid
          Left = 0
          Top = 88
          Width = 801
          Height = 409
          Color = 15794175
          Ctl3D = False
          DataSource = DMServ.DSAlx1
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
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DbgaFaturarDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO'
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTFECH'
              Title.Caption = 'DtFech.'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTINI'
              Title.Caption = 'Dt. Ini.'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTFIM'
              Title.Caption = 'Dt. Fim'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTFATURA'
              Title.Caption = 'Dt. Fatura'
              Width = 65
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Total'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Title.Caption = 'Cliente'
              Width = 428
              Visible = True
            end>
        end
        object EdNumeroFiltroAFaturar: TColorMaskEdit
          Left = 136
          Top = 24
          Width = 120
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnKeyPress = EdDtFiltroAFaturarKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdNomeFiltroAFaturar: TColorMaskEdit
          Left = 264
          Top = 24
          Width = 537
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnKeyPress = EdDtFiltroAFaturarKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdDtFiltroAFaturar: TColorMaskEdit
          Left = 8
          Top = 24
          Width = 120
          Height = 28
          EditMask = '!99/99/0000;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnKeyPress = EdDtFiltroAFaturarKeyPress
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
    end
  end
end
