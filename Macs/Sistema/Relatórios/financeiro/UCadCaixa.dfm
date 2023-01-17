inherited FCadCaixa: TFCadCaixa
  Left = 169
  Top = 160
  ClientHeight = 434
  ClientWidth = 667
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 665
    Height = 402
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 141
    Caption = 'Cadastro de Caixas'
  end
  inherited PComunica: TPanel [5]
  end
  inherited PConsulta: TPanel
    Left = 11
    Top = 57
    Width = 650
    Height = 366
    inherited DBGridCadastroPadrao: TDBGrid
      Left = 0
      Top = 82
      Width = 642
      Height = 284
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMCAIXA'
          Title.Caption = 'N'#186' CAIXA'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'CAIXA'
          Width = 498
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Left = 0
      Top = 32
      Width = 643
      inherited EdNome: TFlatEdit
        Width = 451
      end
      inherited BtnSelecionar: TBitBtn
        Left = 461
        Top = 19
        Width = 110
      end
    end
    inherited Painel: TPanel
      Left = 0
      Top = 0
      Width = 576
    end
  end
  inherited PCadastro: TPanel [7]
    Left = 11
    Top = 57
    Width = 646
    Height = 366
    inherited Panel4: TPanel
      Left = -1
      Top = 28
      Width = 646
      Height = 338
      inherited Label6: TLabel
        Left = 4
        Width = 55
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
      end
      inherited Label7: TLabel
        Left = 154
        Top = 16
        Height = 16
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
      end
      object Label2: TLabel [2]
        Left = 71
        Top = 16
        Width = 73
        Height = 16
        Caption = 'N'#186' CAIXA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel [3]
        Left = 8
        Top = 69
        Width = 76
        Height = 13
        Caption = 'Tipo Cupom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TImpressora: TLabel [4]
        Left = 152
        Top = 69
        Width = 108
        Height = 13
        Caption = 'Tipo Impressora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LSERVIDOR: TLabel [5]
        Left = 14
        Top = 267
        Width = 68
        Height = 13
        Caption = 'SERVIDOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LENDERECO: TLabel [6]
        Left = 206
        Top = 267
        Width = 187
        Height = 13
        Caption = 'ENDERE'#199'O BANCO DE DADOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PECF: TPanel [7]
        Left = 3
        Top = 110
        Width = 569
        Height = 147
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 4
        Visible = False
        object Label53: TLabel
          Left = 8
          Top = 9
          Width = 87
          Height = 13
          Caption = 'Porta Cupom:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 101
          Top = 10
          Width = 174
          Height = 13
          Caption = 'Frase no rodap'#233' do cupom'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBCPORTAECF: TDBComboBox
          Left = 8
          Top = 25
          Width = 89
          Height = 21
          DataField = 'PORTACUPOM'
          DataSource = DMCAIXA.DCaixa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'LPT1'
            'LPT2'
            'USB')
          ParentFont = False
          TabOrder = 0
          OnKeyPress = DBCPORTAECFKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 101
          Top = 26
          Width = 468
          Height = 19
          Ctl3D = False
          DataField = 'FRASECUPOM'
          DataSource = DMCAIXA.DCaixa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 95
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object PCuponNFisc: TPanel
          Left = 8
          Top = 56
          Width = 738
          Height = 89
          BevelOuter = bvNone
          Color = 16772332
          TabOrder = 2
          object Label58: TLabel
            Left = 0
            Top = 1
            Width = 183
            Height = 13
            Caption = '1'#186' Linha de Titulo do Cupom'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 245
            Top = 1
            Width = 183
            Height = 13
            Caption = '2'#186' Linha de Titulo do Cupom'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label60: TLabel
            Left = 2
            Top = 42
            Width = 183
            Height = 13
            Caption = '3'#186' Linha de Titulo do Cupom'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 250
            Top = 42
            Width = 145
            Height = 13
            Caption = 'Endere'#231'o Impressora:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit11: TDBEdit
            Left = 2
            Top = 16
            Width = 240
            Height = 19
            Ctl3D = False
            DataField = 'PRIMTITCUPOM'
            DataSource = DMCAIXA.DCaixa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 48
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit12: TDBEdit
            Left = 245
            Top = 16
            Width = 240
            Height = 19
            Ctl3D = False
            DataField = 'SEGTITCUPOM'
            DataSource = DMCAIXA.DCaixa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 48
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit13: TDBEdit
            Left = 2
            Top = 58
            Width = 240
            Height = 19
            Ctl3D = False
            DataField = 'TERTITCUPOM'
            DataSource = DMCAIXA.DCaixa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 48
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBCBImpThermais: TDBComboBox
            Left = 252
            Top = 58
            Width = 254
            Height = 21
            DataField = 'IMPRESSORA'
            DataSource = DMCAIXA.DCaixa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 3
          end
        end
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 4
        Top = 33
        Width = 65
        Height = 20
        DataField = 'COD_CAIXA'
        DataSource = DMCAIXA.DCaixa
        Font.Height = -12
        Font.Name = 'Verdana'
      end
      inherited DBDESC: TDBColorEdit
        Left = 154
        Top = 33
        Width = 418
        Height = 20
        DataField = 'DESCRICAO'
        DataSource = DMCAIXA.DCaixa
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object DBNUMCAIXA: TDBColorEdit
        Left = 71
        Top = 33
        Width = 81
        Height = 20
        Color = 15658717
        Ctl3D = False
        DataField = 'NUMCAIXA'
        DataSource = DMCAIXA.DCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBCTIPOFISCAL: TDBComboBox
        Left = 8
        Top = 85
        Width = 130
        Height = 21
        DataField = 'TIPOCUPOM'
        DataSource = DMCAIXA.DCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'NENHUM'
          'CUPOM'
          'ECF'
          'NF'
          'NFe')
        ParentFont = False
        TabOrder = 3
        OnClick = DBCTIPOFISCALClick
        OnExit = DBCTIPOFISCALExit
        OnKeyPress = DBCTIPOFISCALKeyPress
      end
      object CBImpressora: TDBComboBox
        Left = 152
        Top = 85
        Width = 116
        Height = 21
        DataField = 'MODELO_IMPRESSORA'
        DataSource = DMCAIXA.DCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'BEMATECH'
          'ELGIN'
          'SWEDA'
          'BEMATECH MP-4200 TH'
          'BEMATECH MP-200')
        ParentFont = False
        TabOrder = 5
        OnClick = CBImpressoraClick
      end
      object DBServidor: TEdit
        Left = 14
        Top = 282
        Width = 157
        Height = 21
        TabOrder = 6
      end
      object DBEndereco: TEdit
        Left = 206
        Top = 282
        Width = 367
        Height = 21
        MaxLength = 100
        TabOrder = 7
      end
      object cbPergImpNF: TCheckBox
        Left = 304
        Top = 88
        Width = 233
        Height = 17
        Caption = 'Perguntar se deseja Imprimir NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Visible = False
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Top = 0
      Width = 645
    end
  end
end
