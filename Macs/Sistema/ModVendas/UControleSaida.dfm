inherited FControleSaida: TFControleSaida
  Left = 375
  Top = 86
  Caption = 'Itens em controle de sa'#237'da'
  ClientHeight = 471
  ClientWidth = 641
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 9
    Top = 18
    Width = 78
    Height = 18
    Caption = 'Ctrl. Int.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 105
    Top = 18
    Width = 92
    Height = 18
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel [2]
    Left = 211
    Top = 18
    Width = 78
    Height = 18
    Caption = 'Descri'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 58
    Top = 160
    TabOrder = 4
  end
  object dbItens: TPageControl
    Left = 6
    Top = 75
    Width = 628
    Height = 390
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = dbItensChange
    object TabSheet1: TTabSheet
      Caption = 'Controlando'
      object DBGrid2: TDBGrid
        Left = 3
        Top = 5
        Width = 615
        Height = 350
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = pmControlando
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'contrint'
            Title.Caption = 'Cont. Interno'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codprodfabr'
            Title.Caption = 'C'#243'd. Fabricante'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPROD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Qtde.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD4CASAS'
            Title.Caption = 'Qtde. (4 c)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desc. (%)'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Width = 178
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Retornados'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 3
        Top = 5
        Width = 615
        Height = 350
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = pmControlando
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'contrint'
            Title.Caption = 'Cont. Interno'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codprodfabr'
            Title.Caption = 'C'#243'd. Fabricante'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPROD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Qtde.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD4CASAS'
            Title.Caption = 'Qtde. (4 c)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desc. (%)'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Width = 178
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sem Controle'
      ImageIndex = 2
      object dbSemControle: TDBGrid
        Left = 3
        Top = 5
        Width = 615
        Height = 350
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.DSSlave
        FixedColor = 11039232
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = pmControlando
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'contrint'
            Title.Caption = 'Cont. Interno'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codprodfabr'
            Title.Caption = 'C'#243'd. Fabricante'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Produto'
            Width = 278
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPROD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'Qtde.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD4CASAS'
            Title.Caption = 'Qtde. (4 c)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALUNIT'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPRO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desc. (%)'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Width = 178
            Visible = True
          end>
      end
    end
  end
  object EdCtrlInt: TEdit
    Left = 8
    Top = 38
    Width = 89
    Height = 26
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EdCtrlIntKeyPress
  end
  object EDCodFab: TColorMaskEdit
    Left = 104
    Top = 38
    Width = 100
    Height = 26
    Hint = 'Procura pelo  C'#211'DIGO DO FABRICANTE'
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = EDCodFabKeyPress
    NotFoundText = 'N'#227'o Existe'
    InputText = 'Por favor entre na procura pelo crit'#233'rio'
    ButtonCaption = 'Ok'
  end
  object EDSimilar: TEdit
    Left = 210
    Top = 38
    Width = 423
    Height = 26
    Hint = 
      'Informe o similar. Pressione <ENTER> para selecionar e <ESC> par' +
      'a liberar - [F2] Para pesquisa parcial'
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnKeyPress = EDSimilarKeyPress
  end
  object pmControlando: TPopupMenu
    Left = 321
    Top = 170
    object Desmarcaritemparacontroledeposteriorretorno2: TMenuItem
      Caption = 'Retornado - Marca Item como retornado'
      OnClick = Desmarcaritemparacontroledeposteriorretorno2Click
    end
    object Marcaritemparacontroledeposteriorretorno1: TMenuItem
      Caption = 'Controlando - Marca item como n'#227'o retornado'
      OnClick = Marcaritemparacontroledeposteriorretorno1Click
    end
  end
end
