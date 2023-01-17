inherited FRelBancoPlanoContas: TFRelBancoPlanoContas
  Left = 254
  Top = 58
  Caption = 'FRelBancoPlanoContas'
  ClientHeight = 565
  ClientWidth = 571
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 186
    Top = 16
    Width = 61
    Height = 13
    Caption = 'Filtrar por:'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object gbPeriodo: TGroupBox [1]
    Left = 8
    Top = 43
    Width = 553
    Height = 155
    Caption = 'Filtrar pelo per'#237'odo'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    Visible = False
    object Label4: TLabel
      Left = 3
      Top = 14
      Width = 60
      Height = 16
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 4
      Top = 30
      Width = 544
      Height = 120
      Ctl3D = False
      DataSource = DMESTOQUE.DSAlx1
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCBANCO'
          Title.Caption = 'Banco'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ABERT'
          Title.Caption = 'Dt. Abert.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Title.Caption = 'Dt. Fech.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHADO'
          Title.Caption = 'Fech.'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDOINI'
          Title.Caption = 'Saldo Ini.'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDOFIN'
          Title.Caption = 'Saldo Fin.'
          Width = 92
          Visible = True
        end>
    end
  end
  object gbDatas: TGroupBox [2]
    Left = 110
    Top = 102
    Width = 345
    Height = 96
    Caption = 'Intervalo de datas'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 49
      Height = 16
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 216
      Top = 21
      Width = 40
      Height = 16
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edDtInicial: TMaskEdit
      Left = 8
      Top = 37
      Width = 120
      Height = 24
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edDtFinal: TMaskEdit
      Left = 216
      Top = 37
      Width = 120
      Height = 24
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object RGTIPODT: TRadioGroup
      Left = 9
      Top = 61
      Width = 327
      Height = 32
      Hint = 'Informe qual o tipo de data pelo qual deseja selecionar'
      Color = clWhite
      Columns = 4
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Cadastro'
        'Fatura'
        'Vencimento')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = True
    end
  end
  inherited GroupBox1: TGroupBox [3]
    Left = 11
    Top = 508
    Width = 548
    TabOrder = 6
    inherited GroupBox3: TGroupBox
      inherited BtnVisualizar: TBitBtn
        Top = 7
        Height = 26
        OnClick = BtnVisualizarClick
      end
    end
  end
  object gbCtaCor: TGroupBox [4]
    Left = 104
    Top = 208
    Width = 358
    Height = 65
    Caption = 'Conta corrente'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    inline frmBuscaCtaCor: TFrmBusca
      Left = 8
      Top = 24
      Width = 345
      Height = 33
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Top = -18
        Width = 5
        Caption = ''
      end
      inherited LUZOPEN: TShape
        Left = 298
        Top = 4
      end
      inherited LUZMINUS: TShape
        Left = 318
        Top = 4
      end
      inherited EdDescricao: TFlatEdit
        Left = 73
        Top = 7
        Width = 224
      end
      inherited BTNOPEN: TBitBtn
        Left = 300
        Top = 7
        Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
        OnClick = frmBuscaCtaCorBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 319
        Top = 7
        Hint = 'Pressione para apagar '#224' Ag'#234'ncia'
        OnClick = frmBuscaCtaCorBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 7
        OnKeyDown = frmBuscaCtaCorEDCodigoKeyDown
      end
    end
  end
  object GroupBox7: TGroupBox [5]
    Left = 16
    Top = 284
    Width = 537
    Height = 64
    Caption = 'Plano de conta'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    inline frmBuscaPlncta: TFrmBusca
      Left = 8
      Top = 24
      Width = 521
      Height = 33
      Color = 16772332
      ParentColor = False
      TabOrder = 0
      inherited LTextoBusca: TLabel
        Top = -18
        Width = 5
        Caption = ''
      end
      inherited LUZOPEN: TShape
        Left = 474
        Top = 4
      end
      inherited LUZMINUS: TShape
        Left = 494
        Top = 4
      end
      inherited EdDescricao: TFlatEdit
        Left = 129
        Top = 7
        Width = 344
      end
      inherited BTNOPEN: TBitBtn
        Left = 476
        Top = 7
        Hint = 'Pressione para selecionar '#224' Ag'#234'ncia'
        OnClick = frmBuscaPlnctaBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 494
        Top = 7
        Hint = 'Pressione para apagar '#224' Ag'#234'ncia'
        OnClick = frmBuscaPlnctaBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 7
        Width = 127
        OnKeyDown = frmBuscaPlnctaEDCodigoKeyDown
      end
    end
  end
  object GroupBox9: TGroupBox [6]
    Left = 136
    Top = 440
    Width = 305
    Height = 57
    Caption = 'Trazer apenas'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object cbEntradas: TCheckBox
      Left = 8
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Entradas'
      TabOrder = 0
    end
    object cbSaidas: TCheckBox
      Left = 176
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Sa'#237'das'
      TabOrder = 1
    end
  end
  object rgTipoRel: TRadioGroup [7]
    Left = 136
    Top = 363
    Width = 305
    Height = 61
    Caption = 'Tipo relat'#243'rio'
    Color = clWhite
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'An'#225'litico'
      'Sint'#233'tico')
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object rbPeriodo: TRadioButton [8]
    Left = 248
    Top = 32
    Width = 65
    Height = 17
    Caption = 'Per'#237'odo'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    OnClick = rbPeriodoClick
  end
  object rbData: TRadioButton [9]
    Left = 184
    Top = 32
    Width = 57
    Height = 17
    Caption = 'Data'
    Checked = True
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    TabStop = True
    OnClick = rbDataClick
  end
  inherited PComunica: TPanel [10]
    Left = 50
    Top = 200
    TabOrder = 0
  end
  inherited FSRel: TfrReport
    Left = 624
    Top = 120
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 592
    Top = 120
  end
  object frxRelatorio: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42012.406310717600000000
    ReportOptions.LastChange = 42044.467785821760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   xIlse, xZanette, xRecebido: Real;'
      
        '   xSaldoAntIlse, xSaldoAntZnt, xEntradasIlse, xEntradasZnt: Rea' +
        'l;'
      '   xSaidaIlse, xSaidaZnt: Real;'
      '   xSaldoAtualIlse, xSaldoAtualZnt: Real;'
      '   xTotalAgrupado, xTotalIndividual: Real;'
      '   xConfrontoIlse, xConfrontoZanette: Real;       '
      '     '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <dbSetInfo."COD_TMP"> = 1 then'
      '  begin              '
      '       mmIndicador.Text := '#39' Saldo Anterior '#39';'
      '       xSaldoAntIlse := <dbSetInfo."ILSE">;                 '
      
        '       xSaldoAntZnt := <dbSetInfo."ZANETTE">;                   ' +
        ' '
      '  end;                   '
      '       '
      '  if <dbSetInfo."COD_TMP"> = 2 then'
      '  begin              '
      '       mmIndicador.Text := '#39' Entradas '#39';'
      '       xEntradasIlse := <dbSetInfo."ILSE">;                 '
      '       xEntradasZnt := <dbSetInfo."ZANETTE">;           '
      '  end;                     '
      '         '
      '  if <dbSetInfo."COD_TMP"> = 3 then'
      '  begin              '
      '       mmIndicador.Text := '#39' Sa'#237'das '#39';'
      '       xSaidaIlse := <dbSetInfo."ILSE">;                 '
      '       xSaidaZnt := <dbSetInfo."ZANETTE">;           '
      '  end;                     '
      ''
      '  if <dbSetInfo."COD_TMP"> <> 1 then'
      '  begin              '
      '       xIlse := xIlse + <dbSetInfo."ILSE">;'
      '       xZanette := xZanette + <dbSetInfo."ZANETTE">;'
      '       xRecebido := xRecebido + <dbSetInfo."TOTAL">;'
      '  end;                        '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  xSaldoAtualIlse := (xEntradasIlse - xSaidaIlse) + xSaldoAntIls' +
        'e;  '
      
        '  xSaldoAtualZnt := (xEntradasZnt - xSaidaZnt) + xSaldoAntZnt;  ' +
        '            '
      '    '
      
        '  mmTotalRecebido.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xRe' +
        'cebido);'
      
        '  mmSaldoIlse.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xSaldoA' +
        'tualIlse);                         '
      
        '  mmSaldoZnt.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xSaldoAt' +
        'ualZnt);'
      ''
      
        '  mmSaldoAcumulado.Text := '#39'Saldo Acumulado: R$ '#39'+FormatFloat('#39'#' +
        '#,###,##0.00'#39',xSaldoAtualIlse + xSaldoAtualZnt);'
      ''
      
        '  //Edmar - 26/01/2015 - Tratamento para informar os valores de ' +
        'confronto entre as contas'
      
        '  mmTotalIlse.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xSaldoA' +
        'tualIlse);            '
      
        '  mmTotalZanette.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xSal' +
        'doAtualZnt);'
      ''
      
        '  //calcula o total agrupado das contas                         ' +
        '                                                             '
      
        '  xTotalAgrupado := xSaldoAtualIlse + xSaldoAtualZnt;           ' +
        '                                                              '
      
        '  mmTotalAgrupado.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTo' +
        'talAgrupado);'
      ''
      
        '  //label de explica'#231#227'o do calculo realizado para chegar no tota' +
        'l individual                                                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                                       '
      
        '  mmTotalIndividualExp.Text := '#39'('#39'+FormatFloat('#39'##,###,##0.00'#39', ' +
        'xTotalAgrupado)+'#39' / 2)'#39';'
      
        '  xTotalIndividual := xTotalAgrupado / 2;                       ' +
        '                                                 '
      
        '  mmTotalInd.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTotalIn' +
        'dividual);'
      ''
      '  //monta o confronto final das contas'
      '  if xSaldoAtualIlse < xSaldoAtualZnt then'
      '  begin'
      '       xConfrontoIlse := 0;'
      
        '       xConfrontoZanette := xSaldoAtualZnt - xTotalIndividual;  ' +
        '                                                      '
      '  end'
      '  else begin'
      '       xConfrontoZanette := 0;'
      '       xConfrontoIlse := xSaldoAtualIlse - xTotalIndividual;  '
      '  end;            '
      ''
      
        '  mmConfrontoIlse.Text := '#39'Deve R$ '#39'+FormatFloat('#39'##,###,##0.00'#39 +
        ', xConfrontoIlse);'
      
        '  mmConfrontoZanette.Text := '#39'Deve R$ '#39'+FormatFloat('#39'##,###,##0.' +
        '00'#39', xConfrontoZanette);                            '
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if <dbSetInfo."COD_TMP"> <> 1 then'
      
        '       Memo16.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', <dbSetI' +
        'nfo."TOTAL">);        '
      'end;   '
      ''
      'procedure Header2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  xIlse := 0;'
      '  xZanette := 0;'
      '  xRecebido := 0;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 464
    Top = 216
    Datasets = <
      item
        DataSet = dbSetCabecalho
        DataSetName = 'dbSetCabecalho'
      end
      item
        DataSet = dbSetInfo
        DataSetName = 'dbSetInfo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 566.929500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetCabecalho."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Emiss'#195#163'o: [Date]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 574.488560000000000000
          Top = 22.677180000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hora: [Time]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 574.488560000000000000
          Top = 41.574830000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page#]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Balan'#195#167'o de Cr'#195#169'dito/D'#195#169'bito')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 41.574803149606300000
          Width = 566.929500000000000000
          Height = 37.795275590551200000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetCabecalho."TMP1"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.559060000000000000
          Top = 83.149660000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 24.566934020000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = dbSetInfo
        DataSetName = 'dbSetInfo'
        RowCount = 0
        object mmIndicador: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 124.724490000000000000
          Height = 17.007876460000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Indicador')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 219.212740000000000000
          Top = 1.133858270000000000
          Width = 102.047310000000000000
          Height = 17.007876460000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'R$ [dbSetInfo."ILSE"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.133858270000000000
          Width = 102.047310000000000000
          Height = 17.007876460000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'R$ [dbSetInfo."ZANETTE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 612.283860000000000000
          Top = 1.133858270000000000
          Width = 102.047310000000000000
          Height = 17.007876460000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 20.677180000000000000
          Width = 710.551640000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        Height = 154.960717800000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object mmTotalRecebido: TfrxMemoView
          Left = 612.283860000000000000
          Top = 26.677180000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'R$')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Saldo Atual')
          ParentFont = False
        end
        object mmSaldoIlse: TfrxMemoView
          Left = 219.212740000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Ilse')
          ParentFont = False
        end
        object mmSaldoZnt: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Zanette')
          ParentFont = False
        end
        object mmSaldoAcumulado: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 411.968770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Saldo Acumulado:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Confronto')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 139.653680000000000000
          Top = 71.811070000000000000
          Width = 162.519714330000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Ilse')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 311.055350000000000000
          Top = 71.811070000000000000
          Width = 162.519685040000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Zanette')
          ParentFont = False
        end
        object mmTotalIlse: TfrxMemoView
          Left = 139.653680000000000000
          Top = 100.267780000000000000
          Width = 162.519714330000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Ilse')
          ParentFont = False
        end
        object mmTotalZanette: TfrxMemoView
          Left = 311.055350000000000000
          Top = 100.267780000000000000
          Width = 162.519685040000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total Zanette')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 480.000310000000000000
          Top = 71.811070000000000000
          Width = 109.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Agrupado')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 604.724800000000000000
          Top = 71.811070000000000000
          Width = 109.606299210000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Individual')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 480.000310000000000000
          Top = 87.708720000000000000
          Width = 109.606299210000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '(Ilse + Zanette)')
          ParentFont = False
        end
        object mmTotalIndividualExp: TfrxMemoView
          Left = 604.724800000000000000
          Top = 86.929190000000000000
          Width = 109.606299210000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Agrupado / 2')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Confronto Final:')
          ParentFont = False
        end
        object mmTotalAgrupado: TfrxMemoView
          Left = 480.000310000000000000
          Top = 100.267780000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object mmTotalInd: TfrxMemoView
          Left = 604.724800000000000000
          Top = 100.267780000000000000
          Width = 109.606299210000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object mmConfrontoIlse: TfrxMemoView
          Left = 139.653680000000000000
          Top = 132.283550000000000000
          Width = 162.519714330000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object mmConfrontoZanette: TfrxMemoView
          Left = 311.118107800000000000
          Top = 132.283550000000000000
          Width = 162.519685040000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 18.897637800000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'Header2OnBeforePrint'
        object Memo8: TfrxMemoView
          Left = 219.212740000000000000
          Top = 1.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Ilse')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Zanette')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 612.283860000000000000
          Top = 1.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object dbSetCabecalho: TfrxDBDataset
    UserName = 'dbSetCabecalho'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 482
    Top = 248
  end
  object dbSetInfo: TfrxDBDataset
    UserName = 'dbSetInfo'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 511
    Top = 248
  end
  object dbProjParcelas: TfrxDBDataset
    UserName = 'dbProjParcelas'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 450
    Top = 248
  end
  object dbProjEstoque: TfrxDBDataset
    UserName = 'dbProjEstoque'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 418
    Top = 248
  end
end
