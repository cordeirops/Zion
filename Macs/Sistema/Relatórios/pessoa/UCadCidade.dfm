inherited FCadCidade: TFCadCidade
  Left = 306
  Top = 209
  Caption = 'FCadCidade'
  ClientHeight = 402
  ClientWidth = 555
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 553
    Height = 363
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 150
    Caption = 'Cadastro de Cidades'
  end
  inherited PComunica: TPanel [5]
    Left = 42
    Top = 155
  end
  inherited PConsulta: TPanel
    Left = 10
    Top = 49
    Width = 533
    Height = 341
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 527
      Height = 249
      DataSource = DMGEOGRAFIA.DWCidade
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnTitleClick = DBGridCadastroPadraoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CIDADE'
          Title.Caption = 'C'#243'd'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cidade'
          Width = 431
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 32
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 527
      inherited EdNome: TFlatEdit
        Width = 315
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 406
        Top = 19
      end
      object cbUF: TComboBox
        Left = 326
        Top = 20
        Width = 73
        Height = 24
        Color = 15658719
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        OnClick = cbUFClick
      end
    end
    inherited Painel: TPanel
      Top = 2
      Width = 527
      inherited BtnFiltrar: TBitBtn
        Left = 530
        Width = 118
        Visible = False
      end
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 10
    Top = 49
    Width = 533
    Height = 341
    Color = clWhite
    object PCidadeIbge: TPanel [0]
      Left = 121
      Top = 33
      Width = 406
      Height = 133
      TabOrder = 2
      OnExit = PCidadeIbgeExit
      object DBGrid1: TDBGrid
        Left = 8
        Top = 24
        Width = 392
        Height = 104
        Color = 16776697
        DataSource = DMGEOGRAFIA.DAlx
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = EdBuscaCidadeIbgeKeyPress
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'SIGLA'
            Title.Alignment = taRightJustify
            Title.Caption = 'UF'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cidade'
            Width = 282
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_IBGE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ibge'
            Width = 65
            Visible = True
          end>
      end
      object EdBuscaCidadeIbge: TEdit
        Left = 8
        Top = 3
        Width = 372
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EdBuscaCidadeIbgeKeyDown
        OnKeyPress = EdBuscaCidadeIbgeKeyPress
      end
      object Button1: TButton
        Left = 384
        Top = 2
        Width = 15
        Height = 15
        Cursor = crHandPoint
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    inherited Panel4: TPanel
      Width = 527
      Height = 306
      object Label4: TLabel [2]
        Left = 16
        Top = 120
        Width = 40
        Height = 18
        Caption = 'DDD:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [3]
        Left = 120
        Top = 120
        Width = 79
        Height = 18
        Caption = 'C'#243'd. IBGE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [4]
        Left = 280
        Top = 120
        Width = 96
        Height = 18
        Caption = 'C'#243'd. Federal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 61
        DataField = 'COD_CIDADE'
        DataSource = DMGEOGRAFIA.DCidade
      end
      inherited DBDESC: TDBColorEdit
        DataField = 'NOME'
        DataSource = DMGEOGRAFIA.DCidade
      end
      object DBColorEdit1: TDBColorEdit
        Left = 16
        Top = 137
        Width = 89
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'DDD'
        DataSource = DMGEOGRAFIA.DCidade
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
      inline FrmbuscaEstado: TFrmBusca
        Left = 16
        Top = 176
        Width = 499
        Height = 43
        Color = clWhite
        ParentColor = False
        TabOrder = 6
        inherited LTextoBusca: TLabel
          Width = 51
          Caption = 'Estado:'
        end
        inherited LUZOPEN: TShape
          Left = 442
        end
        inherited LUZMINUS: TShape
          Left = 466
        end
        inherited EdDescricao: TFlatEdit
          Width = 367
        end
        inherited BTNOPEN: TBitBtn
          Left = 441
          Hint = 'Pressione para selecionar o Estado'
          OnClick = FrmbuscaEstadoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 463
          Hint = 'Pressione para apagar o Estado'
          OnClick = FrmbuscaEstadoBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmbuscaEstadoEDCodigoKeyPress
        end
      end
      inline FrmBuscaRegiao: TFrmBusca
        Left = 16
        Top = 240
        Width = 499
        Height = 43
        Color = clWhite
        ParentColor = False
        TabOrder = 7
        inherited LTextoBusca: TLabel
          Width = 49
          Caption = 'Regi'#227'o:'
        end
        inherited LUZOPEN: TShape
          Left = 442
        end
        inherited LUZMINUS: TShape
          Left = 466
        end
        inherited EdDescricao: TFlatEdit
          Width = 367
        end
        inherited BTNOPEN: TBitBtn
          Left = 441
          Hint = 'Pressione para selecionar '#224' Regi'#227'o'
          OnClick = FrmBuscaRegiaoBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 463
          Hint = 'Pressione para apagar  '#224' Regi'#227'o'
          OnClick = FrmBuscaRegiaoBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBuscaRegiaoEDCodigoKeyPress
        end
      end
      object DBColorEdit2: TDBColorEdit
        Left = 120
        Top = 137
        Width = 121
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COD_IBGE'
        DataSource = DMGEOGRAFIA.DCidade
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
        Left = 280
        Top = 137
        Width = 121
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'COD_FEDERAL'
        DataSource = DMGEOGRAFIA.DCidade
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
      object BitBtn1: TBitBtn
        Left = 242
        Top = 136
        Width = 22
        Height = 22
        Caption = '...'
        TabOrder = 4
        OnClick = BitBtn1Click
      end
    end
    inherited Panel1: TPanel
      Width = 527
    end
  end
end
