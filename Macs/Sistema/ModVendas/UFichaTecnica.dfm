inherited FFichaTecnica: TFFichaTecnica
  Left = 436
  Top = 114
  Caption = 'FFichaTecnica'
  ClientHeight = 468
  ClientWidth = 715
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 9
    Top = 447
    Width = 313
    Height = 12
    Caption = 'Enter ou duplo clique para alterar a quantidade do componente'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  inherited PConsulta: TPanel
    Left = 5
  end
  inherited PCadastro: TPanel
    Left = 6
    inherited Panel4: TPanel
      Height = 376
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 49
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object pCadSetor: TPanel
        Left = 240
        Top = 80
        Width = 273
        Height = 89
        BevelInner = bvLowered
        TabOrder = 6
        Visible = False
        object Label4: TLabel
          Left = 8
          Top = 17
          Width = 70
          Height = 16
          Caption = 'Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object btnFechaSetor: TSpeedButton
          Left = 252
          Top = 3
          Width = 19
          Height = 19
          Cursor = crHandPoint
          Hint = 'Pressione para fechar esta tela'
          Flat = True
          Glyph.Data = {
            06030000424D060300000000000036000000280000000F0000000F0000000100
            180000000000D0020000C40E0000C40E00000000000000000000996733996733
            9967339967339967339967339967339967339967339967339967339967339967
            33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
            9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
            9967339967339967339967339967339967339967339967339967339967339967
            33B99D94996733000000996733B99D9499673399673399673399673399673399
            6733996733996733996733996733996733B99D94996733000000996733B99D94
            9967339967330000009967339967339967339967339967330000009967339967
            33B99D94996733000000996733B99D9499673399673399673300000099673399
            6733996733000000996733996733996733B99D94996733000000996733B99D94
            9967339967339967339967330000009967330000009967339967339967339967
            33B99D94996733000000996733B99D9499673399673399673399673399673300
            0000996733996733996733996733996733B99D94996733000000996733B99D94
            9967339967339967339967330000009967330000009967339967339967339967
            33B99D94996733000000996733B99D9499673399673399673300000099673399
            6733996733000000996733996733996733B99D94996733000000996733B99D94
            9967339967330000009967339967339967339967339967330000009967339967
            33B99D94996733000000996733B99D9499673399673399673399673399673399
            6733996733996733996733996733996733B99D94996733000000996733B99D94
            9967339967339967339967339967339967339967339967339967339967339967
            33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
            9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
            9967339967339967339967339967339967339967339967339967339967339967
            33996733996733000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnFechaSetorClick
        end
        object btnGravaSetor: TButton
          Left = 184
          Top = 60
          Width = 75
          Height = 25
          Caption = 'Gravar'
          TabOrder = 1
          OnClick = btnGravaSetorClick
        end
        object btnCancelarSetor: TButton
          Left = 16
          Top = 60
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 2
          OnClick = btnCancelarSetorClick
        end
        object edDescricaoSetor: TFlatEdit
          Left = 8
          Top = 33
          Width = 257
          Height = 22
          ColorBorder = clBlack
          ColorFlat = clBtnFace
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object pNewQtde: TPanel
        Left = 304
        Top = 96
        Width = 129
        Height = 49
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 9
        Visible = False
        object Label6: TLabel
          Left = 6
          Top = 3
          Width = 117
          Height = 16
          Caption = 'Nova quantidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edNovaQuantidade: TFlatEdit
          Left = 7
          Top = 21
          Width = 113
          Height = 22
          Hint = 'Enter p/ confirmar ou Esc p/ cancelar'
          ColorBorder = clBlack
          ColorFlat = clBtnFace
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = edNovaQuantidadeKeyDown
        end
      end
      object pSetor: TPanel
        Left = 368
        Top = 61
        Width = 320
        Height = 310
        BevelInner = bvLowered
        Caption = 'pSetor'
        TabOrder = 5
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 145
          Height = 13
          Caption = 'Setores [F2 p/ cadastro]:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edSetor: TFlatEdit
          Left = 4
          Top = 18
          Width = 313
          Height = 22
          ColorBorder = clBlack
          ColorFlat = clBtnFace
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edSetorExit
          OnKeyDown = edSetorKeyDown
        end
        object gridSetor: TDBGrid
          Left = 4
          Top = 40
          Width = 313
          Height = 265
          BorderStyle = bsNone
          DataSource = DMESTOQUE.DSetorProducao
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = gridSetorKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_SETORPRODUCAO'
              Title.Caption = 'CODIGO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Visible = True
            end>
        end
      end
      object pComponentes: TPanel
        Left = 368
        Top = 61
        Width = 320
        Height = 310
        BevelInner = bvLowered
        Caption = 'COMPONENTES'
        TabOrder = 2
        Visible = False
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 206
          Height = 13
          Caption = 'Componentes [F2 p/ tela produtos]:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object edPesquisaComponente: TFlatEdit
          Left = 4
          Top = 18
          Width = 313
          Height = 22
          ColorBorder = clBlack
          ColorFlat = clBtnFace
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edPesquisaComponenteExit
          OnKeyDown = edPesquisaComponenteKeyDown
        end
        object gridComponentes: TDBGrid
          Left = 4
          Top = 40
          Width = 313
          Height = 265
          BorderStyle = bsNone
          DataSource = DMESTOQUE.DSAlx
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = gridComponentesKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_ESTOQUE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 304
              Visible = True
            end>
        end
      end
      object edProduto: TFlatEdit
        Left = 7
        Top = 61
        Width = 274
        Height = 22
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'PRODUTO'
      end
      object edQtde: TFlatEdit
        Left = 282
        Top = 61
        Width = 45
        Height = 22
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object btnComponente: TButton
        Left = 331
        Top = 88
        Width = 34
        Height = 25
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnComponenteClick
      end
      object btnSetor: TButton
        Left = 331
        Top = 62
        Width = 34
        Height = 25
        Caption = 'S'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btnSetorClick
      end
      object gridSetComp: TStringGrid
        Left = 7
        Top = 85
        Width = 320
        Height = 285
        BorderStyle = bsNone
        ColCount = 4
        DefaultColWidth = 275
        DefaultRowHeight = 25
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
        TabOrder = 7
        OnClick = gridSetCompClick
        OnDblClick = gridSetCompDblClick
        OnDrawCell = gridSetCompDrawCell
        OnKeyDown = gridSetCompKeyDown
      end
      object Panel2: TPanel
        Left = 8
        Top = 5
        Width = 681
        Height = 39
        BevelInner = bvLowered
        Color = clMoneyGreen
        TabOrder = 8
        object Label5: TLabel
          Left = 10
          Top = 3
          Width = 203
          Height = 32
          Caption = 'Ficha T'#233'cnica'
          Color = clMoneyGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = cl3DDkShadow
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
  end
  object ApplicationEvents: TApplicationEvents
    Left = 280
    Top = 16
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 389
    Top = 19
    object btnTeste: TMenuItem
      Caption = 'Teste'
    end
  end
end
