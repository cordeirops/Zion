inherited FRelGraficoPizza: TFRelGraficoPizza
  Left = 63
  Top = 38
  Caption = 'FRelGraficoPizza'
  ClientHeight = 682
  ClientWidth = 1092
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Left = -1
    Top = 29
    Width = 1090
    Height = 651
  end
  inherited LDescTitulo: TLabel
    Left = 218
  end
  inherited PComunica: TPanel
    Left = 178
    Top = 192
  end
  inherited GroupBox1: TGroupBox
    Left = 177
    Top = 614
    Width = 800
    inherited GroupBox3: TGroupBox
      Left = 360
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 700
    end
  end
  object Grafico: TDBChart [12]
    Left = 8
    Top = 40
    Width = 1071
    Height = 575
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'Resultado')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelPercent
      Marks.Visible = True
      DataSource = TRel
      SeriesColor = clRed
      XLabelsSource = 'CLASSIFICACAO'
      OtherSlice.Style = poBelowValue
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loDescending
      PieValues.ValueSource = 'TOTAL'
    end
  end
  inherited FSRel: TfrReport
    ReportForm = {18000000}
  end
  object TRel: TMDOQuery
    Database = MDO.DB
    Transaction = MDO.Transac
    BufferChunks = 1000
    CachedUpdates = False
    LoadDefaults = False
    SQL.Strings = (
      
        ' SELECT despadic.classificacao, sum(despadic.vlrtotfin) AS TOTAL' +
        ' FROM despadic'
      ' Left join ordem on despadic.cod_gerador = ordem.cod_ordem'
      
        ' Where (ordem.dtabert between '#39'21.11.2013'#39' and '#39'25.11.2013'#39') and' +
        ' (despadic.gerador='#39'ORDEM'#39')'
      ' GROUP BY despadic.classificacao'
      ' ORDER BY despadic.classificacao')
    Left = 704
    Top = 40
  end
  object DSRel: TDataSource
    DataSet = TRel
    Left = 744
    Top = 40
  end
end
