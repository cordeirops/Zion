inherited FBaixaContaPagar: TFBaixaContaPagar
  Left = 281
  Top = 73
  Caption = 'FBaixaContaPagar'
  ClientHeight = 471
  ClientWidth = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label4: TLabel
    Top = 15
  end
  inherited Label5: TLabel
    Top = 15
  end
  inherited Label6: TLabel
    Top = 15
  end
  inherited Label2: TLabel
    Top = 15
  end
  inherited Label3: TLabel
    Top = 15
  end
  inherited Label17: TLabel
    Top = 67
  end
  inherited LVlrCred: TLabel
    Top = 445
  end
  inherited Label18: TLabel
    Top = 445
  end
  inherited Label15: TLabel
    Top = 286
  end
  inherited PCartoes: TPanel
    Color = clMoneyGreen
  end
  inherited PCartao: TPanel [10]
  end
  inherited pPerguntaVlrMaior: TPanel [11]
  end
  inherited pPerguntaVlrMenor: TPanel [12]
    Left = 11
  end
  inherited PComunica: TPanel [13]
    Top = 95
  end
  inherited PJUROS: TPanel [14]
    Top = 55
  end
  inherited Panel1: TPanel [15]
    Top = 115
    Color = clWhite
    inherited Label16: TLabel
      Width = 209
      Caption = 'Moeda Utilizada o Pagamento:'
    end
    inherited PBanco: TPanel
      inherited DBGCTA: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMAGENCIA'
            Title.Caption = 'Agencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCTACOR'
            Title.Caption = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCBANCO'
            Title.Caption = 'Banco'
            Visible = True
          end>
      end
    end
    inherited FrmConta: TFrmBusca
      Height = 44
      Color = clWhite
    end
  end
  inherited PDESCONTO: TPanel [16]
    Top = 55
  end
  inherited EdVenc: TEdit [17]
    Top = 30
  end
  inherited EdValor: TColorEditFloat [18]
    Top = 30
  end
  inherited BitBtn1: TBitBtn [19]
    Top = 436
  end
  inherited BitBtn2: TBitBtn [20]
    Top = 436
  end
  inherited EdParcela: TEdit [21]
    Top = 30
  end
  inherited EdDocumento: TEdit [22]
    Top = 30
  end
  inherited EDValorJurMulta: TColorEditFloat [23]
    Top = 87
  end
  inherited DBHISTORICO: TDBEdit [24]
    Top = 306
    DataField = 'HISTORICO'
  end
  inherited EDDeb: TColorMaskEdit [25]
    Top = 29
  end
  inherited QRReciboGFinal: TQuickRep [26]
    Left = 1092
    Top = 276
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      0.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited QRBRecFin: TQRBand
      Size.Values = (
        1161.520833333333000000
        1957.916666666667000000)
      inherited QRDBText54: TQRDBText
        Size.Values = (
          60.854166666666680000
          10.583333333333330000
          21.166666666666670000
          1939.395833333333000000)
        FontSize = 14
      end
      inherited QRDBText55: TQRDBText
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          79.375000000000000000
          1934.104166666670000000)
        FontSize = 10
      end
      inherited QRShape28: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          304.270833333333400000
          1942.041666666667000000)
      end
      inherited QRShape29: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          296.333333333333400000
          1942.041666666667000000)
      end
      inherited QRShape30: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          124.354166666666700000
          1942.041666666667000000)
      end
      inherited QRShape31: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          203.729166666666700000
          1942.041666666667000000)
      end
      inherited QRLabel69: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          560.916666666666700000
          590.020833333333300000)
        FontSize = 10
      end
      inherited QRLabel70: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel71: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          338.666666666666700000
          293.687500000000000000)
        FontSize = 10
      end
      inherited QRShape32: TQRShape
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          693.208333333333400000
          1942.041666666667000000)
      end
      inherited QRShape33: TQRShape
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          1090.083333333330000000
          1942.041666666670000000)
      end
      inherited QRLabel73: TQRLabel
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          134.937500000000000000
          1971.145833333334000000)
        FontSize = 16
      end
      inherited QRLabel74: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          232.833333333333300000
          232.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel75: TQRLabel
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          232.833333333333400000
          185.208333333333300000)
        FontSize = 10
      end
      inherited QRLabel76: TQRLabel
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          722.312500000000000000
          460.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel77: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          933.979166666666600000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRLabel78: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          978.958333333333200000
          1971.145833333334000000)
        FontSize = 10
      end
      inherited QRDBText56: TQRDBText
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          338.666666666666700000
          105.833333333333300000)
        FontSize = 10
      end
      inherited QRLabel79: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          381.000000000000000000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText57: TQRDBText
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          383.645833333333400000
          195.791666666666700000)
        FontSize = 10
      end
      inherited QRLabel80: TQRLabel
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          425.979166666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRDBText58: TQRDBText
        Size.Values = (
          44.979166666666670000
          508.000000000000000000
          425.979166666666700000
          124.354166666666700000)
        FontSize = 10
      end
      inherited QRDBText60: TQRDBText
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          425.979166666666700000
          206.375000000000000000)
        FontSize = 10
      end
      inherited QRLabel81: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          425.979166666666700000
          121.708333333333300000)
        FontSize = 10
      end
      inherited QRDBText61: TQRDBText
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          338.666666666666700000
          158.750000000000000000)
        FontSize = 10
      end
      inherited QRLabel82: TQRLabel
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          338.666666666666700000
          179.916666666666700000)
        FontSize = 10
      end
      inherited QRLImportanciaF: TQRLabel
        Size.Values = (
          44.979166666666670000
          402.166666666666600000
          473.604166666666700000
          338.666666666666700000)
        FontSize = 10
      end
      inherited QRLabel85: TQRLabel
        Size.Values = (
          44.979166666666670000
          1645.708333333333000000
          235.479166666666700000
          171.979166666666700000)
        FontSize = 10
      end
      inherited QRDBText59: TQRDBText
        Size.Values = (
          44.979166666666670000
          645.583333333333400000
          560.916666666666700000
          153.458333333333300000)
        FontSize = 10
      end
      inherited QRRDocumentos: TQRRichText
        Size.Values = (
          66.145833333333340000
          71.437500000000000000
          613.833333333333400000
          1862.666666666667000000)
      end
      inherited QRDataRec4: TQRLabel
        Size.Values = (
          39.687500000000000000
          1788.583333333333000000
          158.750000000000000000
          92.604166666666680000)
        FontSize = 8
      end
      inherited QRDBText1: TQRDBText
        Size.Values = (
          58.208333333333340000
          7.937500000000000000
          1095.375000000000000000
          1942.041666666667000000)
        FontSize = 7
      end
    end
  end
end
