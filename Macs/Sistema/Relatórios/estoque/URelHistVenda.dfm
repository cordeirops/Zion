inherited FRelHistVenda: TFRelHistVenda
  Left = 371
  Top = 134
  Caption = 'Hist'#243'rico de Movimenta'#231#245'es'
  ClientHeight = 209
  ClientWidth = 442
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Dt_inicial: TLabel [0]
    Left = 85
    Top = 5
    Width = 74
    Height = 16
    Caption = 'Data Inicial'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 245
    Top = 5
    Width = 66
    Height = 16
    Caption = 'Data Final'
    Color = clWindow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 21
    Top = 59
    Width = 156
    Height = 16
    Caption = 'Selecione a Obra/Grade'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 98
    Top = 360
    TabOrder = 5
  end
  inherited GroupBox1: TGroupBox
    Left = 9
    Top = 161
    Width = 424
    TabOrder = 4
    inherited GroupBox2: TGroupBox
      inherited BtnImprimir: TBitBtn
        OnClick = BtnImprimirClick
      end
    end
    inherited GroupBox3: TGroupBox
      Left = 174
      inherited BtnVisualizar: TBitBtn
        OnClick = BtnVisualizarClick
      end
    end
    inherited GroupBox4: TGroupBox
      Left = 323
    end
  end
  object DBGrade: TDBLookupComboBox [5]
    Left = 21
    Top = 77
    Width = 408
    Height = 21
    KeyField = 'COD_PRODUTO'
    ListField = 'DESCRICAO'
    ListFieldIndex = 1
    ListSource = DMESTOQUE.DSProduto
    TabOrder = 2
  end
  object edDtInicio: TMaskEdit [6]
    Left = 77
    Top = 23
    Width = 90
    Height = 24
    EditMask = '00/00/0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    Text = '  /  /    '
  end
  object edDtFinal: TMaskEdit [7]
    Left = 236
    Top = 23
    Width = 90
    Height = 24
    EditMask = '00/00/0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
  end
  object GroupBox5: TGroupBox [8]
    Left = 78
    Top = 109
    Width = 273
    Height = 47
    Caption = 'Grade/Obra Inativado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 32
      Top = 29
      Width = 76
      Height = 13
      Caption = 'grades/obras'
    end
    object Label4: TLabel
      Left = 167
      Top = 29
      Width = 85
      Height = 13
      Caption = '/obras inativas'
    end
    object RbTodas: TRadioButton
      Left = 9
      Top = 18
      Width = 113
      Height = 12
      Caption = 'Trazer todas as'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RbExcluir: TRadioButton
      Left = 144
      Top = 18
      Width = 117
      Height = 12
      Caption = 'Excluir as grades'
      TabOrder = 1
    end
  end
  inherited FSRel: TfrReport
    Left = 32
    Top = 0
    ReportForm = {18000000}
  end
  inherited FSDSRel: TfrDBDataSet
    Left = 0
    Top = 0
  end
  object DBRelHistVenda: TfrxDBDataset
    UserName = 'DBRelHistVenda'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 332
  end
  object FRHistVenda: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42087.415512199100000000
    ReportOptions.LastChange = 42153.709796932870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'xTotalRecebido : Real;'
      'xTotalReceber : Real;'
      'xTotalAVender : Real;    '
      'xTotalReceberPeriodo : Real;'
      'xTotalRecebidoGeral : Real;'
      'xTotalReceberGeral : Real;'
      'xTotalAVenderGeral: Real;                   '
      'xTotalReceberPeriodoGeral : Real;'
      'xEstoqueDisponivel: Integer;'
      'xEstoqueDisponivelGeral: Integer;    '
      'xEstoqueVendido: Integer;'
      'xEstoqueVendidoGeral: Integer;'
      'XTotalDevafasagem: Real;'
      'XQtdeItens: Integer;'
      'XMaiorDefasagem: Real;'
      'XMenorDefasagem: Real;'
      'XMaiorDefasagemGeral: Real;'
      'XMenorDefasagemGeral: Real;      '
      '  '
      'procedure a_receberOnBeforePrint(Sender: TfrxComponent);      '
      'begin  '
      'end;'
      '  '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   //Edmar - 29/05/2015 - Se n'#227'o tiver venda e o produto tiver a' +
        'lgum estoque                                                    ' +
        '                                                                ' +
        '                                                                ' +
        '    '
      
        '   if (<DBRelHistVenda."CLIENTE"> = '#39#39') AND (<DBRelHistVenda."ES' +
        'TOQUE"> > 0) then'
      '   begin'
      
        '       //soma ao totalizador o valor cadastrado e escreve no cam' +
        'po                                                              ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      
        '       xTotalAVender := xTotalAVender + <DBRelHistVenda."VALOR_C' +
        'ADASTRADO">;'
      
        '       a_vender.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', <DBRe' +
        'lHistVenda."VALOR_CADASTRADO">);'
      '   end'
      '   else begin'
      '       a_vender.Text := '#39'R$ 0,00 '#39';  '
      '   end;             '
      
        '   xTotalRecebido := xTotalRecebido + <DBRelHistVenda."VALOR_REC' +
        'EBIDO">;       '
      
        '   xTotalReceber := xTotalReceber + <DBRelHistVenda."VALOR_RECEB' +
        'ER">;           '
      
        '   xTotalReceberPeriodo := xTotalReceberPeriodo + <DBRelHistVend' +
        'a."VALOR_RECEBER_PERIODO">;'
      
        '   XTotalDevafasagem := XTotalDevafasagem + <DBRelHistVenda."DEF' +
        'ASAGEM">;                        '
      '   //                  '
      
        '   xEstoqueDisponivel := xEstoqueDisponivel + <DBRelHistVenda."E' +
        'STOQUE">;'
      
        '   xEstoqueVendido := xEstoqueVendido  +      <DBRelHistVenda."Q' +
        'TDE">;'
      '   XQtdeItens := XQtdeItens + 1;'
      ''
      
        '   //Edmar - 29/05/2015 - faz a verifica'#231#227'o de se a defasagem do' +
        ' produto atual '#233' maior ou menor que a geral'
      '   if <DBRelHistVenda."DEFASAGEM"> < XMenorDefasagem then'
      '   begin'
      
        '       XMenorDefasagem := <DBRelHistVenda."DEFASAGEM">;         ' +
        '            '
      '   end;'
      ''
      '   if <DBRelHistVenda."DEFASAGEM"> > XMaiorDefasagem then'
      '   begin               '
      
        '       XMaiorDefasagem := <DBRelHistVenda."DEFASAGEM">;         ' +
        '            '
      '   end;  '
      'end;'
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin         '
      '   xTotalRecebido := 0;'
      '   xTotalReceber := 0;'
      '   xTotalAVender := 0;                     '
      '   xTotalReceberPeriodo := 0;'
      '   xEstoqueDisponivel := 0;    '
      '   xEstoqueVendido := 0;'
      '   XQtdeItens := 0;'
      '   XTotalDevafasagem := 0;'
      '   XMaiorDefasagem := 0;'
      '   XMenorDefasagem := 0;       '
      'end;'
      '  '
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  totalRecebido.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTota' +
        'lRecebido);'
      
        '  totalReceber.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTotal' +
        'Receber);'
      
        '  totalReceberPeriodo.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39',' +
        ' xTotalReceberPeriodo);'
      
        '  totalAVender.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', xTotal' +
        'AVender);                            '
      
        '  estoqueDisp.Text := FormatFloat('#39'0.0'#39', xEstoqueDisponivel);   ' +
        '                     '
      '  estoqueVend.Text := FormatFloat('#39'0.0'#39', xEstoqueVendido);'
      
        '  mediadefasagem.Text := FormatFloat('#39'0.0'#39', (XTotalDevafasagem /' +
        ' XQtdeItens))+'#39'%'#39';'
      
        '  menordefasagem.Text := FormatFloat('#39'0.0'#39', XMenorDefasagem)+'#39'%'#39 +
        ';              '
      
        '  maiordefasagem.Text := FormatFloat('#39'0.0'#39', XMaiorDefasagem)+'#39'%'#39 +
        ';          '
      '  '
      '  xTotalRecebidoGeral := xTotalRecebidoGeral + xTotalRecebido;  '
      '  xTotalReceberGeral := xTotalReceberGeral + xTotalReceber;'
      
        '  xTotalAVenderGeral := xTotalAVenderGeral + xTotalAVender;     ' +
        '                                                                ' +
        '    '
      
        '  xTotalReceberPeriodoGeral := xTotalReceberPeriodoGeral + xTota' +
        'lReceberPeriodo;'
      
        '  xEstoqueDisponivelGeral := xEstoqueDisponivelGeral + xEstoqueD' +
        'isponivel;'
      
        '  xEstoqueVendidoGeral := xEstoqueVendidoGeral + xEstoqueVendido' +
        ';'
      ''
      
        '  //Edmar - 29/05/2015 - faz a verifica'#231#227'o de se a defasagem da ' +
        'obra atual '#233' maior ou menor que a geral'
      '  if XMenorDefasagem < XMenorDefasagemGeral then'
      '  begin'
      
        '       XMenorDefasagemGeral := XMenorDefasagem;                 ' +
        '    '
      '  end;'
      ''
      '  if XMaiorDefasagem > XMaiorDefasagemGeral then'
      '  begin               '
      
        '      XMaiorDefasagemGeral := XMaiorDefasagem;                  ' +
        '   '
      '  end;      '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  totalRecebidoGeral.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', ' +
        'xTotalRecebidoGeral);'
      
        '  totalReceberGeral.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', x' +
        'TotalReceberGeral);'
      
        '  totalReceberPeriodoGeral.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0' +
        '.00'#39', xTotalReceberPeriodoGeral);'
      
        '  totalAVenderGeral.Text := '#39'R$ '#39'+FormatFloat('#39'##,###,##0.00'#39', x' +
        'TotalAVenderGeral);      '
      
        '  estoqueDispGeral.Text := FormatFloat('#39'0.0'#39', xEstoqueDisponivel' +
        'Geral);                        '
      
        '  estoqueVendGeral.Text := FormatFloat('#39'0.0'#39', xEstoqueVendidoGer' +
        'al);'
      
        '  menordefasagemgeral.Text := FormatFloat('#39'0.0'#39', XMenorDefasagem' +
        'Geral)+'#39'%'#39';              '
      
        '  maiordefasagemgeral.Text := FormatFloat('#39'0.0'#39', XMaiorDefasagem' +
        'Geral)+'#39'%'#39';      '
      'end;'
      ''
      'begin          '
      '                     '
      'end.')
    Left = 380
    Top = 32
    Datasets = <
      item
        DataSet = DBCabecalho
        DataSetName = 'DBCabecalho'
      end
      item
        DataSet = DBLoja
        DataSetName = 'DBLoja'
      end
      item
        DataSet = DBRelHistVenda
        DataSetName = 'DBRelHistVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 170.078850000000000000
        Top = 260.787570000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = DBRelHistVenda
        DataSetName = 'DBRelHistVenda'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 18.756030000000000000
          Top = 23.944884330000000000
          Width = 332.598640000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."CLIENTE"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 428.976377950000000000
          Top = 46.031498500000000000
          Width = 166.299212600000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor de Venda:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 597.236550000000000000
          Top = 46.031498500000000000
          Width = 139.842610000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."VALOR_VENDA"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 355.173470000000000000
          Top = 23.574830000000000000
          Width = 83.149660000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data Venda:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 515.913730000000000000
          Top = 23.236240000000000000
          Width = 90.708720000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Forma Pagto:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 428.976377950000000000
          Top = 105.708678500000000000
          Width = 166.299212600000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Recebido:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 428.976377950000000000
          Top = 124.606328500000000000
          Width = 166.299212600000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Receber:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 440.811380000000000000
          Top = 23.574830000000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."DATA_VENDA"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 608.283860000000000000
          Top = 23.236240000000000000
          Width = 128.504020000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."FORMPAG"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 20.220470000000000000
          Top = 164.740260000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object recebido: TfrxMemoView
          Left = 597.016080000000000000
          Top = 105.708678500000000000
          Width = 139.842539210000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."VALOR_RECEBIDO"]')
          ParentFont = False
        end
        object a_receber: TfrxMemoView
          Left = 597.165354330000000000
          Top = 124.606328500000000000
          Width = 139.842539210000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."VALOR_RECEBER"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 355.630180000000000000
          Top = 0.779530000000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 418.882190000000000000
          Top = 0.779530000000000000
          Width = 64.252010000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Memo.UTF8 = (
            '[DBRelHistVenda."ESTOQUE"]')
        end
        object Memo8: TfrxMemoView
          Left = 18.897650000000000000
          Top = 0.559060000000000000
          Width = 332.598640000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Memo.UTF8 = (
            '[DBRelHistVenda."CTRL_INT"] - [DBRelHistVenda."PRODUTO"]')
        end
        object Memo13: TfrxMemoView
          Left = 490.693260000000000000
          Top = 1.000000000000000000
          Width = 119.055118110000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Valor Cadastrado:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 612.638220000000000000
          Top = 1.000000000000000000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            
              '[IIF(<DBRelHistVenda."CLIENTE"> = '#39#39', <DBRelHistVenda."VALOR_CAD' +
              'ASTRADO">, <DBRelHistVenda."VLRVENDBD">)]')
        end
        object Memo25: TfrxMemoView
          Left = 428.866141730000000000
          Top = 144.385900000000000000
          Width = 166.299244330000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Receber no Per'#195#173'odo:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 597.165354330000000000
          Top = 144.385900000000000000
          Width = 139.842539210000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."VALOR_RECEBER_PERIODO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 428.976377950000000000
          Top = 85.252010000000000000
          Width = 166.299212600000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'A Vender:')
          ParentFont = False
        end
        object a_vender: TfrxMemoView
          Left = 597.165354330000000000
          Top = 85.252010000000000000
          Width = 139.842610000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 379.732530000000000000
          Top = 65.252010000000000000
          Width = 215.433134330000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Percentual de Defasagem da Venda:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 597.165740000000000000
          Top = 65.252010000000000000
          Width = 139.842539210000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBRelHistVenda."DEFASAGEM"]%')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'DBRelHistVenda."COD_GRADE"'
        KeepTogether = True
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Width = 81.259842519685000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Obra/Grade:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 87.929190000000000000
          Width = 646.299630000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Memo.UTF8 = (
            '[DBRelHistVenda."GRADE"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 109.606370000000000000
        Top = 453.543600000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object Shape2: TfrxShapeView
          Left = 2.000000000000000000
          Width = 735.118110240000000000
          Height = 105.826840000000000000
          ShowHint = False
        end
        object Memo31: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.220470000000000000
          Width = 94.488250000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Totalizadores:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 438.425196850000000000
          Top = 66.574830000000000000
          Width = 151.181102360000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Receber:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 438.425196850000000000
          Top = 47.000000000000000000
          Width = 151.181102360000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Recebido:')
          ParentFont = False
        end
        object totalRecebido: TfrxMemoView
          Left = 591.606680000000000000
          Top = 47.118105350000000000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalRecebido]')
          ParentFont = False
        end
        object totalReceber: TfrxMemoView
          Left = 591.606680000000000000
          Top = 66.574830000000000000
          Width = 143.622140000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalReceber]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 820.158010000000000000
          Top = 49.133890000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'P'#195#161'gina:')
        end
        object Memo33: TfrxMemoView
          Left = 876.850960000000000000
          Top = 49.133890000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[page]')
        end
        object Memo37: TfrxMemoView
          Left = 438.425480000000000000
          Top = 86.472480000000000000
          Width = 151.181200000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Receber Per'#195#173'odo:')
          ParentFont = False
        end
        object totalReceberPeriodo: TfrxMemoView
          Left = 591.606680000000000000
          Top = 86.590585350000000000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalReceberPeriodo]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 4.779530000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Estoque Dispon'#195#173'vel:')
          ParentFont = False
        end
        object estoqueDisp: TfrxMemoView
          Left = 139.063080000000000000
          Top = 22.795285350000000000
          Width = 117.165337240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xEstoqueDisponivel]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 4.779530000000000000
          Top = 45.354360000000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Estoque Vendido:')
          ParentFont = False
        end
        object estoqueVend: TfrxMemoView
          Left = 139.063080000000000000
          Top = 45.354360000000000000
          Width = 117.165337240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xEstoqueVendido]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 438.425480000000000000
          Top = 8.338590000000000000
          Width = 151.181102360000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Vender:')
          ParentFont = False
        end
        object totalAVender: TfrxMemoView
          Left = 591.606963150000000000
          Top = 8.456695350000000000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalAVender]')
          ParentFont = False
        end
        object mediadefasagem1: TfrxMemoView
          Left = 438.425480000000000000
          Top = 27.677180000000000000
          Width = 151.181200000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'M'#195#169'dia de Defasagem:')
          ParentFont = False
        end
        object mediadefasagem: TfrxMemoView
          Left = 591.606680000000000000
          Top = 27.795285350000000000
          Width = 143.622047240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 4.913385830000000000
          Top = 67.031540000000000000
          Width = 132.283464570000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Menor Defasagem:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 4.913385830000000000
          Top = 85.929190000000000000
          Width = 132.283464570000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Maior Defasagem:')
          ParentFont = False
        end
        object menordefasagem: TfrxMemoView
          Left = 139.842610000000000000
          Top = 66.897637800000000000
          Width = 94.488188980000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
        object maiordefasagem: TfrxMemoView
          Left = 139.063080000000000000
          Top = 85.795275590000000000
          Width = 94.488188980000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Shape1: TfrxShapeView
          Left = 2.000000000000000000
          Width = 735.118110240000000000
          Height = 132.283550000000000000
          ShowHint = False
        end
        object Memo1: TfrxMemoView
          Left = 185.196970000000000000
          Top = 52.913420000000000000
          Width = 340.157700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Relatorio de Hist'#195#179'rico de Vendas')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 725.669760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DBCabecalho."fantasia"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 561.709030000000000000
          Top = 37.236240000000000000
          Width = 98.267780000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Data Emiss'#195#163'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 622.181510000000000000
          Top = 55.472480000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hora:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 662.756340000000000000
          Top = 37.236240000000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[date]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 662.756340000000000000
          Top = 55.472480000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[time]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 113.385900000000000000
          Width = 725.669760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBLoja."TMP1"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 604.283860000000000000
          Top = 76.149660000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 662.756340000000000000
          Top = 76.149660000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[page]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 109.606370000000000000
        Top = 585.827150000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo5: TfrxMemoView
          Left = 2.779530000000000000
          Top = 9.779530000000000000
          Width = 139.842610000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Totalizadores Gerais:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 396.850393700000000000
          Top = 70.370130000000000000
          Width = 188.976377950000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Receber Geral:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 396.850393700000000000
          Top = 50.795300000000000000
          Width = 188.976377950000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Recebido Geral:')
          ParentFont = False
        end
        object totalRecebidoGeral: TfrxMemoView
          Left = 588.606680000000000000
          Top = 51.913405350000000000
          Width = 147.401577240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalRecebidoGeral]')
          ParentFont = False
        end
        object totalReceberGeral: TfrxMemoView
          Left = 588.606680000000000000
          Top = 70.370130000000000000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalReceberGeral]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 396.850650000000000000
          Top = 90.267780000000000000
          Width = 188.976500000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total Receber Per'#195#173'odo Geral:')
          ParentFont = False
        end
        object totalReceberPeriodoGeral: TfrxMemoView
          Left = 588.606680000000000000
          Top = 90.385885350000000000
          Width = 147.401577240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalReceberPeriodoGeral]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.779530000000000000
          Top = 5.779530000000000000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 132.283445040000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Estoque Dispon'#195#173'vel:')
          ParentFont = False
        end
        object estoqueDispGeral: TfrxMemoView
          Left = 138.566929130000000000
          Top = 30.354345350000000000
          Width = 117.165337240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xEstoqueDisponivelGeral]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 49.889763779527560000
          Width = 132.283445040000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Estoque Vendido:')
          ParentFont = False
        end
        object estoqueVendGeral: TfrxMemoView
          Left = 138.566929130000000000
          Top = 49.913420000000000000
          Width = 117.165337240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xEstoqueVendidoGeral]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 396.850650000000000000
          Top = 30.677180000000000000
          Width = 188.976377950000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total a Vender Geral:')
          ParentFont = False
        end
        object totalAVenderGeral: TfrxMemoView
          Left = 588.606936300000000000
          Top = 30.795285350000000000
          Width = 147.401577240000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[xTotalAVenderGeral]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Top = 69.944972200000000000
          Width = 132.283464570000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Menor Defasagem:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 88.842622200000000000
          Width = 132.283445040000000000
          Height = 17.007874020000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Maior Defasagem:')
          ParentFont = False
        end
        object menordefasagemgeral: TfrxMemoView
          Left = 138.566929130000000000
          Top = 69.811070000000000000
          Width = 94.488188980000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object maiordefasagemgeral: TfrxMemoView
          Left = 138.385934170000000000
          Top = 88.708707790000000000
          Width = 94.488188980000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object DBCabecalho: TfrxDBDataset
    UserName = 'DBCabecalho'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 396
  end
  object DBLoja: TfrxDBDataset
    UserName = 'DBLoja'
    CloseDataSource = False
    DataSet = DMMACS.TLoja
    BCDToCurrency = False
    Left = 340
    Top = 32
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 364
  end
end
