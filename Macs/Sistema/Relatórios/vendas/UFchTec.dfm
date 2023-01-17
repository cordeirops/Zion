inherited FFchTecProd: TFFchTecProd
  Left = 239
  Top = 156
  Caption = 'FFchTecProd'
  ClientHeight = 470
  KeyPreview = True
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel [0]
    Left = 222
    Top = 77
    Width = 457
    Height = 38
    Shape = bsBottomLine
  end
  object Bevel3: TBevel [1]
    Left = 222
    Top = 55
    Width = 458
    Height = 57
    Shape = bsRightLine
  end
  inherited ShapeFundo: TShape
    Left = 8
  end
  object DBText1: TDBText [4]
    Left = 371
    Top = 37
    Width = 166
    Height = 16
    Font.Charset = ANSI_CHARSET
    Font.Color = -2147483621
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [5]
    Left = 225
    Top = 58
    Width = 77
    Height = 18
    Caption = 'Produto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LShowProd: TDBText [6]
    Left = 302
    Top = 58
    Width = 101
    Height = 18
    AutoSize = True
    DataField = 'DESCRICAO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel [7]
    Left = 225
    Top = 79
    Width = 39
    Height = 13
    Caption = 'Marca:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LShowMarca: TLabel [8]
    Left = 266
    Top = 79
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [9]
    Left = 225
    Top = 94
    Width = 54
    Height = 13
    Caption = 'C'#243'd. int.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText [10]
    Left = 283
    Top = 93
    Width = 55
    Height = 16
    AutoSize = True
    DataField = 'COD_INTERNO'
    DataSource = DMESTOQUE.DWSimilar
    Font.Charset = ANSI_CHARSET
    Font.Color = -2147483621
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Label4: TLabel [11]
    Left = 385
    Top = 94
    Width = 65
    Height = 13
    Caption = 'C'#243'd. Fabr.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LShowCodFabr: TLabel [12]
    Left = 452
    Top = 94
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel [13]
    Left = 561
    Top = 94
    Width = 54
    Height = 13
    Caption = 'Ctrl. Int.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LShowCtrlInt: TLabel [14]
    Left = 616
    Top = 94
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LShowCodInterno: TLabel [15]
    Left = 281
    Top = 92
    Width = 4
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  inherited LDescTitulo: TLabel
    Left = 266
    Width = 192
    Caption = 'Ficha T'#233'cnica de Produ'#231#227'o'
  end
  object PProcProdP: TPanel [19]
    Left = 8
    Top = 58
    Width = 197
    Height = 29
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    object Label23: TLabel
      Left = 0
      Top = -2
      Width = 49
      Height = 13
      Caption = 'Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object EdProcProdP: TEdit
      Left = 0
      Top = 10
      Width = 196
      Height = 19
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EdProcProdPKeyDown
    end
  end
  object PProcProdCI: TPanel [20]
    Left = 8
    Top = 58
    Width = 197
    Height = 29
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 5
    object Label22: TLabel
      Left = 0
      Top = -2
      Width = 76
      Height = 13
      Caption = 'Ctrl. Interno:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object EdProcProdCI: TEdit
      Left = 0
      Top = 10
      Width = 196
      Height = 19
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EdProcProdCIKeyDown
    end
  end
  object PProcProdCC: TPanel [21]
    Left = 8
    Top = 58
    Width = 197
    Height = 29
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 7
    object Label21: TLabel
      Left = 0
      Top = -2
      Width = 94
      Height = 13
      Caption = 'C'#243'd. Composto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object EdProcProdCC: TColorMaskEdit
      Left = 0
      Top = 10
      Width = 196
      Height = 19
      Ctl3D = False
      EditMask = '000.000.000-000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 15
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '   .   .   -   '
      OnKeyDown = EdProcProdCCKeyDown
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object PFchTec: TPanel [22]
    Left = 219
    Top = 140
    Width = 560
    Height = 319
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 10
    OnExit = PFchTecExit
    object PMaoObra: TPanel
      Left = 1
      Top = 0
      Width = 559
      Height = 275
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 1
      Visible = False
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 552
        Height = 274
        Brush.Color = 16772332
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Edit2: TEdit
        Left = 4
        Top = 7
        Width = 545
        Height = 17
        BorderStyle = bsNone
        Color = clInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '  M'#227'o de Obra'
      end
      object DBGrid2: TDBGrid
        Left = 4
        Top = 126
        Width = 544
        Height = 145
        Color = 15790307
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlaveServ
        FixedColor = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'M'#227'o de Obra'
            Width = 235
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASS'
            Title.Caption = 'Class.'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFINAL'
            Title.Caption = 'Vlr. Unit.'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDUTILIZ'
            Title.Caption = 'Qtd.'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Vlr. Tot.'
            Width = 70
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 24
        Width = 544
        Height = 97
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object Label16: TLabel
          Left = 269
          Top = 6
          Width = 36
          Height = 13
          Caption = 'Qtde.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LServico: TLabel
          Left = 8
          Top = 72
          Width = 350
          Height = 13
          AutoSize = False
          Caption = 'M'#227'o de obra n'#227'o encontrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCodCompServ: TLabel
          Left = 7
          Top = 57
          Width = 96
          Height = 13
          Caption = 'C'#243'd. Composto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 314
          Top = 6
          Width = 40
          Height = 13
          Caption = 'Class.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 7
          Top = 43
          Width = 94
          Height = 13
          Caption = 'C'#243'd. Composto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 233
          Top = 43
          Width = 73
          Height = 13
          Caption = 'Vlr. Unit'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LVlrUnitServ: TLabel
          Left = 208
          Top = 57
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'd. Composto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PProcServ: TPanel
          Left = 24
          Top = 8
          Width = 218
          Height = 29
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 1
          object Label30: TLabel
            Left = 0
            Top = -2
            Width = 48
            Height = 13
            Caption = 'Servi'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object EdProcServ: TEdit
            Left = 0
            Top = 10
            Width = 217
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EdProcServKeyDown
          end
        end
        object BtnProcServ: TBitBtn
          Left = 5
          Top = 19
          Width = 18
          Height = 18
          TabOrder = 0
          OnClick = BtnProcServClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdQtdServ: TFloatEdit
          Left = 258
          Top = 18
          Width = 47
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
        end
        object BitBtn2: TBitBtn
          Left = 474
          Top = 20
          Width = 68
          Height = 22
          Hint = 
            'Pressione para inserir o servi'#231'o selecionado e suas informa'#231#245'es ' +
            'na lista'
          Caption = 'Adicionar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BitBtn2Click
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
          Spacing = 1
        end
        object BitBtn3: TBitBtn
          Left = 474
          Top = 41
          Width = 68
          Height = 22
          Hint = 'Pressione para remover o servi'#231'o selecionado na lista da mesma'
          Caption = 'Remover'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BitBtn3Click
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
          Spacing = 1
        end
        object EdClassServ: TEdit
          Left = 315
          Top = 18
          Width = 153
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object PDesp: TPanel
      Left = 1
      Top = 0
      Width = 559
      Height = 275
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 10
      Visible = False
      object Shape21: TShape
        Left = 0
        Top = 0
        Width = 552
        Height = 274
        Brush.Color = 16772332
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Shape22: TShape
        Left = 4
        Top = 26
        Width = 544
        Height = 98
        Brush.Color = 16772332
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Label35: TLabel
        Left = 12
        Top = 32
        Width = 150
        Height = 16
        Caption = 'Descri'#231#227'o da despesa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label36: TLabel
        Left = 411
        Top = 32
        Width = 43
        Height = 16
        Caption = 'Qtde.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label37: TLabel
        Left = 17
        Top = 72
        Width = 71
        Height = 16
        Caption = 'Vlr. Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 91
        Top = 72
        Width = 87
        Height = 16
        Caption = 'Vlr. Cobrado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label39: TLabel
        Left = 203
        Top = 72
        Width = 67
        Height = 16
        Caption = 'Vlr. Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Edit3: TEdit
        Left = 4
        Top = 7
        Width = 545
        Height = 17
        BorderStyle = bsNone
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = ' Despesas Adicionais'
      end
      object DBGrid3: TDBGrid
        Left = 4
        Top = 126
        Width = 544
        Height = 145
        Color = 16768991
        Ctl3D = False
        DataSource = DMESTOQUE.DDesp
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DESPESA'
            Title.Caption = 'Despesa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde.'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRREAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Custo'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFINAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Cobrado'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTFIN'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LUCMOE'
            Title.Caption = 'Luc. ($)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LUCPER'
            Title.Caption = 'Luc. (%)'
            Visible = True
          end>
      end
      object DBColorEdit2: TDBColorEdit
        Left = 448
        Top = 280
        Width = 121
        Height = 21
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescD: TColorEditFloat
        Left = 12
        Top = 48
        Width = 372
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 40
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        EditType = fltString
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQtdD: TColorEditFloat
        Left = 391
        Top = 48
        Width = 62
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        OnExit = EdQtdDExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrCustoD: TColorEditFloat
        Left = 12
        Top = 88
        Width = 75
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        OnExit = EdQtdDExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrCobradoD: TColorEditFloat
        Left = 93
        Top = 88
        Width = 85
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '0,00'
        OnExit = EdQtdDExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrTotD: TColorEditFloat
        Left = 184
        Top = 88
        Width = 85
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '0,00'
        OnExit = EdVlrTotDExit
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BitBtn5: TBitBtn
        Left = 474
        Top = 44
        Width = 68
        Height = 22
        Hint = 
          'Pressione para inserir a despesa selecionado e suas informa'#231#245'es ' +
          'na lista'
        Caption = 'Adicionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BitBtn5Click
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
        Spacing = 1
      end
      object BitBtn6: TBitBtn
        Left = 474
        Top = 65
        Width = 68
        Height = 22
        Hint = 'Pressione para remover a despesa selecionado na lista da mesma'
        Caption = 'Remover'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BitBtn6Click
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
        Spacing = 1
      end
    end
    object PMatPrima: TPanel
      Left = 1
      Top = 0
      Width = 559
      Height = 275
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      Visible = False
      object Shape3: TShape
        Left = 0
        Top = 0
        Width = 552
        Height = 274
        Brush.Color = 16772332
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Edit1: TEdit
        Left = 4
        Top = 7
        Width = 545
        Height = 17
        BorderStyle = bsNone
        Color = clTeal
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '  Mat'#233'ria Prima'
      end
      object PInsertProd: TGroupBox
        Left = 4
        Top = 24
        Width = 544
        Height = 97
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = PInsertProdEnter
        object Label7: TLabel
          Left = 274
          Top = 6
          Width = 36
          Height = 13
          Caption = 'Qtde.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LSimilar: TLabel
          Left = 8
          Top = 72
          Width = 350
          Height = 13
          AutoSize = False
          Caption = 'Produto n'#227'o encontrado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LMarca: TLabel
          Left = 307
          Top = 72
          Width = 107
          Height = 13
          AutoSize = False
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCodInterno: TLabel
          Left = 6
          Top = 50
          Width = 4
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCodFabr: TLabel
          Left = 102
          Top = 50
          Width = 4
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LCtrlInterno: TLabel
          Left = 222
          Top = 50
          Width = 4
          Height = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 314
          Top = 6
          Width = 40
          Height = 13
          Caption = 'Class.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LUnidade: TLabel
          Left = 410
          Top = 72
          Width = 53
          Height = 13
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 39
          Width = 78
          Height = 13
          Caption = 'C'#243'd. Interno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 102
          Top = 39
          Width = 95
          Height = 13
          Caption = 'C'#243'd. Fabricante:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 222
          Top = 39
          Width = 76
          Height = 13
          Caption = 'Ctrl. Interno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 326
          Top = 39
          Width = 73
          Height = 13
          Caption = 'Vlr. Unit'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object LCtrlVlrUnit: TLabel
          Left = 394
          Top = 50
          Width = 4
          Height = 13
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LUZMINUS: TShape
          Left = 3
          Top = 18
          Width = 21
          Height = 20
          Brush.Color = clGradientActiveCaption
          Pen.Color = clGradientActiveCaption
          Shape = stRoundRect
          Visible = False
        end
        object PProcCodComposto: TPanel
          Left = 24
          Top = 8
          Width = 218
          Height = 29
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 9
          object Label14: TLabel
            Left = 0
            Top = -2
            Width = 94
            Height = 13
            Caption = 'C'#243'd. Composto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object EdProcCodcomposto: TColorMaskEdit
            Left = 0
            Top = 10
            Width = 218
            Height = 19
            EditMask = '000.000.000-000;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            TabOrder = 0
            Text = '   .   .   -   '
            OnKeyDown = EdProcCodcompostoKeyDown
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PProcCodFabr: TPanel
          Left = 24
          Top = 8
          Width = 218
          Height = 29
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 8
          object Label12: TLabel
            Left = 0
            Top = -2
            Width = 95
            Height = 13
            Caption = 'C'#243'd. Fabricante:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object EdProcCodFabr: TEdit
            Left = 0
            Top = 10
            Width = 217
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EdProcCodFabrKeyDown
          end
        end
        object PProcProd: TPanel
          Left = 24
          Top = 8
          Width = 218
          Height = 29
          BevelOuter = bvNone
          Color = 13750737
          TabOrder = 7
          object Label6: TLabel
            Left = 0
            Top = -2
            Width = 49
            Height = 13
            Caption = 'Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object EdProcProd: TEdit
            Left = 0
            Top = 10
            Width = 217
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EdProcProdKeyDown
          end
        end
        object PProcCtrlInterno: TPanel
          Left = 24
          Top = 8
          Width = 218
          Height = 29
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 1
          object Label13: TLabel
            Left = 0
            Top = -2
            Width = 76
            Height = 13
            Caption = 'Ctrl. Interno:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object EdProcCtrlInterno: TEdit
            Left = 0
            Top = 10
            Width = 217
            Height = 19
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EdProcCtrlInternoKeyDown
          end
        end
        object BtnProcProd: TBitBtn
          Left = 5
          Top = 19
          Width = 18
          Height = 18
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
        object EdQtd: TFloatEdit
          Left = 263
          Top = 18
          Width = 47
          Height = 19
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
        end
        object BtnInsertProd: TBitBtn
          Left = 474
          Top = 20
          Width = 68
          Height = 22
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista'
          Caption = 'Adicionar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
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
          Spacing = 1
        end
        object BtnDeleteList: TBitBtn
          Left = 474
          Top = 41
          Width = 68
          Height = 22
          Hint = 'Pressione para remover o produto selecionado na lista da mesma'
          Caption = 'Remover'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
          Spacing = 1
        end
        object BtnEscolheProc: TBitBtn
          Left = 241
          Top = 24
          Width = 12
          Height = 13
          Hint = 'Pressione para alterar o modo de procura (Alt+P)'
          Caption = '&P'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnEscolheProcClick
        end
        object EdClass: TEdit
          Left = 312
          Top = 18
          Width = 159
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 126
        Width = 544
        Height = 145
        Color = 15597546
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = clSkyBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SIGLA_UNID'
            Title.Alignment = taCenter
            Title.Caption = 'UN'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Mat. Prima'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASS'
            Title.Caption = 'Class.'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDVARV'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDUTILIZ'
            Title.Caption = 'Qtd.'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Total'
            Width = 68
            Visible = True
          end>
      end
      object DBColorEdit1: TDBColorEdit
        Left = 448
        Top = 280
        Width = 121
        Height = 21
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object PTotProd: TPanel
      Left = 419
      Top = 271
      Width = 114
      Height = 50
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 6
      object Shape13: TShape
        Left = 0
        Top = -1
        Width = 114
        Height = 25
        Brush.Color = 13750737
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Shape15: TShape
        Left = 0
        Top = -8
        Width = 114
        Height = 9
        Brush.Color = 13750737
        Pen.Color = 13750737
      end
      object EdVlrTotProd: TColorEditFloat
        Left = 41
        Top = -1
        Width = 70
        Height = 22
        Color = 15597546
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQtdTotProd: TColorEditFloat
        Left = 3
        Top = -1
        Width = 39
        Height = 22
        Color = 15597546
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object PTotServ: TPanel
      Left = 419
      Top = 271
      Width = 113
      Height = 28
      BevelOuter = bvNone
      Color = 13750737
      TabOrder = 7
      object Shape16: TShape
        Left = 0
        Top = -1
        Width = 114
        Height = 25
        Brush.Color = 13750737
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Shape17: TShape
        Left = 0
        Top = -8
        Width = 114
        Height = 9
        Brush.Color = 13750737
        Pen.Color = 13750737
      end
      object EdVlrTotServ: TColorEditFloat
        Left = 41
        Top = -1
        Width = 70
        Height = 22
        Color = 15790307
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQtdTotServ: TColorEditFloat
        Left = 3
        Top = -1
        Width = 39
        Height = 22
        Color = 15790307
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object PTotDesp: TPanel
      Left = 419
      Top = 271
      Width = 113
      Height = 28
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 11
      object Shape23: TShape
        Left = 0
        Top = -1
        Width = 114
        Height = 25
        Brush.Color = 13750737
        Pen.Color = clGray
        Pen.Width = 2
      end
      object Shape24: TShape
        Left = 0
        Top = -8
        Width = 114
        Height = 9
        Brush.Color = 13750737
        Pen.Color = 13750737
      end
      object EdVlrTotDesp: TColorEditFloat
        Left = 41
        Top = -1
        Width = 70
        Height = 22
        Color = 16768991
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdQtdTotDesp: TColorEditFloat
        Left = 3
        Top = -1
        Width = 39
        Height = 22
        Color = 16768991
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        FocusColor = 15597546
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object BtnPMatPrim: TFlatButton
      Left = 11
      Top = 288
      Width = 117
      Height = 20
      Color = 13750737
      ColorFocused = -2147483621
      Caption = 'Mat'#233'ria Prima - F5'
      ParentColor = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 8
      Top = 274
      Width = 122
      Height = 13
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 3
      object Shape6: TShape
        Left = 0
        Top = 0
        Width = 4
        Height = 12
        Brush.Color = clLightGreen
        Pen.Color = clInactiveCaption
        Pen.Width = 2
      end
      object Shape7: TShape
        Left = 0
        Top = 12
        Width = 122
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
      object Shape8: TShape
        Left = 0
        Top = 10
        Width = 111
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
    end
    object Panel2: TPanel
      Left = 136
      Top = 274
      Width = 122
      Height = 13
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 4
      object Shape9: TShape
        Left = 0
        Top = 0
        Width = 4
        Height = 12
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
        Pen.Width = 2
      end
      object Shape10: TShape
        Left = 0
        Top = 12
        Width = 122
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
      object Shape12: TShape
        Left = 0
        Top = 10
        Width = 111
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
    end
    object BtnPMaoObra: TFlatButton
      Left = 139
      Top = 288
      Width = 117
      Height = 20
      Color = 13750737
      ColorFocused = -2147483621
      Caption = 'M'#227'o de Obra - F6'
      ParentColor = False
      TabOrder = 5
    end
    object EdTot: TColorEditFloat
      Left = 423
      Top = 296
      Width = 107
      Height = 22
      Color = 14671871
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      FocusColor = 15597546
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object Panel3: TPanel
      Left = 264
      Top = 274
      Width = 122
      Height = 13
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 9
      object Shape18: TShape
        Left = 0
        Top = 0
        Width = 4
        Height = 12
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
        Pen.Width = 2
      end
      object Shape19: TShape
        Left = 0
        Top = 12
        Width = 122
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
      object Shape20: TShape
        Left = 0
        Top = 10
        Width = 111
        Height = 1
        Brush.Color = clInactiveCaption
        Pen.Color = clInactiveCaption
      end
    end
    object BtnDesp: TFlatButton
      Left = 266
      Top = 288
      Width = 117
      Height = 20
      Color = 13750737
      ColorFocused = -2147483621
      Caption = 'Despesas - F7'
      ParentColor = False
      TabOrder = 12
    end
  end
  object PProcProdCF: TPanel [23]
    Left = 8
    Top = 58
    Width = 197
    Height = 33
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 6
    object Label19: TLabel
      Left = 0
      Top = -2
      Width = 95
      Height = 13
      Caption = 'C'#243'd. Fabricante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object EdprocProdCF: TEdit
      Left = 0
      Top = 10
      Width = 196
      Height = 19
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = EdprocProdCFKeyDown
    end
  end
  inherited PComunica: TPanel
    Top = 170
  end
  object BtnMenuProcProd: TBitBtn
    Left = 205
    Top = 76
    Width = 12
    Height = 12
    Hint = 'Pressione para alterar o modo de procura (Alt+P)'
    Caption = '&P'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnMenuProcProdClick
  end
  object DBGridCadastroPadrao: TDBGrid
    Left = 8
    Top = 90
    Width = 209
    Height = 358
    Color = 15794175
    Ctl3D = False
    DataSource = DMMACS.DSALX
    FixedColor = 11039232
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGridCadastroPadraoCellClick
    OnDblClick = DBGridCadastroPadraoDblClick
    OnKeyUp = DBGridCadastroPadraoKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'Produto - F2'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_INTERNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'C'#243'd. Interno'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCOMPOSTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'C'#243'd. Composto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFABRICANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'C'#243'd. Fabricante'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRINT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'Ctrl. Interno'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'Marca'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object QrOrdem: TQuickRep
    Left = 126
    Top = 529
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMESTOQUE.TRFch
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand3: TQRBand
      Left = 38
      Top = 141
      Width = 737
      Height = 94
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRBand3AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.708333333333300000
        1949.979166666667000000)
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = 2
        Top = 50
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          132.291666666666700000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFch
        DataField = 'CONTRINT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 1
        Top = 35
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          92.604166666666680000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ctrl. Int.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 76
        Top = 35
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          92.604166666666680000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd. Fabr.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 187
        Top = 35
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          494.770833333333400000
          92.604166666666680000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 552
        Top = 35
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          92.604166666666680000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marca:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 663
        Top = 35
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1754.187500000000000000
          92.604166666666680000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Por'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 4
        Top = 33
        Width = 709
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          87.312500000000000000
          1875.895833333333000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 4
        Top = 31
        Width = 709
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          82.020833333333340000
          1875.895833333333000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 4
        Top = 65
        Width = 709
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          2.645833333333333000
          10.583333333333330000
          171.979166666666700000
          1875.895833333333000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRDBText10: TQRDBText
        Left = 77
        Top = 50
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          132.291666666666700000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFch
        DataField = 'CODFABRICANTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 188
        Top = 50
        Width = 361
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          497.416666666666700000
          132.291666666666700000
          955.145833333333500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFch
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 552
        Top = 50
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          132.291666666666700000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFch
        DataField = 'MARCA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 664
        Top = 50
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1756.833333333333000000
          132.291666666666700000
          116.416666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFch
        DataField = 'PORCAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 5
        Top = 78
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          206.375000000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ctrl. Int.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 75
        Top = 78
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          198.437500000000000000
          206.375000000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mat. Prima:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 364
        Top = 78
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          963.083333333333400000
          206.375000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Class.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 524
        Top = 78
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1386.416666666667000000
          206.375000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtd.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Left = 582
        Top = 78
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1539.875000000000000000
          206.375000000000000000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Unit.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Left = 678
        Top = 78
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1793.875000000000000000
          206.375000000000000000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 5
        Top = 66
        Width = 87
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          174.625000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MAT'#201'RIA PRIMA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object QRSubDetail3: TQRSubDetail
      Left = 38
      Top = 235
      Width = 737
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail3BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        1949.979166666667000000)
      Master = QrOrdem
      DataSet = DMESTOQUE.TRFchP
      FooterBand = QRBand6
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText7: TQRDBText
        Left = 6
        Top = 1
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          2.645833333333330000
          177.270833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'CONTRINT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 74
        Top = 1
        Width = 286
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          195.791666666667000000
          2.645833333333330000
          756.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 364
        Top = 1
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          963.083333333333000000
          2.645833333333330000
          328.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'CLASS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 501
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1325.562500000000000000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'QTDUTILIZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 562
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1486.958333333330000000
          2.645833333333330000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'VLRUNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 658
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1740.958333333330000000
          2.645833333333330000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchP
        DataField = 'VLRTOT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRSubDetail4: TQRSubDetail
      Left = 38
      Top = 275
      Width = 737
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        1949.979166666667000000)
      Master = QrOrdem
      DataSet = DMESTOQUE.TRFchM
      FooterBand = QRBand5
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText25: TQRDBText
        Left = 6
        Top = 2
        Width = 235
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          5.291666666666670000
          621.770833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 245
        Top = 2
        Width = 101
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          648.229166666667000000
          5.291666666666670000
          267.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'CLASS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 349
        Top = 2
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          923.395833333333000000
          5.291666666666670000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'ESPECSERV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 461
        Top = 2
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1219.729166666670000000
          5.291666666666670000
          140.229166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'QTDUTILIZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 517
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1367.895833333330000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'VLRUNIT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 585
        Top = 2
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1547.812500000000000000
          5.291666666666670000
          153.458333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'VLRTOT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText24: TQRDBText
        Left = 653
        Top = 2
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1727.729166666670000000
          5.291666666666670000
          140.229166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMESTOQUE.TRFchM
        DataField = 'TEMPSERV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 737
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1949.979166666667000000)
      BandType = rbPageHeader
      object QRLabel37: TQRLabel
        Left = 8
        Top = 0
        Width = 705
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          21.166666666666700000
          0.000000000000000000
          1865.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ficha T'#233'cnica de Produ'#231#227'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 290
      Width = 737
      Height = 5
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        13.229166666666670000
        1949.979166666667000000)
      BandType = rbGroupFooter
    end
    object QRBand6: TQRBand
      Left = 38
      Top = 248
      Width = 737
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1949.979166666667000000)
      BandType = rbGroupFooter
      object QRShape7: TQRShape
        Left = 6
        Top = 2
        Width = 707
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          2.645833333333330000
          15.875000000000000000
          5.291666666666670000
          1870.604166666670000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRLabel16: TQRLabel
        Left = 5
        Top = 4
        Width = 67
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          10.583333333333330000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'#227'o de Obra:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel29: TQRLabel
        Left = 5
        Top = 14
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          37.041666666666670000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel30: TQRLabel
        Left = 486
        Top = 14
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1285.875000000000000000
          37.041666666666670000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtd.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel31: TQRLabel
        Left = 533
        Top = 14
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1410.229166666667000000
          37.041666666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vlr. Unit.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel33: TQRLabel
        Left = 611
        Top = 14
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1616.604166666667000000
          37.041666666666670000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel34: TQRLabel
        Left = 668
        Top = 14
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1767.416666666667000000
          37.041666666666670000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tempo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel17: TQRLabel
        Left = 244
        Top = 14
        Width = 33
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          645.583333333333400000
          37.041666666666670000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Class.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 348
        Top = 14
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          920.750000000000000000
          37.041666666666670000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Presta'#231#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 57
      Width = 737
      Height = 84
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        222.250000000000000000
        1949.979166666667000000)
      BandType = rbTitle
      object QRSysData3: TQRSysData
        Left = 640
        Top = 4
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          10.583333333333330000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Pag.:'
        Transparent = False
        FontSize = 10
      end
      object QRSysData4: TQRSysData
        Left = 649
        Top = 38
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          100.541666666666700000
          179.916666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Transparent = False
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 652
        Top = 23
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333334000000
          60.854166666666680000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Impress'#227'o:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 3
        Top = 19
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          50.270833333333330000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Loja:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 3
        Top = 2
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Empresa:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 64
        Top = 2
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          5.291666666666667000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 64
        Top = 19
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          50.270833333333330000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 4
        Top = 37
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          97.895833333333340000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel35'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 4
        Top = 51
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          134.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel36'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 4
        Top = 66
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          174.625000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel38'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object BtnCtrlFchTec: TFlatButton
    Left = 220
    Top = 122
    Width = 149
    Height = 18
    Color = clInactiveCaptionText
    ColorFocused = -2147483620
    Caption = '&Ficha T'#233'cnica - F4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ParentColor = False
    TabOrder = 8
    OnClick = BtnCtrlFchTecClick
  end
  object RGPORCAO: TGroupBox
    Left = 672
    Top = 62
    Width = 89
    Height = 47
    Color = 16772332
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    Visible = False
    object Label24: TLabel
      Left = 1
      Top = 9
      Width = 86
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'POR'#199#195'O'
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object EdQtdPorcao: TColorEditFloat
      Left = 0
      Top = 23
      Width = 89
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      OnExit = EdQtdPorcaoExit
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object MCtrlProc: TPopupMenu
    Left = 736
    Top = 150
    object Produto1: TMenuItem
      Caption = 'Produto'
      OnClick = Produto1Click
    end
    object CdFabricante1: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = CdFabricante1Click
    end
    object CtrlInterno1: TMenuItem
      Caption = 'Ctrl. Interno'
      OnClick = CtrlInterno1Click
    end
    object CdComposto1: TMenuItem
      Caption = 'C'#243'd. Composto'
      OnClick = CdComposto1Click
    end
  end
  object MProcProd: TPopupMenu
    Left = 192
    Top = 38
    object MenuItem1: TMenuItem
      Caption = 'Produto'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'C'#243'd. Fabricante'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Ctrl. Interno'
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'C'#243'd. Composto'
      OnClick = MenuItem4Click
    end
  end
end
