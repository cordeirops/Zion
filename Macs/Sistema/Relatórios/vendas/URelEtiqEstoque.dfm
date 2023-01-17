inherited FRelEtiqEstoque: TFRelEtiqEstoque
  Left = 99
  Top = 0
  Caption = 'FRelEtiqEstoque'
  ClientHeight = 522
  ClientWidth = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Height = 484
  end
  inherited PInventario: TPanel
    Height = 333
    inherited RgOrdenacao: TRadioGroup
      Visible = False
    end
    inherited cbMarcaSelect: TcxCheckBox
      Properties.Caption = 'Marca'
    end
  end
  object GroupBox5: TGroupBox [8]
    Left = 12
    Top = 380
    Width = 253
    Height = 42
    Caption = 'Intervalo de Datas de Movimenta'#231#227'o'
    Color = 16772332
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 5
    object Data1: TColorMaskEdit
      Left = 8
      Top = 16
      Width = 89
      Height = 22
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object Data2: TColorMaskEdit
      Left = 144
      Top = 16
      Width = 89
      Height = 22
      EditMask = '!99/99/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object RGTipo: TRadioGroup [9]
    Left = 272
    Top = 379
    Width = 329
    Height = 43
    Caption = 'Emitir com barras'
    Color = 16772332
    Columns = 2
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'C'#243'd. Fabricante'
      'C'#243'd. Barra')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 6
  end
  object RGINFORMACOES: TRadioGroup [10]
    Left = 87
    Top = 424
    Width = 428
    Height = 33
    Caption = 'Informa'#231#245'es retiradas de '
    Color = 16772332
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'COMPRAS'
      'CORRE'#199#213'ES'
      'CADASTRO')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 7
  end
  inherited GroupBox1: TGroupBox
    Left = 35
    Top = 457
    TabOrder = 8
  end
  inherited QRResumo: TQuickRep
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBand8: TQRBand
      Size.Values = (
        232.833333333333300000
        1899.708333333333000000)
      inherited QRDBText12: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          5.291666666666667000
          1441.979166666667000000)
        FontSize = 12
      end
      inherited QRDBText13: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          50.270833333333330000
          912.812500000000100000)
        FontSize = 8
      end
      inherited QRLabel12: TQRLabel
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          84.666666666666680000
          1992.312500000000000000)
        FontSize = 12
      end
      inherited QRDBText14: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          84.666666666666680000
          595.312500000000000000)
        FontSize = 8
      end
      inherited QRShape4: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          227.541666666666700000
          1897.062500000000000000)
      end
      inherited QRSysData1: TQRSysData
        Left = 520
        Width = 196
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          2.645833333333333000
          518.583333333333400000)
        FontSize = 10
      end
      inherited QRDBRichText1: TQRDBRichText
        Size.Values = (
          95.250000000000000000
          10.583333333333330000
          127.000000000000000000
          838.729166666666800000)
      end
    end
    inherited QRBand9: TQRBand
      Size.Values = (
        44.979166666666670000
        1899.708333333333000000)
      inherited QRLabel14: TQRLabel
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          5.291666666666667000
          119.062500000000000000)
        FontSize = 7
      end
      inherited QRLabel16: TQRLabel
        Size.Values = (
          34.395833333333340000
          603.250000000000000000
          5.291666666666667000
          108.479166666666700000)
        FontSize = 7
      end
      inherited QRShape5: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          39.687500000000000000
          1897.062500000000000000)
      end
      inherited QRLabel1: TQRLabel
        Size.Values = (
          34.395833333333340000
          1013.354166666667000000
          5.291666666666667000
          111.125000000000000000)
        FontSize = 7
      end
      inherited QRLabel2: TQRLabel
        Size.Values = (
          34.395833333333340000
          772.583333333333400000
          5.291666666666667000
          103.187500000000000000)
        FontSize = 7
      end
      inherited QRLabel3: TQRLabel
        Size.Values = (
          34.395833333333340000
          1182.687500000000000000
          5.291666666666667000
          105.833333333333300000)
        FontSize = 7
      end
      inherited QRLabel4: TQRLabel
        Size.Values = (
          34.395833333333340000
          1494.895833333333000000
          5.291666666666667000
          150.812500000000000000)
        FontSize = 7
      end
      inherited QRLabel5: TQRLabel
        Size.Values = (
          34.395833333333340000
          1309.687500000000000000
          5.291666666666667000
          166.687500000000000000)
        FontSize = 7
      end
      inherited QRLabel23: TQRLabel
        Size.Values = (
          34.395833333333340000
          1674.812500000000000000
          5.291666666666667000
          119.062500000000000000)
        FontSize = 7
      end
    end
    inherited QRBand10: TQRBand
      Size.Values = (
        39.687500000000000000
        1899.708333333333000000)
      inherited QRLPRODUTO: TQRDBText
        Size.Values = (
          37.041666666666670000
          5.291666666666667000
          0.000000000000000000
          108.479166666666700000)
        FontSize = 8
      end
      inherited QRLVLR1: TQRDBText
        Size.Values = (
          37.041666666666670000
          637.645833333333400000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRLVLR2: TQRDBText
        Size.Values = (
          37.041666666666670000
          804.333333333333200000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRLVLR3: TQRDBText
        Size.Values = (
          37.041666666666670000
          1050.395833333333000000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRLVLR4: TQRDBText
        Size.Values = (
          37.041666666666670000
          1211.791666666667000000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRLVLR5: TQRDBText
        Size.Values = (
          37.041666666666670000
          1399.645833333333000000
          0.000000000000000000
          79.375000000000000000)
        FontSize = 8
      end
      inherited QRLVLR6: TQRDBText
        Size.Values = (
          37.041666666666670000
          1481.666666666667000000
          0.000000000000000000
          166.687500000000000000)
        FontSize = 8
      end
      inherited QRLabel22: TQRLabel
        Size.Values = (
          44.979166666666670000
          1796.520833333334000000
          -2.645833333333333000
          100.541666666666700000)
        FontSize = 10
      end
      inherited QRLVLR7: TQRDBText
        Size.Values = (
          37.041666666666670000
          1651.000000000000000000
          0.000000000000000000
          148.166666666666700000)
        FontSize = 8
      end
    end
    inherited QRBand11: TQRBand
      Size.Values = (
        68.791666666666670000
        1899.708333333333000000)
      inherited QRLORION: TQRLabel
        Size.Values = (
          37.041666666666670000
          13.229166666666670000
          5.291666666666667000
          1873.250000000000000000)
        FontSize = 6
      end
      inherited QRShape7: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          2.645833333333333000
          1897.062500000000000000)
      end
      inherited QRLabel6: TQRLabel
        Size.Values = (
          37.041666666666670000
          13.229166666666670000
          29.104166666666670000
          1873.250000000000000000)
        FontSize = 6
      end
    end
  end
  inherited QrResumoVC: TQuickRep
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    inherited QRBand1: TQRBand
      Size.Values = (
        232.833333333333300000
        2000.250000000000000000)
      inherited QRDBText1: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          5.291666666666667000
          1441.979166666667000000)
        FontSize = 12
      end
      inherited QRDBText2: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          50.270833333333330000
          912.812500000000100000)
        FontSize = 8
      end
      inherited QRLabel7: TQRLabel
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          84.666666666666680000
          1992.312500000000000000)
        FontSize = 12
      end
      inherited QRDBText3: TQRDBText
        Size.Values = (
          52.916666666666660000
          0.000000000000000000
          84.666666666666680000
          637.645833333333400000)
        FontSize = 8
      end
      inherited QRShape1: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          227.541666666666700000
          1992.312500000000000000)
      end
      inherited QRDBRichText2: TQRDBRichText
        Size.Values = (
          95.250000000000000000
          5.291666666666667000
          124.354166666666700000
          611.187500000000000000)
      end
      inherited QRSysData2: TQRSysData
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          2.645833333333333000
          383.645833333333400000)
        FontSize = 10
      end
    end
    inherited QRBand3: TQRBand
      Size.Values = (
        44.979166666666670000
        2000.250000000000000000)
      inherited QRLabel8: TQRLabel
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          5.291666666666667000
          145.520833333333300000)
        FontSize = 7
      end
      inherited QRLabel9: TQRLabel
        Size.Values = (
          39.687500000000000000
          597.958333333333400000
          5.291666666666667000
          161.395833333333300000)
        FontSize = 7
      end
      inherited QRLabel10: TQRLabel
        Size.Values = (
          39.687500000000000000
          772.583333333333400000
          5.291666666666667000
          171.979166666666700000)
        FontSize = 7
      end
      inherited QRLabel11: TQRLabel
        Size.Values = (
          39.687500000000000000
          1180.041666666667000000
          5.291666666666667000
          164.041666666666700000)
        FontSize = 7
      end
      inherited QRLabel13: TQRLabel
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          5.291666666666667000
          119.062500000000000000)
        FontSize = 7
      end
      inherited QRLabel15: TQRLabel
        Size.Values = (
          39.687500000000000000
          1613.958333333333000000
          5.291666666666667000
          140.229166666666700000)
        FontSize = 7
      end
      inherited QRLabel17: TQRLabel
        Size.Values = (
          39.687500000000000000
          1066.270833333333000000
          5.291666666666667000
          103.187500000000000000)
        FontSize = 7
      end
      inherited QRLabel18: TQRLabel
        Size.Values = (
          39.687500000000000000
          1844.145833333333000000
          5.291666666666667000
          103.187500000000000000)
        FontSize = 7
      end
      inherited QRShape2: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          39.687500000000000000
          1992.312500000000000000)
      end
    end
    inherited QRBand2: TQRBand
      Size.Values = (
        34.395833333333330000
        2000.250000000000000000)
      inherited QRDBText4: TQRDBText
        Width = 56
        Size.Values = (
          34.395833333333340000
          68.791666666666680000
          0.000000000000000000
          148.166666666666700000)
        FontSize = 7
      end
      inherited QRDBText5: TQRDBText
        Size.Values = (
          34.395833333333340000
          579.437500000000000000
          0.000000000000000000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRDBText6: TQRDBText
        Size.Values = (
          34.395833333333340000
          762.000000000000000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRDBText7: TQRDBText
        Size.Values = (
          34.395833333333340000
          1161.520833333333000000
          0.000000000000000000
          182.562500000000000000)
        FontSize = 7
      end
      inherited QRDBText8: TQRDBText
        Size.Values = (
          34.395833333333340000
          1402.291666666667000000
          0.000000000000000000
          161.395833333333300000)
        FontSize = 7
      end
      inherited QRDBText9: TQRDBText
        Size.Values = (
          34.395833333333340000
          1587.500000000000000000
          0.000000000000000000
          161.395833333333300000)
        FontSize = 7
      end
      inherited QRExpr3: TQRExpr
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr4: TQRExpr
        Size.Values = (
          44.979166666666670000
          1762.125000000000000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
    end
    inherited QRBand4: TQRBand
      Size.Values = (
        39.687500000000000000
        2000.250000000000000000)
      inherited QRExpr1: TQRExpr
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          0.000000000000000000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRExpr2: TQRExpr
        Size.Values = (
          44.979166666666670000
          756.708333333333400000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr5: TQRExpr
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr6: TQRExpr
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr7: TQRExpr
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr8: TQRExpr
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr9: TQRExpr
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          0.000000000000000000
          185.208333333333300000)
        FontSize = 7
      end
    end
    inherited QRGroup1: TQRGroup
      Size.Values = (
        34.395833333333330000
        2000.250000000000000000)
      inherited QRDBText10: TQRDBText
        Size.Values = (
          37.041666666666670000
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000)
        FontSize = 8
      end
      inherited QRLabel19: TQRLabel
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          2.645833333333333000
          23.812500000000000000)
        FontSize = 7
      end
    end
    inherited QRGroup2: TQRGroup
      Size.Values = (
        37.041666666666670000
        2000.250000000000000000)
      inherited QRDBText11: TQRDBText
        Size.Values = (
          37.041666666666670000
          47.625000000000000000
          0.000000000000000000
          182.562500000000000000)
        FontSize = 8
      end
      inherited QRLabel20: TQRLabel
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          2.645833333333333000
          13.229166666666670000)
        FontSize = 7
      end
    end
    inherited QRBand5: TQRBand
      Size.Values = (
        39.687500000000000000
        2000.250000000000000000)
      inherited QRExpr10: TQRExpr
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          0.000000000000000000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRExpr11: TQRExpr
        Size.Values = (
          44.979166666666670000
          756.708333333333400000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr12: TQRExpr
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr13: TQRExpr
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr14: TQRExpr
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr15: TQRExpr
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr16: TQRExpr
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          2.645833333333333000
          185.208333333333300000)
        FontSize = 7
      end
    end
    inherited QRBand6: TQRBand
      Size.Values = (
        47.625000000000000000
        2000.250000000000000000)
      inherited QRShape3: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          7.937500000000000000
          1992.312500000000000000)
      end
      inherited QRExpr17: TQRExpr
        Size.Values = (
          44.979166666666670000
          576.791666666666800000
          15.875000000000000000
          177.270833333333300000)
        FontSize = 7
      end
      inherited QRExpr18: TQRExpr
        Size.Values = (
          44.979166666666670000
          756.708333333333400000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr19: TQRExpr
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr20: TQRExpr
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr21: TQRExpr
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr22: TQRExpr
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
      inherited QRExpr23: TQRExpr
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          15.875000000000000000
          185.208333333333300000)
        FontSize = 7
      end
    end
    inherited QRBand7: TQRBand
      Size.Values = (
        71.437500000000000000
        2000.250000000000000000)
      inherited QRShape6: TQRShape
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          1992.312500000000000000)
      end
      inherited QRLabel21: TQRLabel
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          13.229166666666670000
          1992.312500000000000000)
        FontSize = 6
      end
      inherited QRLabel24: TQRLabel
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          37.041666666666670000
          1992.312500000000000000)
        FontSize = 6
      end
    end
  end
  inherited FSRel: TfrReport
    ReportForm = {18000000}
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 510
    Top = 293
  end
end
