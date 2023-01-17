inherited FCadUnidade: TFCadUnidade
  Left = 237
  Top = 239
  Caption = 'FCadUnidade'
  ClientHeight = 266
  ClientWidth = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 601
    Height = 234
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 147
    Height = 16
    Caption = 'Unidades de medida'
  end
  inherited PComunica: TPanel [5]
    Top = 99
  end
  inherited PCadastro: TPanel
    Left = 9
    Top = 47
    Width = 584
    Height = 211
    inherited Panel4: TPanel
      Width = 580
      Height = 178
      inherited Label6: TLabel
        Left = 21
        Width = 55
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
      end
      inherited Label7: TLabel
        Left = 21
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
      end
      object Label2: TLabel [2]
        Left = 483
        Top = 72
        Width = 40
        Height = 16
        Caption = 'Sigla:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 21
        Width = 61
        Height = 24
        Ctl3D = True
        DataField = 'COD_UNIDADE'
        DataSource = DMESTOQUE.DSUnidade
        Font.Name = 'Verdana'
        Font.Style = []
      end
      inherited DBDESC: TDBColorEdit
        Left = 21
        Width = 451
        Height = 24
        Ctl3D = True
        DataField = 'DESC_UNID'
        DataSource = DMESTOQUE.DSUnidade
        Font.Name = 'Verdana'
      end
      object DBColorEdit1: TDBColorEdit
        Left = 482
        Top = 89
        Width = 70
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'SIGLA_UNID'
        DataSource = DMESTOQUE.DSUnidade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBArredonda: TCheckBox
        Left = 24
        Top = 136
        Width = 217
        Height = 17
        Caption = 'Arredondar em convers'#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited Panel1: TPanel
      Width = 580
    end
  end
  inherited PConsulta: TPanel [7]
    Left = 8
    Top = 47
    Width = 584
    Height = 211
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 5
      Width = 577
      Height = 118
      DataSource = DMESTOQUE.DSUnidade
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_UNIDADE'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_UNID'
          Title.Caption = 'Descri'#231#227'o da Unidade'
          Width = 375
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA_UNID'
          Title.Caption = 'Sigla'
          Width = 334
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 5
      Width = 577
      inherited BtnSelecionar: TBitBtn
        Left = 455
        Top = 18
      end
    end
    inherited Painel: TPanel
      Left = 4
      Width = 579
      inherited BtnFiltrar: TBitBtn
        Width = 119
      end
    end
  end
end
