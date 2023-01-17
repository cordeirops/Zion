inherited FRelServicosPet: TFRelServicosPet
  Left = 505
  Top = 132
  Caption = 'Relat'#243'rio de Ordem de Servi'#231'os'
  ClientHeight = 299
  ClientWidth = 429
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Left = 10
    Top = 96
    Width = 399
    TabOrder = 4
  end
  inherited GroupBox1: TGroupBox
    Left = 17
    Top = 243
    Width = 394
    TabOrder = 3
    inherited GroupBox3: TGroupBox
      Left = 152
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 295
    end
  end
  object GroupBox5: TGroupBox [2]
    Left = 16
    Top = 18
    Width = 245
    Height = 63
    Caption = 'Intervalo de datas  (lan'#231'amento)'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 16
      Width = 40
      Height = 13
      Caption = 'INICIAL:'
    end
    object Label4: TLabel
      Left = 127
      Top = 18
      Width = 33
      Height = 13
      Caption = 'FINAL:'
    end
    object EdDataIni: TMaskEdit
      Left = 6
      Top = 32
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object EdDataFim: TMaskEdit
      Left = 126
      Top = 32
      Width = 113
      Height = 26
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  inline FrmPessoaIni: TFrmBusca [3]
    Left = 14
    Top = 92
    Width = 399
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    inherited LTextoBusca: TLabel
      Width = 119
      Caption = 'Filtrar por cliente:'
    end
    inherited LUZOPEN: TShape
      Left = 359
      Width = 19
    end
    inherited LUZMINUS: TShape
      Left = 376
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 66
      Width = 291
      Height = 22
      Font.Color = clBlack
      Font.Height = -13
    end
    inherited BTNOPEN: TBitBtn
      Left = 358
      OnClick = FrmPessoaIniBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 376
      OnClick = FrmPessoaIniBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 63
      Height = 22
      ColorFlat = 15132364
      Font.Color = clBlack
      Font.Height = -13
      OnKeyDown = FrmPessoaIniEDCodigoKeyDown
      OnKeyPress = FrmPessoaIniEDCodigoKeyPress
    end
  end
  inline FrmServicos: TFrmBusca [4]
    Left = 14
    Top = 144
    Width = 403
    Height = 43
    Color = clWhite
    ParentColor = False
    TabOrder = 2
    inherited LTextoBusca: TLabel
      Width = 116
      Caption = 'Filtrar por servi'#231'o'
    end
    inherited LUZOPEN: TShape
      Left = 359
      Width = 20
    end
    inherited LUZMINUS: TShape
      Left = 377
      Width = 20
    end
    inherited EdDescricao: TFlatEdit
      Left = 66
      Width = 291
      Height = 22
      Font.Color = clBlack
      Font.Height = -13
    end
    inherited BTNOPEN: TBitBtn
      Left = 360
      Width = 17
      OnClick = FrmPessoaFimBTNOPENClick
    end
    inherited BTNMINUS: TBitBtn
      Left = 376
      OnClick = FrmPessoaFimBTNMINUSClick
    end
    inherited EDCodigo: TFlatEdit
      Width = 63
      Height = 22
      ColorFlat = 15132364
      Font.Color = clBlack
      Font.Height = -13
      OnKeyDown = FrmServicosEDCodigoKeyDown
    end
  end
  inherited FSRel: TfrReport
    Left = 720
    Top = 8
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 688
    Top = 8
  end
  object frReport1: TfrReport
    Dataset = frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 728
    Top = 42
    ReportForm = {18000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = DMESTOQUE.TRel
    Left = 680
    Top = 42
  end
  object FSDSRel1: TfrDBDataSet
    DataSet = DMESTOQUE.Alx1
    Left = 664
    Top = 80
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = DMESTOQUE.Alx1
    Left = 464
    Top = 104
  end
end
