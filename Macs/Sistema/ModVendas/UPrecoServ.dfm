inherited FPrecoServ: TFPrecoServ
  Left = 306
  Top = 104
  Caption = 'Tabela de Pre'#231'os'
  ClientHeight = 420
  ClientWidth = 711
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PCCadastro: TPanel [0]
    Left = 13
    Top = 41
    Width = 686
    Height = 370
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 3
    Visible = False
    object LTextoBusca: TLabel
      Left = 496
      Top = 55
      Width = 39
      Height = 16
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object LVlrAnt: TLabel
      Left = 432
      Top = 79
      Width = 9
      Height = 16
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inline FrmCli: TFrmBusca
      Left = 2
      Top = 5
      Width = 407
      Height = 57
      VertScrollBar.Color = clWhite
      VertScrollBar.ParentColor = False
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      TabStop = True
      inherited LTextoBusca: TLabel
        Left = 6
        Top = 1
        Width = 51
        Caption = 'Cliente:'
      end
      inherited LUZOPEN: TShape
        Left = 356
        Top = 20
      end
      inherited LUZMINUS: TShape
        Left = 377
        Top = 20
      end
      inherited EdDescricao: TFlatEdit
        Top = 21
        Width = 282
        Height = 23
        TabStop = False
        ColorFlat = clWhite
        Font.Height = -13
        Font.Style = []
        TabOrder = 1
      end
      inherited BTNOPEN: TBitBtn
        Left = 358
        Top = 23
        TabOrder = 2
        OnClick = FrmCliBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 379
        Top = 23
        TabOrder = 3
        TabStop = False
        OnClick = FrmCliBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Left = 6
        Top = 21
        Width = 69
        Height = 23
        ColorFlat = 16113353
        Enabled = False
        Font.Height = -13
        OnKeyDown = FrmCliEDCodigoKeyDown
      end
    end
    inline FrmProduto: TFrmBusca
      Left = 4
      Top = 54
      Width = 401
      Height = 57
      VertScrollBar.Color = clWhite
      VertScrollBar.ParentColor = False
      Color = 16772332
      ParentColor = False
      TabOrder = 1
      TabStop = True
      inherited LTextoBusca: TLabel
        Left = 6
        Width = 57
        Caption = 'Produto:'
      end
      inherited LUZOPEN: TShape
        Left = 4
        Top = 20
        Width = 23
      end
      inherited LUZMINUS: TShape
        Left = 389
        Top = 20
        Width = 9
      end
      inherited EdDescricao: TFlatEdit
        Left = 104
        Top = 21
        Width = 281
        Height = 23
        TabStop = False
        ColorFlat = clWhite
        Font.Height = -13
        Font.Style = []
        TabOrder = 2
      end
      inherited BTNOPEN: TBitBtn
        Left = 8
        Top = 23
        Width = 17
        TabOrder = 0
        OnClick = FrmProdutoBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 389
        Top = 24
        Width = 12
        Height = 18
        TabOrder = 3
        TabStop = False
        Visible = False
        OnClick = FrmProdutoBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Left = 30
        Top = 21
        Width = 69
        Height = 23
        ColorFlat = 15657962
        Enabled = False
        Font.Height = -13
        TabOrder = 1
        OnKeyDown = FrmProdutoEDCodigoKeyDown
      end
    end
    object FEValor: TFlatEdit
      Left = 496
      Top = 75
      Width = 121
      Height = 23
      ColorFlat = clMoneyGreen
      TabOrder = 2
    end
    object BBInserir: TBitBtn
      Left = 624
      Top = 74
      Width = 22
      Height = 23
      Hint = 'Inserir'
      TabOrder = 3
      OnClick = BBInserirClick
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
    object BBExcluir: TBitBtn
      Left = 646
      Top = 74
      Width = 23
      Height = 23
      Hint = 'Editar'
      TabOrder = 4
      OnClick = BBExcluirClick
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
    object GroupBox3: TGroupBox
      Left = 8
      Top = 323
      Width = 665
      Height = 46
      Caption = 'Filtrar'
      TabOrder = 5
      object ENome: TEdit
        Left = 8
        Top = 16
        Width = 305
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Cliente'
        OnEnter = ENomeEnter
        OnKeyDown = ENomeKeyDown
      end
      object EProd: TEdit
        Left = 320
        Top = 16
        Width = 337
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Produto'
        OnEnter = EProdEnter
        OnKeyDown = EProdKeyDown
      end
    end
    object DBGridConst: TDBGrid
      Left = 7
      Top = 112
      Width = 663
      Height = 201
      Hint = 'Funcion'#225'rios da equipe.'
      TabStop = False
      Color = 15794175
      DataSource = DMESTOQUE.DSAlx
      FixedColor = 11039232
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_TABPRECO'
          Title.Caption = 'Cod'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_PROD'
          Title.Caption = 'Valor'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_NORMAL'
          Title.Caption = 'Valor Normal'
          Visible = True
        end>
    end
  end
  inherited PCadastro: TPanel [1]
    inherited Panel4: TPanel
      object Label1: TLabel
        Left = 8
        Top = 22
        Width = 93
        Height = 16
        Caption = 'Nome da Tabela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 7
        Top = 73
        Width = 82
        Height = 18
        Caption = #205'tens Tabela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 88
        Width = 681
        Height = 254
        TabOrder = 0
        object LServico: TLabel
          Left = 23
          Top = 51
          Width = 4
          Height = 18
          Font.Charset = ANSI_CHARSET
          Font.Color = 4868685
          Font.Height = -16
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object LSubServico: TLabel
          Left = 23
          Top = 68
          Width = 3
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Georgia'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 50
          Top = 8
          Width = 70
          Height = 16
          Caption = 'C'#243'd. Interno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 222
          Top = 8
          Width = 78
          Height = 16
          Caption = 'Qtde. M'#237'nima'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 343
          Top = 8
          Width = 64
          Height = 16
          Caption = 'Vlr. Normal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 455
          Top = 8
          Width = 85
          Height = 16
          Caption = 'Vlr. Hora Extra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = []
          ParentFont = False
        end
        object BtnProcServ: TBitBtn
          Left = 22
          Top = 24
          Width = 22
          Height = 20
          Hint = 'Pressione para localizar o SubServi'#231'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnProcServClick
          OnExit = BtnProcServExit
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EDCodInterno: TFlatEdit
          Left = 44
          Top = 24
          Width = 125
          Height = 20
          ColorBorder = clSkyBlue
          ColorFlat = clWhite
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 22
          Top = 83
          Width = 633
          Height = 146
          DataSource = DMServ.DSAlx1
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'COD_TABELAPRECO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Tabela Pre'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Width = 257
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_MIN'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde. M'#237'nima'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_NORMAL'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Normal'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_HORAEXTRA'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Extra'
              Width = 86
              Visible = True
            end>
        end
        object BtnInsertServ: TBitBtn
          Left = 596
          Top = 27
          Width = 70
          Height = 24
          Hint = 
            'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
            'na lista (ALT + I)'
          Caption = '&Inserir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BtnInsertServClick
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
        object BtnDeleteServ: TBitBtn
          Left = 596
          Top = 53
          Width = 70
          Height = 23
          Hint = 
            'Pressione para remover o produto selecionado na lista da mesma (' +
            'ALT + E)'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnDeleteServClick
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
        object EDQtde: TEdit
          Left = 223
          Top = 24
          Width = 67
          Height = 21
          TabOrder = 3
        end
        object EDVlrNormal: TEdit
          Left = 344
          Top = 24
          Width = 93
          Height = 21
          TabOrder = 4
          OnExit = EDVlrNormalExit
        end
        object EDVlrExtra: TEdit
          Left = 456
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 5
          OnExit = EDVlrExtraExit
        end
      end
      object EDNomeTab: TEdit
        Left = 8
        Top = 38
        Width = 249
        Height = 21
        TabOrder = 1
        Text = 'EDNomeTab'
      end
    end
  end
  inherited PConsulta: TPanel [2]
    Left = 9
    Top = 6
    inherited DBGridCadastroPadrao: TDBGrid
      Height = 321
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'COD_TABELAPRECO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Tabela de Pre'#231'o'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 425
          Visible = True
        end>
    end
  end
  inherited PComunica: TPanel [3]
  end
end
