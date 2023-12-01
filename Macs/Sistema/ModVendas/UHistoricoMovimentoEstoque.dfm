object frmHistoricoMovimentoEstoque: TfrmHistoricoMovimentoEstoque
  Left = 129
  Top = 184
  AutoScroll = False
  Caption = 'Hist'#243'rico de movimentos de estoque'
  ClientHeight = 578
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label77: TLabel
    Left = 124
    Top = 22
    Width = 75
    Height = 16
    Caption = 'C'#243'd. Barra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 257
    Top = 22
    Width = 63
    Height = 16
    Caption = 'Ctrl. Int.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 352
    Top = 22
    Width = 75
    Height = 16
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 459
    Top = 22
    Width = 64
    Height = 16
    Caption = 'Descri'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object EdCodBarra: TMaskEdit
    Left = 120
    Top = 38
    Width = 129
    Height = 24
    Hint = 
      'Informe o c'#243'digo de composi'#231#227'o. Pressione <ENTER> para seleciona' +
      'r e <ESC> para liberar'
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = EdCodBarraKeyDown
  end
  object RGFiltro: TRadioGroup
    Left = 6
    Top = 34
    Width = 99
    Height = 51
    Caption = 'Filtro'
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'Ativos'
      'Inativos')
    ParentCtl3D = False
    TabOrder = 1
  end
  object EdCtrlInt: TEdit
    Left = 256
    Top = 38
    Width = 89
    Height = 24
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Text = 'EdCtrlInt'
    OnKeyDown = EdCtrlIntKeyDown
  end
  object EDCodFab: TColorMaskEdit
    Left = 352
    Top = 38
    Width = 100
    Height = 24
    Hint = 'Procura pelo  C'#211'DIGO DO FABRICANTE'
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnKeyDown = EDCodFabKeyDown
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDSimilar: TEdit
    Left = 456
    Top = 38
    Width = 297
    Height = 24
    Hint = 
      'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
      'a liberar - [F2] Para pesquisa parcial'
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnKeyDown = EDSimilarKeyDown
  end
  object PageControl1: TPageControl
    Left = 7
    Top = 152
    Width = 748
    Height = 406
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object TabSheet1: TTabSheet
      Caption = 'Entradas'
      object Label1: TLabel
        Left = 7
        Top = 7
        Width = 136
        Height = 16
        Caption = 'Entradas corretivas'
      end
      object Label2: TLabel
        Left = 7
        Top = 180
        Width = 63
        Height = 16
        Caption = 'Compras'
      end
      object DBGrid2: TDBGrid
        Left = 7
        Top = 26
        Width = 727
        Height = 145
        Hint = 'Entrada de Corre'#231#227'o'
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'Doc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_LANCAMENTO'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtd.'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO'
            Title.Caption = 'Hist'#243'rico'
            Visible = True
          end>
      end
      object DBGrid5: TDBGrid
        Left = 7
        Top = 198
        Width = 727
        Height = 170
        Hint = 'Pedido de Compra'
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx3
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPED'
            Title.Caption = 'Doc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Dt. Pedido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDEPROD'
            Title.Caption = 'Qtd.'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtdest'
            Title.Caption = 'Qtd. Est.'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO'
            Title.Caption = 'Vlr. Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPROD'
            Title.Caption = 'Valor'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPFCNPJ'
            Title.Caption = 'CPF/CNPJ'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sa'#237'das'
      ImageIndex = 1
      object Label5: TLabel
        Left = 7
        Top = 7
        Width = 123
        Height = 16
        Caption = 'Sa'#237'das corretivas'
      end
      object Label6: TLabel
        Left = 7
        Top = 118
        Width = 120
        Height = 16
        Caption = 'Pedido de venda'
      end
      object Label7: TLabel
        Left = 7
        Top = 245
        Width = 124
        Height = 16
        Caption = 'Ordem de servi'#231'o'
      end
      object DBGrid3: TDBGrid
        Left = 7
        Top = 24
        Width = 727
        Height = 90
        Hint = 'Sa'#237'da de Corre'#231#227'o'
        Color = 15658717
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx1
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Caption = 'Doc.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_LANCAMENTO'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtd.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO'
            Title.Caption = 'Hist'#243'rico'
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 7
        Top = 135
        Width = 727
        Height = 103
        Hint = 'Pedido de Venda'
        Color = 15658717
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx2
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMPED'
            Title.Caption = 'Doc.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPEDVEN'
            Title.Caption = 'Dt. Pedido'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTDEPROD'
            Title.Caption = 'Qtd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAO'
            Title.Caption = 'ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO'
            Title.Caption = 'Vlr. Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTPROD'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLI'
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPFCNPJ'
            Title.Caption = 'CPF/CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTE'
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 7
        Top = 263
        Width = 727
        Height = 110
        Hint = 'Ordem de Servi'#231'o'
        Color = 15658717
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx4
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'Ordem'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMREQ'
            Title.Caption = 'Req.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODFABR'
            Title.Caption = 'Fabric.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Caption = 'Qtd.'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO'
            Title.Caption = 'Vlr. Unit.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Dt. Abertura'
            Visible = True
          end>
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 68
    Width = 633
    Height = 49
    TabOrder = 6
    object DBText2: TDBText
      Left = 136
      Top = 12
      Width = 89
      Height = 17
      DataField = 'CONTRINT'
      DataSource = DMESTOQUE.DWSimilar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 336
      Top = 12
      Width = 289
      Height = 17
      DataField = 'DESCRICAO'
      DataSource = DMESTOQUE.DWSimilar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 232
      Top = 12
      Width = 101
      Height = 17
      DataField = 'CODCOMPOSTO'
      DataSource = DMESTOQUE.DWSimilar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 4
      Top = 12
      Width = 121
      Height = 17
      DataField = 'CODBARRA'
      DataSource = DMESTOQUE.DWSimilar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
