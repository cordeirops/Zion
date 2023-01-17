inherited FCadOferta: TFCadOferta
  Left = 179
  Top = 150
  Caption = 'FCadOferta'
  ClientHeight = 460
  ClientWidth = 691
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TLabel
    Width = 146
    Caption = 'Cadastro de Ofertas'
  end
  object PRemover: TPanel [5]
    Left = 18
    Top = 56
    Width = 663
    Height = 392
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 5
    Visible = False
    object Shape2: TShape
      Left = -1
      Top = 0
      Width = 655
      Height = 387
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label5: TLabel
      Left = 196
      Top = 102
      Width = 271
      Height = 16
      Caption = 'Lista de Produtos em Oferta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 128
      Width = 639
      Height = 241
      Color = 11206655
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx
      FixedColor = 11039232
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clSilver
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Mark'
          Title.Caption = 'X'
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTRINT'
          Title.Caption = 'Ctrl.'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTOOFERTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Caption = 'Vencimento'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 289
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDVARV'
          Title.Alignment = taRightJustify
          Title.Caption = 'Normal'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOOFERTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Oferta'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBARRA'
          Title.Caption = 'Barra'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAOFERTA'
          Title.Caption = 'Cadastro'
          Visible = True
        end>
    end
    object BBExcluir: TBitBtn
      Left = 534
      Top = 53
      Width = 111
      Height = 25
      Hint = 'Excluir produtos selecionados'
      Caption = 'Remover Marcadas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBExcluirClick
    end
    object GBDataVenc: TGroupBox
      Left = 32
      Top = 24
      Width = 217
      Height = 73
      Caption = ' Data Vencimento '
      TabOrder = 2
      object Label6: TLabel
        Left = 9
        Top = 20
        Width = 28
        Height = 13
        Caption = 'De:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 104
        Top = 42
        Width = 10
        Height = 13
        Caption = #225
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdData1: TColorMaskEdit
        Left = 9
        Top = 38
        Width = 89
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyPress = EdData1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDData2: TColorMaskEdit
        Left = 121
        Top = 38
        Width = 89
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = EDData2KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object GBDataOferta: TGroupBox
      Left = 264
      Top = 24
      Width = 217
      Height = 73
      Caption = ' Data Oferta '
      TabOrder = 3
      object Label8: TLabel
        Left = 9
        Top = 20
        Width = 28
        Height = 13
        Caption = 'De:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 104
        Top = 42
        Width = 10
        Height = 13
        Caption = #225
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EDDataOferta1: TColorMaskEdit
        Left = 9
        Top = 38
        Width = 89
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyPress = EDDataOferta1KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDDataOferta2: TColorMaskEdit
        Left = 121
        Top = 38
        Width = 89
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = EDDataOferta2KeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object BBRemoveTudo: TBitBtn
      Left = 534
      Top = 91
      Width = 111
      Height = 25
      Hint = 'Remove todas as ofertas cadastradas'
      Caption = 'Remover Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BBRemoveTudoClick
    end
    object BBOfertas: TBitBtn
      Left = 534
      Top = 15
      Width = 111
      Height = 25
      Hint = 'Exibe a lista completa das ofertas cadastradas'
      Caption = 'Lista de Ofertas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBOfertasClick
    end
  end
  object PCadastro: TPanel [6]
    Left = 16
    Top = 56
    Width = 663
    Height = 392
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    Visible = False
    object Shape1: TShape
      Left = 0
      Top = 0
      Width = 655
      Height = 387
      Brush.Color = 16772332
      Pen.Color = clGray
      Pen.Width = 2
    end
    object Label1: TLabel
      Left = 25
      Top = 63
      Width = 86
      Height = 13
      Caption = 'Pre'#231'o Oferta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 123
      Top = 63
      Width = 80
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 315
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Ctrl. Interno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 424
      Top = 64
      Width = 105
      Height = 13
      Caption = 'C'#243'digo de Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid5: TDBGrid
      Left = 8
      Top = 112
      Width = 639
      Height = 266
      Color = 11206655
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx
      FixedColor = 11039232
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clSilver
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTRINT'
          Title.Caption = 'Ctrl.'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTOOFERTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Caption = 'Vencimento'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDVARV'
          Title.Alignment = taRightJustify
          Title.Caption = 'Normal'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOOFERTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Title.Alignment = taRightJustify
          Title.Caption = 'Oferta'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBARRA'
          Title.Caption = 'Barra'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAOFERTA'
          Title.Caption = 'Cadastro'
          Visible = True
        end>
    end
    object EdCtrlInterno: TEdit
      Left = 313
      Top = 79
      Width = 106
      Height = 26
      Color = 16702175
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = EdOfertaKeyDown
      OnKeyPress = EdCtrlInternoKeyPress
    end
    object EdBarra: TEdit
      Left = 422
      Top = 79
      Width = 155
      Height = 26
      Color = 16702175
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyDown = EdOfertaKeyDown
      OnKeyPress = EdBarraKeyPress
    end
    object EdVencimento: TMaskEdit
      Left = 117
      Top = 78
      Width = 99
      Height = 25
      Color = 15204302
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '18/03/2008'
      OnKeyDown = EdOfertaKeyDown
    end
    object EdOferta: TFloatEdit
      Left = 12
      Top = 78
      Width = 99
      Height = 30
      Color = 15204302
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      OnKeyDown = EdOfertaKeyDown
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
    object BtnDelete: TBitBtn
      Left = 611
      Top = 78
      Width = 27
      Height = 27
      TabOrder = 5
      OnClick = BtnDeleteClick
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000018000000170000000100
        1800000000007806000000000000000000000000000000000000DEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEB6ADDEB6ADDEB6ADDEB6ADDEBAADDE
        BAB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADDEBEB5DEBEB5DEC7C6E7CBC6E7CB
        C6DEC7C6DEBAB5D6B2ADDEB6ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEB6ADD6B6B5E7D7CEF7EBE7
        FFF3EFFFF3EFFFF3EFF7EFEFF7E7E7E7D3CED6BAB5D6B2ADE7BEB5DEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBAADD6BAB5EF
        E3DEFFFBF7FFFBF7FFFBF7FFFBF7FFFBF7FFF7F7FFF3EFF7F3EFEFDBD6DEBAB5
        D6B2ADE7BEB5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3
        B5D6B6B5EFE3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FF
        F7F7FFF3EFEFDBD6D6B6ADDEBAADDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFF7D3C6DEB6ADE7D3CEFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
        FFA53C00A53C00FFFBFFFFF7F7F7F3EFE7CBC6D6B6ADE7C7BDDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFF7CFC6D6BAB5F7EFEFFFFFFFFFFFFFFFFFFFA53C00
        A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFBFFFFF7F7EFDFDED6B6ADE7C3
        BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7
        F7EBE7DEBAB5E7C3B5DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFEFC7BDE7CB
        C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFEFCBBDE7CBC6FFFFFFFFFFFFFFFFFFA53C00A53C00FFFFFFFFFFFFFFFF
        FFA53C00A53C00FFFFFFFFFFFFFFFBFFF7EFEFDEBAB5E7C3BDDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFEFCBBDDEC7C6FFFBFFFFFFFFFFFFFFFFFFFFA53C00
        A53C00FFFFFFA53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFF7E7E7D6B6ADEFCB
        BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7CFC6DEBEB5F7EBEFFFFFFFFF
        FFFFFFFFFFFFFFFFA53C00A53C00A53C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7D3CEDEB6ADEFCBC6DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFF7D3C6DEBA
        B5E7D3CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA53C00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7EFEFD6B6B5E7C3B5F7D3CEDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFEFCBBDDEBAB5EFDFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF7F3F7DEC3BDDEB6ADF7CFC6DEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDD6BAB5EFDBD6FFF7F7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7DEC3BDD6B6ADEFCBC6DEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFFFD7CEE7C3BDDE
        BAB5DEC7C6EFDFDEF7E7E7F7EFEFF7EBEFEFE3DEE7CBC6D6B2ADDEBAB5EFCFC6
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFFFD7CEF7CFC6E7C3BDE7BEB5DEBAB5DEBEB5DEBEB5DEBAB5DEBEB5EF
        C7BDDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEB
        EFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDE
        EBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF
        DEEBEFDEEBEFDEEBEFDEEBEFDEEBEFDEEBEF}
    end
    object BBImprimir: TBitBtn
      Left = 557
      Top = 9
      Width = 89
      Height = 25
      Hint = 'Imprimi a lista completa de ofertas'
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBImprimirClick
    end
    object BtnProcProd: TBitBtn
      Left = 580
      Top = 78
      Width = 27
      Height = 27
      Hint = 'Pressione para localizar o Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
  inherited PComunica: TPanel
    Top = 170
  end
  object BtnCtrlCad: TFlatButton
    Left = 16
    Top = 38
    Width = 76
    Height = 18
    Color = 13750737
    ColorFocused = -2147483621
    Caption = 'C&adastrar'
    ParentColor = False
    TabOrder = 3
    OnClick = BtnCtrlCadClick
  end
  object FlatButton1: TFlatButton
    Left = 93
    Top = 38
    Width = 76
    Height = 18
    Color = 13750737
    ColorFocused = -2147483621
    Caption = '&Remover'
    ParentColor = False
    TabOrder = 4
    OnClick = FlatButton1Click
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 488
    Top = 42
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 520
    Top = 42
    ReportForm = {18000000}
  end
end
