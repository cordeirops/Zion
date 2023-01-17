inherited FDevolucao: TFDevolucao
  Left = 322
  Top = 158
  Caption = 'FDevolucao'
  ClientHeight = 446
  ClientWidth = 691
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbcodigobusca: TLabel [0]
    Left = 74
    Top = 12
    Width = 56
    Height = 16
    Caption = 'C'#243'digo:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbdescricaobusca: TLabel [1]
    Left = 183
    Top = 12
    Width = 80
    Height = 16
    Caption = 'Descri'#231#227'o:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object qt: TLabel [2]
    Left = 72
    Top = 177
    Width = 48
    Height = 16
    Caption = 'Quant.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl: TLabel [3]
    Left = 145
    Top = 177
    Width = 80
    Height = 16
    Caption = 'Vlr. Unit.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl1: TLabel [4]
    Left = 252
    Top = 177
    Width = 80
    Height = 16
    Caption = 'Vlr. Total'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl2: TLabel [5]
    Left = 355
    Top = 177
    Width = 88
    Height = 16
    Caption = 'Aliq. Icms:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl3: TLabel [6]
    Left = 464
    Top = 177
    Width = 72
    Height = 16
    Caption = 'Base Icms'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl4: TLabel [7]
    Left = 572
    Top = 177
    Width = 72
    Height = 16
    Caption = 'Vlr. Icms'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl8: TLabel [8]
    Left = 387
    Top = 226
    Width = 64
    Height = 16
    Caption = 'Vlr. IPI'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl7: TLabel [9]
    Left = 285
    Top = 226
    Width = 80
    Height = 16
    Caption = 'Aliq. IPI:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl6: TLabel [10]
    Left = 177
    Top = 226
    Width = 88
    Height = 16
    Caption = 'Vlr. Subst.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object vl5: TLabel [11]
    Left = 68
    Top = 226
    Width = 88
    Height = 16
    Caption = 'Base Subst.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbCst: TLabel [12]
    Left = 632
    Top = 88
    Width = 42
    Height = 13
    Caption = 'lbCodCst'
    Visible = False
  end
  object Label1: TLabel [13]
    Left = 465
    Top = 226
    Width = 32
    Height = 16
    Caption = 'CST:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbDescCst: TLabel [14]
    Left = 465
    Top = 270
    Width = 210
    Height = 14
    AutoSize = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  inherited PComunica: TPanel
    Left = 706
    Top = 16
  end
  object EdCodigoDevol: TEdit
    Left = 73
    Top = 27
    Width = 90
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = EdCodigoDevolKeyDown
  end
  object EdDescDevol: TEdit
    Left = 182
    Top = 27
    Width = 441
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = EdDescDevolKeyDown
  end
  object DGItensDevolucao: TDBGrid
    Left = 11
    Top = 57
    Width = 666
    Height = 116
    Color = 15794175
    Ctl3D = False
    DataSource = DMESTOQUE.DSSlave
    FixedColor = 11039232
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DGItensDevolucaoCellClick
    OnDrawColumnCell = DGItensDevolucaoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO1'
        Title.Caption = 'C'#243'd.'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Qtde.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALUNIT'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPRO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Desc. (%)'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST'
        Title.Alignment = taCenter
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQICMS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Icms'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRICMS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Icms'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALIQIPI'
        Title.Alignment = taRightJustify
        Title.Caption = 'IPI'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIPI'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. IPI'
        Width = 60
        Visible = True
      end>
  end
  object EdDevQuant: TFloatEdit
    Left = 67
    Top = 196
    Width = 51
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevVlrUnit: TFloatEdit
    Left = 139
    Top = 196
    Width = 84
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevVlrTot: TFloatEdit
    Left = 243
    Top = 196
    Width = 89
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevAliqIIcms: TFloatEdit
    Left = 351
    Top = 196
    Width = 88
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevBaseIcms: TFloatEdit
    Left = 460
    Top = 196
    Width = 78
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevVlrIcms: TFloatEdit
    Left = 557
    Top = 196
    Width = 89
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevIpi: TFloatEdit
    Left = 378
    Top = 245
    Width = 73
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevAliqIpi: TFloatEdit
    Left = 276
    Top = 245
    Width = 90
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevVlrSubst: TFloatEdit
    Left = 168
    Top = 245
    Width = 96
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object EdDevBaseSubst: TFloatEdit
    Left = 62
    Top = 245
    Width = 94
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '0,00'
    OnExit = EdDevQuantExit
    ValueFormat = '##,##0.00'
    ValueInteger = 0
  end
  object btnAdicionarDevolvido: TBitBtn
    Left = 514
    Top = 247
    Width = 20
    Height = 20
    TabOrder = 14
    OnClick = btnAdicionarDevolvidoClick
    Glyph.Data = {
      DE000000424DDE0000000000000076000000280000000D0000000D0000000100
      0400000000006800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7000777777777777700077777707777770007777706077777000777706660777
      7000777066666077700077066666660770007000066600007000777706660777
      7000777706660777700077770666077770007777000007777000777777777777
      7000}
  end
  object btnRemoverDevolvido: TBitBtn
    Left = 536
    Top = 247
    Width = 20
    Height = 20
    TabOrder = 15
    OnClick = btnRemoverDevolvidoClick
    Glyph.Data = {
      DE000000424DDE0000000000000076000000280000000D0000000D0000000100
      0400000000006800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7000777777777777700077770000077770007777066607777000777706660777
      7000777706660777700070000666000070007706666666077000777066666077
      7000777706660777700077777060777770007777770777777000777777777777
      7000}
  end
  object DGDevolvidos: TDBGrid
    Left = 11
    Top = 286
    Width = 666
    Height = 124
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
    ReadOnly = True
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO1'
        Title.Caption = 'C'#243'd.'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDEPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Qtde.'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALUNIT'
        Title.Alignment = taRightJustify
        Title.Caption = 'Valor'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRICMS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Icms'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRIPI'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. IPI'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRSUBSTITUICAO'
        Title.Caption = 'Vlr. ST.'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CST'
        Visible = True
      end>
  end
  object btnDevolverItens: TBitBtn
    Left = 521
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Devolver'
    TabOrder = 18
    OnClick = btnDevolverItensClick
  end
  object btnCancelarDevolucao: TBitBtn
    Left = 603
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 17
    OnClick = btnCancelarDevolucaoClick
  end
  object btnDevolucaoCompleta: TBitBtn
    Left = 560
    Top = 247
    Width = 104
    Height = 20
    Caption = 'Devolu'#231#227'o Total'
    TabOrder = 19
    OnClick = btnDevolucaoCompletaClick
    Glyph.Data = {
      DE000000424DDE0000000000000076000000280000000D0000000D0000000100
      0400000000006800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7000777777777777700077777707777770007777706077777000777706660777
      7000777066666077700077066666660770007000066600007000777706660777
      7000777706660777700077770666077770007777000007777000777777777777
      7000}
  end
  object edCst: TEdit
    Left = 464
    Top = 245
    Width = 41
    Height = 24
    Hint = 'F2 para tela de pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnKeyDown = edCstKeyDown
  end
end
