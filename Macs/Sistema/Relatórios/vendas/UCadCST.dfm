inherited FCadCST: TFCadCST
  Left = 105
  Top = 125
  Caption = 'FCadCST'
  ClientHeight = 330
  ClientWidth = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 609
    Height = 274
  end
  inherited LDescTitulo: TLabel
    Left = 313
    Top = 18
    Width = 142
    Caption = 'Cadastro de C.S.T.s'
  end
  inherited PConsulta: TPanel [5]
    Left = 10
    Top = 55
    Width = 583
    Height = 241
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 577
      Height = 144
      DataSource = DMESTOQUE.DSCST
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_CST'
          Title.Caption = 'C'#243'digo'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_SIT_TRIB'
          Title.Caption = 'Sit. Tribut.'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o da Situa'#231#227'o Tribut'#225'ria'
          Width = 455
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox
      Width = 577
      inherited EdNome: TFlatEdit
        Width = 461
      end
      inherited BtnSelecionar: TBitBtn
        Left = 473
        Top = 18
        Width = 97
      end
    end
    inherited Painel: TPanel
      Width = 578
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
  end
  inherited PComunica: TPanel [6]
    Top = 104
  end
  inherited PCadastro: TPanel [7]
    Left = 9
    Top = 56
    Width = 586
    Height = 240
    inherited Panel4: TPanel
      Width = 581
      Height = 207
      inherited Label6: TLabel
        Left = 8
      end
      inherited Label7: TLabel
        Left = 8
        Top = 69
      end
      object Label2: TLabel [2]
        Left = 80
        Top = 15
        Width = 62
        Height = 19
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel [3]
        Left = 8
        Top = 127
        Width = 94
        Height = 18
        Caption = 'Inid'#237'ce Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Left = 8
        Width = 62
        Height = 24
        Ctl3D = True
        DataField = 'COD_CST'
        DataSource = DMESTOQUE.DSCST
        Font.Name = 'Verdana'
        Font.Style = []
      end
      inherited DBDESC: TDBColorEdit
        Left = 8
        Top = 87
        Width = 559
        Height = 24
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DSCST
        Font.Name = 'Verdana'
        TabOrder = 2
      end
      object DBCODCST: TDBColorEdit
        Left = 82
        Top = 35
        Width = 62
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'COD_SIT_TRIB'
        DataSource = DMESTOQUE.DSCST
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBCODCSTKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit1: TDBColorEdit
        Left = 8
        Top = 144
        Width = 94
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'INDICEECF'
        DataSource = DMESTOQUE.DSCST
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBSubstituicao: TCheckBox
        Left = 384
        Top = 116
        Width = 185
        Height = 17
        Caption = 'Substitui'#231#227'o Tribut'#225'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object CbReducao: TCheckBox
        Left = 384
        Top = 150
        Width = 185
        Height = 17
        Caption = 'Redu'#231#227'o Base de C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object CBVenda: TCheckBox
        Left = 384
        Top = 168
        Width = 185
        Height = 17
        Caption = 'C.S.T. de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object CbIsenta: TCheckBox
        Left = 384
        Top = 184
        Width = 81
        Height = 17
        Caption = 'Isenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object CbIcmsOperPropria: TCheckBox
        Left = 384
        Top = 132
        Width = 185
        Height = 17
        Caption = 'Icms Oper. Pr'#243'pria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    inherited Panel1: TPanel
      Width = 581
    end
  end
end
