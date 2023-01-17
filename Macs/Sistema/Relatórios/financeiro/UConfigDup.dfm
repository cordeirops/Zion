inherited FConfigDup: TFConfigDup
  Left = 455
  Top = 115
  Caption = 'FConfigDup'
  ClientHeight = 447
  ClientWidth = 515
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label32: TLabel [0]
    Left = 17
    Top = 264
    Width = 43
    Height = 10
    Caption = 'Imprimir:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel [1]
    Left = 19
    Top = 277
    Width = 39
    Height = 12
    Caption = 'Campo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel [2]
    Left = 156
    Top = 277
    Width = 31
    Height = 12
    Caption = 'Linha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label27: TLabel [3]
    Left = 201
    Top = 277
    Width = 39
    Height = 12
    Caption = 'Coluna:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel [4]
    Left = 247
    Top = 277
    Width = 32
    Height = 12
    Caption = 'Fonte:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label29: TLabel [5]
    Left = 360
    Top = 266
    Width = 73
    Height = 12
    Caption = '|...Tamanho...|'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label28: TLabel [6]
    Left = 360
    Top = 277
    Width = 32
    Height = 12
    Caption = 'Fonte:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label30: TLabel [7]
    Left = 396
    Top = 277
    Width = 35
    Height = 12
    Caption = 'Campo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited PComunica: TPanel
    Left = 18
    Top = 146
  end
  object GroupBox1: TGroupBox
    Left = 13
    Top = 112
    Width = 484
    Height = 323
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 40
      Top = 11
      Width = 176
      Height = 16
      Caption = 'Descri'#231#227'o da Configura'#231#227'o'
    end
    object Shape1: TShape
      Left = 40
      Top = 62
      Width = 114
      Height = 31
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
    end
    object Label2: TLabel
      Left = 44
      Top = 69
      Width = 39
      Height = 13
      Caption = 'Altura:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 101
      Top = 69
      Width = 49
      Height = 13
      Caption = 'Largura:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 44
      Top = 57
      Width = 70
      Height = 12
      Caption = 'Conf. de P'#225'g.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Shape2: TShape
      Left = 176
      Top = 62
      Width = 115
      Height = 31
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
    end
    object Label5: TLabel
      Left = 182
      Top = 56
      Width = 66
      Height = 12
      Caption = 'Qtd. na P'#225'g.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label6: TLabel
      Left = 181
      Top = 69
      Width = 30
      Height = 13
      Caption = 'Etiq.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 239
      Top = 69
      Width = 51
      Height = 13
      Caption = 'Colunas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 312
      Top = 62
      Width = 115
      Height = 31
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
    end
    object Label8: TLabel
      Left = 316
      Top = 56
      Width = 69
      Height = 12
      Caption = 'Int. Etiqueta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label9: TLabel
      Left = 316
      Top = 69
      Width = 41
      Height = 13
      Caption = 'Linhas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 375
      Top = 69
      Width = 51
      Height = 13
      Caption = 'Colunas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 110
      Top = 111
      Width = 115
      Height = 31
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
    end
    object Label14: TLabel
      Left = 113
      Top = 106
      Width = 47
      Height = 12
      Caption = 'In'#237'. Imp.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label15: TLabel
      Left = 113
      Top = 119
      Width = 41
      Height = 13
      Caption = 'Linhas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 171
      Top = 119
      Width = 51
      Height = 13
      Caption = 'Colunas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape5: TShape
      Left = 246
      Top = 111
      Width = 115
      Height = 31
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
    end
    object Label11: TLabel
      Left = 251
      Top = 106
      Width = 78
      Height = 12
      Caption = 'Tam. C'#243'd. Barra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
    end
    object Label12: TLabel
      Left = 251
      Top = 119
      Width = 49
      Height = 13
      Caption = 'Largura:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 308
      Top = 119
      Width = 48
      Height = 13
      Caption = 'Compr.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 12
      Top = 470
      Width = 62
      Height = 13
      Caption = 'Imprimir:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 14
      Top = 483
      Width = 46
      Height = 13
      Caption = 'Campo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 178
      Top = 483
      Width = 35
      Height = 13
      Caption = 'Linha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 223
      Top = 483
      Width = 45
      Height = 13
      Caption = 'Coluna:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 275
      Top = 483
      Width = 36
      Height = 13
      Caption = 'Fonte:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 275
      Top = 472
      Width = 85
      Height = 12
      Caption = '|.....Tamanho.....|'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 319
      Top = 483
      Width = 41
      Height = 13
      Caption = 'Campo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 363
      Top = 482
      Width = 40
      Height = 13
      Caption = 'Alinhar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 4
      Top = 154
      Width = 43
      Height = 10
      Caption = 'Imprimir:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 6
      Top = 167
      Width = 39
      Height = 12
      Caption = 'Campo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 143
      Top = 167
      Width = 31
      Height = 12
      Caption = 'Linha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 188
      Top = 167
      Width = 39
      Height = 12
      Caption = 'Coluna:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 234
      Top = 167
      Width = 32
      Height = 12
      Caption = 'Fonte:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 347
      Top = 167
      Width = 32
      Height = 12
      Caption = 'Fonte:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 383
      Top = 167
      Width = 35
      Height = 12
      Caption = 'Campo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 347
      Top = 156
      Width = 73
      Height = 12
      Caption = '|...Tamanho...|'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBDesc: TDBColorEdit
      Left = 40
      Top = 28
      Width = 385
      Height = 19
      Color = clInactiveCaptionText
      DataField = 'DESCRICAO'
      DataSource = DMMACS.DConfigDup
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdAltPag: TFlatEdit
      Left = 44
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = EdAltPagEnter
    end
    object EdLargPag: TFlatEdit
      Left = 100
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = EdAltPagEnter
    end
    object EdQtdEtqPag: TFlatEdit
      Left = 180
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = EdAltPagEnter
    end
    object EdQtdColPag: TFlatEdit
      Left = 236
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = EdAltPagEnter
    end
    object EdIntervLin: TFlatEdit
      Left = 316
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = EdAltPagEnter
    end
    object EdIntervColuna: TFlatEdit
      Left = 372
      Top = 83
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = EdAltPagEnter
    end
    object EdLargCB: TFlatEdit
      Left = 251
      Top = 133
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnEnter = EdAltPagEnter
    end
    object EdCompCB: TFlatEdit
      Left = 307
      Top = 133
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnEnter = EdAltPagEnter
    end
    object EdIniImpLin: TFlatEdit
      Left = 114
      Top = 133
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnEnter = EdAltPagEnter
    end
    object EdIniImpCol: TFlatEdit
      Left = 170
      Top = 133
      Width = 49
      Height = 18
      ColorBorder = clGradientInactiveCaption
      ColorFlat = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnEnter = EdAltPagEnter
    end
    object cbalinhar: TComboBox
      Left = 358
      Top = 497
      Width = 45
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      Text = 'E'
      Items.Strings = (
        'E'
        'D')
    end
    object DBGrid1: TDBGrid
      Left = -45
      Top = 345
      Width = 448
      Height = 201
      Color = clWhite
      Ctl3D = True
      DataSource = DMMACS.DNF
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
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CAMPO'
          Title.Caption = 'Campo'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LINHA'
          Title.Caption = 'Linha'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COLUNA'
          Title.Caption = 'Coluna'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONTE'
          Title.Caption = 'Fonte'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHO'
          Title.Caption = 'Tam. Campo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALINHAR'
          Title.Caption = 'Alinhar'
          Visible = True
        end>
    end
  end
  object DBGridCadastroPadrao: TDBGrid
    Left = 12
    Top = 12
    Width = 403
    Height = 65
    Color = 15794175
    Ctl3D = False
    DataSource = DMMACS.DConfigDup
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o da Configura'#231#227'o'
        Width = 380
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 14
    Top = 77
    Width = 402
    Height = 35
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object BtnNovo: TBitBtn
      Left = 3
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para obter novo cadastro'
      Caption = 'Novo'
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
      Spacing = 2
    end
    object BtnApagar: TBitBtn
      Left = 102
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
      Caption = 'Apagar'
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
      Spacing = 2
    end
    object BtnGravar: TBitBtn
      Left = 201
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
        'izadas'
      Caption = 'Gravar - F5'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object BtnCancelar: TBitBtn
      Left = 300
      Top = 8
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 
        'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
        ' o painel de consulta'
      Caption = 'Cancelar - F7'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BtnCancelarClick
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
  object CBCampo: TComboBox
    Left = 20
    Top = 292
    Width = 133
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 12
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      'Nome'
      'Codigo'
      'N. Documento'
      'Prestacao'
      'Juro'
      'Vencimento'
      'Valor'
      'Textos')
  end
  object DBGrid2: TDBGrid
    Left = 20
    Top = 314
    Width = 461
    Height = 114
    Color = clWhite
    Ctl3D = True
    DataSource = DMMACS.DItensDupPerson
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
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clGradientActiveCaption
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CAMPO'
        Title.Caption = 'Campo'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LINHA'
        Title.Caption = 'Linha'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLUNA'
        Title.Caption = 'Coluna'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEFONTE'
        Title.Caption = 'Fonte'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAMANHO'
        Title.Caption = 'T. Campo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONTE'
        Title.Caption = 'Fonte'
        Width = 35
        Visible = True
      end>
  end
  object EdLinha: TFloatEdit
    Left = 155
    Top = 291
    Width = 40
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '0'
    EditType = fltInteger
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object edcoluna: TFloatEdit
    Left = 200
    Top = 291
    Width = 43
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0'
    EditType = fltInteger
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object DbFonte: TComboBox
    Left = 248
    Top = 292
    Width = 109
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 12
    ParentFont = False
    TabOrder = 8
    Items.Strings = (
      'C'#243'd. Fabricante'
      'C'#243'd. Composto'
      'Ctrl. Interno'
      'C'#243'd. Barras'
      'Marca'
      'Desc. Produtos'
      'Pre'#231'o Vista'
      'Pre'#231'o Prazo'
      'Composi'#231#227'o'
      'Altura x Largura'
      'Classifica'#231#227'o'
      'Fabricante')
  end
  object EdFonte: TFloatEdit
    Left = 359
    Top = 291
    Width = 34
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0'
    EditType = fltInteger
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object Edcampo: TFloatEdit
    Left = 395
    Top = 291
    Width = 39
    Height = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '0'
    EditType = fltInteger
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object BitBtn3: TBitBtn
    Left = 435
    Top = 291
    Width = 23
    Height = 23
    TabOrder = 12
    OnClick = BitBtn3Click
    Glyph.Data = {
      EE030000424DEE03000000000000360000002800000012000000110000000100
      180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
      DEEBEFDEEBEFDEEBEFEFC7BDDEBEB5DEBAB5DEBEB5DEBEB5DEBAB5E7BEB5E7C3
      BDF7CFC6FFD7CEDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFEFCFC6DEBA
      B5D6B2ADE7CBC6EFE3DEF7EBEFF7EFEFF7E7E7EFDFDEDEC7C6DEBAB5E7C3BDFF
      D7CEDEEBEFDEEBEF0000DEEBEFDEEBEFEFCBC6D6B6ADDEC3BDF7E7E7FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7EFDBD6D6BAB5E7C3BDFFD7CEDEEBEF
      0000DEEBEFF7CFC6DEB6ADDEC3BDF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFEFDFDEDEBAB5EFCBBDDEEBEF0000F7D3CEE7C3B5
      D6B6B5F7EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE7D3CEDEBAB5F7D3C60000EFCBC6DEB6ADE7D3CEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7
      EBEFDEBEB5F7CFC60000EFCBBDD6B6ADF7E7E7FFFFFFFFFFFFFFFFFFFFFFFFA5
      3C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFBFFDEC7C6EFCBBD
      0000E7C3BDDEBAB5F7EFEFFFFBFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFF
      FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFE7CBC6EFCBBD0000E7C3BDDEBAB5
      F7EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE7CBC6EFC7BD0000E7C3B5DEBAB5F7EBE7FFFBF7FFFF
      FFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDEC7BDEFCBBD0000E7C3BDD6B6ADEFDFDEFFF7F7FFFBFFFFFFFFFFFFFFA5
      3C00A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFF7EFEFD6BAB5F7CFC6
      0000E7C7BDD6B6ADE7CBC6F7F3EFFFF7F7FFFBFFA53C00A53C00FFFFFFFFFFFF
      FFFFFFA53C00A53C00FFFFFFFFFFFFE7D3CEDEB6ADF7D3C60000DEEBEFDEBAAD
      D6B6ADEFDBD6FFF3EFFFF7F7FFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFEFE3E7D6B6B5E7C3B5FFD7CE0000DEEBEFE7BEB5D6B2ADDEBAB5EFDB
      D6F7F3EFFFF3EFFFF7F7FFFBF7FFFBF7FFFBF7FFFBF7FFFBF7EFE3DED6BAB5DE
      BAADF7CFC6DEEBEF0000DEEBEFDEEBEFE7BEB5D6B2ADD6BAB5E7D3CEF7E7E7F7
      EFEFFFF3EFFFF3EFFFF3EFF7EBE7E7D7CED6B6B5DEB6ADDEEBEFDEEBEFDEEBEF
      0000DEEBEFDEEBEFDEEBEFE7BEB5DEB6ADD6B2ADDEBAB5DEC7C6E7CBC6E7CBC6
      DEC7C6DEBEB5DEBEB5DEB6ADDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
      DEEBEFDEEBEFDEEBEFDEBAB5DEBAADDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEEB
      EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
    Spacing = 0
  end
  object BitBtn4: TBitBtn
    Left = 458
    Top = 291
    Width = 23
    Height = 23
    TabOrder = 11
    OnClick = BitBtn4Click
    Glyph.Data = {
      EE030000424DEE03000000000000360000002800000012000000110000000100
      180000000000B803000000000000000000000000000000000000DEEBEFDEEBEF
      DEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDEBA
      B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEEBEFDEB6
      ADDEBEB5DEBEB5DEC7C6E7CBC6E7CBC6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DE
      EBEFDEEBEFDEEBEF0000DEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7FF
      F3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEBEF
      0000DEEBEFF7CFC6DEBAADD6BAB5EFE3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7
      FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5D6B2ADE7BEB5DEEBEF0000FFD7CEE7C3B5
      D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FFF7
      F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEF0000F7D3C6DEB6ADE7D3CEFFFFFFFFFF
      FFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFBFFFFF7F7F7F3EFE7
      CBC6D6B6ADE7C7BD0000F7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00A5
      3C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3BD
      0000EFCBBDDEC7BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F7EBE7DEBAB5E7C3B50000EFC7BDE7CBC6
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BD0000EFCBBDE7CBC6FFFFFFFFFFFFFFFF
      FFA53C00A53C00FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFF7
      EFEFDEBAB5E7C3BD0000EFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00A5
      3C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCBBD
      0000F7CFC6DEBEB5F7EBEFFFFFFFFFFFFFFFFFFFFFFFFFA53C00A53C00A53C00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D3CEDEB6ADEFCBC60000F7D3C6DEBAB5
      E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CE0000DEEBEFEFCBBDDEBAB5EFDFDEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDE
      B6ADF7CFC6DEEBEF0000DEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEBEF
      0000DEEBEFDEEBEFFFD7CEE7C3BDDEBAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEF
      EFE3DEE7CBC6D6B2ADDEBAB5EFCFC6DEEBEFDEEBEFDEEBEF0000DEEBEFDEEBEF
      DEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EFC7
      BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF0000}
  end
end
