inherited FCadEstado: TFCadEstado
  Left = 354
  Top = 127
  Caption = 'Cadastro de Estado'
  ClientHeight = 353
  ClientWidth = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    Left = 10
    Top = 7
    Width = 562
    Height = 337
    inherited DBGridCadastroPadrao: TDBGrid
      Top = 88
      Width = 552
      Height = 246
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      OnKeyDown = DBGridCadastroPadraoKeyDown
      OnTitleClick = DBGridCadastroPadraoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_ESTADO'
          Title.Caption = 'C'#243'd'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGIAO'
          Title.Caption = 'Regi'#227'o'
          Width = 157
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Width = 553
      inherited BtnFiltrar: TBitBtn
        Left = 466
        Top = 30
        Width = 119
        Visible = False
      end
    end
    inherited GroupBox1: TGroupBox
      Width = 552
      inherited EdNome: TFlatEdit
        Width = 435
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 443
        Top = 18
        Width = 101
      end
    end
  end
  inherited PCadastro: TPanel
    Left = 10
    Top = 10
    Width = 561
    Height = 336
    inherited Panel4: TPanel
      Left = 0
      Width = 561
      Height = 303
      inherited Label6: TLabel
        Top = 8
      end
      inherited Label7: TLabel
        Left = 84
        Top = 10
        Width = 54
        Caption = 'Estado:'
      end
      object Label5: TLabel [2]
        Left = 16
        Top = 64
        Width = 25
        Height = 18
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [3]
        Left = 16
        Top = 120
        Width = 217
        Height = 13
        Caption = 'Cod. C.S.T. Estadual/Interestaual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel [4]
        Left = 296
        Top = 136
        Width = 162
        Height = 13
        Caption = 'Texto de Decreto/Protocolo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel [5]
        Left = 16
        Top = 218
        Width = 226
        Height = 13
        Caption = 'Aliquotas Estadual e Interestadual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel [6]
        Left = 16
        Top = 235
        Width = 53
        Height = 13
        Caption = 'Estadual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel [7]
        Left = 112
        Top = 235
        Width = 76
        Height = 13
        Caption = 'Interestadual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel [8]
        Left = 296
        Top = 220
        Width = 173
        Height = 13
        Caption = 'M.V.A. - Revendas do Simples'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel [9]
        Left = 72
        Top = 251
        Width = 17
        Height = 18
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel [10]
        Left = 168
        Top = 251
        Width = 17
        Height = 18
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel [11]
        Left = 352
        Top = 236
        Width = 17
        Height = 18
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [12]
        Left = 352
        Top = 278
        Width = 17
        Height = 18
        Caption = '%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [13]
        Left = 296
        Top = 262
        Width = 200
        Height = 13
        Caption = 'M.V.A. - Revendas fora do Simples'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel [14]
        Left = 15
        Top = 175
        Width = 76
        Height = 13
        Caption = 'C'#243'd. BACEN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel [15]
        Left = 98
        Top = 175
        Width = 65
        Height = 13
        Caption = 'Nome Pa'#237's:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Top = 27
        Width = 61
        DataField = 'COD_ESTADO'
        DataSource = DMGEOGRAFIA.DEstado
      end
      inherited DBDESC: TDBColorEdit
        Left = 84
        Top = 27
        Width = 462
        DataField = 'DESCRICAO'
        DataSource = DMGEOGRAFIA.DEstado
      end
      object DBColorEdit1: TDBColorEdit
        Left = 16
        Top = 81
        Width = 61
        Height = 22
        CharCase = ecUpperCase
        Color = 15658717
        Ctl3D = False
        DataField = 'UF_ESTADO'
        DataSource = DMGEOGRAFIA.DEstado
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
      inline FrmBuscaRegiao: TFrmBusca
        Left = 84
        Top = 67
        Width = 465
        Height = 43
        Color = clWhite
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Width = 49
          Caption = 'Regi'#227'o:'
        end
        inherited LUZOPEN: TShape
          Left = 417
        end
        inherited LUZMINUS: TShape
          Left = 435
          Width = 23
        end
        inherited EdDescricao: TFlatEdit
          Width = 341
        end
        inherited BTNOPEN: TBitBtn
          Left = 419
          Hint = 'Pressione para selecionar '#224' regi'#227'o'
          OnClick = FrmBuscaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 437
          Hint = 'Pressione para apagar '#224' regi'#227'o selecionada'
          OnClick = FrmBuscaBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object DBColorEdit4: TDBColorEdit
        Left = 296
        Top = 150
        Width = 241
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'TXT_SUBSTITUICAO'
        DataSource = DMGEOGRAFIA.DEstado
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
        Left = 16
        Top = 249
        Width = 55
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'ALIQINTERNA'
        DataSource = DMGEOGRAFIA.DEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit6: TDBColorEdit
        Left = 112
        Top = 250
        Width = 55
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'ALIQINTERESTAUAL'
        DataSource = DMGEOGRAFIA.DEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit7: TDBColorEdit
        Left = 296
        Top = 234
        Width = 55
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'MVA'
        DataSource = DMGEOGRAFIA.DEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object cbIsentoST: TCheckBox
        Left = 16
        Top = 282
        Width = 225
        Height = 17
        Caption = 'Isento de Substitui'#231#227'o Tribut'#225'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      inline FrmCstInterestadual: TFrmBusca
        Left = 16
        Top = 136
        Width = 265
        Height = 38
        Color = clWhite
        ParentColor = False
        TabOrder = 4
        inherited LTextoBusca: TLabel
          Width = 130
          Caption = 'C.S.T Interestadual'
        end
        inherited LUZOPEN: TShape
          Left = 239
        end
        inherited LUZMINUS: TShape
          Left = 273
        end
        inherited EdDescricao: TFlatEdit
          Left = 49
          Width = 192
        end
        inherited BTNOPEN: TBitBtn
          Left = 241
          OnClick = FrmCstInterestadualBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 275
          Visible = False
        end
        inherited EDCodigo: TFlatEdit
          Width = 47
          OnKeyDown = FrmCstInterestadualEDCodigoKeyDown
        end
      end
      object DBColorEdit2: TDBColorEdit
        Left = 296
        Top = 276
        Width = 55
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'MVAFORASIMPLES'
        DataSource = DMGEOGRAFIA.DEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 16
        Top = 189
        Width = 73
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'CODBACEN'
        DataSource = DMGEOGRAFIA.DEstado
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
      object DBColorEdit8: TDBColorEdit
        Left = 98
        Top = 189
        Width = 199
        Height = 22
        CharCase = ecUpperCase
        Color = 13565902
        Ctl3D = False
        DataField = 'NOMEPAIS'
        DataSource = DMGEOGRAFIA.DEstado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    inherited Panel1: TPanel
      Left = 0
      Width = 561
    end
  end
end
