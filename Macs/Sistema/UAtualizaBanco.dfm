object FAtualizaBanco: TFAtualizaBanco
  Left = 843
  Top = 0
  BorderStyle = bsNone
  Caption = 'FAtualizaBanco'
  ClientHeight = 366
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object SpTitulo01: TShape
    Left = -86
    Top = 0
    Width = 607
    Height = 34
    Pen.Width = 3
  end
  object SpTitulo02: TShape
    Left = 0
    Top = 3
    Width = 518
    Height = 28
    Brush.Color = clBlack
    Pen.Color = clWhite
  end
  object LDescTitulo: TLabel
    Left = 8
    Top = 10
    Width = 227
    Height = 16
    Caption = 'Atualiza'#231#227'o do Banco de Dados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ShapeFundo: TShape
    Left = 4
    Top = 34
    Width = 522
    Height = 501
    Pen.Width = 3
  end
  object BtnFecha: TSpeedButton
    Left = 488
    Top = 8
    Width = 19
    Height = 19
    Cursor = crHandPoint
    Hint = 'Pressione para fechar esta tela'
    Flat = True
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000996733996733
      9967339967339967339967339967339967339967339967339967339967339967
      33996733996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
      9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733B99D94
      9967339967339967339967339967339967339967339967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673399
      6733996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967330000009967339967339967339967339967330000009967339967
      33B99D94996733000000996733B99D9499673399673399673300000099673399
      6733996733000000996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967330000009967330000009967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673300
      0000996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967330000009967330000009967339967339967339967
      33B99D94996733000000996733B99D9499673399673399673300000099673399
      6733996733000000996733996733996733B99D94996733000000996733B99D94
      9967339967330000009967339967339967339967339967330000009967339967
      33B99D94996733000000996733B99D9499673399673399673399673399673399
      6733996733996733996733996733996733B99D94996733000000996733B99D94
      9967339967339967339967339967339967339967339967339967339967339967
      33B99D94996733000000996733B99D94B99D94B99D94B99D94B99D94B99D94B9
      9D94B99D94B99D94B99D94B99D94B99D94B99D94996733000000996733996733
      9967339967339967339967339967339967339967339967339967339967339967
      33996733996733000000}
    ParentShowHint = False
    ShowHint = True
    OnClick = BtnFechaClick
  end
  object BtAtualizaTabela: TButton
    Left = 216
    Top = 491
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 21
    OnClick = BtAtualizaTabelaClick
  end
  object ProgressBar1: TProgressBar
    Left = 10
    Top = 464
    Width = 496
    Height = 23
    TabOrder = 22
  end
  object MPainel: TMemo
    Left = 13
    Top = 41
    Width = 497
    Height = 107
    Alignment = taCenter
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
  end
  object cbFireBird: TCheckBox
    Left = 168
    Top = 120
    Width = 225
    Height = 17
    Caption = 'Parar Servi'#231'o do FireBird'
    Color = clBtnHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Cb01: TCheckBox
    Left = 60
    Top = 48
    Width = 97
    Height = 17
    Caption = '01'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object CBIndiceITServOrd: TCheckBox
    Left = 186
    Top = 48
    Width = 179
    Height = 17
    Caption = #205'ndice de Itens de Servi'#231'os'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object CBCodBarra: TCheckBox
    Left = 382
    Top = 48
    Width = 130
    Height = 17
    Caption = 'C'#243'd. Barra Produto'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 24
    Visible = False
  end
  object CbAtualizaVwOrdem: TCheckBox
    Left = 182
    Top = 370
    Width = 81
    Height = 17
    Caption = 'VwOrdem'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
  end
  object CBVWSubServicos: TCheckBox
    Left = 12
    Top = 310
    Width = 108
    Height = 17
    Caption = 'VwSubServicos'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object CbFornecedor: TCheckBox
    Left = 372
    Top = 298
    Width = 101
    Height = 17
    Caption = 'VwFornecedor'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 14
  end
  object cbServico: TCheckBox
    Left = 12
    Top = 330
    Width = 81
    Height = 17
    Caption = 'VwServico'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object cbApgFchTec: TCheckBox
    Left = 380
    Top = 72
    Width = 107
    Height = 17
    Caption = 'Apg. Fch. Tec.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 25
    Visible = False
  end
  object cbVwPedv: TCheckBox
    Left = 182
    Top = 330
    Width = 81
    Height = 17
    Caption = 'VwPedV'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 10
  end
  object cbVwPedc: TCheckBox
    Left = 182
    Top = 310
    Width = 81
    Height = 17
    Caption = 'VwPedC'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 9
  end
  object cbVersaoDll: TCheckBox
    Left = 376
    Top = 91
    Width = 133
    Height = 17
    Caption = 'Atualizar NF-e 4.00'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = cbVersaoDllClick
  end
  object CbVwCliente: TCheckBox
    Left = 372
    Top = 318
    Width = 103
    Height = 17
    Caption = 'VWCliente'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 15
  end
  object cbChequeRec: TCheckBox
    Left = 372
    Top = 418
    Width = 111
    Height = 17
    Caption = 'VWChequeRec'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 20
  end
  object cbDescProduto: TCheckBox
    Left = 182
    Top = 390
    Width = 175
    Height = 17
    Caption = 'Alt. Desc. Subprod.'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 13
  end
  object cbParcP: TCheckBox
    Left = 372
    Top = 378
    Width = 103
    Height = 17
    Caption = 'VWParCP'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 18
  end
  object CBVWSimilar: TCheckBox
    Left = 12
    Top = 350
    Width = 81
    Height = 17
    Caption = 'VWSimilar'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object cbVwLanCaixa: TCheckBox
    Left = 372
    Top = 358
    Width = 99
    Height = 17
    Caption = 'VWLancaixa'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 17
  end
  object cbVwMovBanco: TCheckBox
    Left = 372
    Top = 338
    Width = 99
    Height = 17
    Caption = 'VWMovBanco'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 16
  end
  object CBVWLANCENT: TCheckBox
    Left = 12
    Top = 390
    Width = 103
    Height = 17
    Caption = 'VWLancEnt'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
  end
  object CBVWLANCSAI: TCheckBox
    Left = 12
    Top = 370
    Width = 103
    Height = 17
    Caption = 'VWLancSai'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object CBOrcamento: TCheckBox
    Left = 182
    Top = 350
    Width = 101
    Height = 17
    Caption = 'VwOr'#231'amento'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 11
  end
  object cbParcR: TCheckBox
    Left = 372
    Top = 398
    Width = 103
    Height = 17
    Caption = 'VWParCR'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 19
  end
  object BtnAtualizaCustoEstoque: TButton
    Left = 640
    Top = 304
    Width = 137
    Height = 25
    Caption = 'Atualizar custo do estoque'
    TabOrder = 26
    Visible = False
    OnClick = BtnAtualizaCustoEstoqueClick
  end
  object btnNormalizaParcr: TButton
    Left = 640
    Top = 280
    Width = 121
    Height = 25
    Caption = 'Normaliza cta. receber'
    TabOrder = 27
    OnClick = btnNormalizaParcrClick
  end
  object cbVWCtaCor: TCheckBox
    Left = 372
    Top = 438
    Width = 111
    Height = 17
    Caption = 'VWCtaCor'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 28
  end
  object cbMelhoriasEstoque2023: TCheckBox
    Left = 168
    Top = 148
    Width = 225
    Height = 17
    Caption = 'Melhorias de Estoque 2023'
    Color = clBtnHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 29
    Visible = False
  end
  object BitBtn14: TBitBtn
    Left = 440
    Top = 116
    Width = 75
    Height = 25
    Caption = 'BitBtn14'
    TabOrder = 30
    Visible = False
  end
  object conectaFtp: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    TransferType = ftBinary
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 416
    Top = 120
  end
end
