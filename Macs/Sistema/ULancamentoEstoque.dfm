inherited FLancamentoEstoque: TFLancamentoEstoque
  Left = 139
  Top = 142
  Caption = 'Lan'#231'amento corretivo de estoque'
  ClientHeight = 386
  ClientWidth = 590
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 4
    Top = 6
    Width = 581
    Height = 376
    inherited Panel4: TPanel
      Left = 1
      Top = 33
      Width = 576
      Height = 340
      object Label28: TLabel
        Left = 20
        Top = 19
        Width = 125
        Height = 16
        Caption = 'Controle Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 162
        Top = 19
        Width = 120
        Height = 16
        Caption = 'C'#243'd. Fabricante:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LPesquisa: TLabel
        Left = 304
        Top = 19
        Width = 130
        Height = 16
        Caption = 'Pesquisar C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 439
        Top = 24
        Width = 90
        Height = 12
        Caption = 'F2 - PEQUISA COM %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object PListaProdutos: TPanel
        Left = 19
        Top = 67
        Width = 534
        Height = 172
        BevelOuter = bvNone
        TabOrder = 5
        Visible = False
        object DBGrid1: TDBGrid
          Left = 2
          Top = 4
          Width = 531
          Height = 164
          Hint = 
            'No momento da pesquisa, digite um "." no inicio da pesquisa e o ' +
            'sistema ir'#225' pesquisar pelo c'#243'digo'
          DataSource = DMESTOQUE.DWSimilar
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODFABRICANTE'
              Title.Caption = 'C. Fabric.'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRINT'
              Title.Caption = 'Controle'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTFISICO'
              Title.Caption = 'Estoque'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto'
              Width = 218
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDVARV'
              Title.Alignment = taRightJustify
              Title.Caption = 'Vlr.'
              Width = 76
              Visible = True
            end>
        end
      end
      object PMostraProdutoSelecionado: TPanel
        Left = 14
        Top = 69
        Width = 543
        Height = 48
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 6
        object LProduto: TLabel
          Left = 8
          Top = 4
          Width = 62
          Height = 16
          Caption = 'Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LEstoque: TLabel
          Left = 8
          Top = 24
          Width = 62
          Height = 16
          Caption = 'Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 8
        Top = 104
        Width = 563
        Height = 218
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 4
        object Label6: TLabel
          Left = 187
          Top = 79
          Width = 81
          Height = 19
          Caption = 'Quantidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 283
          Top = 79
          Width = 79
          Height = 19
          Caption = 'N'#186' da Nota:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 39
          Top = 141
          Width = 140
          Height = 19
          Caption = 'Motivo da altera'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object EdQuantidade: TColorEditFloat
          Left = 156
          Top = 100
          Width = 114
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '0,0000'
          ValueFormat = '##,##0.0000'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDNumNota: TColorEditFloat
          Left = 280
          Top = 100
          Width = 114
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          EditType = fltString
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EDMotivacao: TColorEditFloat
          Left = 36
          Top = 161
          Width = 487
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
        object RGTipo: TRadioGroup
          Left = 128
          Top = 13
          Width = 289
          Height = 53
          Caption = 'Lan'#231'amento de   '
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          ParentFont = False
          TabOrder = 0
        end
      end
      object edControleInterno: TEdit
        Left = 20
        Top = 36
        Width = 129
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edControleInternoKeyPress
      end
      object edCodFabricante: TEdit
        Left = 162
        Top = 37
        Width = 129
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edCodFabricanteKeyPress
      end
      object EDPesquisa: TEdit
        Left = 304
        Top = 37
        Width = 228
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = EDPesquisaKeyPress
      end
      object btnprocprod: TBitBtn
        Left = 532
        Top = 36
        Width = 22
        Height = 26
        Hint = 'Pressione para localizar um Produto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnprocprodClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
    inherited Panel1: TPanel
      Width = 575
    end
  end
  inherited PComunica: TPanel
    Left = 61
  end
  inherited PConsulta: TPanel [2]
    Left = 3
    Top = 2
    Width = 581
    Height = 382
    object DBGLancamentos: TDBGrid [0]
      Left = 5
      Top = 87
      Width = 571
      Height = 291
      Color = 15794175
      Ctl3D = False
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
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtd'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD4CASAS'
          Title.Caption = 'Qtde. (04 Casas)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_LANCAMENTO'
          Title.Caption = 'Lan'#231'amento'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Produto'
          Width = 312
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Caption = 'N'#186' Documento'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTRLINT'
          Title.Caption = 'Ctrl. Int.'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFABRICANTE'
          Title.Caption = 'C'#243'd. Fabricante'
          Width = 113
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANTERIOR'
          Title.Caption = 'Ant.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTIVO'
          Title.Caption = 'Motivo'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 433
      Top = 44
      Width = 84
      Height = 37
      Enabled = False
      Visible = False
      inherited EdNome: TFlatEdit
        Width = 451
      end
      inherited BtnSelecionar: TBitBtn
        Left = 460
        Top = 18
      end
    end
    inherited Painel: TPanel
      Width = 575
      inherited BtnApagar: TBitBtn
        Enabled = False
      end
      inherited BtnConsultar: TBitBtn
        Enabled = False
      end
      inherited BtnRelatorio: TBitBtn
        Enabled = False
      end
      inherited BtnFiltrar: TBitBtn
        Enabled = False
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 536
      Top = 40
      Width = 32
      Height = 37
      Enabled = False
      Visible = False
    end
    object btnEntradas: TBitBtn
      Left = 4
      Top = 52
      Width = 100
      Height = 30
      Caption = 'Entradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnEntradasClick
    end
    object btnSaidas: TBitBtn
      Left = 103
      Top = 52
      Width = 100
      Height = 30
      Caption = 'Sa'#237'das'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnSaidasClick
    end
  end
end
