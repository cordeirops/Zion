inherited FCadGrupo: TFCadGrupo
  Left = 245
  Top = 247
  Caption = 'FCadGrupo'
  ClientHeight = 306
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 601
    Height = 274
  end
  inherited LDescTitulo: TLabel
    Left = 305
    Top = 18
    Width = 143
    Caption = 'Cadastro de Grupos'
  end
  inherited PCadastro: TPanel
    Left = 9
    Top = 50
    Width = 584
    Height = 242
    inherited Panel4: TPanel
      Width = 580
      Height = 210
      inherited Label6: TLabel
        Left = 12
        Top = 11
        Width = 55
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
      end
      inherited Label7: TLabel
        Left = 12
        Top = 112
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
      end
      object Label2: TLabel [2]
        Left = 12
        Top = 64
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
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 14
        Top = 31
        Width = 60
        Height = 24
        Ctl3D = True
        DataField = 'COD_GRUPOPROD'
        DataSource = DMESTOQUE.DSGrupo
        Font.Name = 'Verdana'
        Font.Style = []
      end
      inherited DBDESC: TDBColorEdit
        Left = 12
        Top = 132
        Width = 557
        Height = 24
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DSGrupo
        Font.Name = 'Verdana'
        TabOrder = 2
      end
      object DBCODINT: TDBColorEdit
        Left = 12
        Top = 82
        Width = 59
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'COD_INTERNO'
        DataSource = DMESTOQUE.DSGrupo
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
    end
    inherited Panel1: TPanel
      Width = 580
    end
  end
  inherited PConsulta: TPanel
    Left = 9
    Top = 47
    Width = 583
    Height = 244
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 4
      Width = 578
      Height = 151
      DataSource = DMESTOQUE.DSGrupo
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'C'#243'digo Interno'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231'ao'
          Width = 382
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_GRUPOPROD'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 4
      Width = 577
      inherited EdNome: TFlatEdit
        Width = 443
      end
      inherited BtnSelecionar: TBitBtn
        Left = 455
        Top = 18
      end
    end
    inherited Painel: TPanel
      Left = 3
      Width = 579
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Width = 119
      end
    end
  end
  object FRGrupo: TfrReport
    Dataset = FRDSGrupo
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 558
    Top = 59
    ReportForm = {18000000}
  end
  object FRDSGrupo: TfrDBDataSet
    DataSet = DMESTOQUE.TGrupo
    Left = 526
    Top = 59
  end
end
