inherited FLancCaixa: TFLancCaixa
  Left = 262
  Top = 55
  Caption = '\'
  ClientHeight = 649
  ClientWidth = 799
  KeyPreview = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Top = 25
    Width = 792
    Height = 624
  end
  inherited LCaixa: TLabel
    Left = 584
    Top = 684
  end
  inherited LUsuario: TLabel
    Left = 493
    Top = 684
  end
  inherited ShapeRodape1: TShape
    Left = 651
    Top = 684
  end
  inherited ShapeRodape2: TShape
    Left = 653
    Top = 684
  end
  object Label7: TLabel [7]
    Left = 16
    Top = 304
    Width = 77
    Height = 13
    Caption = 'Documento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 144
    Top = 304
    Width = 62
    Height = 13
    Caption = 'Hist'#243'rico:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape13: TShape [9]
    Left = 12
    Top = 300
    Width = 769
    Height = 45
    Brush.Color = 16772332
    Pen.Color = clGray
    Pen.Width = 2
  end
  object Label3: TLabel [10]
    Left = 18
    Top = 304
    Width = 40
    Height = 16
    Caption = 'Filtros:'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LVlrCheque: TLabel [11]
    Left = 482
    Top = 617
    Width = 44
    Height = 16
    Caption = 'Cheque'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LVlrOutros: TLabel [12]
    Left = 682
    Top = 618
    Width = 39
    Height = 16
    Caption = 'Outros'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel [13]
    Left = 362
    Top = 617
    Width = 110
    Height = 16
    Caption = 'Total em cheque:'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel [14]
    Left = 594
    Top = 617
    Width = 78
    Height = 16
    Caption = 'Total outros:'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  inherited LDescTitulo: TLabel
    Top = 14
    Width = 162
    Caption = 'Lan'#231'amento em Caixa'
  end
  object Label14: TLabel [17]
    Left = 154
    Top = 617
    Width = 103
    Height = 16
    Caption = 'Total em cart'#227'o:'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LVlrCartao: TLabel [18]
    Left = 274
    Top = 617
    Width = 38
    Height = 16
    Caption = 'Cart'#227'o'
    Color = 16772332
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  inherited PComunica: TPanel
    Left = 126
    Top = 228
  end
  object GroupBox1: TGroupBox [20]
    Left = 12
    Top = 124
    Width = 609
    Height = 173
    Caption = 'Efetuar Lan'#231'amentos'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object lbCliFor: TLabel
      Left = 10
      Top = 154
      Width = 90
      Height = 17
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PCaixaTransf: TPanel
      Left = 355
      Top = 58
      Width = 247
      Height = 90
      BevelWidth = 3
      Enabled = False
      TabOrder = 1
      Visible = False
      OnExit = PBancoExit
      object DBGCaixaTransf: TDBGrid
        Left = 5
        Top = 6
        Width = 237
        Height = 79
        Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
        Color = 16121836
        Ctl3D = False
        DataSource = DMCAIXA.DCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGCaixaTransfKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMCAIXA'
            Title.Caption = 'N'#186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Caixa'
            Width = 64
            Visible = True
          end>
      end
    end
    object PLancamento: TPanel
      Left = 3
      Top = 15
      Width = 605
      Height = 136
      BevelOuter = bvNone
      Color = 16772332
      Enabled = False
      TabOrder = 0
      object Label6: TLabel
        Left = 2
        Top = 90
        Width = 100
        Height = 18
        Caption = 'Hist'#243'rico:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 110
        Top = 2
        Width = 100
        Height = 18
        Caption = 'Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 538
        Top = 2
        Width = 60
        Height = 18
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 7
        Top = 2
        Width = 50
        Height = 18
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 352
        Top = 5
        Width = 100
        Height = 18
        Caption = 'Documento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 218
        Top = 2
        Width = 110
        Height = 18
        Caption = 'Dt. Refer.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object PCredito: TPanel
        Left = 67
        Top = 21
        Width = 182
        Height = 57
        TabOrder = 7
        Visible = False
        object Label2: TLabel
          Left = 9
          Top = 4
          Width = 66
          Height = 16
          Caption = 'Aplicar em:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CBCREDITO: TComboBox
          Left = 9
          Top = 25
          Width = 166
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
          Text = 'Cliente'
          OnKeyPress = CBCREDITOKeyPress
          Items.Strings = (
            'Cliente'
            'Fornecedor')
        end
      end
      inline FrmBusca: TFrmBusca
        Left = 65
        Top = 53
        Width = 498
        Height = 38
        Color = 16772332
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 168
          Caption = 'Conta para Lan'#231'amento'
          Font.Name = 'Courier New'
        end
        inherited LUZOPEN: TShape
          Left = 448
          Top = 14
        end
        inherited LUZMINUS: TShape
          Left = 467
          Top = 14
        end
        inherited BTNOPEN: TBitBtn [3]
          Left = 450
          Top = 17
          OnClick = FrmBuscaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn [4]
          Left = 468
          Top = 17
          OnClick = FrmBuscaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit [5]
          Width = 143
          Height = 22
          ColorFlat = 15400921
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          OnKeyPress = FrmBuscaEDCodigoKeyPress
        end
        inherited EdDescricao: TFlatEdit [6]
          Left = 146
          Width = 303
          Height = 22
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
        end
      end
      object EdDtRefer: TColorMaskEdit
        Left = 219
        Top = 21
        Width = 123
        Height = 26
        Ctl3D = True
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
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
      object DBVALOR: TColorEditFloat
        Left = 474
        Top = 22
        Width = 121
        Height = 26
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
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
      object DBTIPOCAI: TComboBox
        Left = 5
        Top = 21
        Width = 52
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 0
        Text = 'DBTIPOCAI'
        OnKeyPress = DBTIPOCAIKeyPress
        Items.Strings = (
          'E'
          'S')
      end
      object DBTIPO: TComboBox
        Left = 66
        Top = 21
        Width = 145
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 1
        Text = 'Carteira'
        OnExit = DBTIPOExit
        OnKeyPress = DBTIPOKeyPress
        Items.Strings = (
          'Carteira'
          'T. Banco'
          'T. Caixa'
          'Cr'#233'dito'
          '...................'
          'Chq. Vista'
          'Chq. Prazo'
          'C - Cart'#227'o'
          'D - Cart'#227'o'
          'Boleto'
          '')
      end
      object DBDoc: TColorEditFloat
        Left = 352
        Top = 22
        Width = 114
        Height = 26
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        OnEnter = DBDocEnter
        EditType = fltString
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBHISTORICO: TColorEditFloat
        Left = 3
        Top = 108
        Width = 598
        Height = 26
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '0,00'
        OnEnter = DBHISTORICOEnter
        Alignment = taLeftJustify
        EditType = fltString
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object PBanco: TPanel [21]
    Left = 251
    Top = 284
    Width = 367
    Height = 90
    BevelWidth = 3
    Enabled = False
    TabOrder = 6
    Visible = False
    OnExit = PBancoExit
    object DBGCTA: TDBGrid
      Left = 5
      Top = 6
      Width = 357
      Height = 79
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
  inherited PBotoes: TPanel
    Top = 13
  end
  object Painel: TPanel
    Left = 11
    Top = 43
    Width = 771
    Height = 29
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 2
    object Shape6: TShape
      Left = 352
      Top = 6
      Width = 1
      Height = 17
      Brush.Color = 13750737
    end
    object Shape7: TShape
      Left = 355
      Top = 3
      Width = 1
      Height = 22
      Brush.Color = 13750737
    end
    object Shape8: TShape
      Left = 358
      Top = 6
      Width = 1
      Height = 17
      Brush.Color = 13750737
    end
    object Shape9: TShape
      Left = 562
      Top = 7
      Width = 1
      Height = 16
      Brush.Color = 13750737
    end
    object Shape10: TShape
      Left = 565
      Top = 4
      Width = 1
      Height = 21
      Brush.Color = 13750737
    end
    object Shape12: TShape
      Left = 568
      Top = 7
      Width = 1
      Height = 16
      Brush.Color = 13750737
    end
    object BtnNovo: TBitBtn
      Left = 2
      Top = 2
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para obter novo cadastro'
      Caption = 'Novo - F4'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnNovoClick
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
    object BtnApagar: TBitBtn
      Left = 116
      Top = 2
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
      Caption = 'Apagar - F8'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtnApagarClick
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
        FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
        FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
        0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
        00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
        0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
        9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
        FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
    object BtnConsultar: TBitBtn
      Left = 230
      Top = 2
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para visualizar ou alterar os dados do regi' +
        'stro selecionado a baixo'
      Caption = '&Consultar - F6'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnConsultarClick
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
    object BtnGravar: TBitBtn
      Left = 365
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
        'izadas'
      Caption = 'Gravar - F5'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnGravarClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFF606060505050707070707070FFFFFFFFFFFF7070707070706F6F6F707070
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF808080A0A0
        A07F7F7F5F5F5F4040403F3030604F4F8F6F6F9070706F5F5F3F30302F2F2FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA0AFAFD0D0D0FFFFF0E0F0D0
        FFF0E0EFC09FC0807FF0AFAFFFC0C0FFDFDFFFEFEFD0C0C04F3F3F2F2F2FFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFB0B0B0D0CFCFF0EFD020AF202FAF209F
        9F60FF9FA0FFA0A0FFAFAFFFBFBFFFEFEFFFFFFFD0C0C03F3030707070FFFFFF
        FFFFFF000000FFFFFFFFFFFFB0B0B0EFE0E0F0E0CF30C04000A0009F9F70FFB0
        BFFFA0A0FFB0BFFFBFD0FFF0F0FFFFFFFFFFFF7F6060303030FFFFFFFFFFFF00
        0000FFFFFFFFFFFFB0B0B0EFE0E0F0E0BF50E06F1FB02FCFAF9FFFCFCFFFCFCF
        E0C0D0C0B0AFF0E0E0FFF0F0FFF0F0C0A0A02F2F2FFFFFFFFFFFFF000000FFFF
        FFFFFFFFB0B0B0EFEFEFF0DFB05FE0B030A0CFC0A0BFFFCFCFFFDFDFE0D0DFBF
        A09FEFCFCFFFCFCFFFCFCFCFA0A03F3F3FFFFFFFFFFFFF000000FFFFFFFFFFFF
        B0B0B0F0DFB0F0D0AF60AFF03F90FFA0A0C0FFF0F0FFFFFFFFF0FFF0BFDFFFC0
        CFFF9F9FFFB0B0BF8080707070FFFFFFFFFFFF000000FFFFFFFFFFFFD0A06FF0
        AF50FFD0A0F0CF9FDFC0A0CFA09FEFEFEFFFFFFFFFF0F0FFCFD0FFB0B0FFA0A0
        FF9F9F806060FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFCFAF8FE0B08FFFC0
        70FFBF5FFFC06FFFB06FD0A080EFE0EFFFF0F0FFDFDFFFCFCFFFB0B0B07F7FFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBFBFC0DFD0C0FFC070FFCF80
        FFC07FFFBF6FF0B050D09F5FE0B09FE0BFAFB090909F7F7FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0D0D0EFE0DFE0D0C0EFEFF0EFEFEFEF
        E0E0E0E0DFE0D0B0E0BF80E0B070706060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFDFCFCFDFC0BFB08070B08080BF8F8FC09F9FCFA0
        AFDFCFD0EFF0FFE0E0EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFDFCFCFDFD0C0FFCF90FFC08FFFC09FF0BFA0EFB0A0E0B0A0EFC0C0
        FFEFEFFFEFEF5050504F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFDFCFCFF0CF90FFC08FFFCFA0FFCFAFFFCFB0FFD0BFFFD0C0CFAFAFEFDFDFFF
        FFFFC0C0C0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFCFCF
        DFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCF
        CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object BTNCANCELAR: TBitBtn
      Left = 459
      Top = 2
      Width = 95
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
        ' o painel de consulta'
      Caption = 'Cancelar - F7'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BTNCANCELARClick
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
    object BtnRelatorio: TBitBtn
      Left = 576
      Top = 2
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
      Caption = '&Relat'#243'rios'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BtnRelatorioClick
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
    object BitBtn15: TBitBtn
      Left = 672
      Top = 2
      Width = 97
      Height = 25
      Caption = 'Gaveta'
      TabOrder = 6
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
  end
  object GroupBox5: TGroupBox
    Left = 628
    Top = 123
    Width = 153
    Height = 44
    Caption = 'Saldo Anterior'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    object LSaldoAnt: TLabel
      Left = 3
      Top = 24
      Width = 146
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 627
    Top = 176
    Width = 154
    Height = 44
    Caption = 'Saldo Inicial'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    object LSaldoIni: TLabel
      Left = 8
      Top = 24
      Width = 139
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 628
    Top = 233
    Width = 153
    Height = 44
    Caption = 'Saldo em Caixa'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    object LSaldoCaixa: TLabel
      Left = 3
      Top = 24
      Width = 146
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      ParentFont = False
    end
  end
  object EdDoc: TEdit
    Left = 16
    Top = 320
    Width = 97
    Height = 22
    Hint = 'Filtrar Lan'#231'amento pelo N'#250'mero Documento'
    Color = 15794175
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnKeyDown = EdDocKeyDown
  end
  object EdHist: TEdit
    Left = 232
    Top = 320
    Width = 294
    Height = 22
    Hint = 'Filtrar Lan'#231'amentos pelo Hist'#243'rico'
    Color = 15794175
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnKeyDown = EdHistKeyDown
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 352
    Width = 770
    Height = 260
    Caption = 'Lan'#231'amentos Efetuados'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    object DBGLANCADOS: TDBGrid
      Left = 2
      Top = 24
      Width = 766
      Height = 233
      Color = 15925247
      DataSource = DMCAIXA.DWLanCaixa
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PMCheque
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGLANCADOSDrawColumnCell
      OnKeyDown = DBGLANCADOSKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPCAI'
          Title.Caption = 'OP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOC'
          Title.Caption = 'Doc.'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTLANC'
          Title.Caption = 'Lan'#231'amento'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Pagto'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO'
          Title.Caption = 'Hist'#243'rico'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASSIFICACAO'
          Title.Caption = 'Conta'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Conta'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_USUARIO'
          Title.Caption = 'C'#243'd. Usu'#225'rio'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Usu'#225'rio'
          Width = 64
          Visible = True
        end>
    end
    object PCaixa: TPanel
      Left = 3
      Top = 112
      Width = 279
      Height = 144
      Color = 16772332
      TabOrder = 1
      Visible = False
      object DBGCaixa: TDBGrid
        Left = 5
        Top = 6
        Width = 268
        Height = 99
        Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
        Color = 16121836
        Ctl3D = False
        DataSource = DMCAIXA.DCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_CAIXA'
            Title.Caption = 'Cod'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCAIXA'
            Title.Caption = 'N'#186
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Caixa'
            Width = 171
            Visible = True
          end>
      end
      object BtnSelecionar: TBitBtn
        Left = 144
        Top = 112
        Width = 129
        Height = 25
        Caption = 'Selecionar - F9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
      object BtnCancCaixa: TBitBtn
        Left = 6
        Top = 112
        Width = 123
        Height = 25
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnCancCaixaClick
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
  object RGFiltro: TRadioGroup
    Left = 624
    Top = 303
    Width = 153
    Height = 39
    Caption = 'Filtro'
    Color = 16772332
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Aberto'
      'Todos')
    ParentColor = False
    TabOrder = 13
  end
  object EdValorLanc: TColorEditFloat
    Left = 528
    Top = 320
    Width = 89
    Height = 22
    Hint = 'Filtrar os Lan'#231'amentos pelo valor de lan'#231'amento'
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    Text = '0,00'
    OnKeyDown = EdValorLancKeyDown
    ValueFormat = '##,##0.00'
    ValueInteger = 0
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object GroupBox6: TGroupBox
    Left = 12
    Top = 76
    Width = 765
    Height = 45
    Caption = 'Caixa Selecionado:'
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'BankGothic Md BT'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 14
    object Label5: TLabel
      Left = 10
      Top = 154
      Width = 90
      Height = 17
      Caption = 'Hist'#243'rico:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LCxLogado: TLabel
      Left = 10
      Top = 18
      Width = 40
      Height = 19
      Caption = 'caixa'
      Color = 16772332
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BtnTrocaCaixa: TButton
      Left = 680
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Trocar Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnTrocaCaixaClick
    end
    object DBLookupCBCaixas: TDBLookupComboBox
      Left = 480
      Top = 16
      Width = 185
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'BankGothic Md BT'
      Font.Style = []
      KeyField = 'COD_CAIXA'
      ListField = 'DESCRICAO'
      ListSource = DMCAIXA.DSCaixaPAcess
      ParentFont = False
      TabOrder = 1
    end
  end
  object EdData: TColorMaskEdit
    Left = 116
    Top = 320
    Width = 112
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
    TabOrder = 10
    Text = '  /  /    '
    OnKeyDown = EdDataKeyDown
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object PMRELCAIXA: TPopupMenu
    Left = 572
    Top = 44
    object RelAgrupadopordatas1: TMenuItem
      Caption = 'Rel. Agrupado por datas'
      OnClick = RelAgrupadopordatas1Click
    end
    object RelAgrupadoporCaixas1: TMenuItem
      Caption = 'Rel. Agrupado por Caixas'
      OnClick = RelAgrupadoporCaixas1Click
    end
    object PorPeriodo: TMenuItem
      Caption = 'Por Per'#237'odo'
      OnClick = PorPeriodoClick
    end
    object RelatriodeLanamentos1: TMenuItem
      Caption = 'Relat'#243'rio de Lan'#231'amentos'
      OnClick = RelatriodeLanamentos1Click
    end
    object RelatriodeVendaseRecebimento1: TMenuItem
      Caption = 'Relat'#243'rio de Vendas e Recebimento'
      OnClick = RelatriodeVendaseRecebimento1Click
    end
    object BalanceteMensal1: TMenuItem
      Caption = 'Balancete Mensal'
      OnClick = BalanceteMensal1Click
    end
    object FluxodeCaixaCompleto1: TMenuItem
      Caption = 'Relat'#243'rio de Recebimentos e Pagamentos'
      OnClick = FluxodeCaixaCompleto1Click
    end
  end
  object PMCheque: TPopupMenu
    OnChange = PMChequeChange
    Left = 135
    Top = 218
    object MovimentarCheque1: TMenuItem
      Caption = 'Transferir Cheque'
      OnClick = MovimentarCheque1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object RelatrioporPerodo1: TMenuItem
      Caption = 'Relat'#243'rio por Per'#237'odo'
      OnClick = RelatrioporPerodo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CancelarLanamento1: TMenuItem
      Caption = 'Cancelar Lan'#231'amento'
      OnClick = CancelarLanamento1Click
    end
  end
end
