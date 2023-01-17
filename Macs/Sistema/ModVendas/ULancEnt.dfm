inherited FLancEnt: TFLancEnt
  Left = 230
  Top = 176
  Caption = 'FLancEnt'
  ClientHeight = 399
  ClientWidth = 755
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    inherited Panel4: TPanel
      inherited Label16: TLabel
        Top = 235
      end
      inherited PLote: TPanel
        TabOrder = 9
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
  inherited PComunica: TPanel
    Left = 146
    Top = 147
  end
  inherited PConsulta: TPanel [2]
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
          Expanded = False
          FieldName = 'QTD4CASAS'
          Title.Caption = 'Qtde. (04 Casas)'
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
    inherited Painel: TPanel
      TabOrder = 0
      inherited BtnRelatorio: TBitBtn
        OnClick = BtnRelatorioClick
      end
    end
    inherited GroupBox1: TGroupBox
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Text = 'Digite o N'#186' da Nota'
      end
    end
  end
  inherited ApplicationEvents1: TApplicationEvents
    Top = 231
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    DefaultCopies = 2
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 91
    Top = 349
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 56
    Top = 349
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 22
    Top = 349
  end
  object PRelatorio: TPopupMenu
    Left = 468
    Top = 65
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
