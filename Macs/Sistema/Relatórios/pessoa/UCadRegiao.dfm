inherited FCadRegiao: TFCadRegiao
  Left = 313
  Top = 134
  Caption = 'FCadRegiao'
  ClientHeight = 354
  ClientWidth = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 609
    Height = 315
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 149
    Caption = 'Cadastro de Regi'#245'es'
  end
  inherited PConsulta: TPanel [5]
    Top = 51
    Height = 284
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 0
      Width = 577
      Height = 192
      DataSource = DMGEOGRAFIA.DRegiao
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnTitleClick = DBGridCadastroPadraoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_REGIAO'
          Title.Caption = 'C'#243'digo'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descric'#227'o'
          Width = 455
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 0
      Width = 577
      inherited EdNome: TFlatEdit
        Width = 443
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 456
        Top = 19
      end
    end
    inherited Painel: TPanel
      Left = -2
      Top = 0
      Width = 578
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
  end
  inherited PComunica: TPanel [6]
    Top = 115
  end
  inherited PCadastro: TPanel [7]
    Top = 51
    Height = 284
    inherited Panel4: TPanel
      Height = 252
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 62
        DataField = 'COD_REGIAO'
        DataSource = DMGEOGRAFIA.DRegiao
      end
      inherited DBDESC: TDBColorEdit
        DataField = 'DESCRICAO'
        DataSource = DMGEOGRAFIA.DRegiao
      end
    end
  end
end
