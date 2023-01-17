inherited FRelped: TFRelped
  Left = 154
  Top = 160
  Caption = 'FRelped'
  ClientHeight = 324
  ClientWidth = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited Shape2: TShape
    Top = 295
  end
  inherited Shape11: TShape
    Top = 300
  end
  inherited Shape4: TShape
    Top = 300
  end
  inherited Label3: TLabel
    Top = 303
  end
  inherited Shape17: TShape
    Top = 299
  end
  inherited Shape18: TShape
    Top = 299
  end
  inherited Label2: TLabel
    Top = 303
  end
  inherited Shape3: TShape
    Top = 299
  end
  inherited Shape5: TShape
    Top = 299
  end
  inherited PForm: TPanel
    Height = 291
    inherited Shape1: TShape
      Height = 262
    end
    inherited GroupBox1: TGroupBox
      Top = 232
    end
    inherited GroupBox5: TGroupBox
      Width = 245
      Height = 92
      Caption = 'Intervalo de datas  (lançamento)'
      inherited Label1: TLabel
        Left = 6
        Top = 40
      end
      inherited Label4: TLabel
        Left = 127
        Top = 42
      end
      inherited EdDataIni: TMaskEdit
        Left = 6
        Top = 56
      end
      inherited EdDataFim: TMaskEdit
        Left = 126
        Top = 56
      end
    end
    inherited FrmPessoaIni: TFrmBusca
      Top = 130
    end
    inherited FrmPessoaFim: TFrmBusca
      Left = 8
      Top = 183
    end
    inherited RGESCOLHA: TRadioGroup
      Left = 256
      Width = 297
      Height = 43
      Items.Strings = (
        '&Abertas'
        '&Fechadas')
    end
    object RGTIPOREL: TRadioGroup
      Left = 256
      Top = 80
      Width = 297
      Height = 43
      Hint = 'Escolha o tipo de filtragem'
      Columns = 2
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Sintético'
        'A&nalítico')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 298
  end
  inherited Panel3: TPanel
    Top = 298
  end
  inherited Panel5: TPanel
    Top = 298
  end
  inherited Panel6: TPanel
    Top = 298
  end
  inherited PLogoSI: TPanel
    Top = 299
  end
  inherited FlatHint1: TFlatHint
    Left = 88
    Top = 152
  end
  inherited FSRel: TfrReport
    Left = 176
    Top = 112
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSource = DMESTOQUE.DRel
    Left = 144
    Top = 112
  end
end
