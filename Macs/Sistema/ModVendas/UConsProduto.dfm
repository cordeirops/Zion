inherited FConsProduto: TFConsProduto
  Left = 22
  Top = 35
  Caption = 'FConsProduto'
  ClientHeight = 477
  ClientWidth = 750
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 14
    Top = 45
    Width = 77
    Height = 12
    Caption = 'C'#243'd. Composto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel [1]
    Left = 14
    Top = 85
    Width = 55
    Height = 12
    Caption = 'C'#243'd. Barra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [2]
    Left = 150
    Top = 45
    Width = 81
    Height = 12
    Caption = 'C'#243'd. Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel [3]
    Left = 150
    Top = 85
    Width = 66
    Height = 12
    Caption = 'Ctrl. Interno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [4]
    Left = 286
    Top = 45
    Width = 57
    Height = 12
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel [5]
    Left = 286
    Top = 85
    Width = 66
    Height = 12
    Caption = 'C'#243'd. Interno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel [6]
    Left = 422
    Top = 45
    Width = 33
    Height = 12
    Caption = 'Marca:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel [7]
    Left = 422
    Top = 85
    Width = 72
    Height = 12
    Caption = 'Local Estante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel [8]
    Left = 558
    Top = 85
    Width = 44
    Height = 12
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [9]
    Left = 574
    Top = 45
    Width = 68
    Height = 12
    Caption = 'Classifica'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText13: TDBText [10]
    Left = 571
    Top = 21
    Width = 65
    Height = 17
    Transparent = True
    Visible = False
  end
  object DRLabel1: TDRLabel [11]
    Left = 657
    Top = 18
    Width = 83
    Height = 10
    Caption = '<ESC> PARA SAIR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    HiColor = clBlue
    LoColor = clNavy
    Border = boNone
    Ctl3D = True
    BlinkInterval = 300
    Blink = blNone
    Deep = 1
  end
  object Label11: TLabel [12]
    Left = 13
    Top = 362
    Width = 74
    Height = 13
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText1: TDBText [13]
    Left = 13
    Top = 374
    Width = 209
    Height = 17
    DataField = 'FABRICANTE'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel [14]
    Left = 13
    Top = 402
    Width = 72
    Height = 13
    Caption = 'C'#243'd. Barra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText6: TDBText [15]
    Left = 13
    Top = 414
    Width = 135
    Height = 17
    DataField = 'CODBARRA'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText7: TDBText [16]
    Left = 151
    Top = 414
    Width = 84
    Height = 17
    DataField = 'COD_INTERNO'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel [17]
    Left = 149
    Top = 402
    Width = 85
    Height = 13
    Caption = 'C'#243'd. Interno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel [18]
    Left = 229
    Top = 362
    Width = 43
    Height = 13
    Caption = 'Marca:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText2: TDBText [19]
    Left = 229
    Top = 374
    Width = 129
    Height = 17
    DataField = 'MARCA'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel [20]
    Left = 357
    Top = 362
    Width = 89
    Height = 13
    Caption = 'Classifica'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText [21]
    Left = 357
    Top = 374
    Width = 153
    Height = 17
    DataField = 'CLASSIFICACAO'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel [22]
    Left = 285
    Top = 402
    Width = 56
    Height = 13
    Caption = 'Estoque:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText8: TDBText [23]
    Left = 263
    Top = 414
    Width = 103
    Height = 17
    Alignment = taCenter
    DataField = 'ESTFISICO'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel [24]
    Left = 440
    Top = 402
    Width = 117
    Height = 13
    Caption = 'Vlr. Venda Varejo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label21: TLabel [25]
    Left = 432
    Top = 414
    Width = 45
    Height = 13
    Caption = #192' Vista:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText9: TDBText [26]
    Left = 403
    Top = 426
    Width = 73
    Height = 17
    Alignment = taRightJustify
    DataField = 'VENDVARV'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText10: TDBText [27]
    Left = 484
    Top = 426
    Width = 73
    Height = 17
    Alignment = taRightJustify
    DataField = 'VENDVARP'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel [28]
    Left = 509
    Top = 414
    Width = 49
    Height = 13
    Caption = #192' Prazo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel [29]
    Left = 533
    Top = 362
    Width = 100
    Height = 13
    Caption = #218'ltima Compra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel [30]
    Left = 645
    Top = 362
    Width = 90
    Height = 13
    Caption = #218'ltima Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText5: TDBText [31]
    Left = 637
    Top = 374
    Width = 98
    Height = 17
    Alignment = taRightJustify
    DataField = 'ULTVENDA'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText4: TDBText [32]
    Left = 533
    Top = 374
    Width = 98
    Height = 17
    Alignment = taRightJustify
    DataField = 'ULTCOMPRA'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel [33]
    Left = 603
    Top = 402
    Width = 127
    Height = 13
    Caption = 'Vlr. Venda Atacado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText11: TDBText [34]
    Left = 577
    Top = 426
    Width = 73
    Height = 17
    Alignment = taRightJustify
    DataField = 'VENDATAV'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText12: TDBText [35]
    Left = 657
    Top = 426
    Width = 73
    Height = 17
    Alignment = taRightJustify
    DataField = 'VENDATAP'
    DataSource = DMESTOQUE.DSAlx
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel [36]
    Left = 682
    Top = 414
    Width = 49
    Height = 13
    Caption = #192' Prazo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label24: TLabel [37]
    Left = 605
    Top = 414
    Width = 45
    Height = 13
    Caption = #192' Vista:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label25: TLabel [38]
    Left = 631
    Top = 442
    Width = 98
    Height = 13
    Caption = 'Vlr. Bonificado:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label26: TLabel [39]
    Left = 13
    Top = 440
    Width = 80
    Height = 13
    Caption = 'Localiza'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText15: TDBText [40]
    Left = 13
    Top = 452
    Width = 135
    Height = 17
    DataField = 'LOCAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited PComunica: TPanel
    Left = 113
    Top = 178
  end
  object EdCodComposto: TColorMaskEdit
    Left = 13
    Top = 58
    Width = 130
    Height = 19
    Ctl3D = False
    EditMask = '000.000.000-000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Text = '   .   .   -   '
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EdCodCompostoKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDCODBARRA: TColorMaskEdit
    Left = 13
    Top = 98
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDCODBARRAKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EdCodFabricante: TColorMaskEdit
    Left = 149
    Top = 58
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EdCodFabricanteKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDCTRLINTERNO: TColorMaskEdit
    Left = 149
    Top = 98
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDCTRLINTERNOKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDFABRICANTE: TColorMaskEdit
    Left = 285
    Top = 58
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDFABRICANTEKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDCODINTERNO: TColorMaskEdit
    Left = 285
    Top = 98
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDCODINTERNOKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDMARCA: TColorMaskEdit
    Left = 421
    Top = 58
    Width = 146
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDMARCAKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDLOCALESTANTE: TColorMaskEdit
    Left = 421
    Top = 98
    Width = 130
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 8
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDLOCALESTANTEKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDPRODUTO: TColorMaskEdit
    Left = 557
    Top = 98
    Width = 179
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDPRODUTOKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDCLASSIFICACAO: TColorMaskEdit
    Left = 573
    Top = 58
    Width = 162
    Height = 19
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 10
    OnKeyDown = EdCodCompostoKeyDown
    OnKeyPress = EDCLASSIFICACAOKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object DBGridCadastroPadrao: TDBGrid
    Left = 12
    Top = 123
    Width = 723
    Height = 207
    Color = clWhite
    Ctl3D = False
    DataSource = DMESTOQUE.DSAlx
    FixedColor = clAqua
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'LOCALESTANTE'
        Title.Caption = 'Local'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODPRODFABR'
        Title.Caption = 'C'#243'd. Fabr.'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRINT'
        Title.Caption = 'Ctrl. Interno'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCOMPOSTO'
        Title.Caption = 'C'#243'd. Composto'
        Width = 103
        Visible = True
      end>
  end
  object Panel6: TPanel
    Left = 11
    Top = 331
    Width = 726
    Height = 29
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16772332
    TabOrder = 13
    object Label113: TLabel
      Left = 3
      Top = 2
      Width = 72
      Height = 10
      Caption = 'ESPECIFICA'#199#195'O'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -8
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBText14: TDBText
      Left = 4
      Top = 12
      Width = 57
      Height = 13
      AutoSize = True
      DataField = 'ESPECIFICACAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 9
    Top = 17
    Width = 88
    Height = 19
    Caption = 'PRODUTOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn1Click
  end
end
