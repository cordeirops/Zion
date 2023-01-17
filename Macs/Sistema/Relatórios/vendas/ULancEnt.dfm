inherited FLancEnt: TFLancEnt
  Left = 230
  Top = 176
  Caption = 'FLancEnt'
  ClientHeight = 453
  ClientWidth = 773
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 769
    Height = 412
  end
  inherited LDescTitulo: TLabel
    Left = 497
    Top = 18
    Width = 170
    Caption = 'Entradas para corre'#231#227'o'
  end
  inherited PComunica: TPanel [5]
    Left = 146
    Top = 187
  end
  inherited PConsulta: TPanel [6]
    Top = 48
    inherited DBGridCadastroPadrao: TDBGrid
      DataSource = DMENTRADA.DWLancEnt
      Columns = <
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtd'
          Width = 35
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
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Text = 'Digite o N'#186' da Nota'
      end
    end
    inherited Painel: TPanel
      TabOrder = 0
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
  end
  inherited PCadastro: TPanel [7]
    Top = 48
    inherited Panel4: TPanel
      inherited Label16: TLabel
        Top = 235
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Height = 23
        DataField = 'QUANTIDADE'
      end
      inherited DBDESC: TDBColorEdit
        Height = 23
        DataField = 'NUMNOTA'
      end
      inherited DBColorEdit1: TDBColorEdit
        DataField = 'DT_ESTOQUE'
        MaxLength = 10
      end
      inherited DBColorEdit2: TDBColorEdit
        Top = 254
        DataField = 'MOTIVO'
      end
      inherited DBColorEdit3: TDBColorEdit
        DataField = 'DT_LANCAMENTO'
        MaxLength = 10
      end
      inherited PLote: TPanel
        TabOrder = 7
      end
      object GroupBox3: TGroupBox
        Left = 280
        Top = 280
        Width = 449
        Height = 65
        Caption = 'Impress'#227'o de Etiqueta'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        object CBImpEt: TCheckBox
          Left = 8
          Top = 29
          Width = 257
          Height = 17
          Caption = 'Imprimir etiqueta para este lan'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = CBImpEtClick
        end
        object RGTipoet: TRadioGroup
          Left = 263
          Top = 6
          Width = 185
          Height = 58
          Caption = 'Informe o C'#243'digo '#224' imprimir'
          ItemIndex = 0
          Items.Strings = (
            'C'#243'd. Barra'
            'C'#243'd. Fabricante ')
          TabOrder = 1
          Visible = False
        end
      end
    end
  end
  inherited MEscolheProc: TPopupMenu
    Top = 79
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    DefaultCopies = 2
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 91
    Top = 389
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 56
    Top = 389
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 22
    Top = 389
  end
  object PRelatorio: TPopupMenu
    Left = 468
    Top = 105
    object EtiquetaDirCdBarra1: TMenuItem
      Caption = 'Etiqueta C'#243'd. Barra'
      OnClick = EtiquetaDirCdBarra1Click
    end
    object EtiquetaDirCdFabricante1: TMenuItem
      Caption = 'Etiqueta C'#243'd. Fabricante'
      OnClick = EtiquetaDirCdFabricante1Click
    end
  end
end
