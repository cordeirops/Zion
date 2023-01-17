inherited FPadraoFiscal: TFPadraoFiscal
  Left = 352
  Top = 125
  Caption = 'result'
  ClientHeight = 568
  ClientWidth = 911
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  OnCreate = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 234
  end
  object PComplementar: TPanel
    Left = 176
    Top = 168
    Width = 569
    Height = 145
    BevelWidth = 3
    Color = clWhite
    TabOrder = 2
    object Shape41: TShape
      Left = 8
      Top = 8
      Width = 553
      Height = 129
      Brush.Color = clInactiveCaptionText
    end
    object Label33: TLabel
      Left = 96
      Top = 16
      Width = 389
      Height = 20
      Caption = 'Informe os dados da NFe a ser Complementada:'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label35: TLabel
      Left = 16
      Top = 56
      Width = 51
      Height = 16
      Caption = 'N'#186' NFe'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label36: TLabel
      Left = 88
      Top = 56
      Width = 49
      Height = 16
      Caption = 'Cliente'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label37: TLabel
      Left = 456
      Top = 56
      Width = 71
      Height = 16
      Caption = 'Valor NFe'
      Color = clInactiveCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object EdNumNFe: TEdit
      Left = 16
      Top = 72
      Width = 65
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = EdNumNFeExit
    end
    object EdClienteNfe: TEdit
      Left = 88
      Top = 72
      Width = 361
      Height = 22
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object EdValorNfe: TColorEditFloat
      Left = 454
      Top = 72
      Width = 91
      Height = 22
      Color = 15329769
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      ValueFormat = '#,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BtnLoteOk: TBitBtn
      Left = 216
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 3
      OnClick = BtnLoteOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnCancelaLote: TBitBtn
      Left = 296
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BtnCancelaLoteClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 1
    Top = 4
    Width = 904
    Height = 558
    BevelOuter = bvNone
    Caption = 't'
    Color = 16772332
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnExit = Panel1Exit
    object Shape35: TShape
      Left = 208
      Top = 47
      Width = 369
      Height = 24
    end
    object Shape1: TShape
      Left = 8
      Top = 78
      Width = 545
      Height = 43
    end
    object LNomePessoa: TLabel
      Left = 13
      Top = 78
      Width = 540
      Height = 43
      AutoSize = False
      Caption = 'CLIENTE/FORNECEDOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 745
      Top = 5
      Width = 28
      Height = 27
      Caption = 'N'#186
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 8
      Top = 139
      Width = 142
      Height = 18
    end
    object LCpfCnpj: TLabel
      Left = 10
      Top = 139
      Width = 138
      Height = 16
      AutoSize = False
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape3: TShape
      Left = 258
      Top = 139
      Width = 211
      Height = 18
    end
    object LMunicipio: TLabel
      Left = 287
      Top = 139
      Width = 179
      Height = 16
      AutoSize = False
      Caption = 'MUNICIPIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object LUF: TLabel
      Left = 261
      Top = 139
      Width = 21
      Height = 16
      AutoSize = False
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape4: TShape
      Left = 149
      Top = 139
      Width = 110
      Height = 18
    end
    object LInscEstadual: TLabel
      Left = 150
      Top = 139
      Width = 107
      Height = 18
      AutoSize = False
      Caption = 'I. E. Inv'#225'lido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape5: TShape
      Left = 745
      Top = 83
      Width = 152
      Height = 37
    end
    object Label2: TLabel
      Left = 747
      Top = 82
      Width = 149
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Data de Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape6: TShape
      Left = 745
      Top = 119
      Width = 152
      Height = 37
    end
    object Label3: TLabel
      Left = 746
      Top = 118
      Width = 149
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Data de Sa'#237'da/Entrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape7: TShape
      Left = 745
      Top = 155
      Width = 152
      Height = 37
    end
    object Label4: TLabel
      Left = 746
      Top = 154
      Width = 149
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hora de Sa'#237'da'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape8: TShape
      Left = 8
      Top = 47
      Width = 195
      Height = 24
    end
    object LCfop: TLabel
      Left = 10
      Top = 49
      Width = 191
      Height = 20
      AutoSize = False
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 33
      Width = 149
      Height = 14
      AutoSize = False
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 208
      Top = 33
      Width = 149
      Height = 14
      AutoSize = False
      Caption = 'Nat. Opera'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LNatOp: TLabel
      Left = 210
      Top = 49
      Width = 366
      Height = 20
      AutoSize = False
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape37: TShape
      Left = 8
      Top = 3
      Width = 553
      Height = 24
      Brush.Color = 16772332
      Pen.Color = clSkyBlue
      Pen.Width = 2
    end
    object LPeriodoFiscal: TLabel
      Left = 11
      Top = 8
      Width = 344
      Height = 16
      Caption = 'Per'#237'odo Fiscal: (01/07/1980) - (30/07/1980)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape39: TShape
      Left = 468
      Top = 139
      Width = 110
      Height = 18
    end
    object LCodIbge: TLabel
      Left = 470
      Top = 139
      Width = 106
      Height = 18
      AutoSize = False
      Caption = 'IBGE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape45: TShape
      Left = 745
      Top = 43
      Width = 152
      Height = 41
    end
    object Label44: TLabel
      Left = 746
      Top = 43
      Width = 150
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tipo do Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object PErro: TPanel
      Left = 8
      Top = 402
      Width = 729
      Height = 129
      BevelWidth = 2
      TabOrder = 13
      Visible = False
      object FashionPanel1: TFashionPanel
        Left = 4
        Top = 5
        Width = 723
        Height = 119
        BevelOuter = bvNone
        Caption = 'FashionPanel1'
        Color = 14933717
        TabOrder = 0
        RoundRect = True
        About = 'Orion Software'
        ShadowDepth = 2
        ShadowSpace = 5
        ShowShadow = False
        ShadowColor = clBlack
        TitleColor = 12615680
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Title = 'Erros ou Falhas de valida'#231#227'o'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object SpeedButton1: TSpeedButton
          Left = 697
          Top = 0
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
          OnClick = SpeedButton1Click
        end
        object MErros: TMemo
          Left = 3
          Top = 22
          Width = 718
          Height = 97
          BorderStyle = bsNone
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
    object PageControl1: TPageControl
      Left = 8
      Top = 198
      Width = 891
      Height = 196
      ActivePage = TabSheet10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object LBFatura: TTabSheet
        Caption = 'Produtos'
        object Shape38: TShape
          Left = 149
          Top = -465
          Width = 110
          Height = 18
        end
        object Label32: TLabel
          Left = 151
          Top = -464
          Width = 106
          Height = 18
          AutoSize = False
          Caption = 'I. E. Inv'#225'lido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DbGridProdutos: TDBGrid
          Left = 2
          Top = 1
          Width = 881
          Height = 128
          Color = clWhite
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlave
          FixedColor = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#211'DIGO'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Width = 335
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'COD_SIT_TRIB'
              Title.Alignment = taCenter
              Title.Caption = 'S.T.'
              Width = 29
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFOP'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Title.Caption = 'UNID.'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Alignment = taRightJustify
              Title.Caption = 'QUANT.'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNIT'
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR. UNIT'#193'RIO'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'VLR. TOTAL'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Title.Alignment = taRightJustify
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASEICMS'
              Title.Alignment = taRightJustify
              Title.Caption = 'B. Icms'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRICMS'
              Title.Alignment = taRightJustify
              Title.Caption = 'V. Icms'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORFRETE'
              Title.Caption = 'Frete'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORDESP'
              Title.Caption = 'Out. Desp.'
              Width = 73
              Visible = True
            end>
        end
        object LbFaturaNF: TMemo
          Left = 7
          Top = 134
          Width = 866
          Height = 30
          BorderStyle = bsNone
          Color = 16772332
          TabOrder = 1
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Servi'#231'os'
        ImageIndex = 1
        object Label38: TLabel
          Left = 2
          Top = 116
          Width = 70
          Height = 14
          Caption = 'Reter ISS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Shape42: TShape
          Left = 405
          Top = 121
          Width = 148
          Height = 36
        end
        object Label40: TLabel
          Left = 407
          Top = 122
          Width = 130
          Height = 14
          AutoSize = False
          Caption = 'CONFINS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape43: TShape
          Left = 567
          Top = 121
          Width = 148
          Height = 36
        end
        object Label39: TLabel
          Left = 569
          Top = 122
          Width = 130
          Height = 14
          AutoSize = False
          Caption = 'ISS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape44: TShape
          Left = 728
          Top = 121
          Width = 148
          Height = 36
        end
        object Label41: TLabel
          Left = 729
          Top = 122
          Width = 130
          Height = 14
          AutoSize = False
          Caption = 'PIS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lbErro: TLabel
          Left = 0
          Top = 155
          Width = 266
          Height = 14
          Caption = 'Os servi'#231'os em vermelho est'#227'o com erro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object DbGridServicos: TDBGrid
          Left = 2
          Top = 1
          Width = 881
          Height = 116
          Color = clWhite
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlaveServ
          FixedColor = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DbGridServicosDrawColumnCell
          OnDblClick = DbGridServicosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGODESPESA'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERVICO'
              Title.Caption = 'Servi'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFOP'
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'QTD'
              Title.Alignment = taRightJustify
              Width = 59
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UN'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Desconto'
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'ValorUnit'
              Title.Alignment = taRightJustify
              Width = 61
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Total'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAOSERVICO'
              Title.Caption = 'Texto Nota Fiscal de Servi'#231'os'
              Width = 150
              Visible = True
            end>
        end
        object cbRetIss: TComboBox
          Left = 2
          Top = 130
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Text = 'N'#195'O'
          OnExit = cbRetIssExit
        end
        object edConfins: TColorEditFloat
          Left = 406
          Top = 137
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '0,00'
          OnExit = EdVlrIcmsExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object edIss: TColorEditFloat
          Left = 569
          Top = 138
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          OnExit = EdVlrIcmsExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object edPis: TColorEditFloat
          Left = 730
          Top = 138
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = '0,00'
          OnExit = EdVlrIcmsExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object btnSetaPadrao: TButton
          Left = 227
          Top = 130
          Width = 174
          Height = 25
          Caption = 'Atribuir servi'#231'o padr'#227'o'
          TabOrder = 5
          OnClick = btnSetaPadraoClick
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Consumo'
        ImageIndex = 2
        object DBGridConsumo: TDBGrid
          Left = 2
          Top = 1
          Width = 881
          Height = 164
          Color = clWhite
          Ctl3D = False
          DataSource = DMESTOQUE.DRel
          FixedColor = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Courier New'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CONSUMO'
              Title.Caption = 'PRODUTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Visible = True
            end>
        end
      end
    end
    object EdNumeroFiscal: TColorEditFloat
      Left = 776
      Top = 3
      Width = 121
      Height = 28
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      Text = '0'
      OnExit = EdNumeroFiscalExit
      EditType = fltInteger
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BtnProcuraPessoa: TBitBtn
      Left = 554
      Top = 78
      Width = 24
      Height = 43
      Cursor = crHandPoint
      TabOrder = 12
      OnClick = BtnProcuraPessoaClick
      Glyph.Data = {
        B6000000424DB60000000000000036000000280000000A000000040000000100
        18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
        90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
        C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
    end
    object EdDtEmissao: TColorMaskEdit
      Left = 768
      Top = 99
      Width = 118
      Height = 16
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Text = '18/07/1980'
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdDtsaidaEntrada: TColorMaskEdit
      Left = 768
      Top = 135
      Width = 118
      Height = 16
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '!99/99/0000;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      Text = '18/07/1980'
      OnExit = EdDtsaidaEntradaExit
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdHoraSaida: TColorMaskEdit
      Left = 784
      Top = 171
      Width = 89
      Height = 16
      BorderStyle = bsNone
      Ctl3D = False
      EditMask = '90:00:00;1;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      Text = '12:00:00'
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object cbsaida: TCheckBox
      Left = 621
      Top = 23
      Width = 59
      Height = 17
      Caption = 'SA'#205'DA'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object cbentrada: TCheckBox
      Left = 621
      Top = 6
      Width = 81
      Height = 17
      Caption = 'ENTRADA'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object BitBtn2: TBitBtn
      Left = 599
      Top = 90
      Width = 126
      Height = 25
      Caption = 'F9 - Atualizar'
      TabOrder = 8
      OnClick = BitBtn2Click
      Glyph.Data = {
        C2010000424DC20100000000000036000000280000000B0000000B0000000100
        1800000000008C010000C40E0000C40E00000000000000000000F9ECE3F9ECE3
        F9ECE3FDF2EAFCF1E8F4E7DDF6E8DEFDF2EAFCF1E9F8ECE3F9ECE3000000F9ED
        E4FAEDE5FFF4EDE5D4C9B28F7A996C539A6E55B99884EEDED3FEF3ECF9EDE400
        0000F9EEE6FFF6EFDBC8BC8B5C407B4425895D438259406D3C2093664CE7D5C8
        FDF4EC000000FDF4ECF0E4DB8F654B875235CDB5A7F3E8DFF1E6DDBAA2936C3D
        22A17C65FAF0E7000000FFF7F0C8B3A57C482BC9AD9CFFFDF7FDF4ECFFF7F0FF
        FAF3C4AFA1C0A99AF9EEE6000000FFF7F0B29888865438E8D8CCFFF7F0FAF0E9
        F3E8E0F5EAE2FDF4EDFCF2EBF8EEE7000000FFF8F2BEA89B805034DCC5B6FFFC
        F7FFF7F2D8C8BE9C7B67AA826AAE826AD5BBAD000000FEF7F1E5D8D0825840A2
        775EEEDFD5FFFBF6FCF5F0B2917F8E5637945A3AC9AA98000000FAF3ECFFF9F4
        C4AFA37E5037986B51BE9B86BE9A85A272579664488D5C40C4A897000000FAF2
        ECFCF4EFFDF6F1CDBBB09875608D614892664CA7836EDBCAC0BEA89BBFA89900
        0000FAF3EEFAF3EEFBF5F0FFFBF7F6EFE9E4D8D0E5DAD2F8F1ECFFFBF7FBF4EF
        EEE5DE000000}
    end
    object BitBtn3: TBitBtn
      Left = 599
      Top = 58
      Width = 126
      Height = 25
      Caption = 'con'
      TabOrder = 7
      OnClick = BitBtn3Click
      Glyph.Data = {
        9E020000424D9E0200000000000036000000280000000E0000000E0000000100
        18000000000068020000C40E0000C40E00000000000000000000E3A593C06860
        B05850A05050A05050A050509048509048409048408040408038408038407038
        407038300000D06870F09090E08080B04820403020C0B8B0C0B8B0D0C0C0D0C8
        C0505050A04030A04030A038307038400000D07070FF98A0F08880E080807058
        50404030907870F0E0E0F0E8E0908070A04030A04040A040308038400000D078
        70FFA0A0F09090F08880705850000000404030F0D8D0F0E0D0807860B04840B0
        4840A040408040400000D07880FFA8B0FFA0A0F0909070585070585070585070
        5850706050806860C05850B05050B048408040400000E08080FFB0B0FFB0B0FF
        A0A0F09090F08880E08080E07880D07070D06870C06060C05850B05050904840
        0000E08890FFB8C0FFB8B0D06060C06050C05850C05040B05030B04830A04020
        A03810C06060C058509048400000E09090FFC0C0D06860FFFFFFFFFFFFFFF8F0
        F0F0F0F0E8E0F0D8D0E0D0C0E0C8C0A03810C060609048500000E098A0FFC0C0
        D07070FFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0A04020D068
        60A050500000F0A0A0FFC0C0E07870FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0
        F0F0E8E0F0D8D0B04830D07070A050500000F0A8A0FFC0C0E08080FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0B05030E07880A050500000F0B0
        B0FFC0C0F08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0C0
        5040603030B058500000F0B0B0FFC0C0FF9090FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF8F0C05850B05860B058600000F0B8B0F0B8B0F0B0B0F0
        B0B0F0A8B0F0A0A0E098A0E09090E09090E08890E08080D07880D07870D07070
        0000}
    end
    object BtnImprimir: TButton
      Left = 599
      Top = 119
      Width = 127
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 9
      OnClick = BtnImprimirClick
    end
    object BtnAlterarPeriodo: TBitBtn
      Left = 534
      Top = 6
      Width = 25
      Height = 19
      Hint = 'Clique aqui para trocar de per'#237'odo para lan'#231'ar a Nota Fiscal'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = BtnAlterarPeriodoClick
      Glyph.Data = {
        0A020000424D0A0200000000000036000000280000000B0000000D0000000100
        180000000000D401000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFF4F4F4CDAB6ED79E37CDAB6EF4F4F4FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFF4F4F4CDAB6ED79E37FFE2AFD79E37CDAB6EF4F4F4FFFFFFFFFFFF00
        0000FFFFFFF4F4F4CDAB6ED79E37FBD08AF1BA61FBD08AD79E37CDAB6EF4F4F4
        FFFFFF000000F4F4F4CDAB6ED79E37FFD590F4B95CF1B34FF4B95CFFD590D79E
        37CDAB6EF4F4F4000000DDBC7FD79E37FFDA96FAC165F7BA58F7BA58F7BA58FA
        C165FFDA96D79E37DDBC7F000000D79E37FFF1C1FFDA91FFC96EFEC362FEC362
        FEC362FFC96EFFDA91FFF1C1D79E37000000E7C689D79E37D79E37FFDA8EFFCB
        6BFFCB6BFFCB6BFFDA8ED79E37D79E37E7C689000000FFFFFFFFFFFFD79E37FF
        E79FFFD475FFD475FFD475FFE79FD79E37FFFFFFFFFFFF000000FFFFFFFFFFFF
        D79E37FFECA7FFDB7EFFDB7EFFDB7EFFECA7D79E37FFFFFFFFFFFF000000FFFF
        FFFFFFFFD79E37FFF2ADFFE387FFE387FFE387FFF2ADD79E37FFFFFFFFFFFF00
        0000FFFFFFFFFFFFD79E37FFF6B3FFE88EFFE88EFFE88EFFF6B3D79E37FFFFFF
        FFFFFF000000FFFFFFFFFFFFD79E37FFFFD0FFF9B6FFF9B6FFF9B6FFFFD0D79E
        37FFFFFFFFFFFF000000FFFFFFFFFFFFE7C689D79E37D79E37D79E37D79E37D7
        9E37E7C689FFFFFFFFFFFF000000}
    end
    object PChaveAcesso: TPanel
      Left = 6
      Top = 159
      Width = 338
      Height = 36
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Label28: TLabel
        Left = 4
        Top = 0
        Width = 111
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Chave de Acesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object btnInsereChave: TBitBtn
        Left = 318
        Top = 14
        Width = 20
        Height = 19
        Cursor = crHandPoint
        TabOrder = 0
        OnClick = btnInsereChaveClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdChaveNFE: TFlatEdit
        Left = 3
        Top = 14
        Width = 313
        Height = 20
        ColorBorder = clBlack
        ColorFlat = clBtnFace
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object PageControl2: TPageControl
      Left = 8
      Top = 405
      Width = 891
      Height = 124
      ActivePage = TabSheet2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object TabSheet2: TTabSheet
        Caption = 'Impostos/Totais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        object Shape15: TShape
          Left = 619
          Top = 8
          Width = 107
          Height = 83
          Pen.Color = clGreen
          Pen.Width = 2
        end
        object Shape40: TShape
          Left = 469
          Top = 48
          Width = 136
          Height = 40
        end
        object EdVlrOutrasDesp: TShape
          Left = 238
          Top = 48
          Width = 113
          Height = 40
        end
        object Shape14: TShape
          Left = 124
          Top = 48
          Width = 115
          Height = 40
        end
        object Shape13: TShape
          Left = 0
          Top = 48
          Width = 125
          Height = 40
        end
        object Shape12: TShape
          Left = 453
          Top = 9
          Width = 152
          Height = 40
        end
        object Shape11: TShape
          Left = 302
          Top = 9
          Width = 152
          Height = 40
        end
        object Shape10: TShape
          Left = 151
          Top = 9
          Width = 152
          Height = 40
        end
        object Shape9: TShape
          Left = 0
          Top = 9
          Width = 152
          Height = 40
        end
        object Label5: TLabel
          Left = 2
          Top = 10
          Width = 141
          Height = 14
          AutoSize = False
          Caption = 'Base de C'#225'lculo ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 153
          Top = 10
          Width = 96
          Height = 11
          AutoSize = False
          Caption = 'Valor do ICMS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 304
          Top = 10
          Width = 121
          Height = 14
          AutoSize = False
          Caption = 'B. C. ICMS Subst.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 455
          Top = 10
          Width = 141
          Height = 14
          AutoSize = False
          Caption = 'Valor do ICMS Subst.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 2
          Top = 49
          Width = 100
          Height = 14
          AutoSize = False
          Caption = 'Valor do Frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 126
          Top = 49
          Width = 105
          Height = 14
          AutoSize = False
          Caption = 'Valor do Seguro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 240
          Top = 49
          Width = 104
          Height = 14
          AutoSize = False
          Caption = 'Outras Despesas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape16: TShape
          Left = 350
          Top = 48
          Width = 120
          Height = 40
        end
        object Label13: TLabel
          Left = 352
          Top = 49
          Width = 106
          Height = 14
          AutoSize = False
          Caption = 'Valor Total IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 472
          Top = 49
          Width = 99
          Height = 14
          AutoSize = False
          Caption = 'Desconto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape36: TShape
          Left = 621
          Top = 10
          Width = 103
          Height = 40
        end
        object Label31: TLabel
          Left = 623
          Top = 11
          Width = 91
          Height = 14
          AutoSize = False
          Caption = 'Valor do ISS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape21: TShape
          Left = 621
          Top = 49
          Width = 103
          Height = 40
        end
        object Label29: TLabel
          Left = 623
          Top = 48
          Width = 64
          Height = 14
          AutoSize = False
          Caption = 'Servi'#231'os:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape33: TShape
          Left = 727
          Top = 8
          Width = 156
          Height = 83
          Pen.Color = clMaroon
          Pen.Width = 2
        end
        object Shape31: TShape
          Left = 729
          Top = 10
          Width = 152
          Height = 40
        end
        object Label26: TLabel
          Left = 731
          Top = 10
          Width = 123
          Height = 14
          AutoSize = False
          Caption = 'Valor de Produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape32: TShape
          Left = 729
          Top = 49
          Width = 152
          Height = 40
        end
        object Label27: TLabel
          Left = 732
          Top = 48
          Width = 141
          Height = 14
          AutoSize = False
          Caption = 'Valor da Nota Fiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object EdBaseICMS: TColorEditFloat
          Left = 4
          Top = 31
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrIcms: TColorEditFloat
          Left = 155
          Top = 31
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '0,00'
          OnExit = EdVlrIcmsExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdBaseICMSST: TColorEditFloat
          Left = 306
          Top = 31
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnExit = EdBaseICMSSTExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrIcmsST: TColorEditFloat
          Left = 457
          Top = 31
          Width = 144
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = '0,00'
          OnExit = EdBaseICMSSTExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrFrete: TColorEditFloat
          Left = 1
          Top = 68
          Width = 117
          Height = 19
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = '0,00'
          OnExit = EdVlrFreteExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object CBFreteNF: TCheckBox
          Left = 107
          Top = 49
          Width = 17
          Height = 17
          Hint = 'Marque a caixa para somar o frete ao valor da nota.'
          Color = clWhite
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = CBFreteNFClick
        end
        object EdVlrSeguro: TColorEditFloat
          Left = 128
          Top = 70
          Width = 105
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = '0,00'
          OnExit = EdVlrFreteExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdOutrasDespesas: TColorEditFloat
          Left = 242
          Top = 70
          Width = 103
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = '0,00'
          OnExit = EdOutrasDespesasExit
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrIpi: TColorEditFloat
          Left = 352
          Top = 70
          Width = 112
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdDesconto: TColorEditFloat
          Left = 473
          Top = 70
          Width = 129
          Height = 17
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrIss: TColorEditFloat
          Left = 624
          Top = 31
          Width = 98
          Height = 18
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdVlrServicos: TColorEditFloat
          Left = 624
          Top = 64
          Width = 98
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotalProdutos: TColorEditFloat
          Left = 731
          Top = 25
          Width = 148
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdTotalNotaFiscal: TColorEditFloat
          Left = 731
          Top = 65
          Width = 148
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Transportador'
        ImageIndex = 1
        object Shape30: TShape
          Left = 781
          Top = 48
          Width = 102
          Height = 40
        end
        object Shape29: TShape
          Left = 682
          Top = 48
          Width = 100
          Height = 40
        end
        object Shape28: TShape
          Left = 560
          Top = 48
          Width = 123
          Height = 40
        end
        object Shape27: TShape
          Left = 482
          Top = 48
          Width = 79
          Height = 40
        end
        object Shape26: TShape
          Left = 404
          Top = 48
          Width = 79
          Height = 40
        end
        object Shape25: TShape
          Left = 326
          Top = 48
          Width = 79
          Height = 40
        end
        object Shape24: TShape
          Left = 292
          Top = 48
          Width = 35
          Height = 40
        end
        object Shape23: TShape
          Left = 151
          Top = 48
          Width = 142
          Height = 40
        end
        object Shape22: TShape
          Left = 0
          Top = 48
          Width = 152
          Height = 40
        end
        object Label14: TLabel
          Left = 1
          Top = 14
          Width = 149
          Height = 14
          AutoSize = False
          Caption = 'TRANSPORTADORA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape17: TShape
          Left = 0
          Top = 30
          Width = 318
          Height = 19
        end
        object LTransportadora: TLabel
          Left = 2
          Top = 32
          Width = 313
          Height = 15
          AutoSize = False
          Caption = 'TRANSPORTADORA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape20: TShape
          Left = 317
          Top = 30
          Width = 124
          Height = 19
        end
        object LTranspCpfCnpj: TLabel
          Left = 319
          Top = 32
          Width = 121
          Height = 15
          AutoSize = False
          Caption = 'TRANSP. CPF/CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape18: TShape
          Left = 440
          Top = 30
          Width = 220
          Height = 19
        end
        object LTranspEndereco: TLabel
          Left = 443
          Top = 32
          Width = 214
          Height = 15
          AutoSize = False
          Caption = 'Transportadora Endere'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape19: TShape
          Left = 659
          Top = 30
          Width = 190
          Height = 19
        end
        object LTranspMunicipio: TLabel
          Left = 661
          Top = 32
          Width = 186
          Height = 15
          AutoSize = False
          Caption = 'Transportadora Municipio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 3
          Top = 48
          Width = 100
          Height = 14
          AutoSize = False
          Caption = 'Frete p/ Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 3
          Top = 61
          Width = 99
          Height = 14
          AutoSize = False
          Caption = '1 - Emitente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 3
          Top = 73
          Width = 114
          Height = 14
          AutoSize = False
          Caption = '2 - Destinat'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape34: TShape
          Left = 117
          Top = 55
          Width = 32
          Height = 28
        end
        object Label18: TLabel
          Left = 153
          Top = 48
          Width = 119
          Height = 14
          AutoSize = False
          Caption = 'Placa do Ve'#237'culo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 295
          Top = 48
          Width = 23
          Height = 14
          AutoSize = False
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 328
          Top = 48
          Width = 71
          Height = 14
          AutoSize = False
          Caption = 'Quantidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 406
          Top = 48
          Width = 54
          Height = 14
          AutoSize = False
          Caption = 'Esp'#233'cie'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 484
          Top = 48
          Width = 39
          Height = 14
          AutoSize = False
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 562
          Top = 48
          Width = 75
          Height = 14
          AutoSize = False
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 684
          Top = 48
          Width = 79
          Height = 14
          AutoSize = False
          Caption = 'Peso Bruto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 783
          Top = 48
          Width = 87
          Height = 14
          AutoSize = False
          Caption = 'Peso L'#237'quido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object BtnProcuraTransp: TBitBtn
          Left = 850
          Top = 30
          Width = 17
          Height = 18
          Cursor = crHandPoint
          TabOrder = 0
          OnClick = BtnProcuraTranspClick
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
            90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object BitBtn1: TBitBtn
          Left = 866
          Top = 30
          Width = 17
          Height = 18
          Cursor = crHandPoint
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            B6000000424DB60000000000000036000000280000000A000000040000000100
            18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
            90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
            90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
            C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
        end
        object EdFreteConta: TEdit
          Left = 126
          Top = 58
          Width = 15
          Height = 21
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          MaxLength = 1
          ParentFont = False
          TabOrder = 2
          Text = '9'
          OnKeyPress = EdFreteContaKeyPress
        end
        object EdPlacaVeiculo: TEdit
          Left = 154
          Top = 65
          Width = 116
          Height = 21
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'teste'
          OnKeyDown = EdPlacaVeiculoKeyDown
          OnKeyPress = EdPlacaVeiculoKeyPress
        end
        object EdUFVeiculo: TEdit
          Left = 297
          Top = 62
          Width = 27
          Height = 24
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = 'PR'
        end
        object EdQuantidadeVeiculo: TColorEditFloat
          Left = 330
          Top = 62
          Width = 73
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdEspecieVeiculo: TEdit
          Left = 408
          Top = 62
          Width = 73
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Text = '0,00'
        end
        object EdMarcaVeiculo: TEdit
          Left = 486
          Top = 62
          Width = 73
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = '0,00'
        end
        object EdNumVeiculo: TEdit
          Left = 564
          Top = 62
          Width = 116
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Text = '0,00'
        end
        object EdPesoBrutoVeiculo: TColorEditFloat
          Left = 684
          Top = 62
          Width = 94
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
        object EdPesoLiquidoVeiculo: TColorEditFloat
          Left = 784
          Top = 62
          Width = 97
          Height = 24
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = '0,00'
          ValueFormat = '##,##0.00'
          ValueInteger = 0
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        ImageIndex = 2
        object Label42: TLabel
          Left = 6
          Top = 0
          Width = 123
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dados Adicionais:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label43: TLabel
          Left = 473
          Top = 0
          Width = 135
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Reservado ao Fisco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object MDadosAdicionais: TMemo
          Left = 7
          Top = 14
          Width = 409
          Height = 80
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object MReservadosFisco: TMemo
          Left = 472
          Top = 14
          Width = 409
          Height = 80
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
    end
    object cbTipoDocumento: TFlatComboBox
      Left = 749
      Top = 58
      Width = 145
      Height = 24
      Color = clWindow
      ColorArrowBackground = clMenuBar
      ColorBorder = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        'NF-e'
        'NFC-e')
      ParentFont = False
      TabOrder = 3
      Text = 'NF-e'
      ItemIndex = -1
      OnChange = cbTipoDocumentoChange
    end
    object cbConsumidorFinal: TCheckBox
      Left = 8
      Top = 123
      Width = 132
      Height = 12
      Caption = 'Consumidor Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbConsumidorFinalClick
    end
    object PFalha: TPanel
      Left = 9
      Top = 530
      Width = 897
      Height = 29
      BevelOuter = bvNone
      TabOrder = 17
      Visible = False
      object ShErro: TShape
        Left = 0
        Top = 2
        Width = 889
        Height = 24
        Pen.Color = clMaroon
        Pen.Width = 2
      end
      object EdErro: TEdit
        Left = 3
        Top = 7
        Width = 873
        Height = 15
        Cursor = crHandPoint
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 
          'Falha Cr'#237'tica na valida'#231#227'o. Nova Fiscal inv'#225'lida. [Para detalhes' +
          ' clique aqui...]'
        OnClick = EdErroClick
      end
    end
  end
end
