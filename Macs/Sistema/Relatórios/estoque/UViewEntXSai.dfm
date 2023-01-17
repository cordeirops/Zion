inherited FViewEntXSai: TFViewEntXSai
  Left = 1
  Top = -1
  Caption = ''
  ClientHeight = 533
  ClientWidth = 791
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape2: TShape
    Top = 504
    Width = 790
  end
  inherited Shape11: TShape
    Top = 509
  end
  inherited Shape4: TShape
    Top = 509
  end
  inherited PComunica: TPanel [3]
    Left = 162
  end
  inherited PForm: TPanel [4]
    Width = 790
    Height = 502
    inherited Shape1: TShape
      Top = 18
      Width = 784
      Height = 473
    end
    inherited Shape14: TShape
      Width = 784
    end
    inherited Image1: TImage
      Width = 780
    end
    inherited BtnQuestao: TSpeedButton
      Left = 746
    end
    inherited BtnFecha: TSpeedButton
      Left = 767
    end
    object Bevel1: TBevel
      Left = 11
      Top = 34
      Width = 486
      Height = 60
    end
    object Label18: TLabel
      Left = 400
      Top = 101
      Width = 84
      Height = 16
      Caption = 'S A Í D A S: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label95: TLabel
      Left = 24
      Top = 38
      Width = 83
      Height = 13
      Caption = 'Qtd. Entradas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdEnt: TLabel
      Left = 24
      Top = 50
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
    end
    object Label96: TLabel
      Left = 24
      Top = 64
      Width = 73
      Height = 13
      Alignment = taCenter
      Caption = 'Qtd. Saídas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LQtdSaida: TLabel
      Left = 24
      Top = 76
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
    end
    object Label102: TLabel
      Left = 152
      Top = 40
      Width = 37
      Height = 13
      Caption = 'Saldo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LEstCalc: TLabel
      Left = 132
      Top = 52
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
    end
    object Label97: TLabel
      Left = 294
      Top = 38
      Width = 82
      Height = 13
      Caption = 'Total Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTotComp: TLabel
      Left = 294
      Top = 50
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
    end
    object Label99: TLabel
      Left = 296
      Top = 64
      Width = 76
      Height = 13
      Alignment = taCenter
      Caption = 'Total Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTotVend: TLabel
      Left = 294
      Top = 76
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
    end
    object Label98: TLabel
      Left = 395
      Top = 38
      Width = 65
      Height = 13
      Caption = 'Tot. Comis.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTotComis: TLabel
      Left = 394
      Top = 50
      Width = 62
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
    end
    object Label101: TLabel
      Left = 392
      Top = 64
      Width = 66
      Height = 13
      Alignment = taCenter
      Caption = 'Total Lucro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTotLuc: TLabel
      Left = 390
      Top = 76
      Width = 66
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
    end
    object Label1: TLabel
      Left = 10
      Top = 101
      Width = 116
      Height = 16
      Caption = 'E N T R A D A S:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 11
      Top = 100
      Width = 116
      Height = 16
      Caption = 'E N T R A D A S:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 401
      Top = 100
      Width = 84
      Height = 16
      Caption = 'S A Í D A S: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid2: TDBGrid
      Left = 11
      Top = 121
      Width = 369
      Height = 176
      Hint = 'Entrada de Correção'
      Color = 15794175
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Caption = 'Doc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_LANCAMENTO'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtd.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTIVO'
          Title.Caption = 'Histórico'
          Visible = True
        end>
    end
    object DBGrid5: TDBGrid
      Left = 11
      Top = 313
      Width = 369
      Height = 176
      Hint = 'Pedido de Compra'
      Color = 15794175
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx3
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'Doc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDCOMP'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDEPROD'
          Title.Caption = 'Qtd.'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTPROD'
          Title.Caption = 'Valor'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end>
    end
    object DBGrid3: TDBGrid
      Left = 400
      Top = 121
      Width = 369
      Height = 125
      Hint = 'Saída de Correção'
      Color = 15658717
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx1
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Caption = 'Doc.'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DT_LANCAMENTO'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtd.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOTIVO'
          Title.Caption = 'Histórico'
          Visible = True
        end>
    end
    object DBGrid4: TDBGrid
      Left = 400
      Top = 248
      Width = 369
      Height = 125
      Hint = 'Pedido de Venda'
      Color = 15658717
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx2
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'Doc.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPEDVEN'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDEPROD'
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERACAO'
          Title.Caption = 'ST'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTPROD'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECLI'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end>
    end
    object DBGrid6: TDBGrid
      Left = 399
      Top = 380
      Width = 369
      Height = 108
      Hint = 'Ordem de Serviço'
      Color = 15658717
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx4
      FixedColor = 11039232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'Ordem'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMREQ'
          Title.Caption = 'Req.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRODFABR'
          Title.Caption = 'Fabric.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtd.'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Visible = True
        end>
    end
  end
  inherited PLogoSI: TPanel
    Top = 508
  end
  inherited FlatHint1: TFlatHint
    Left = 552
    Top = 65528
  end
end
