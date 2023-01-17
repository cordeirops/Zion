inherited FCadEquipe: TFCadEquipe
  Left = 197
  Top = 152
  Caption = 'FCadEquipe'
  ClientHeight = 475
  ClientWidth = 731
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 729
    Height = 442
  end
  inherited LDescTitulo: TLabel
    Left = 502
    Top = 18
  end
  inherited PComunica: TPanel [5]
    Left = 125
    Height = 94
  end
  inherited PCadastro: TPanel
    Top = 56
    Width = 701
    Height = 405
    inherited Panel4: TPanel
      Top = 21
      Height = 379
      object Label1: TLabel
        Left = 17
        Top = 23
        Width = 37
        Height = 18
        Caption = 'C'#243'd:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 90
        Top = 25
        Width = 64
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 70
        Width = 78
        Height = 16
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object EDCodigo: TDBEdit
        Left = 17
        Top = 41
        Width = 60
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clSkyBlue
        DataField = 'COD_EQUIPE'
        DataSource = DMPESSOA.DSEquipe
        Enabled = False
        TabOrder = 5
      end
      object DBEDesc: TDBEdit
        Left = 90
        Top = 41
        Width = 589
        Height = 21
        Hint = 'Insira aqui uma descri'#231#227'o para sua equipe'
        DataField = 'DESCRICAO'
        DataSource = DMPESSOA.DSEquipe
        TabOrder = 0
      end
      inline FrmResp: TFrmBusca
        Left = 389
        Top = 64
        Width = 293
        Height = 63
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 2
          Top = 4
          Width = 81
          Caption = 'Respons'#225'vel'
        end
        inherited LUZOPEN: TShape
          Left = 251
          Top = 22
          Height = 25
        end
        inherited LUZMINUS: TShape
          Left = 273
          Top = 22
          Width = 18
          Height = 25
        end
        inherited EdDescricao: TFlatEdit
          Left = 33
          Top = 24
          Width = 219
          Height = 22
          TabStop = False
          ColorFlat = clWhite
          TabOrder = 2
        end
        inherited BTNOPEN: TBitBtn
          Left = 252
          Top = 25
          Width = 21
          Height = 20
          TabOrder = 0
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 273
          Top = 25
          Height = 20
          TabOrder = 1
          OnClick = FrmRespBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 24
          Width = 31
          Height = 22
          TabStop = False
          TabOrder = 3
        end
      end
      object DBGFunc: TDBGrid
        Left = 15
        Top = 193
        Width = 663
        Height = 178
        Hint = 'Funcion'#225'rios da equipe.'
        TabStop = False
        Color = 15794175
        DataSource = DMPESSOA.DSAux
        FixedColor = 11039232
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_INTERNO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Interno'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 575
            Visible = True
          end>
      end
      object BBInserir: TBitBtn
        Left = 595
        Top = 140
        Width = 82
        Height = 25
        Hint = 'Clique para inserir funcion'#225'rio na equipe'
        Caption = 'Inserir'
        TabOrder = 4
        OnClick = BBInserirClick
        Glyph.Data = {
          9E010000424D9E0100000000000036000000280000000B0000000A0000000100
          1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
          D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
          ECD8E9ECD8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC00
          0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
          D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF000000
          00D8E9ECD8E9EC000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00BFBF00BF
          BF00BFBF00000000D8E9EC000000000000000000000000000000BFBF00BFBF00
          BFBF00000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000BFBF
          00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
          0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
          D8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9
          ECD8E9ECD8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC00
          0000}
      end
      object BBExcluir: TBitBtn
        Left = 595
        Top = 164
        Width = 82
        Height = 24
        Hint = 'Clique para excluir funcion'#225'rio da equipe'
        Caption = 'Excluir'
        TabOrder = 6
        TabStop = False
        OnClick = BBExcluirClick
        Glyph.Data = {
          9E010000424D9E0100000000000036000000280000000B0000000A0000000100
          1800000000006801000000000000000000000000000000000000D8E9ECD8E9EC
          D8E9EC000000000000000000000000000000D8E9ECD8E9ECD8E9EC000000D8E9
          ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC00
          0000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9ECD8E9EC
          D8E9EC000000D8E9ECD8E9ECD8E9EC000000BFBF00BFBF00BFBF00000000D8E9
          ECD8E9ECD8E9EC000000000000000000000000000000BFBF00BFBF00BFBF0000
          0000000000000000000000000000D8E9EC000000BFBF00BFBF00BFBF00BFBF00
          BFBF00BFBF00BFBF00000000D8E9EC000000D8E9ECD8E9EC000000BFBF00BFBF
          00BFBF00BFBF00BFBF00000000D8E9ECD8E9EC000000D8E9ECD8E9ECD8E9EC00
          0000BFBF00BFBF00BFBF00000000D8E9ECD8E9ECD8E9EC000000D8E9ECD8E9EC
          D8E9ECD8E9EC000000BFBF00000000D8E9ECD8E9ECD8E9ECD8E9EC000000D8E9
          ECD8E9ECD8E9ECD8E9ECD8E9EC000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC00
          0000}
      end
      inline FrmFunc: TFrmBusca
        Left = 10
        Top = 128
        Width = 449
        Height = 57
        VertScrollBar.Color = clWhite
        VertScrollBar.ParentColor = False
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 6
          Top = 4
          Width = 75
          Caption = 'Funcion'#225'rio'
        end
        inherited LUZOPEN: TShape
          Left = 356
          Top = 20
        end
        inherited LUZMINUS: TShape
          Left = 377
          Top = 20
        end
        inherited EdDescricao: TFlatEdit
          Top = 21
          Width = 282
          Height = 23
          ColorFlat = 15794175
          Font.Height = -13
          Font.Style = []
          TabOrder = 1
        end
        inherited BTNOPEN: TBitBtn
          Left = 358
          Top = 23
          TabOrder = 0
          OnClick = FrmBusca2BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 379
          Top = 23
          TabOrder = 3
          TabStop = False
          OnClick = FrmFuncBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Left = 6
          Top = 21
          Width = 69
          Height = 23
          TabStop = False
          Enabled = False
          Font.Height = -13
          TabOrder = 2
        end
      end
      object DBMObs: TDBMemo
        Left = 16
        Top = 89
        Width = 340
        Height = 21
        DataField = 'OBSERVACAO'
        DataSource = DMPESSOA.DSEquipe
        TabOrder = 1
      end
    end
    inherited Panel1: TPanel
      inherited BtnGravar: TBitBtn
        TabStop = False
      end
      inherited BtnCancelar: TBitBtn
        TabStop = False
      end
    end
  end
  inherited PConsulta: TPanel [7]
    Top = 51
    inherited DBGridCadastroPadrao: TDBGrid [0]
      Top = 87
      TabStop = False
      DataSource = DMPESSOA.DSALX1
      TabOrder = 0
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_EQUIPE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 315
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_RESPONSAVEL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_FUNC'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_PESSOA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_PESSOA1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 279
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox [1]
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Top = 18
        Height = 24
      end
      inherited BtnSelecionar: TBitBtn
        Top = 18
        Height = 24
      end
    end
    inherited Painel: TPanel [2]
      TabOrder = 2
      inherited BtnApagar: TBitBtn
        TabOrder = 2
      end
      inherited BtnConsultar: TBitBtn
        TabOrder = 4
      end
      inherited BtnRelatorio: TBitBtn
        TabOrder = 1
      end
      inherited BtnFiltrar: TBitBtn
        TabOrder = 3
      end
    end
  end
  inherited PBotoes: TPanel
    Left = 680
    Width = 22
  end
end
