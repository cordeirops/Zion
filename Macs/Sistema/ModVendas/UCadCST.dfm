inherited FCadCST: TFCadCST
  Left = 661
  Top = 125
  Caption = 'FCadCST'
  ClientHeight = 279
  ClientWidth = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited PCadastro: TPanel [0]
    Left = 9
    Top = 11
    Width = 592
    Height = 257
    Color = clWhite
    inherited Panel4: TPanel
      Width = 581
      Height = 223
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
        Left = 245
        Top = 151
        Width = 169
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
        Left = 245
        Top = 185
        Width = 169
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
        Left = 418
        Top = 151
        Width = 161
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
        Left = 418
        Top = 167
        Width = 153
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
        Left = 245
        Top = 167
        Width = 169
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
      object CbCreditoIcms: TCheckBox
        Left = 418
        Top = 184
        Width = 161
        Height = 17
        Caption = 'Permite Cr'#233'dito de ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object cbDiferencial: TCheckBox
        Left = 245
        Top = 201
        Width = 169
        Height = 17
        Caption = 'Diferencial de Aliq. da S.T'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    inherited Panel1: TPanel
      Width = 581
    end
  end
  inherited PComunica: TPanel
    Top = 72
  end
  inherited PConsulta: TPanel [2]
    Left = 10
    Top = 9
    Width = 583
    Height = 262
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 577
      Height = 165
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
    inherited Painel: TPanel
      Width = 578
      inherited BtnRelatorio: TBitBtn
        Hint = 
          'Reajustar os Cst/Csosn de todos os produtos de venda, de acordo ' +
          'com a ultima compra'
        Caption = 'Reajustar'
        OnClick = BtnRelatorioClick
      end
      inherited BtnFiltrar: TBitBtn
        Width = 118
      end
    end
    inherited GroupBox1: TGroupBox
      Width = 577
      inherited EdNome: TFlatEdit
        Left = 96
        Width = 371
        Hint = 'Digite a descri'#231#227'o da CST'
        Text = ''
      end
      inherited BtnSelecionar: TBitBtn
        Left = 473
        Top = 18
        Width = 97
      end
      object EdCodigoCst: TFlatEdit
        Left = 8
        Top = 19
        Width = 86
        Height = 25
        Hint = 'Digite o c'#243'digo da CST'
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnEnter = EdCodigoCstEnter
        OnKeyDown = EdCodigoCstKeyDown
      end
    end
  end
end
