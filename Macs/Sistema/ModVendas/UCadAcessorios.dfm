inherited FCadAcessorios: TFCadAcessorios
  Left = 532
  Top = 196
  Caption = 'Acess'#243'rios'
  ClientHeight = 474
  ClientWidth = 540
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 34
    Top = 88
    Width = 412
  end
  object Panel1: TPanel
    Left = 10
    Top = 8
    Width = 527
    Height = 453
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Label1: TLabel
      Left = 160
      Top = 40
      Width = 184
      Height = 16
      Caption = 'Descri'#231#227'o do acess'#243'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 40
      Width = 56
      Height = 16
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 40
      Width = 64
      Height = 16
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 104
      Width = 519
      Height = 345
      Caption = 'Lista de Acess'#243'rios Adicionados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DBGrid8: TDBGrid
        Left = 8
        Top = 18
        Width = 506
        Height = 319
        Color = clCream
        Ctl3D = False
        DataSource = DMESTOQUE.DSAlx4
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CONTRINT'
            Title.Caption = 'C'#243'digo'
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
            Title.Caption = 'Acess'#243'rio'
            Width = 373
            Visible = True
          end>
      end
    end
    object EdDescricaoAcessorio: TEdit
      Left = 160
      Top = 56
      Width = 289
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyUp = EdDescricaoAcessorioKeyUp
    end
    object BtnInsertServ: TBitBtn
      Left = 451
      Top = 54
      Width = 70
      Height = 25
      Hint = 
        'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
        'na lista (ALT + I)'
      Caption = '&Inserir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
      Left = 451
      Top = 78
      Width = 70
      Height = 25
      Hint = 
        'Pressione para remover o produto selecionado na lista da mesma (' +
        'ALT + E)'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
    object BtnSelecionar: TBitBtn
      Left = 378
      Top = 3
      Width = 144
      Height = 25
      Caption = 'Selecionar - F9'
      TabOrder = 3
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
    object EdCodigoAcessorio: TEdit
      Left = 0
      Top = 56
      Width = 78
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EdEstoque: TFloatEdit
      Left = 82
      Top = 56
      Width = 74
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
    end
  end
end
