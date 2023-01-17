inherited FCotaMoeda: TFCotaMoeda
  Top = 21
  Caption = 'FCotaMoeda'
  ClientHeight = 522
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape2: TShape
    Top = 495
  end
  inherited Shape11: TShape
    Top = 500
  end
  inherited Shape4: TShape
    Top = 500
  end
  inherited PComunica: TPanel [3]
  end
  inherited PLogoSI: TPanel [4]
    Top = 498
    inherited IMGLogosi: TImage
      Top = 0
    end
  end
  inherited PForm: TPanel [5]
    Height = 491
    inherited Shape1: TShape
      Height = 462
    end
    inherited Label1: TLabel
      Width = 159
      Caption = 'Orion Macs - Cotação de Moedas'
    end
    object Label9: TLabel
      Left = 472
      Top = 40
      Width = 64
      Height = 14
      Caption = '[Insert]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 545
      Top = 40
      Width = 214
      Height = 13
      Caption = 'Press. Para lançar nova cotação para moeda'
    end
    object Label2: TLabel
      Left = 472
      Top = 54
      Width = 73
      Height = 14
      Caption = '[Delete] '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 545
      Top = 54
      Width = 223
      Height = 13
      Caption = 'Press. Para apagar o lançaamento selecionado'
    end
    object GBCota: TGroupBox
      Left = 466
      Top = 84
      Width = 310
      Height = 397
      Caption = 'Cotações'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBCOTACAO: TDBGrid
        Left = 4
        Top = 19
        Width = 302
        Height = 374
        Color = 16119285
        Ctl3D = False
        FixedColor = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bookman Old Style'
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
        TitleFont.Style = []
        OnEnter = DBCOTACAOEnter
        OnExit = DBCOTACAOExit
        Columns = <
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Caption = 'Valor'
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
            FieldName = 'MOEDAREF'
            Title.Caption = 'Ref.'
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 32
      Width = 454
      Height = 449
      Caption = 'Moedas Cadastradas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBGMOEDA: TDBGrid
        Left = 5
        Top = 40
        Width = 442
        Height = 403
        Color = 15790307
        Ctl3D = False
        DataSource = DMFINANC.DSMoeda
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGMOEDACellClick
        OnEnter = DBGMOEDAEnter
        OnExit = DBGMOEDAExit
        OnKeyUp = DBGMOEDAKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'MOEDA'
            Title.Caption = 'Moeda'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEM'
            Title.Caption = 'Origem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIMBOLO'
            Visible = True
          end>
      end
      object BitBtn1: TBitBtn
        Left = 300
        Top = 13
        Width = 49
        Height = 25
        Hint = 'Pressione para incluir nova moeda a lista'
        Caption = '&N'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          700077777777777770007777700077777000777770C077777000777770C07777
          7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
          7000777770C07777700077777000777770007777777777777000777777777777
          7000}
      end
      object BitBtn2: TBitBtn
        Left = 349
        Top = 13
        Width = 49
        Height = 25
        Hint = 'Pressione para excluir a moeda selecionada da lista'
        Caption = '&E'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn2Click
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object BitBtn3: TBitBtn
        Left = 398
        Top = 13
        Width = 49
        Height = 25
        Hint = 'Pressione para alterar a moeda selecionada na lista'
        Caption = '&A'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
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
    end
    object PCotacao: TPanel
      Left = 312
      Top = 103
      Width = 465
      Height = 145
      BevelWidth = 4
      TabOrder = 2
      Visible = False
      OnExit = PCotacaoExit
      object FashionPanel1: TFashionPanel
        Left = 4
        Top = 4
        Width = 457
        Height = 137
        BevelOuter = bvNone
        Caption = 'FashionPanel1'
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
        Title = 'Lançando nova cotação para a moeda'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object GroupBox3: TGroupBox
          Left = 8
          Top = 24
          Width = 313
          Height = 41
          Caption = 'Moeda para cotação'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          object LMoeda: TLabel
            Left = 8
            Top = 22
            Width = 297
            Height = 17
            AutoSize = False
            Caption = 'Moeda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 74
          Width = 313
          Height = 47
          Caption = 'Valor referente a moeda'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object DBMoedaRef: TDBLookupComboBox
            Left = 8
            Top = 24
            Width = 297
            Height = 20
            DataField = 'COD_MOEDAREF'
            DataSource = DMFINANC.DSCotaMoeda
            KeyField = 'COD_MOEDA'
            ListField = 'MOEDA; ORIGEM'
            ListSource = DMFINANC.DSAlxMoeda
            TabOrder = 0
          end
        end
        object GroupBox5: TGroupBox
          Left = 325
          Top = 24
          Width = 129
          Height = 57
          Caption = 'Cotação'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object EDCotacao: TColorEditFloat
            Left = 4
            Top = 24
            Width = 120
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnExit = EDCotacaoExit
            ValueFormat = '#,##0.00'
            ValueInteger = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
        end
        object BitBtn4: TBitBtn
          Left = 325
          Top = 84
          Width = 129
          Height = 25
          Caption = '&Confirmar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn4Click
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
        object BitBtn5: TBitBtn
          Left = 325
          Top = 108
          Width = 129
          Height = 25
          Caption = 'Canc&elar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn5Click
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
      end
    end
    object PCadMoeda: TPanel
      Left = 12
      Top = 70
      Width = 465
      Height = 251
      BevelWidth = 4
      TabOrder = 3
      Visible = False
      OnExit = PCadMoedaExit
      object FashionPanel2: TFashionPanel
        Left = 4
        Top = 4
        Width = 457
        Height = 244
        BevelOuter = bvNone
        Caption = 'FashionPanel1'
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
        Title = 'Cadastrando nova moeda'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object GroupBox6: TGroupBox
          Left = 8
          Top = 24
          Width = 193
          Height = 41
          Caption = 'Desc. da Moeda'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object DBMOEDA: TDBColorEdit
            Left = 3
            Top = 16
            Width = 187
            Height = 23
            DataField = 'MOEDA'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
        end
        object BitBtn6: TBitBtn
          Left = 85
          Top = 215
          Width = 129
          Height = 25
          Caption = '&Confirmar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn6Click
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
        object BitBtn7: TBitBtn
          Left = 237
          Top = 215
          Width = 129
          Height = 25
          Caption = 'Canc&elar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn7Click
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
        object GroupBox7: TGroupBox
          Left = 368
          Top = 24
          Width = 79
          Height = 41
          Caption = 'Símbolo'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          object DBSIMBOLO: TDBColorEdit
            Left = 7
            Top = 16
            Width = 65
            Height = 23
            DataField = 'SIMBOLO'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox8: TGroupBox
          Left = 203
          Top = 24
          Width = 163
          Height = 41
          Caption = 'Origem'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object DBORIGEM: TDBColorEdit
            Left = 3
            Top = 16
            Width = 157
            Height = 23
            DataField = 'ORIGEM'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
        end
        object GroupBox9: TGroupBox
          Left = 8
          Top = 67
          Width = 440
          Height = 142
          Caption = 'Para fins de impressão'
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          object Label4: TLabel
            Left = 48
            Top = 20
            Width = 193
            Height = 14
            Caption = 'Plural da Desc. da Moeda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 48
            Top = 60
            Width = 127
            Height = 14
            Caption = 'Fração da Moeda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 48
            Top = 100
            Width = 203
            Height = 14
            Caption = 'Plural da Fração da Moeda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
          end
          object DBPLURALMOEDA: TDBColorEdit
            Left = 48
            Top = 36
            Width = 345
            Height = 20
            Color = clSilver
            DataField = 'PLURALMOEDA'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
          object DBFRACAO: TDBColorEdit
            Left = 48
            Top = 76
            Width = 345
            Height = 20
            Color = clSilver
            DataField = 'FRACAO'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
          object DBPLURALFRACAO: TDBColorEdit
            Left = 48
            Top = 116
            Width = 345
            Height = 20
            Color = clSilver
            DataField = 'PLURALFRACAO'
            DataSource = DMFINANC.DSMoeda
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'Não Existe'
            InputText = 'Por favor entre na procura pelo critério'
            ButtonCaption = 'Ok'
          end
        end
      end
    end
  end
  inherited FlatHint1: TFlatHint
    Left = 736
    Top = 24
  end
end
