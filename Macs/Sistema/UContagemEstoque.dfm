inherited FContagemEstoque: TFContagemEstoque
  Left = 207
  Top = 156
  Caption = 'Contagem de Estoque'
  ClientHeight = 408
  ClientWidth = 717
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel [0]
  end
  inherited PConsulta: TPanel [1]
    Visible = False
  end
  inherited PCadastro: TPanel
    Left = -2
    Top = 0
    Width = 720
    Visible = True
    inherited Panel4: TPanel
      Width = 716
      Caption = 'es'
      object lPesquisa: TLabel
        Left = 8
        Top = 8
        Width = 94
        Height = 16
        Caption = 'Ctrl. Interno:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 122
        Top = 8
        Width = 80
        Height = 16
        Caption = 'C'#243'd. Fabr.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 236
        Top = 8
        Width = 76
        Height = 16
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 618
        Top = 13
        Width = 85
        Height = 16
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'F9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label4Click
      end
      object Label5: TLabel
        Left = 618
        Top = 29
        Width = 85
        Height = 16
        Cursor = crHandPoint
        Alignment = taCenter
        AutoSize = False
        Caption = 'Para inserir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Label4Click
      end
      object edCtrInt: TFlatEdit
        Left = 8
        Top = 25
        Width = 109
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
        TabOrder = 0
        OnEnter = edCtrIntEnter
        OnKeyDown = edCtrIntKeyDown
      end
      object DBGrid: TDBGrid
        Left = 8
        Top = 55
        Width = 702
        Height = 319
        Color = 15794175
        Ctl3D = False
        DataSource = DMESTOQUE.dItensContagem
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = GridCellClick
        OnDblClick = DBGridDblClick
        OnKeyDown = DBGridKeyDown
        OnKeyUp = DBGridKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_ESTOQUE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CONTRINT'
            Title.Caption = 'Ctrl. Interno'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODFABR'
            Title.Caption = 'Cod. Fabricante'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 369
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTFISICO'
            Title.Caption = 'Estoque'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTAGEM'
            Title.Caption = 'Contagem'
            Width = 67
            Visible = True
          end>
      end
      object pContagem: TPanel
        Left = 285
        Top = 72
        Width = 169
        Height = 70
        BevelInner = bvLowered
        Color = clBtnHighlight
        TabOrder = 2
        Visible = False
        object lCodigoProduto: TLabel
          Left = 8
          Top = 24
          Width = 72
          Height = 13
          Caption = 'lCodigoProduto'
          Visible = False
        end
        object Label1: TLabel
          Left = 10
          Top = 7
          Width = 148
          Height = 29
          Alignment = taCenter
          AutoSize = False
          Caption = 'Informe a quantidade real do estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'verdana'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object edQtdeContagem: TFloatEdit
          Left = 24
          Top = 40
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0,00'
          OnKeyDown = edQtdeContagemKeyDown
          ValueFormat = '##,##0.00'
          ValueInteger = 0
        end
      end
      object edFabricante: TFlatEdit
        Left = 122
        Top = 25
        Width = 109
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
        TabOrder = 3
        OnEnter = edFabricanteEnter
        OnKeyDown = edFabricanteKeyDown
      end
      object edDescricao: TFlatEdit
        Left = 236
        Top = 25
        Width = 369
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
        TabOrder = 4
        OnEnter = edDescricaoEnter
        OnKeyDown = edDescricaoKeyDown
      end
    end
    inherited Panel1: TPanel
      Width = 716
      inherited BtnGravar: TBitBtn
        Caption = 'Aplicar - F5'
      end
      object BtnZerar: TBitBtn
        Left = 328
        Top = 2
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Caption = 'Zerar Contagem'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnZerarClick
      end
      object BtnAjustarEst: TBitBtn
        Left = 568
        Top = 2
        Width = 145
        Height = 25
        Caption = 'Ajustar Estoque Calculado'
        TabOrder = 3
        Visible = False
        OnClick = BtnAjustarEstClick
      end
    end
  end
end
