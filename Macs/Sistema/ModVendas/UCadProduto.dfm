inherited FCadProduto: TFCadProduto
  Left = 352
  Top = 125
  Caption = 'FCadProduto'
  ClientHeight = 335
  ClientWidth = 606
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    Left = 8
    Top = 9
    Width = 577
    Height = 318
    inherited GroupBox1: TGroupBox
      Width = 567
      inherited EdNome: TFlatEdit
        Width = 435
      end
      object BitBtn1: TBitBtn
        Left = 443
        Top = 18
        Width = 116
        Height = 25
        Caption = 'Selecionar - F9'
        TabOrder = 2
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
    end
    inherited Painel: TPanel
      Width = 567
      inherited BtnFiltrar: TBitBtn
        Width = 103
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 567
      Height = 224
      DataSource = DMESTOQUE.DSProduto
      OnDblClick = DBGridCadastroPadraoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PRODUTO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo Interno'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 471
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_SUBGRUPOPROD'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_GRUPOPROD'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_CST'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_LOJA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VENDVISTA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VENDPRAZO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CUSTOVENDA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COMPVISTA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COMPPRAZO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'QTDCOMP'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'QTDVEND'
          Visible = False
        end>
    end
  end
  inherited PComunica: TPanel
    Left = 85
    Top = 121
  end
  inherited PCadastro: TPanel
    Left = 5
    Top = 9
    Width = 588
    Height = 318
    Color = clWhite
    inherited Panel4: TPanel
      Top = 5
      Width = 583
      Height = 308
      object Label6: TLabel
        Left = 12
        Top = 43
        Width = 55
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 12
        Top = 144
        Width = 76
        Height = 16
        Caption = 'Descri'#231'ao:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 96
        Width = 59
        Height = 16
        Caption = 'Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBPRIMEIRO: TDBColorEdit
        Left = 14
        Top = 63
        Width = 60
        Height = 24
        Color = 16758639
        Ctl3D = True
        DataField = 'COD_PRODUTO'
        DataSource = DMESTOQUE.DSProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDESC: TDBColorEdit
        Left = 10
        Top = 164
        Width = 557
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DSProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBCODINT: TDBColorEdit
        Left = 12
        Top = 114
        Width = 59
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'COD_INTERNO'
        DataSource = DMESTOQUE.DSProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 211
        Width = 369
        Height = 40
        Caption = 'G R U P O'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object BtnAddGrupo: TBitBtn
          Left = 345
          Top = 13
          Width = 22
          Height = 22
          Hint = 'Pressione para localizar um grupo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnAddGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EDCODGRUPO: TColorEditFloat
          Left = 2
          Top = 15
          Width = 83
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          Text = '000'
          EditType = fltString
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBGRUPO: TColorEditFloat
          Left = 85
          Top = 15
          Width = 260
          Height = 22
          Color = clSilver
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          EditType = fltString
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object GroupBox3: TGroupBox
        Left = 11
        Top = 259
        Width = 372
        Height = 40
        Caption = 'S U B G R U P O'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object BtnAddSubGrupo: TBitBtn
          Left = 347
          Top = 15
          Width = 22
          Height = 22
          Hint = 'Pressione para localizar um sub grupo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BtnAddSubGrupoClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EDCODSUBGRUPO: TColorEditFloat
          Left = 2
          Top = 15
          Width = 83
          Height = 22
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          Text = '000'
          EditType = fltString
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object DBSUBGRUPO: TColorEditFloat
          Left = 85
          Top = 15
          Width = 260
          Height = 22
          Color = clSilver
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'BankGothic Md BT'
          Font.Style = [fsBold]
          MaxLength = 3
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          EditType = fltString
          ValueFormat = '#,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object CBInativo: TCheckBox
        Left = 425
        Top = 43
        Width = 153
        Height = 17
        Caption = 'Grade Inativada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    inherited Panel1: TPanel
      Width = 583
    end
  end
end
