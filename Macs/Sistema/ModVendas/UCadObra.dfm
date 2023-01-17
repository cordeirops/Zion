inherited FCadObra: TFCadObra
  Left = 257
  Top = 220
  Caption = 'FCadObra'
  ClientHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeExterno: TShape
    Height = 257
  end
  inherited ShapeInterno: TShape
    Height = 244
  end
  inherited PComunica: TPanel [2]
    Top = 123
  end
  inherited PCadastro: TPanel [3]
    Height = 230
    inherited Panel4: TPanel
      Height = 196
      object Label9: TLabel
        Left = 18
        Top = 22
        Width = 100
        Height = 16
        Caption = 'Contr. Interno: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 18
        Top = 70
        Width = 37
        Height = 16
        Caption = 'Cod.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 83
        Top = 70
        Width = 80
        Height = 16
        Caption = 'Descri'#231#227'o: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdControleInterno: TFlatEdit
        Left = 16
        Top = 40
        Width = 121
        Height = 19
        ColorFlat = 16772332
        ParentColor = True
        TabOrder = 0
      end
      object EdCodObra: TFlatEdit
        Left = 16
        Top = 88
        Width = 65
        Height = 19
        ColorFlat = 16772332
        ParentColor = True
        ReadOnly = True
        TabOrder = 1
      end
      object EddescricaoObra: TFlatEdit
        Left = 80
        Top = 88
        Width = 409
        Height = 19
        ColorFlat = 16772332
        ParentColor = True
        TabOrder = 2
      end
    end
  end
  inherited PConsulta: TPanel [4]
    Height = 230
    inherited GroupBox1: TGroupBox
      inherited EdNome: TFlatEdit
        Left = 14
        Width = 91
        Text = ''
      end
      inherited BtnSelecionar: TBitBtn
        Top = 18
      end
      object EdPesqDescricao: TFlatEdit
        Left = 104
        Top = 19
        Width = 457
        Height = 25
        ColorFlat = 16772332
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyDown = EdPesqDescricaoKeyDown
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 266
      Top = 145
      Width = 119
      Height = 24
      DataSource = DMSAIDA.DObra
      Columns = <
        item
          Expanded = False
          Title.Caption = 'Cod.'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Cod. Interno'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Descri'#231#227'o'
          Width = 400
          Visible = True
        end>
    end
    object DBGObras: TDBGrid
      Left = 2
      Top = 90
      Width = 694
      Height = 137
      DataSource = DMSAIDA.DObra
      FixedColor = clSkyBlue
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_OBRA'
          Title.Caption = 'Cod.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Cod. Interno'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 400
          Visible = True
        end>
    end
  end
  inherited PTitulo: TPanel
    Width = 717
    inherited ImgTitulo: TImage
      Left = -5
    end
    inherited LDescTitulo: TDRLabel
      Caption = 'Cadastro de Obras'
    end
  end
end
