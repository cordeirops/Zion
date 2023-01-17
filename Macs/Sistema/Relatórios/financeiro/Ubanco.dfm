inherited FCadBanco: TFCadBanco
  Left = 164
  Top = 191
  Caption = 'FCadBanco'
  ClientHeight = 315
  ClientWidth = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 601
    Height = 275
  end
  inherited LDescTitulo: TLabel
    Left = 314
    Top = 18
    Width = 145
    Caption = 'Cadastro de Bancos'
  end
  inherited PComunica: TPanel [5]
    Top = 86
  end
  inherited PConsulta: TPanel
    Left = 10
    Top = 50
    Height = 249
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 81
      Width = 577
      Height = 163
      DataSource = DMBANCO.DBAnco
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMBANCO'
          Title.Caption = 'N'#250'mero Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Nome do Banco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WEBSITE'
          Title.Caption = 'Web Site'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Top = 30
      Width = 576
      inherited EdNome: TFlatEdit
        Width = 443
      end
      inherited BtnSelecionar: TBitBtn
        Left = 454
        Top = 19
      end
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 10
    Top = 50
    Width = 582
    Height = 249
    inherited Panel4: TPanel
      Left = 0
      Top = 29
      Width = 582
      Height = 216
      inherited Label6: TLabel
        Left = 12
        Top = 29
      end
      inherited Label7: TLabel
        Left = 130
        Top = 77
      end
      object Label2: TLabel [2]
        Left = 12
        Top = 77
        Width = 108
        Height = 18
        Caption = 'N'#250'mero Banco:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [3]
        Left = 12
        Top = 126
        Width = 65
        Height = 18
        Caption = 'Web Site'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ImLogo: TImage [4]
        Left = 216
        Top = 40
        Width = 97
        Height = 33
        Center = True
        Stretch = True
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 12
        Top = 48
        Width = 65
        DataField = 'COD_BANC'
        DataSource = DMBANCO.DBAnco
      end
      inherited DBDESC: TDBColorEdit
        Left = 130
        Top = 96
        Width = 443
        DataField = 'DESCBANCO'
        DataSource = DMBANCO.DBAnco
        TabOrder = 2
      end
      object DBNUMBANCO: TDBColorEdit
        Left = 12
        Top = 96
        Width = 113
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'NUMBANCO'
        DataSource = DMBANCO.DBAnco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 12
        Top = 146
        Width = 561
        Height = 22
        CharCase = ecLowerCase
        Color = 15658717
        Ctl3D = False
        DataField = 'WEBSITE'
        DataSource = DMBANCO.DBAnco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object Button1: TButton
        Left = 112
        Top = 45
        Width = 75
        Height = 25
        Caption = 'Importa Logo'
        TabOrder = 4
        OnClick = Button1Click
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Top = 0
      Width = 582
    end
  end
end
