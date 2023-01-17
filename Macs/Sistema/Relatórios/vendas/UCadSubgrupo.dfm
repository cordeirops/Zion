inherited FCadSubgrupo: TFCadSubgrupo
  Left = 257
  Top = 228
  Caption = 'FCadSubgrupo'
  ClientHeight = 306
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 601
    Height = 267
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 174
    Caption = 'Cadastro de Sub Grupos'
  end
  inherited PComunica: TPanel [5]
    Left = 74
    Top = 104
  end
  inherited PCadastro: TPanel [6]
    Left = 9
    Top = 49
    Width = 585
    Height = 244
    Color = clWhite
    inherited Panel4: TPanel
      Width = 580
      Height = 211
      inherited Label7: TLabel
        Left = 15
        Top = 108
      end
      object Label2: TLabel [2]
        Left = 16
        Top = 62
        Width = 60
        Height = 19
        Caption = 'Interno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 61
        DataField = 'COD_SUBGRUPOPROD'
        DataSource = DMESTOQUE.DSSubgru
      end
      inherited DBDESC: TDBColorEdit
        Top = 126
        Width = 551
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DSSubgru
        TabOrder = 2
      end
      object DBCODINT: TDBColorEdit
        Left = 16
        Top = 81
        Width = 59
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COD_INTERNO'
        DataSource = DMESTOQUE.DSSubgru
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Width = 580
    end
  end
  inherited PConsulta: TPanel [7]
    Left = 8
    Top = 48
    Width = 587
    Height = 244
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 5
      Width = 577
      Height = 151
      DataSource = DMESTOQUE.DSSubgru
      Font.Name = 'Arial'
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 407
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_SUBGRUPOPROD'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 5
      Width = 577
      inherited EdNome: TFlatEdit
        Width = 443
      end
      inherited BtnSelecionar: TBitBtn
        Left = 454
        Top = 18
      end
    end
    inherited Painel: TPanel
      Left = 4
      Top = 4
      Width = 579
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Width = 119
      end
    end
  end
  object FRDSSUBGrupo: TfrDBDataSet
    DataSet = DMESTOQUE.TSubgru
    Left = 526
    Top = 59
  end
  object FRSUBGrupo: TfrReport
    Dataset = FRDSSUBGrupo
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 558
    Top = 59
    ReportForm = {18000000}
  end
end
