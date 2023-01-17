inherited FCadMoeda: TFCadMoeda
  Left = 354
  Top = 127
  Caption = 'Cadastro de Moeda'
  ClientHeight = 409
  ClientWidth = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 6
    Top = 4
    Width = 579
    Height = 394
    inherited Panel4: TPanel
      Height = 360
      inherited Label7: TLabel
        Width = 53
        Caption = 'Moeda:'
      end
      object Label2: TLabel [2]
        Left = 293
        Top = 72
        Width = 56
        Height = 18
        Caption = 'Origem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [3]
        Left = 15
        Top = 122
        Width = 61
        Height = 18
        Caption = 'S'#237'mbolo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [4]
        Left = 77
        Top = 122
        Width = 152
        Height = 18
        Caption = 'Descri'#231#227'o da Fra'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [5]
        Left = 16
        Top = 175
        Width = 117
        Height = 18
        Caption = 'Moeda no Plural:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [6]
        Left = 293
        Top = 175
        Width = 116
        Height = 18
        Caption = 'Fra'#231#227'o no plural:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 61
        DataField = 'COD_MOEDA'
        DataSource = DMFINANC.DSMoeda
      end
      inherited DBDESC: TDBColorEdit
        Width = 273
        DataField = 'MOEDA'
        DataSource = DMFINANC.DSMoeda
      end
      object DBColorEdit1: TDBColorEdit
        Left = 293
        Top = 89
        Width = 273
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'ORIGEM'
        DataSource = DMFINANC.DSMoeda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 16
        Top = 139
        Width = 58
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'SIMBOLO'
        DataSource = DMFINANC.DSMoeda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 77
        Top = 139
        Width = 212
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'FRACAO'
        DataSource = DMFINANC.DSMoeda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 16
        Top = 192
        Width = 273
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'PLURALMOEDA'
        DataSource = DMFINANC.DSMoeda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit5: TDBColorEdit
        Left = 293
        Top = 192
        Width = 273
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'PLURALFRACAO'
        DataSource = DMFINANC.DSMoeda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  inherited PConsulta: TPanel [1]
    Left = 4
    Top = 1
    Width = 582
    Height = 400
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 577
      Height = 308
      DataSource = DMFINANC.DSMoeda
      Columns = <
        item
          Expanded = False
          FieldName = 'MOEDA'
          Title.Caption = 'Moeda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIMBOLO'
          Title.Caption = 'S'#237'mbolo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORIGEM'
          Title.Caption = 'Pa'#237's de Origem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLURALMOEDA'
          Title.Caption = 'Plural da Moeda'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRACAO'
          Title.Caption = 'Fra'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLURALFRACAO'
          Title.Caption = 'Plural da Fra'#231#227'o'
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Width = 579
      inherited BtnFiltrar: TBitBtn
        Width = 120
      end
    end
    inherited GroupBox1: TGroupBox
      Width = 578
      inherited EdNome: TFlatEdit
        Width = 451
      end
      inherited BtnSelecionar: TBitBtn
        Left = 460
        Top = 18
      end
    end
  end
  inherited PComunica: TPanel [2]
  end
end
