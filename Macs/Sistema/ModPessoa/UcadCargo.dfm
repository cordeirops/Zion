inherited FCadCargo: TFCadCargo
  Left = 69
  Top = 132
  Caption = 'FCadCargo'
  ClientHeight = 259
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 9
    Width = 581
    Height = 239
    inherited Panel4: TPanel
      Width = 577
      Height = 204
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 62
        DataField = 'COD_CARGO'
        DataSource = DMPESSOA.DSCargo
      end
      inherited DBDESC: TDBColorEdit
        Width = 545
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DSCargo
      end
    end
    inherited Panel1: TPanel
      Width = 577
    end
  end
  inherited PComunica: TPanel
    Top = 75
  end
  inherited PConsulta: TPanel [2]
    Left = 9
    Top = 8
    Width = 581
    Height = 240
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 86
      Height = 149
      DataSource = DMPESSOA.DSCargo
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CARGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 506
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Top = 2
      Width = 578
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
    inherited GroupBox1: TGroupBox
      Top = 35
      Width = 577
      inherited EdNome: TFlatEdit
        Width = 459
      end
      inherited BtnSelecionar: TBitBtn
        Left = 465
        Top = 18
        Width = 108
      end
    end
  end
end
