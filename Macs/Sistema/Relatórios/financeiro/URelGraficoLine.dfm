inherited FRelGraficoLine: TFRelGraficoLine
  Left = 350
  Top = 124
  Caption = 'FRelGraficoLine'
  ClientHeight = 465
  ClientWidth = 690
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 24
    Top = 8
    Width = 65
    Height = 16
    Caption = 'Intervalo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [1]
    Left = 127
    Top = 37
    Width = 18
    Height = 13
    Caption = 'at'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  inherited PComunica: TPanel
    Left = 130
    Top = 211
    Width = 399
    Height = 73
    TabOrder = 3
  end
  inherited GroupBox1: TGroupBox
    Left = 20
    Top = 406
    Width = 640
    Height = 45
    TabOrder = 2
    inherited GroupBox2: TGroupBox
      inherited BtnImprimir: TBitBtn
        OnClick = BtnImprimirClick
      end
    end
    inherited GroupBox3: TGroupBox
      Left = 280
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 540
    end
  end
  object CBIni: TEdit [4]
    Left = 25
    Top = 32
    Width = 96
    Height = 21
    TabOrder = 0
    OnKeyPress = ComboBox1KeyPress
  end
  object CBFim: TEdit [5]
    Left = 153
    Top = 32
    Width = 96
    Height = 21
    TabOrder = 1
    OnKeyPress = ComboBox1KeyPress
  end
  object CBRevelVal: TCheckBox [6]
    Left = 264
    Top = 36
    Width = 96
    Height = 17
    Caption = 'Revelar valores'
    Color = 16772332
    ParentColor = False
    TabOrder = 4
    OnClick = CBRevelValClick
  end
  object PFuncionario: TPanel [7]
    Left = 368
    Top = 16
    Width = 296
    Height = 49
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 6
    Visible = False
    inline FrmVendIni: TFrmBusca
      Left = 2
      Top = 6
      Width = 293
      Height = 43
      Color = clWhite
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Width = 68
        Caption = 'Vendedor:'
      end
      inherited LUZOPEN: TShape
        Left = 250
      end
      inherited LUZMINUS: TShape
        Left = 269
      end
      inherited EdDescricao: TFlatEdit
        Left = 50
        Width = 200
        ColorFlat = 14085099
      end
      inherited BTNOPEN: TBitBtn
        Left = 252
        OnClick = FrmVendIniBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 270
        OnClick = FrmVendIniBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Width = 47
        ColorFlat = 7846843
        OnKeyDown = FrmVendIniEDCodigoKeyDown
      end
    end
  end
  object DBChart: TDBChart [8]
    Left = 16
    Top = 58
    Width = 649
    Height = 337
    BackWall.Brush.Color = clWhite
    BackWall.Color = clWhite
    Title.Font.Charset = ANSI_CHARSET
    Title.Font.Color = clBlack
    Title.Font.Height = -19
    Title.Font.Name = 'Verdana'
    Title.Font.Style = [fsBold, fsUnderline]
    Title.Frame.Color = 14024703
    Title.Frame.Visible = True
    Title.Text.Strings = (
      '')
    BackColor = clWhite
    Chart3DPercent = 2
    View3D = False
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clWhite
    TabOrder = 5
    Visible = False
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx1
      SeriesColor = clRed
      Title = 'Vendas1'
      XLabelsSource = 'DESC1'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR1'
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx2
      SeriesColor = clGreen
      Title = 'Vendas2'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR1'
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx3
      SeriesColor = clBlue
      Title = 'Vendas3'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psTriangle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR1'
    end
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx1
      SeriesColor = clYellow
      Title = 'Lucrat1'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR2'
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx2
      SeriesColor = clLime
      Title = 'Lucrat2'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR2'
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Verdana'
      Marks.Font.Style = []
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx3
      SeriesColor = clFuchsia
      Title = 'Lucrat3'
      Dark3D = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psTriangle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR2'
    end
    object Series7: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx1
      SeriesColor = clGray
      Title = 'Custo1'
      XLabelsSource = 'DESC1'
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR3'
    end
    object Series8: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx2
      SeriesColor = clTeal
      Title = 'Custo2'
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR3'
    end
    object Series9: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = DMESTOQUE.Alx3
      SeriesColor = clNavy
      Title = 'Custo3'
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psTriangle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'INT1'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'VLR3'
    end
  end
  inherited FSRel: TfrReport
    Left = 424
    Top = 8
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 392
    Top = 8
  end
end
