inherited FLancSai: TFLancSai
  Left = 143
  Top = 141
  Caption = 'FLancSai'
  ClientHeight = 449
  ClientWidth = 763
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 761
    Height = 412
  end
  inherited LDescTitulo: TLabel
    Left = 505
    Top = 18
    Width = 153
    Caption = 'Sa'#237'das para corre'#231#227'o'
  end
  inherited PComunica: TPanel [5]
    Top = 187
  end
  inherited PCadastro: TPanel [6]
    Top = 48
    inherited Panel4: TPanel
      inherited Label17: TLabel
        Width = 96
        Caption = 'Data de Sa'#237'da:'
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Height = 23
        DataField = 'QUANTIDADE'
        DataSource = DMSAIDA.DLancSai
      end
      inherited DBDESC: TDBColorEdit
        Height = 23
        DataField = 'NUMNOTA'
        DataSource = DMSAIDA.DLancSai
      end
      inherited DBColorEdit1: TDBColorEdit
        DataField = 'DT_ESTOQUE'
        DataSource = DMSAIDA.DLancSai
        MaxLength = 10
      end
      inherited DBColorEdit2: TDBColorEdit
        DataField = 'MOTIVO'
        DataSource = DMSAIDA.DLancSai
      end
      inherited DBColorEdit3: TDBColorEdit
        DataField = 'DT_LANCAMENTO'
        DataSource = DMSAIDA.DLancSai
        MaxLength = 10
      end
    end
  end
  inherited PConsulta: TPanel [7]
    Top = 48
    inherited DBGridCadastroPadrao: TDBGrid
      DataSource = DMSAIDA.DWLancSai
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Caption = 'N'#186' Documento'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTRLINT'
          Title.Caption = 'Ctrl. Int.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFABRICANTE'
          Title.Caption = 'C'#243'd. Fabricante'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_LANCAMENTO'
          Title.Caption = 'Lan'#231'amento'
          Width = 77
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
          Title.Caption = 'Qtd.'
          Width = 38
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANTERIOR'
          Title.Caption = 'Ant.'
          Width = 33
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
      inherited EdNome: TFlatEdit
        Text = 'Digite o N'#186' da Nota'
      end
      inherited BtnSelecionar: TBitBtn
        Top = 19
      end
    end
  end
  inherited MEscolheProc: TPopupMenu
    Top = 79
  end
end
