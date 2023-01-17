inherited FCadCargo: TFCadCargo
  Left = 69
  Top = 132
  Caption = 'FCadCargo'
  ClientHeight = 315
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 601
    Height = 275
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 143
    Caption = 'Cadastro de Cargos'
  end
  inherited PCadastro: TPanel [5]
    Left = 9
    Top = 56
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
  inherited PConsulta: TPanel [6]
    Left = 9
    Top = 56
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
    inherited Painel: TPanel
      Top = 2
      Width = 578
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
  end
  inherited PComunica: TPanel
    Top = 123
  end
end
