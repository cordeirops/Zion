inherited FCadCFOP: TFCadCFOP
  Left = 503
  Top = 196
  Caption = 'FCadCFOP'
  ClientHeight = 338
  ClientWidth = 606
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    Left = 16
    Top = 16
    Height = 316
    inherited DBGridCadastroPadrao: TDBGrid
      Width = 577
      Height = 226
      Columns = <
        item
          Expanded = False
          FieldName = 'CFOP'
          Title.Caption = 'C.F.O.P'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCAL'
          Title.Caption = 'Local'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCFOP'
          Title.Caption = 'Tipo'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PLNCTAFIL'
          Title.Caption = 'C'#243'd. Plano de Contas'
          Width = 94
          Visible = True
        end>
    end
    inherited Painel: TPanel
      Width = 578
      inherited BtnFiltrar: TBitBtn
        Width = 119
      end
    end
    inherited GroupBox1: TGroupBox
      Width = 577
      inherited EdNome: TFlatEdit
        Left = 88
        Width = 368
      end
      inherited BtnSelecionar: TBitBtn
        Left = 458
        Top = 18
      end
      object EdCfop: TFlatEdit
        Left = 5
        Top = 19
        Width = 82
        Height = 25
        Hint = 
          'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
          ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
          ' liberar todos. '
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = 'C.F.O.P.'
        OnKeyDown = EdCfopKeyDown
      end
    end
  end
  inherited PCadastro: TPanel [1]
    Left = 16
    Top = 16
    Width = 583
    Height = 316
    inherited Panel4: TPanel
      Top = 30
      Width = 578
      Height = 286
      inherited Label7: TLabel
        Left = 89
        Top = 66
      end
      object Label3: TLabel [2]
        Left = 16
        Top = 66
        Width = 59
        Height = 18
        Caption = 'C.F.O.P:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [3]
        Left = 16
        Top = 113
        Width = 42
        Height = 18
        Caption = 'Local:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [4]
        Left = 288
        Top = 113
        Width = 115
        Height = 18
        Caption = 'Tipo da C.F.O.P:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [5]
        Left = 16
        Top = 217
        Width = 217
        Height = 18
        Caption = 'Texto para ser impresso na NF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      inherited DBPRIMEIRO: TDBColorEdit
        Width = 67
        Height = 25
        DataField = 'COD_CFOP'
        DataSource = DMESTOQUE.DSCFOP
      end
      inherited DBDESC: TDBColorEdit
        Left = 89
        Top = 85
        Width = 469
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DSCFOP
        TabOrder = 2
      end
      object DBCFOP: TDBColorEdit
        Left = 16
        Top = 85
        Width = 67
        Height = 22
        Color = 15658717
        Ctl3D = False
        DataField = 'CFOP'
        DataSource = DMESTOQUE.DSCFOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBCFOPKeyPress
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorComboBox1: TDBColorComboBox
        Left = 16
        Top = 134
        Width = 266
        Height = 24
        Color = 15658717
        Ctl3D = False
        DataField = 'LOCAL'
        DataSource = DMESTOQUE.DSCFOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Dentro do Estado'
          'Fora do Estado')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorComboBox2: TDBColorComboBox
        Left = 287
        Top = 134
        Width = 270
        Height = 24
        Color = 15658717
        Ctl3D = False
        DataField = 'TIPOCFOP'
        DataSource = DMESTOQUE.DSCFOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        Items.Strings = (
          'Entrada'
          'Sa'#237'da')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      inline FrmBusca1: TFrmBusca
        Left = 16
        Top = 176
        Width = 541
        Height = 43
        Color = clWhite
        ParentColor = False
        TabOrder = 5
        inherited LTextoBusca: TLabel
          Width = 113
          Caption = 'Plano de Contas:'
        end
        inherited LUZOPEN: TShape
          Left = 490
          Top = 11
        end
        inherited LUZMINUS: TShape
          Left = 512
          Top = 11
        end
        inherited EdDescricao: TFlatEdit
          Left = 109
          Width = 380
        end
        inherited BTNOPEN: TBitBtn
          Left = 489
          Hint = 'Pressione para selecionar '#224' conta'
          OnClick = FrmBusca1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 511
          Hint = 'Pressione para apagar '#224' conta'
          OnClick = FrmBusca1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Width = 107
          OnKeyPress = FrmBusca1EDCodigoKeyPress
        end
      end
      object cbNCI: TCheckBox
        Left = 409
        Top = 215
        Width = 146
        Height = 17
        Caption = 'N'#227'o calcular Imposto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 234
        Width = 374
        Height = 46
        Ctl3D = False
        DataField = 'TXTCFOP'
        DataSource = DMESTOQUE.DSCFOP
        ParentCtl3D = False
        TabOrder = 7
      end
      object CBDevolucao: TCheckBox
        Left = 409
        Top = 233
        Width = 146
        Height = 17
        Caption = 'CFOP de Devolu'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object cbNaoGeraSt: TCheckBox
        Left = 409
        Top = 250
        Width = 146
        Height = 17
        Hint = 'N'#227'o gerar Substitui'#231#227'o tribut'#225'ria'
        Caption = 'N'#227'o Gerar ST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
      end
      object cbNaoGeraIcmsOp: TCheckBox
        Left = 409
        Top = 267
        Width = 146
        Height = 17
        Hint = 'N'#227'o gerar Icms Opera'#231#227'o Pr'#243'pria'
        Caption = 'N'#227'o Gerar ICMS OP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
    end
    inherited Panel1: TPanel
      Top = 1
      Width = 578
    end
  end
  inherited PComunica: TPanel [2]
    Left = 186
    Top = 104
    Width = 247
    Height = 49
  end
end
