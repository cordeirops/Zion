inherited FCliente: TFCliente
  Left = 139
  Top = 45
  Caption = 'FCliente'
  ClientHeight = 635
  ClientWidth = 809
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Top = 41
    Width = 809
    Height = 592
  end
  inherited LDescTitulo: TLabel
    Left = 504
    Top = 21
    Width = 59
    Caption = 'Clientes'
  end
  inherited PComunica: TPanel
    Left = 154
    Top = 184
  end
  object PListaCliente: TPanel [6]
    Left = 224
    Top = 200
    Width = 401
    Height = 305
    Caption = 'PListaCliente'
    Color = clGradientInactiveCaption
    TabOrder = 9
    object FashionPanel3: TFashionPanel
      Left = 2
      Top = 2
      Width = 397
      Height = 301
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Lista de vendas para Clientes'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object BtCancCli: TBitBtn
        Left = 212
        Top = 258
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtCancCliClick
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
          FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
          FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
          00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
          9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
          FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object GroupBox18: TGroupBox
        Left = 14
        Top = 34
        Width = 249
        Height = 60
        Caption = 'Intervalo de datas'
        Color = 16772332
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        object Label77: TLabel
          Left = 8
          Top = 16
          Width = 40
          Height = 13
          Caption = 'INICIAL:'
        end
        object Label78: TLabel
          Left = 128
          Top = 18
          Width = 33
          Height = 13
          Caption = 'FINAL:'
        end
        object EdDtInicial: TMaskEdit
          Left = 8
          Top = 32
          Width = 113
          Height = 22
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
        end
        object EdDtFinal: TMaskEdit
          Left = 128
          Top = 32
          Width = 113
          Height = 22
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object GroupBox19: TGroupBox
        Left = 8
        Top = 104
        Width = 377
        Height = 137
        Caption = 'Intervalo de Clientes'
        TabOrder = 2
        inline FrmBuscaCliInicial: TFrmBusca
          Left = 8
          Top = 23
          Width = 353
          Height = 42
          Color = 16772332
          ParentColor = False
          TabOrder = 0
          inherited LTextoBusca: TLabel
            Left = 2
            Width = 102
            Caption = 'Cliente inicial:'
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 312
            Top = 16
            Height = 22
          end
          inherited LUZMINUS: TShape
            Left = 333
            Top = 14
            Width = 20
          end
          inherited EdDescricao: TFlatEdit
            Left = 65
            Top = 17
            Width = 245
            Height = 20
            Font.Style = []
          end
          inherited BTNOPEN: TBitBtn
            Left = 311
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliInicialBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 331
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliInicialBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 17
            Width = 63
            Height = 20
          end
        end
        inline FrmBuscaCliFinal: TFrmBusca
          Left = 8
          Top = 76
          Width = 353
          Height = 45
          Color = 16772332
          ParentColor = False
          TabOrder = 1
          inherited LTextoBusca: TLabel
            Left = 2
            Width = 90
            Caption = 'Cliente Final'
            Font.Style = [fsBold]
          end
          inherited LUZOPEN: TShape
            Left = 312
            Top = 14
          end
          inherited LUZMINUS: TShape
            Left = 333
            Top = 14
            Width = 20
          end
          inherited EdDescricao: TFlatEdit
            Left = 65
            Top = 17
            Width = 245
            Height = 20
            Font.Style = []
          end
          inherited BTNOPEN: TBitBtn
            Left = 311
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliFinalBTNOPENClick
          end
          inherited BTNMINUS: TBitBtn
            Left = 331
            Top = 17
            Width = 20
            Height = 20
            OnClick = FrmBuscaCliFinalBTNMINUSClick
          end
          inherited EDCodigo: TFlatEdit
            Top = 17
            Width = 63
            Height = 20
          end
        end
      end
      object BtImpCli: TBitBtn
        Left = 112
        Top = 258
        Width = 85
        Height = 25
        Hint = 
          'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
          'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
          ' sua impress'#227'o.'
        Caption = '&Visualizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtImpCliClick
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
          7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
          BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
          AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
          D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
          FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
          EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
          AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
      object btLimpaData: TBitBtn
        Left = 267
        Top = 73
        Width = 20
        Height = 20
        Hint = 'Pressione para apagar as datas '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btLimpaDataClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD090602F
          90602F90602F90602F90602F90602F90602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
    end
  end
  object PEtqMala: TPanel [7]
    Left = 240
    Top = 88
    Width = 377
    Height = 441
    BorderStyle = bsSingle
    Color = 16772332
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 5
    object FashionPanel6: TFashionPanel
      Left = 4
      Top = 4
      Width = 365
      Height = 429
      BevelOuter = bvNone
      Color = 16772332
      TabOrder = 0
      RoundRect = True
      About = 'Orion Software'
      ShadowDepth = 2
      ShadowSpace = 5
      ShowShadow = False
      ShadowColor = clBlack
      TitleColor = clSkyBlue
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Etiquetas p/ Mala Direta'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label70: TLabel
        Left = 10
        Top = 128
        Width = 49
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inline FrmBuscaNome: TFrmBusca
        Left = 8
        Top = 31
        Width = 353
        Height = 42
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 47
          Caption = 'Nome:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 16
          Height = 22
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaNomeBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaNomeBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      inline FrmBuscaCid: TFrmBusca
        Left = 8
        Top = 79
        Width = 353
        Height = 45
        Color = 16772332
        ParentColor = False
        TabOrder = 1
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 55
          Caption = 'Cidade:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 14
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaCidBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      object CBBAIRROETIQ: TComboBox
        Left = 16
        Top = 152
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 2
      end
      inline FrmBuscaUF: TFrmBusca
        Left = 8
        Top = 183
        Width = 353
        Height = 45
        Color = 16772332
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 55
          Caption = 'Estado:'
          Font.Style = [fsBold]
        end
        inherited LUZOPEN: TShape
          Left = 312
          Top = 14
        end
        inherited LUZMINUS: TShape
          Left = 333
          Top = 14
          Width = 20
        end
        inherited EdDescricao: TFlatEdit
          Left = 65
          Top = 17
          Width = 245
          Height = 20
          Font.Style = []
        end
        inherited BTNOPEN: TBitBtn
          Left = 311
          Top = 17
          Width = 20
          Height = 20
          OnClick = FrmBuscaUFBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 331
          Top = 17
          Width = 20
          Height = 20
        end
        inherited EDCodigo: TFlatEdit
          Top = 17
          Width = 63
          Height = 20
        end
      end
      object cbClienteSelecionado: TCheckBox
        Left = 8
        Top = 232
        Width = 233
        Height = 17
        Caption = 'Clientes Selecionado(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = cbClienteSelecionadoExit
      end
      object GroupBox15: TGroupBox
        Left = 8
        Top = 264
        Width = 353
        Height = 121
        Caption = 'Configura'#231#227'o da Etiqueta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label71: TLabel
          Left = 10
          Top = 24
          Width = 39
          Height = 13
          Caption = 'Linha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label72: TLabel
          Left = 10
          Top = 56
          Width = 56
          Height = 13
          Caption = 'Margem:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label73: TLabel
          Left = 194
          Top = 24
          Width = 48
          Height = 13
          Caption = 'Altura: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 186
          Top = 56
          Width = 55
          Height = 13
          Caption = 'Largura:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label75: TLabel
          Left = 10
          Top = 88
          Width = 41
          Height = 13
          Caption = 'Fonte:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EdLinha: TEdit
          Left = 72
          Top = 24
          Width = 81
          Height = 21
          TabOrder = 0
        end
        object EdMargem: TEdit
          Left = 72
          Top = 56
          Width = 81
          Height = 21
          TabOrder = 1
        end
        object EdAltura: TEdit
          Left = 248
          Top = 24
          Width = 81
          Height = 21
          TabOrder = 2
        end
        object EdLargura: TEdit
          Left = 248
          Top = 56
          Width = 81
          Height = 21
          TabOrder = 3
        end
        object EdFonte: TEdit
          Left = 72
          Top = 88
          Width = 81
          Height = 21
          TabOrder = 4
        end
      end
      object BtnImpEtq: TBitBtn
        Left = 88
        Top = 402
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Imprimir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = BtnImpEtqClick
        Glyph.Data = {
          96030000424D9603000000000000360000002800000010000000120000000100
          18000000000060030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80808080808080
          8080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8080808080805050503F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F7F7F
          7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF8080805050503F3F3FF0F0F0B0B0B09F
          8080AF8080B0B0B0E0E0E0B0B0B04F4F4F3F3F3F7F7F7FFFFFFFFFFFFF3F3F3F
          3F3F3FEFEFEFF0F0F0EFEFEFAFAFAF9090905F5F5F6F6F6F8F8F8FBFBFBFEFEF
          EFB0B0B07F7F7FFFFFFFFFFFFFAFAFAFFFFFFFF0F0F0DFDFDF9090907F7F7F9F
          9F9FB0B0B0A0A0A09090908F8F8F8F8F8F5F5F5F7F7F7FFFFFFFFFFFFFA0A0A0
          DFDFDFA0A0A09F9F9FCFCFCFAFAFAF8F8F8F808080808080A0A0A0BFBFBF70A0
          805050507F7F7FFFFFFFFFFFFF707070A0A0A0DFDFDFDFDFDFDFDFDFDFDFDFE0
          E0E0CFCFCFBFBFBF9F9F9F8F8F8F6F7F6F4F4F4F808080FFFFFFFFFFFF9F9F9F
          E0E0E0DFDFDFD0D0D0CFCFCFD0D0D0CFCFCFC0C0C0C0C0C0CFCFCFD0D0D0CFCF
          CF6F6F6FFFFFFFFFFFFFFFFFFF8F8F8FD0D0D0C0C0C0AFAFAFA0A0A0CFCFCFF0
          F0F0EFEFEFEFEFEFDFDFDFBFBFBFBFBFBF707070FFFFFFFFFFFFFFFFFFFFFFFF
          A0A0A0CFCFCFEFEFEFB0B0B0BFBFBFAFAFAFB0B0B0BFBFBFBFBFBF7070707070
          70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA0FFD0C0FFD0C0FFD0CFEF
          DFD0E0E0E0E0E0E06F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAF8F90FFDFB0FFDFBFFFDFBFFFD0B0FFD0AF605F5FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB09F8FFFE0CFFFE0CFFFE0CFFF
          E0CFFFE0C0705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFDFBFB0FFEFDFFFEFDFFFEFDFFFEFDF705F5FFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09F90FFF0EFFFF0EFFFF0EFFFF0EFFF
          F0EF705F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          AF8F90AF8F90AF8F90AF8F90AF8F90AF8F90FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object BitBtn8: TBitBtn
        Left = 204
        Top = 402
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Cancelar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = BitBtn8Click
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00009FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFF3030CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          3030CF309FFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF3030CF0060
          FF0000CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFF
          FFFFFFFFFFFFFFFFFFFFFF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009F0000FF00009FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00
          00FF00009F0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000FF00009FFFFFFFFFFFFF
          0000CF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0000CF0000FF0000FF00009FFFFFFFFFFFFFFFFFFFFFFFFF0000CF0000
          9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000CF309FFF0000
          FF00009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CF00009FFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60609F0000CF60609FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
    end
  end
  object PRel: TPanel [8]
    Left = 240
    Top = 133
    Width = 377
    Height = 185
    BevelInner = bvLowered
    Color = 16772332
    TabOrder = 4
    Visible = False
    object LTituloRel: TLabel
      Left = 6
      Top = 12
      Width = 217
      Height = 16
      Caption = 'Filtros de Relat'#243'rio de Vendas.'
      Color = 16772332
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object BtGeraRel: TBitBtn
      Left = 96
      Top = 152
      Width = 85
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Visualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtGeraRelClick
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        18000000000040030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF1F1F1F606060404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7F80A070
        7F9F6F6F6F404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF6090BF50AFFF707F9F707070404040FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFF5090BF50AFFF707F9F7070702F2F2FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF5090
        BF50AFFF707F9F4F4F4F5050507070707070704F4F4F1F1F1FFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30607F606F80A0908FE0CF
        AFFFF0CFFFFFD0DFCFB0606060101010FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF6F504FFFD0B0FFF0CFFFFFD0FFFFEFFFFFFFE0DF
        D05F5F5FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0C0AFFFEFC0FFF0C0FFFFD0FFFFF0FFFFFFFFFFD0707070FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C0FFDF9FFFE0BFFFFFD0
        FFFFD0FFFFD0FFFFD0A0907FFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD0C0AFFFF0CFFFE0BFFFEFBFFFF0CFFFF0CFFFF0CF705F50
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF
        EFDFFFFFEFFFE0BFFFE0B0FFEFCFDFB0A01F1F1FFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FD0CFBFF0E0BFF0E0BFCF
        AF9F202020FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF303030606060606060FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object BtCanRel: TBitBtn
      Left = 203
      Top = 152
      Width = 90
      Height = 25
      Hint = 
        'Pressione este bot'#227'o para gerar uma pr'#233' visualiza'#231#227'o do relat'#243'ri' +
        'o antes da impress'#227'o. Por este bot'#227'o voc'#234' tamb'#233'm pode configurar' +
        ' sua impress'#227'o.'
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtCanRelClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
        6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
        0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
        006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
        60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
        FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
        FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
        609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
        8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
        0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
        D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
        6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
        CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
        FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
        609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
        90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
        0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
        F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
        FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
        CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
        FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
        E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
        5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
        FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
        20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
    object GBData: TGroupBox
      Left = 14
      Top = 34
      Width = 249
      Height = 60
      Caption = 'Intervalo de datas'
      Color = 16772332
      Ctl3D = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      object LDtIni: TLabel
        Left = 8
        Top = 16
        Width = 40
        Height = 13
        Caption = 'INICIAL:'
      end
      object LDtFim: TLabel
        Left = 128
        Top = 18
        Width = 33
        Height = 13
        Caption = 'FINAL:'
      end
      object EdDataIni: TMaskEdit
        Left = 8
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object EdDataFim: TMaskEdit
        Left = 128
        Top = 32
        Width = 113
        Height = 22
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
    end
    object RGPessoa: TRadioGroup
      Left = 272
      Top = 33
      Width = 97
      Height = 61
      Caption = 'Filtro '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Adimplentes')
      TabOrder = 3
    end
    inline FrmCidade: TFrmBusca
      Left = 14
      Top = 103
      Width = 353
      Height = 45
      Color = 16772332
      ParentColor = False
      TabOrder = 4
      Visible = False
      inherited LTextoBusca: TLabel
        Left = 2
        Width = 44
        Caption = 'Cidade'
      end
      inherited LUZOPEN: TShape
        Left = 312
        Top = 14
      end
      inherited LUZMINUS: TShape
        Left = 333
        Top = 14
        Width = 20
      end
      inherited EdDescricao: TFlatEdit
        Left = 65
        Top = 17
        Width = 245
        Height = 20
        Font.Style = []
      end
      inherited BTNOPEN: TBitBtn
        Left = 312
        Top = 17
        Height = 20
        OnClick = FrmCidadeBTNOPENClick
      end
      inherited BTNMINUS: TBitBtn
        Left = 331
        Top = 17
        Width = 20
        Height = 20
        OnClick = FrmCidadeBTNMINUSClick
      end
      inherited EDCodigo: TFlatEdit
        Top = 17
        Width = 63
        Height = 20
      end
    end
  end
  inherited PConsulta: TPanel
    Top = 57
    Height = 552
    object LQtdCli: TLabel [0]
      Left = 712
      Top = 537
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'clientes.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbCreditoCli: TLabel [1]
      Left = 571
      Top = 536
      Width = 29
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object PAniversario: TPanel [2]
      Left = 349
      Top = 32
      Width = 284
      Height = 145
      BevelWidth = 3
      Caption = 'PAniversario'
      TabOrder = 4
      Visible = False
      object FashionPanel2: TFashionPanel
        Left = 4
        Top = 4
        Width = 277
        Height = 138
        BevelOuter = bvNone
        Caption = 'FashionPanel2'
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
        Title = 'Relat'#243'rio de Anivers'#225'rio'
        LineWidth = 0
        LineColor = clBlack
        Theme = ttBlue
        object BitBtn2: TBitBtn
          Left = 40
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ok'
          TabOrder = 0
          OnClick = BitBtn2Click
          Glyph.Data = {
            66030000424D6603000000000000360000002800000010000000110000000100
            18000000000030030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            BFBFBFFFFF000000007F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F7F0000007F7F7F7F
            7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFFFFF007F7F7F7F7F000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
            7F7F7F7F7F7F7FBFBFBF0000000000000000000000007F7F7F7F7F007F7F0000
            00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFF00
            7F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F
            7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F
            7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F000000
            00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F
            7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F007F7F
            007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFFFFF007F7F007F7F007F7F007F7F007F7F007F7F00000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F
            007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFFFFF007F7F007F7F007F7F007F7F00BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF007F7F
            007F7F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object BitBtn3: TBitBtn
          Left = 160
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = BitBtn3Click
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF60606060606060606060606060
            6060606060606060606060606060606060606060606060606060FFFFFFFFFFFF
            0000FFFFFFFFFFFF1F80B01F80B0107FB0107FAF107FAF0F70AF0F70A00F70A0
            006FA0006F9F006F9F00609F00609F606060606060FFFFFF0000FFFFFF2080BF
            60CFFF1F80BF9FFFFF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0FF6FD0
            FF3FA0D09FFFFF00609F606060FFFFFF0000FFFFFF208FBF60CFFF208FBF9FFF
            FF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF9FFFFF3FA0D09FFFFF00
            609F606060FFFFFF0000FFFFFF208FC060CFFF2F90C09FFFFFFF8F6FFF8F6FFF
            8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6FFF8F6F00609FDF0000FFFFFF
            0000FFFFFF2F8FC060CFFF309FCF9FFFFFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFF
            D0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00609FDF0000FFFFFF0000FFFFFF2F90C0
            6FD0FF309FCF9FFFFFFF8F6FD0FFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
            CFCFCFCFCFCFCF00609FDF0000FFFFFF0000FFFFFF2F90C07FE0FF2F90C0FFFF
            FFFF8F6FD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFFD0FFFF00
            609FDF0000FFFFFF0000FFFFFF3090CF80EFFF80E0FF2F90C02F90C02F90C02F
            90C02F90C02F90C02F90C02F90C02F90C02F90C02F90C0E0E0E0DF0000FFFFFF
            0000FFFFFF309FCF90F0FF8FF0FF8FF0FFDF0000E0E0E0F0FFFFF0FFFFF0FFFF
            F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFE0E0E0DF0000FFFFFF0000FFFFFF309FCF
            FFFFFF9FFFFF9FFFFFDF0000E0E0E0CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
            CFCFCFCFCFCFCFE0E0E0DF0000FFFFFF0000FFFFFFFFFFFF309FCFFFFFFFFFFF
            FFDF0000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
            E0E0DF0000FFFFFF0000FFFFFFFFFFFFFFFFFF309FCF309FCFDF0000FF5020FF
            5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020FF5020DF0000FFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF0000FF5020FF5020FF5020FF5020
            FF5020FF5020FFAF8FFFAF8F2050FF004FDFDF0000FFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8F6FFF5020FF5020FF5020FF5020FF5020FF5020FF50
            20FF5020FF5020FF5020FF8F6FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
        end
        object GroupBox4: TGroupBox
          Left = 4
          Top = 61
          Width = 269
          Height = 41
          Caption = 'Escolha o m'#234's desejado'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object CBMes: TComboBox
            Left = 8
            Top = 14
            Width = 257
            Height = 24
            Color = 15658734
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemHeight = 16
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Items.Strings = (
              'TODOS'
              'Janeiro'
              'Fevereiro'
              'Mar'#231'o'
              'Abril'
              'Maio'
              'Junho'
              'Julho'
              'Agosto'
              'Setembro'
              'Outubro'
              'Novembro'
              'Dezembro')
          end
        end
        object RBCliente: TRadioButton
          Left = 56
          Top = 32
          Width = 73
          Height = 17
          Caption = 'Clientes'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
        object RBConjuge: TRadioButton
          Left = 144
          Top = 32
          Width = 73
          Height = 17
          Caption = 'Conjuge'
          TabOrder = 4
        end
      end
    end
    inherited DBGridCadastroPadrao: TDBGrid [3]
      Top = 125
      Height = 404
      Hint = 
        '<F10> Para inativar cliente. Somente ser'#225' possivel reativar clie' +
        'ntes com CPF/CNPJ'
      DataSource = DMPESSOA.DSVWCliente
      ParentShowHint = False
      PopupMenu = MenuSeparar
      ShowHint = True
      OnCellClick = DBGridCadastroPadraoCellClick
      OnDblClick = nil
      OnKeyDown = DBGridCadastroPadraoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'MARK'
          Title.Caption = 'M'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_INTERNO'
          Title.Caption = 'Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPFCNPJ'
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'TELREL'
          Title.Caption = 'Telefone'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELREL'
          Title.Caption = 'Telefone'
          Visible = True
        end>
    end
    inherited GroupBox1: TGroupBox [4]
      Left = 233
      Top = 48
      Width = 537
      inherited EdNome: TFlatEdit
        Left = 59
        Width = 257
        OnKeyUp = EdNomeKeyUp
      end
      inherited BtnSelecionar: TBitBtn
        Left = 432
        Width = 101
      end
      inherited EdCodigo: TFlatEdit
        Width = 54
        Font.Color = clGray
        OnEnter = EdCodigoEnter
        OnExit = EdCodigoExit
        OnKeyUp = EdCodigoKeyUp
      end
      inherited EdCpf: TFlatEdit
        Left = 317
        Width = 113
        Font.Color = clGray
        Text = 'CPF/CNPJ'
        OnEnter = EdCpfEnter
        OnExit = EdCpfExit
        OnKeyUp = EdCpfKeyUp
      end
    end
    inherited Painel: TPanel
      inherited BtnNovo: TBitBtn
        Width = 107
      end
      inherited BtnApagar: TBitBtn
        Left = 108
        Width = 107
      end
      inherited BtnConsultar: TBitBtn
        Left = 214
        Width = 107
      end
      inherited BtnRelatorio: TBitBtn
        Left = 320
        Width = 107
      end
      inherited BtnFiltrar: TBitBtn
        Left = 426
        Width = 107
      end
      object btnEquip: TBitBtn
        Left = 532
        Top = 2
        Width = 107
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para inserir um novo equipamento para o cli' +
          'ente selecionado'
        Caption = '&Equipamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnEquipClick
        Glyph.Data = {
          8E050000424D8E05000000000000360000002800000017000000130000000100
          18000000000058050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBEBEBEAEAEAEBABABABFBFBF5F5F6041414D545456
          BFBFBFBCBCBCAEAEAEBCBCBCBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF8B8BAC1A1A48646464BFBFBF3C
          3C6600007F2B2B61BFBFBF7373731919407E7EA4BFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF4D4D9F0909
          9817174D3B3B4B21217B0E0E8F2222813B3B4B1C1C530808833E3EA4BFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBC
          7373733737870000A300005600007F0C0C8D7D7DFF1C1C9800007F1212573535
          9C2D2D8E737373B6B6B6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
          0000BFBFBF61616411116B0606483F3FCE4242C411114313138C7C7CFF39399C
          1313437878B66C6CD21C1C4F10106B53535DBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBF48484C00007F00007A2F2F6E8181ED7D7DCB2E
          2E874949875858874141C16565F300005A00006C00007F383846BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF6464945555CA3C3CD18585
          E28989D1626262B1B1B182828257575717172E4A4AC47C7CE66F6FBA5656B74A
          4A4CBFBFBFB6B6B69E9E9EBDBDBDBFBFBFBFBFBFBFBFBF000000BFBFBFBCBCBE
          7171A532326A3333B27F7FA07F7F7FDADADAA1A1A16C6C6C3D3D3D2B2B957F7F
          DE121E27003F3F383F3FBFBFBF5D69692351517D8080BFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBF48485C6161C27575F99191A1DADADAA1A1A16C6C6C
          00005A7171F31A1ACB001E341E9B9B192B2B2945451C7575078181434A4ABFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF55559F8080EB6F6F93444466DE
          DEDEA1A1A16C6C6C00001C1414847F7FFF2E46577EFFFF0D3A3A007F7F229090
          369A9A282F2F636363BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFABABB95353
          A29595A6A6A6A6A0A0A0A3A3A37D7D7D4C5C5C44BED13150AF209EA981FFFF3B
          8D8D244F4F75DDDD6CC2C20A4040167777565959BFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFB9B9B9B1B1B1B7B7B79E9E9E8FAAAA7AF5F57EB4
          B4266F6F326F6F496F6F3FC1C167F0F0004F4F007777007F7F484C4CBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF76AAAA7EC9C950D9D9
          8CFFFF89B4B4696969CACACA8D8D8D5757572836363EC2C26AF0F071B3B35097
          976B6B6BBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB8
          BCBC86ABAB2F68687BD7D7A0A0A0737373DFDFDF9C9C9C6161613A3A3A2FADAD
          7AD1D1343838797979BCBCBCBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF4463637DD1D177F5F58EA1A1DFDFDF9C9C9C61
          616100717180FAFA26CACA434C4CBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF5CA6A684E2E25C7575536A
          6AE2E2E29C9C9C6464640B26262E888882DFDF494E4EBFBFBFBFBFBFBFBFBF00
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFB9B9
          65A2A2ABB4B4AEAEAE9E9E9EABABAB7979797171719E9F9F525353B5B5B5BFBF
          BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAAEAEAEABABABA3A3A3A5A5A5BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
      end
    end
    inherited RGORDEM: TRadioGroup
      Width = 150
      Height = 58
    end
    object RGFiltro: TRadioGroup
      Left = 158
      Top = 38
      Width = 73
      Height = 59
      Caption = 'Filtro'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'Filtro [0]'
        'Filtro [1]'
        'Inativos')
      ParentCtl3D = False
      TabOrder = 5
      OnClick = RGFiltroClick
    end
    object cbscpc: TCheckBox
      Left = 7
      Top = 104
      Width = 289
      Height = 17
      Caption = 'Remover da Lista clientes no SCPC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = cbscpcClick
    end
  end
  inherited PCadastro: TPanel
    Top = 57
    Height = 560
    inherited Panel4: TPanel
      Height = 530
      object PFichaOtica: TPanel [0]
        Left = 9
        Top = 29
        Width = 751
        Height = 365
        BevelOuter = bvNone
        Color = 13750737
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
        object Panel5: TPanel
          Left = 113
          Top = 203
          Width = 524
          Height = 158
          BevelInner = bvLowered
          Color = 14933717
          TabOrder = 0
          object Label48: TLabel
            Left = 8
            Top = 25
            Width = 30
            Height = 16
            Caption = 'L OD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 8
            Top = 49
            Width = 29
            Height = 16
            Caption = 'L OE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape7: TShape
            Left = 4
            Top = 67
            Width = 515
            Height = 2
          end
          object Label51: TLabel
            Left = 24
            Top = 3
            Width = 62
            Height = 16
            Caption = 'Esf'#233'rico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label52: TLabel
            Left = 152
            Top = 3
            Width = 70
            Height = 16
            Caption = 'Cilindrico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label53: TLabel
            Left = 264
            Top = 3
            Width = 35
            Height = 16
            Caption = 'Eixo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 360
            Top = 3
            Width = 37
            Height = 16
            Caption = 'DNP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label55: TLabel
            Left = 448
            Top = 3
            Width = 45
            Height = 16
            Caption = 'Altura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape8: TShape
            Left = 41
            Top = 16
            Width = 1
            Height = 108
          end
          object Label56: TLabel
            Left = 8
            Top = 81
            Width = 32
            Height = 16
            Caption = 'P OD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 8
            Top = 105
            Width = 31
            Height = 16
            Caption = 'P OE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape9: TShape
            Left = 135
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape10: TShape
            Left = 232
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape12: TShape
            Left = 328
            Top = 16
            Width = 1
            Height = 108
          end
          object Shape13: TShape
            Left = 424
            Top = 16
            Width = 1
            Height = 108
          end
          object Label58: TLabel
            Left = 80
            Top = 128
            Width = 54
            Height = 16
            Caption = 'Adi'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEsferLOD: TDBColorEdit
            Left = 45
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit37: TDBColorEdit
            Left = 45
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit38: TDBColorEdit
            Left = 141
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit39: TDBColorEdit
            Left = 141
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit40: TDBColorEdit
            Left = 237
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit41: TDBColorEdit
            Left = 237
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit42: TDBColorEdit
            Left = 333
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPLOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit43: TDBColorEdit
            Left = 333
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPLOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit44: TDBColorEdit
            Left = 429
            Top = 21
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURALOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit45: TDBColorEdit
            Left = 429
            Top = 45
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURALOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit10: TDBColorEdit
            Left = 45
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit14: TDBColorEdit
            Left = 45
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ESFERPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 15
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit27: TDBColorEdit
            Left = 141
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit30: TDBColorEdit
            Left = 141
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'CILINDPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 16
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit31: TDBColorEdit
            Left = 237
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit32: TDBColorEdit
            Left = 237
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'EIXOPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 17
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit33: TDBColorEdit
            Left = 333
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 13
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit34: TDBColorEdit
            Left = 333
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'DNPPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 18
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit35: TDBColorEdit
            Left = 428
            Top = 77
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURAPOD'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 14
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit46: TDBColorEdit
            Left = 428
            Top = 101
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ALTURAPOE'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 19
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit51: TDBColorEdit
            Left = 141
            Top = 125
            Width = 85
            Height = 22
            Ctl3D = False
            DataField = 'ADICAO'
            DataSource = DMPESSOA.DSServOt
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 20
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object BitBtn4: TBitBtn
            Left = 332
            Top = 128
            Width = 89
            Height = 25
            Caption = '&Salvar'
            TabOrder = 21
            OnClick = BitBtn4Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
          end
        end
        object DBServOt: TDBGrid
          Left = 4
          Top = 7
          Width = 741
          Height = 191
          Color = 16121836
          Ctl3D = False
          DataSource = DMPESSOA.DSALX
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
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBServOtCellClick
          OnKeyUp = DBServOtKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMPED'
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTPEDVEN'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_INTERNO'
              Title.Caption = 'C'#243'd:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Produto:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARCA'
              Title.Caption = 'Marca'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FABRICANTE'
              Title.Caption = 'Fabricante'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODPRODFABR'
              Title.Caption = 'C'#243'd.: Fab.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDEPROD'
              Title.Caption = 'Qtd.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCPRO'
              Title.Caption = 'Desc($):'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALUNIT'
              Title.Caption = 'Vlr. Vend.:'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Vlr. Total'
              Visible = True
            end>
        end
      end
      inherited TCPessoa: TFlatTabControl
        Height = 509
        Tabs.Strings = (
          '&Principal'
          'C&omplemento'
          '&Financeiro'
          '&F&icha '#211'tica'
          '&Hist'#243'rico')
        ActiveTab = 0
        inherited PCompletoFisica: TPanel
          Height = 482
          object Label1: TLabel [0]
            Left = 590
            Top = 25
            Width = 156
            Height = 18
            Caption = 'Tempo de Resid'#234'ncia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel [1]
            Left = 8
            Top = 72
            Width = 126
            Height = 16
            Caption = 'Endere'#231'o de Entrega:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel [2]
            Left = 602
            Top = 72
            Width = 75
            Height = 16
            Caption = 'CADPRO/IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel [3]
            Left = 437
            Top = 72
            Width = 93
            Height = 16
            Caption = 'Ramo Atividade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          inherited GroupBox5: TGroupBox [4]
            Width = 288
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            inherited Label26: TLabel
              Left = 117
              Width = 86
              Caption = 'Dt. Expedi'#231#227'o:'
            end
            inherited Label27: TLabel
              Left = 210
              Width = 70
              Caption = #211'rg'#227'o Exp.:'
            end
            inherited DBColorEdit19: TDBColorEdit
              Left = 116
              Width = 90
            end
            inherited DBColorEdit20: TDBColorEdit
              Left = 209
              Width = 74
            end
            inherited DBColorEdit21: TDBColorEdit
              Width = 108
              Font.Height = -11
            end
          end
          inherited RGCivil: TRadioGroup [5]
            Font.Name = 'BankGothic Md BT'
          end
          inherited GBLOCALTRABALHO: TGroupBox [6]
            Top = 113
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 5
          end
          inherited GroupBox6: TGroupBox
            Top = 218
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 7
          end
          inherited GroupBox7: TGroupBox
            Top = 315
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            TabOrder = 8
          end
          object DBColorEdit36: TDBColorEdit
            Left = 591
            Top = 43
            Width = 154
            Height = 22
            Color = 15658717
            DataField = 'QTDTEMPORESID'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit48: TDBColorEdit
            Left = 7
            Top = 88
            Width = 426
            Height = 22
            Color = 15658717
            DataField = 'ENDENTRAGA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit49: TDBColorEdit
            Left = 601
            Top = 88
            Width = 145
            Height = 22
            Color = 15658717
            DataField = 'CREDENCIAL'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit50: TDBColorEdit
            Left = 436
            Top = 88
            Width = 160
            Height = 22
            Color = 15658717
            DataField = 'RAMOATIV'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        object PHistorico: TPanel [1]
          Left = 1
          Top = 17
          Width = 751
          Height = 445
          BevelOuter = bvNone
          Color = 16772332
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
          Visible = False
          object DRLabel1: TDRLabel
            Left = 16
            Top = 202
            Width = 119
            Height = 16
            Caption = 'Pedidos de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel2: TDRLabel
            Left = 440
            Top = 202
            Width = 107
            Height = 16
            Caption = 'Contas vencidas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel3: TDRLabel
            Left = 16
            Top = 301
            Width = 119
            Height = 16
            Caption = 'Ordem de Servi'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object DRLabel4: TDRLabel
            Left = 598
            Top = 87
            Width = 96
            Height = 14
            Caption = 'M'#233'd. Dias Atraso:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object LMedia: TDRLabel
            Left = 698
            Top = 87
            Width = 44
            Height = 14
            Caption = 'N'#250'mero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            HiColor = clBlue
            LoColor = clNavy
            Border = boNone
            Ctl3D = True
            BlinkInterval = 300
            Blink = blNone
            Deep = 1
          end
          object MResumo: TMemo
            Left = 16
            Top = 19
            Width = 561
            Height = 83
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object DBGrid3: TDBGrid
            Left = 16
            Top = 218
            Width = 423
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMFINANC.DSALX
            FixedColor = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPED'
                Title.Caption = 'N'#186' Pedido'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMFISCAL'
                Title.Caption = 'N'#186' Fiscal'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Title.Caption = 'ST'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Title.Caption = 'Situa'#231#227'o'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMPAG'
                Title.Caption = 'Pagamento'
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTPEDVEN'
                Title.Caption = 'Data'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 70
                Visible = True
              end>
          end
          object DBGrid4: TDBGrid
            Left = 441
            Top = 218
            Width = 293
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMMACS.DSALX
            FixedColor = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMPARC'
                Title.Caption = 'Parcela'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTLANC'
                Title.Caption = 'Lan'#231'amento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTVENC'
                Title.Caption = 'Vencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORPG'
                Title.Caption = 'Pago'
                Visible = True
              end>
          end
          object BitBtn5: TBitBtn
            Left = 597
            Top = 4
            Width = 131
            Height = 20
            Caption = 'Abrir Tela de vendas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 597
            Top = 28
            Width = 131
            Height = 21
            Caption = 'Abrir Tela de Contas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BitBtn6Click
          end
          object MOrdem: TMemo
            Left = 16
            Top = 115
            Width = 721
            Height = 83
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 5
          end
          object DBGrid5: TDBGrid
            Left = 16
            Top = 319
            Width = 721
            Height = 79
            Color = 15794175
            Ctl3D = False
            DataSource = DMServ.DWOrdem
            FixedColor = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'NUMERO'
                Title.Caption = 'N'#250'm. Ordem'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTABERT'
                Title.Caption = 'Dt. Abert.'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL'
                Title.Caption = 'Total'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORMAPAG'
                Title.Caption = 'Forma de Pagamento'
                Width = 321
                Visible = True
              end>
          end
          object BitBtn7: TBitBtn
            Left = 597
            Top = 54
            Width = 131
            Height = 21
            Caption = 'Imprimir Hist'#243'rico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = BitBtn7Click
          end
        end
        inherited PComplementoJURIDICA: TPanel [2]
          Height = 486
          object LInformacao: TLabel
            Left = 8
            Top = 6
            Width = 67
            Height = 16
            Caption = 'Informa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel
            Left = 10
            Top = 55
            Width = 136
            Height = 16
            Caption = 'Observa'#231#227'o Financeira:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBInformacao: TDBColorEdit
            Left = 7
            Top = 27
            Width = 730
            Height = 22
            Color = clWhite
            DataField = 'INFORMACAO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox17: TGroupBox
            Left = 8
            Top = 104
            Width = 729
            Height = 96
            Caption = 'Pessoas autorizadas a comprar '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBMemo4: TDBMemo
              Left = 8
              Top = 18
              Width = 713
              Height = 72
              DataField = 'AUTORIZADOS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit62: TDBColorEdit
            Left = 8
            Top = 70
            Width = 737
            Height = 22
            Color = clWhite
            DataField = 'OBSFINANCEIRA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
        inherited PPrincipal: TPanel [3]
          Left = 2
          Height = 488
          inherited Label14: TLabel
            Left = 322
            Top = 88
          end
          inherited Label15: TLabel
            Left = 126
            Top = 88
          end
          inherited Label17: TLabel
            Left = 11
            Top = 88
          end
          inherited Label20: TLabel
            Left = 14
            Top = 126
            Width = 61
            Caption = 'Dt. Cad.:'
          end
          object Label47: TLabel [4]
            Left = 585
            Top = 326
            Width = 160
            Height = 13
            Caption = #218'lt. altera'#231#227'o realizada por:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LUsuarioAltera: TLabel [5]
            Left = 706
            Top = 339
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Larissa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel [6]
            Left = 665
            Top = 306
            Width = 81
            Height = 14
            Caption = 'INFORMA'#199#213'ES:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited LProximidade: TLabel
            Left = 96
            Top = 126
          end
          object Label19: TLabel [8]
            Left = 594
            Top = 126
            Width = 72
            Height = 16
            Caption = 'Multa (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel [9]
            Left = 672
            Top = 126
            Width = 70
            Height = 16
            Caption = 'Juros (%):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object LTextoBusca: TLabel [10]
            Left = 13
            Top = 164
            Width = 31
            Height = 16
            Caption = 'Obs:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel [11]
            Left = 403
            Top = 126
            Width = 123
            Height = 16
            Caption = 'Endere'#231'o entrega:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel [12]
            Left = 368
            Top = 165
            Width = 53
            Height = 16
            Caption = 'C'#225'lculo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          inherited lbVerMapa: TLabel
            Left = 588
            Top = 90
          end
          object Label61: TLabel [14]
            Left = 459
            Top = 165
            Width = 63
            Height = 16
            Hint = 'Inscri'#231#227'o na SUFRAMA'
            Caption = 'Dia Venc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          inherited LBENDNUM: TLabel
            Left = 672
            Top = 88
          end
          inherited Label68: TLabel
            Left = 52
            Top = 90
          end
          object Label69: TLabel [17]
            Left = 600
            Top = 352
            Width = 140
            Height = 16
            Caption = 'Frequ'#234'ncia de Venda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label76: TLabel [18]
            Left = 712
            Top = 368
            Width = 27
            Height = 16
            Caption = 'Dias'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited PPesJuridica: TPanel
            Top = 4
            Width = 743
            Height = 83
            inherited Label8: TLabel
              Left = 77
              Top = -2
            end
            inherited Label9: TLabel
              Left = 252
              Top = -2
            end
            inherited Label10: TLabel
              Left = 355
              Top = -2
            end
            inherited Label11: TLabel
              Top = 40
            end
            inherited Label12: TLabel
              Left = 553
              Top = -2
            end
            inherited Label13: TLabel
              Left = 317
              Top = 40
            end
            inherited Label45: TLabel
              Top = -2
              Width = 65
              Caption = 'C'#243'd. Int.:'
            end
            inherited Label3: TLabel
              Left = 668
              Top = 41
              Width = 70
              Caption = 'Funda'#231#227'o:'
            end
            object Label100: TLabel [8]
              Left = 464
              Top = -1
              Width = 42
              Height = 16
              Caption = 'IE ST:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            inherited DBCnpj: TDBColorEdit
              Left = 75
              Top = 17
              Width = 174
            end
            inherited DBColorEdit5: TDBColorEdit
              Left = 252
              Top = 17
              Width = 101
            end
            inherited DBColorEdit6: TDBColorEdit
              Left = 356
              Top = 17
              Width = 102
            end
            inherited DBColorEdit7: TDBColorEdit
              Left = 553
              Top = 17
              Width = 188
              TabOrder = 5
            end
            inherited DBColorEdit8: TDBColorEdit
              Width = 306
              TabOrder = 6
            end
            inherited DBNOMEPJ: TDBColorEdit
              Left = 316
              Width = 346
              TabOrder = 7
            end
            inherited DBCODINTERNOPJ: TDBColorEdit
              Top = 17
              Width = 65
              Hint = #218'ltimo cliente cadastrado: '
              DataSource = DMPESSOA.DSCliente
              ParentShowHint = False
              ShowHint = True
            end
            inherited DBColorEdit2: TDBColorEdit
              Left = 667
              Top = 60
              Width = 75
              TabOrder = 8
            end
            object DBColorEdit59: TDBColorEdit
              Left = 460
              Top = 17
              Width = 91
              Height = 22
              Ctl3D = True
              DataField = 'INS_ST'
              DataSource = DMPESSOA.DSPessoaJ
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object cbIndustria: TCheckBox
              Left = 668
              Top = -2
              Width = 73
              Height = 17
              TabStop = False
              Caption = 'Ind'#250'stria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnClick = cbIndustriaClick
            end
          end
          inherited FrmRegiao: TFrmBusca [20]
            Left = 545
            Top = 167
            Width = 200
            TabOrder = 13
            inherited LUZOPEN: TShape
              Left = 177
            end
            inherited LUZMINUS: TShape
              Left = 75
            end
            inherited EdDescricao: TFlatEdit
              Left = 28
              Width = 149
            end
            inherited BTNOPEN: TBitBtn
              Left = 178
            end
            inherited BTNMINUS: TBitBtn
              Left = 76
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 24
            end
          end
          inherited DBColorEdit4: TDBColorEdit [21]
            Left = 322
            Top = 103
            Width = 346
            TabOrder = 4
          end
          inherited DBColorEdit13: TDBColorEdit [22]
            Left = 13
            Top = 103
            Width = 108
            TabOrder = 2
          end
          inherited DBDATACAD: TDBColorEdit [23]
            Left = 13
            Top = 141
            Width = 77
            MaxLength = 10
            TabOrder = 6
          end
          inherited FrmBusca1: TFrmBusca [24]
            Top = 202
            Width = 266
            TabOrder = 14
            inherited LUZOPEN: TShape
              Left = 235
            end
            inherited LUZMINUS: TShape
              Left = 83
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Width = 203
            end
            inherited BTNOPEN: TBitBtn
              Left = 236
            end
            inherited BTNMINUS: TBitBtn
              Left = 84
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 30
            end
          end
          inherited dbbairro: TDBColorEdit [25]
            Left = 125
            Top = 103
            Width = 193
            TabOrder = 3
          end
          inherited PageControl1: TPageControl [26]
            Top = 351
            Width = 573
            Height = 130
            TabOrder = 18
            inherited TabSheet1: TTabSheet
              inherited GroupBox2: TGroupBox
                Width = 551
                Height = 99
                inherited Shape1: TShape
                  Left = 357
                  Top = 14
                end
                inherited Shape2: TShape
                  Left = 378
                  Top = 14
                end
                inherited DBGrid1: TDBGrid
                  Width = 400
                  Height = 51
                  TitleFont.Height = -9
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o do Telefone'
                      Width = 138
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CONTATO'
                      Title.Caption = 'Contato'
                      Width = 98
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NUMERO'
                      Title.Caption = 'N'#250'mero'
                      Width = 123
                      Visible = True
                    end>
                end
                inherited Memo1: TMemo
                  Left = 405
                  Top = 16
                end
                inherited DBColorEdit47: TDBColorEdit
                  Left = 405
                  Top = 68
                end
                inherited edDescFone: TFlatEdit
                  Left = 1
                  Width = 133
                end
                inherited edContato: TFlatEdit
                  Left = 135
                  Width = 104
                end
                inherited edNumFone: TFlatEdit
                  Left = 240
                  Width = 115
                end
                inherited BtnAddFone: TBitBtn
                  Left = 360
                  Top = 17
                end
                inherited BtnRemFone: TBitBtn
                  Left = 380
                  Top = 16
                end
              end
            end
            inherited TabSheet2: TTabSheet
              inherited GroupBox3: TGroupBox
                Width = 553
                Height = 91
                inherited Shape456: TShape
                  Left = 505
                end
                inherited Shape7984: TShape
                  Left = 526
                end
                inherited DBGrid2: TDBGrid
                  Width = 553
                  Height = 49
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DESCRICAO'
                      Title.Caption = 'Descri'#231#227'o'
                      Width = 156
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EMAIL'
                      Title.Caption = 'E-Mail'
                      Width = 300
                      Visible = True
                    end>
                end
                inherited edDescEmail: TFlatEdit
                  Width = 147
                end
                inherited EdEmail: TFlatEdit
                  Left = 160
                  Width = 337
                end
                inherited btnAddEmail: TBitBtn
                  Left = 508
                end
                inherited btnRemEmail: TBitBtn
                  Left = 528
                end
              end
            end
          end
          inherited PPesFisica: TPanel [27]
            Left = 13
            Top = 4
            Height = 86
            inherited Label7: TLabel
              Left = 125
              Top = -2
            end
            inherited Label4: TLabel
              Left = 389
              Top = -2
            end
            inherited Label5: TLabel
              Left = 514
              Top = 42
            end
            inherited Label6: TLabel
              Left = 1
              Top = 41
            end
            inherited Label2: TLabel
              Left = 0
              Top = -2
            end
            inherited Label37: TLabel
              Left = 659
              Top = 42
              Width = 68
              Caption = 'Dt. Nasc.:'
            end
            inherited DBCPF: TDBColorEdit
              Left = 125
              Top = 17
              Width = 259
              Font.Style = [fsBold]
            end
            inherited DBColorEdit1: TDBColorEdit
              Left = 389
              Top = 17
              Width = 182
              TabOrder = 3
            end
            inherited DBColorEdit3: TDBColorEdit
              Left = 514
              Top = 61
              Width = 141
              TabOrder = 6
            end
            inherited RGSexo: TRadioGroup
              Left = 573
              Top = -3
              Width = 154
              Font.Name = 'BankGothic Md BT'
              TabOrder = 4
            end
            inherited DBNOMEPF: TDBColorEdit
              Left = 0
              Top = 61
              Width = 512
              TabOrder = 5
            end
            inherited DBINTERNO: TDBColorEdit
              Left = 0
              Top = 17
              Hint = #218'ltimo cliente cadastrado: '
              DataField = 'COD_INTERNO'
              DataSource = DMPESSOA.DSCliente
              ParentShowHint = False
              ShowHint = True
            end
            inherited DBColorEdit9: TDBColorEdit
              Left = 658
              Top = 61
              Width = 71
              TabOrder = 7
            end
            object cbVendaVista: TCheckBox
              Left = 259
              Top = 43
              Width = 138
              Height = 15
              Caption = 'SOMENTE A VISTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          inherited FrmNatural: TFrmBusca
            Left = 275
            Top = 202
            Width = 266
            TabOrder = 15
            inherited LUZOPEN: TShape
              Left = 244
            end
            inherited LUZMINUS: TShape
              Left = 82
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Width = 211
            end
            inherited BTNOPEN: TBitBtn
              Left = 245
            end
            inherited BTNMINUS: TBitBtn
              Left = 84
              Visible = False
            end
            inherited EDCodigo: TFlatEdit
              Width = 30
            end
          end
          inherited DBProximidade: TDBColorEdit
            Left = 96
            Top = 141
            Width = 300
            TabOrder = 7
          end
          inherited DBEndNumero: TDBColorEdit
            Left = 672
            Top = 103
            Width = 75
            TabOrder = 5
          end
          inline FrmVendedor: TFrmBusca
            Left = 276
            Top = 240
            Width = 370
            Height = 38
            Color = clWhite
            ParentColor = False
            TabOrder = 17
            inherited LTextoBusca: TLabel
              Width = 68
              Caption = 'Vendedor:'
            end
            inherited LUZOPEN: TShape
              Left = 225
            end
            inherited LUZMINUS: TShape
              Left = 244
            end
            inherited EdDescricao: TFlatEdit
              Left = 34
              Width = 193
            end
            inherited BTNOPEN: TBitBtn
              Left = 227
              OnClick = FrmVendedorBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 246
              OnClick = FrmVendedorBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 31
            end
          end
          object CBATUALIZAR: TCheckBox
            Left = 581
            Top = 293
            Width = 166
            Height = 15
            Caption = 'MARCAR PARA ATUALIZAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
          end
          object CBINATIVO: TCheckBox
            Left = 603
            Top = 468
            Width = 126
            Height = 15
            Caption = 'CLIENTE INATIVO!!!'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
          end
          inline FrmFormPag: TFrmBusca
            Left = 13
            Top = 240
            Width = 258
            Height = 38
            Color = clWhite
            ParentColor = False
            TabOrder = 16
            inherited LTextoBusca: TLabel
              Width = 145
              Caption = 'Forma de Pagamento:'
            end
            inherited LUZOPEN: TShape
              Left = 216
            end
            inherited LUZMINUS: TShape
              Left = 234
            end
            inherited EdDescricao: TFlatEdit
              Left = 33
              Width = 184
            end
            inherited BTNOPEN: TBitBtn
              Left = 217
              OnClick = FrmBusca2BTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 235
              OnClick = FrmFormPagBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 30
              OnKeyDown = FrmFormPagEDCodigoKeyDown
            end
          end
          object CBAtacadista: TCheckBox
            Left = 603
            Top = 451
            Width = 138
            Height = 15
            Caption = 'CLIENTE ATACADISTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 21
          end
          object GroupBox14: TGroupBox
            Left = 576
            Top = 206
            Width = 161
            Height = 40
            Caption = 'Cr'#233'd. de antecipa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            object DBColorEdit53: TDBColorEdit
              Left = 18
              Top = 16
              Width = 126
              Height = 22
              DataField = 'VLRCREDITO'
              DataSource = DMPESSOA.DSPessoa
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object DBColorEdit11: TDBColorEdit
            Left = 594
            Top = 141
            Width = 74
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'MULTA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit52: TDBColorEdit
            Left = 672
            Top = 141
            Width = 74
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'JURO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit54: TDBColorEdit
            Left = 13
            Top = 180
            Width = 350
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'OBS'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit55: TDBColorEdit
            Left = 403
            Top = 141
            Width = 187
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'ENDENTRAGA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object DBColorEdit56: TDBColorEdit
            Left = 368
            Top = 180
            Width = 87
            Height = 21
            Color = clWhite
            Ctl3D = True
            DataField = 'TAMANHO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox13: TGroupBox
            Left = 577
            Top = 246
            Width = 160
            Height = 41
            Caption = 'Lim. de Cr'#233'dito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            object DBColorEdit58: TDBColorEdit
              Left = 17
              Top = 15
              Width = 126
              Height = 22
              DataField = 'LIM_CRED'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              FocusColor = clTan
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object CBContribuinte: TCheckBox
            Left = 603
            Top = 432
            Width = 134
            Height = 15
            Caption = 'CONSUMIDOR FINAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 24
          end
          inline FrmTransp: TFrmBusca
            Left = 14
            Top = 277
            Width = 261
            Height = 43
            Color = clWhite
            ParentColor = False
            TabOrder = 25
            inherited LTextoBusca: TLabel
              Width = 107
              Caption = 'Transportadora:'
            end
            inherited LUZOPEN: TShape
              Left = 214
              Width = 23
            end
            inherited LUZMINUS: TShape
              Left = 237
            end
            inherited EdDescricao: TFlatEdit
              Left = 34
              Width = 181
              ColorFlat = clWhite
            end
            inherited BTNOPEN: TBitBtn
              Left = 216
              OnClick = FrmTransBTNOPENClick
            end
            inherited BTNMINUS: TBitBtn
              Left = 238
              OnClick = FrmTranspBTNMINUSClick
            end
            inherited EDCodigo: TFlatEdit
              Width = 31
              ColorFlat = clLightGreen
              OnKeyPress = FrmTransEDCodigoKeyPress
            end
          end
          object CBFinanceiro: TCheckBox
            Left = 603
            Top = 412
            Width = 137
            Height = 17
            Hint = 
              'Marque esta op'#231#227'o para fazer controle individual do financeiro d' +
              'este cliente.'
            Caption = 'Controle Financeiro'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 26
          end
          object DBColorEdit60: TDBColorEdit
            Left = 459
            Top = 180
            Width = 81
            Height = 22
            Hint = 
              'Obrigat'#243'rio, nas opera'#231#245'es que se beneficiam de incentivos fisca' +
              'is existentes nas '#225'reas sob controleda SUFRAMA. A omiss'#227'o da Ins' +
              'cri'#231#227'o SUFRAMA impede o processamento da opera'#231#227'o pelo Sistema d' +
              'e Mercadoria Nacional da SUFRAMA e a libera'#231#227'o da Declara'#231#227'o de ' +
              'Ingresso, prejudicando a comprova'#231#227'o do ingresso/internamento da' +
              ' mercadoria nas '#225'reas sob controle da SUFRAMA.'
            Ctl3D = True
            DataField = 'DIAVENCIMENTO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 9
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 27
            OnKeyPress = DBColorEdit60KeyPress
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object ContFrequencia: TCheckBox
            Left = 603
            Top = 396
            Width = 150
            Height = 17
            Hint = 
              'Marque esta op'#231#227'o para fazer controle individual de frequ'#234'ncia d' +
              'este cliente.'
            Caption = 'Ctrl. de Frequ'#234'ncia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 28
          end
          object EdFreqVenda: TEdit
            Left = 640
            Top = 368
            Width = 65
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 29
            Text = '0'
          end
          object PTabelaPreco: TPanel
            Left = 277
            Top = 276
            Width = 290
            Height = 49
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 30
            object Label79: TLabel
              Left = 2
              Top = -2
              Width = 107
              Height = 16
              Caption = 'Tabela de Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 3
              Top = 16
              Width = 124
              Height = 22
              DataField = 'COD_TABPRECO'
              DataSource = DMPESSOA.DSCliente
              KeyField = 'COD_TABELAPRECO'
              ListField = 'DESCRICAO'
              ListSource = DMServ.DSTabPreco
              TabOrder = 0
            end
            object btnnovatabela: TBitBtn
              Left = 127
              Top = 15
              Width = 19
              Height = 23
              Hint = 'Adicione Nova Tabela de Pre'#231'o'
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnnovatabelaClick
            end
          end
          object PNovaTabela: TPanel
            Left = 280
            Top = 315
            Width = 248
            Height = 65
            Color = clActiveCaption
            TabOrder = 31
            Visible = False
            object FashionPanel4: TFashionPanel
              Left = 2
              Top = 2
              Width = 244
              Height = 61
              BevelOuter = bvNone
              Color = 16772332
              TabOrder = 0
              RoundRect = True
              About = 'Orion Software'
              ShadowDepth = 2
              ShadowSpace = 5
              ShowShadow = False
              ShadowColor = clBlack
              TitleColor = clSkyBlue
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              Title = 'Adicionar Nova Tabela de Pre'#231'o'
              LineWidth = 0
              LineColor = clBlack
              Theme = ttCustom
              object EdNovaTabela: TEdit
                Left = 8
                Top = 24
                Width = 193
                Height = 24
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Verdana'
                Font.Style = []
                MaxLength = 15
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
              end
              object BitBtn9: TBitBtn
                Left = 208
                Top = 25
                Width = 28
                Height = 25
                Hint = 
                  'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
                  'na lista (ALT + I)'
                Caption = 'Ok'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = BitBtn9Click
                Layout = blGlyphRight
                Spacing = 10
              end
              object BitBtn10: TBitBtn
                Left = 225
                Top = 4
                Width = 15
                Height = 14
                Hint = 
                  'Pressione para remover o produto selecionado na lista da mesma (' +
                  'ALT + E)'
                Caption = 'X'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = BitBtn10Click
                Layout = blGlyphRight
                Spacing = 10
              end
            end
          end
        end
        inherited PEspecifico: TPanel [4]
          Height = 485
          object Label65: TLabel
            Left = 9
            Top = 6
            Width = 67
            Height = 16
            Caption = 'Informa'#231#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 10
            Top = 47
            Width = 136
            Height = 16
            Caption = 'Observa'#231#227'o Financeira:'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox10: TGroupBox
            Left = 8
            Top = 313
            Width = 161
            Height = 84
            Caption = 'Lim. de Cr'#233'dito'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object LIMCRED: TDBColorEdit
              Left = 3
              Top = 17
              Width = 155
              Height = 30
              DataField = 'LIM_CRED'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -21
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              FocusColor = clTan
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object BitBtn1: TBitBtn
              Left = 4
              Top = 47
              Width = 153
              Height = 34
              Caption = 'ca&lcular'
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777700000000000000070777777777777707078078078078070707F07F07F07
                F07070777777777777707078078078078070707F07F07F07F070707777777777
                777070700000000077707070FFFFFFF077707070000000007770707777777777
                7770770000000000000777777777777777777777777777777777}
            end
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 84
            Width = 161
            Height = 225
            Caption = 'RECEITAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label38: TLabel
              Left = 8
              Top = 124
              Width = 138
              Height = 18
              Caption = 'Honor'#225'rios Profiss.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 8
              Top = 174
              Width = 116
              Height = 18
              Caption = 'Outras Receitas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 8
              Top = 26
              Width = 116
              Height = 18
              Caption = 'Sal'#225'rio Conjuge:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 75
              Width = 107
              Height = 18
              Caption = 'Sal'#225'rio Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object SALCONJ: TDBColorEdit
              Left = 8
              Top = 43
              Width = 129
              Height = 24
              DataField = 'R_SAL_CONJ'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object SALCLI: TDBColorEdit
              Left = 8
              Top = 92
              Width = 129
              Height = 24
              DataField = 'R_SALARIO'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object HONPROF: TDBColorEdit
              Left = 8
              Top = 144
              Width = 129
              Height = 24
              DataField = 'R_HON_PROF'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object OUTREC: TDBColorEdit
              Left = 8
              Top = 193
              Width = 129
              Height = 24
              DataField = 'R_OUTREC'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox9: TGroupBox
            Left = 168
            Top = 84
            Width = 161
            Height = 273
            Caption = 'DESPESAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label40: TLabel
              Left = 8
              Top = 24
              Width = 55
              Height = 18
              Caption = 'Aluguel:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 8
              Top = 74
              Width = 83
              Height = 18
              Caption = 'Resid'#234'ncia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 8
              Top = 124
              Width = 54
              Height = 18
              Caption = 'Ve'#237'culo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 8
              Top = 174
              Width = 55
              Height = 18
              Caption = 'Fam'#237'lia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 8
              Top = 224
              Width = 126
              Height = 18
              Caption = 'Outras Despesas:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DALUG: TDBColorEdit
              Left = 8
              Top = 43
              Width = 129
              Height = 24
              DataField = 'D_ALUGUEL'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 0
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DRESID: TDBColorEdit
              Left = 8
              Top = 92
              Width = 129
              Height = 24
              DataField = 'D_RESIDENCIA'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 1
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DVEIC: TDBColorEdit
              Left = 8
              Top = 144
              Width = 129
              Height = 24
              DataField = 'D_VEICULO'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 2
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object DFAM: TDBColorEdit
              Left = 8
              Top = 193
              Width = 129
              Height = 24
              DataField = 'D_FAMILIAR'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 3
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
            object OUTDESP: TDBColorEdit
              Left = 8
              Top = 243
              Width = 129
              Height = 24
              DataField = 'D_OUTDESP'
              DataSource = DMPESSOA.DSCliente
              TabOrder = 4
              NotFoundText = 'N'#227'o Existe'
              InputText = 'Por favor entre na procura pelo crit'#233'rio'
              ButtonCaption = 'Ok'
            end
          end
          object GroupBox11: TGroupBox
            Left = 336
            Top = 84
            Width = 409
            Height = 131
            Caption = 'Descri'#231#227'o dos bens do cliente '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object DBMemo1: TDBMemo
              Left = 8
              Top = 24
              Width = 393
              Height = 101
              DataField = 'BENS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox12: TGroupBox
            Left = 334
            Top = 220
            Width = 411
            Height = 137
            Caption = 'Informa'#231#245'es Comerciais / Particularidades'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object DBMemo2: TDBMemo
              Left = 8
              Top = 24
              Width = 393
              Height = 109
              DataField = 'INFOCOM'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit57: TDBColorEdit
            Left = 8
            Top = 24
            Width = 737
            Height = 22
            Color = clWhite
            DataField = 'INFORMACAO'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
          object GroupBox16: TGroupBox
            Left = 176
            Top = 360
            Width = 570
            Height = 81
            Caption = 'Pessoas autorizadas a comprar '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'BankGothic Md BT'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            object DBMemo3: TDBMemo
              Left = 8
              Top = 18
              Width = 555
              Height = 55
              DataField = 'AUTORIZADOS'
              DataSource = DMPESSOA.DSCliente
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'BankGothic Md BT'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBColorEdit61: TDBColorEdit
            Left = 8
            Top = 62
            Width = 737
            Height = 22
            Color = clWhite
            DataField = 'OBSFINANCEIRA'
            DataSource = DMPESSOA.DSCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            NotFoundText = 'N'#227'o Existe'
            InputText = 'Por favor entre na procura pelo crit'#233'rio'
            ButtonCaption = 'Ok'
          end
        end
      end
      inherited PTipoPessoa: TPanel
        Left = 240
        Top = 40
      end
    end
    inherited Panel1: TPanel
      inherited DBNOMESUPER: TDBText
        Left = 209
        Width = 553
      end
      object Shape3: TShape [1]
        Left = 205
        Top = 4
        Width = 1
        Height = 21
      end
      object Shape5: TShape [2]
        Left = 202
        Top = 6
        Width = 1
        Height = 16
      end
      object Shape6: TShape [3]
        Left = 208
        Top = 6
        Width = 1
        Height = 16
      end
    end
  end
  object QRAniver: TQuickRep [11]
    Left = 1040
    Top = 361
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMPESSOA.TALX
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand13: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 74
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        195.791666666666700000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRLabel24: TQRLabel
        Left = -1
        Top = 1
        Width = 739
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          -2.645833333333330000
          2.645833333333330000
          1955.270833333330000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio por Anivers'#225'rio de Clientes'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData7: TQRSysData
        Left = 574
        Top = 1
        Width = 165
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1518.708333333330000000
          2.645833333333330000
          436.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Pag.'
        Transparent = False
        FontSize = 10
      end
      object QRSysData8: TQRSysData
        Left = 470
        Top = 19
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1243.541666666670000000
          50.270833333333300000
          711.729166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDateTime
        Text = 'Emiss'#227'o:'
        Transparent = False
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 6
        Top = 24
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          63.500000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLIntervalo: TQRLabel
        Left = 6
        Top = 48
        Width = 203
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          127.000000000000000000
          537.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aniversariantes de 01/07 At'#233' 30/07'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 1
        Top = 67
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          177.270833333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 1
        Top = 70
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          185.208333333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand14: TQRBand
      Left = 38
      Top = 132
      Width = 740
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText21: TQRDBText
        Left = 74
        Top = 1
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          195.791666666667000000
          2.645833333333330000
          235.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'TELREL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 164
        Top = 1
        Width = 205
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          433.916666666667000000
          2.645833333333330000
          542.395833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 372
        Top = 1
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          984.250000000000000000
          2.645833333333330000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'BAIRRO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 505
        Top = 1
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1336.145833333330000000
          2.645833333333330000
          243.416666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText26: TQRDBText
        Left = 652
        Top = 1
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1725.083333333330000000
          2.645833333333330000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CEP'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 3
        Top = 1
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          7.937500000000000000
          2.645833333333330000
          185.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'DTNASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand15: TQRBand
      Left = 38
      Top = 112
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel25: TQRLabel
        Left = 75
        Top = 1
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          198.437500000000000000
          2.645833333333333000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fone:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 3
        Top = 1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nasc.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 655
        Top = 1
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1733.020833333333000000
          2.645833333333333000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 507
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          2.645833333333333000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 375
        Top = 1
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          2.645833333333333000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bairro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 164
        Top = 1
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          433.916666666666800000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 1
        Top = 17
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          44.979166666666700000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand16: TQRBand
      Left = 38
      Top = 151
      Width = 740
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRShape13: TQRShape
        Left = 5
        Top = 4
        Width = 707
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          13.229166666666700000
          10.583333333333300000
          1870.604166666670000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRDBText9: TQRDBText
        Left = 349
        Top = 8
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          923.395833333333400000
          21.166666666666670000
          71.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TMP3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object QRAniverConj: TQuickRep [12]
    Left = 876
    Top = 352
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DMPESSOA.TALX
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 74
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        195.791666666666700000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = -1
        Top = 1
        Width = 739
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          -2.645833333333330000
          2.645833333333330000
          1955.270833333330000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Relat'#243'rio por Anivers'#225'rio de Conjuge'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData1: TQRSysData
        Left = 574
        Top = 1
        Width = 165
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1518.708333333330000000
          2.645833333333330000
          436.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = 'Pag.'
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 470
        Top = 19
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1243.541666666670000000
          50.270833333333300000
          711.729166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDateTime
        Text = 'Emiss'#227'o:'
        Transparent = False
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 6
        Top = 24
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          63.500000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TEmpresa
        DataField = 'FANTASIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 6
        Top = 48
        Width = 203
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          127.000000000000000000
          537.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aniversariantes de 01/07 At'#233' 30/07'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 67
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          177.270833333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 70
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          185.208333333333000000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 132
      Width = 740
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        97.895833333333330000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 546
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          2.645833333333333000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CLIENTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 78
        Top = 1
        Width = 233
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          206.375000000000000000
          2.645833333333330000
          616.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'NOME_CONJ'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 300
        Top = 17
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          44.979166666666670000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'BAIRRO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 300
        Top = 1
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          2.645833333333333000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'ENDERECO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 114
        Top = 17
        Width = 183
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          301.625000000000000000
          44.979166666666700000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'CEP'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 3
        Top = 1
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          7.937500000000000000
          2.645833333333330000
          185.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'DTNASC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 77
        Top = 17
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          44.979166666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 546
        Top = 17
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          44.979166666666670000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TALX
        DataField = 'TELREL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 112
      Width = 740
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 547
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1447.270833333333000000
          2.645833333333333000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 3
        Top = 1
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nasc.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 299
        Top = 1
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          791.104166666666700000
          2.645833333333333000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 77
        Top = 1
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          2.645833333333333000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conjuge'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 17
        Width = 738
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          2.645833333333330000
          44.979166666666700000
          1952.625000000000000000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 169
      Width = 740
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRShape4: TQRShape
        Left = 5
        Top = 4
        Width = 707
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          13.229166666666700000
          10.583333333333300000
          1870.604166666670000000)
        Pen.Style = psDash
        Shape = qrsRectangle
      end
      object QRDBText10: TQRDBText
        Left = 352
        Top = 8
        Width = 23
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          931.333333333333300000
          21.166666666666670000
          60.854166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DMMACS.TLoja
        DataField = 'TMP3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
    end
  end
  inherited PBotoes: TPanel
    Top = -11
  end
  object QREtiqMalaDireta: TQuickRep [14]
    Left = 56
    Top = 656
    Width = 794
    Height = 1134
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QREtiqMalaDiretaBeforePrint
    DataSet = DMPESSOA.TRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      0.000000000000000000
      3000.000000000000000000
      0.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      70.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand6: TQRBand
      Left = 38
      Top = 0
      Width = 346
      Height = 113
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand6BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        298.979166666666700000
        915.458333333333300000)
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Left = 8
        Top = 27
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          71.437500000000000000
          849.312499999999900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = DMPESSOA.TRel
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQEndereco: TQRLabel
        Left = 8
        Top = 45
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          119.062500000000000000
          849.312499999999900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQBairro: TQRLabel
        Left = 8
        Top = 62
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          164.041666666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQCidade: TQRLabel
        Left = 8
        Top = 78
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          206.375000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LbQCep: TQRLabel
        Left = 8
        Top = 94
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          248.708333333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LbQNome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited Relatorio: TPopupMenu
    Left = 497
    Top = 19
    object Aniversrio1: TMenuItem
      Caption = 'Anivers'#225'rio'
      OnClick = Aniversrio1Click
    end
    object FichaOtica1: TMenuItem
      Caption = 'Ficha Otica'
      OnClick = FichaOtica1Click
    end
    object FichadeInformaes1: TMenuItem
      Caption = 'Ficha de Informa'#231#245'es'
      OnClick = FichadeInformaes1Click
    end
    object Extratodecontas1: TMenuItem
      Caption = 'Extrato de contas'
      OnClick = Extratodecontas1Click
    end
    object RelatriodeVendas1: TMenuItem
      Caption = 'Relat'#243'rio de Vendas'
      OnClick = RelatriodeVendas1Click
    end
    object RelatriodeCadastros1: TMenuItem
      Caption = 'Relat'#243'rio de Cadastros'
      OnClick = RelatriodeCadastros1Click
    end
    object RelatrioporCidade1: TMenuItem
      Caption = 'Relat'#243'rio por Cidade'
      OnClick = RelatrioporCidade1Click
    end
    object EtiquetaMalaDireta1: TMenuItem
      Caption = 'Etiqueta Mala Direta'
      OnClick = EtiquetaMalaDireta1Click
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      OnClick = Vendas1Click
    end
  end
  inherited XMLDocument1: TXMLDocument
    Top = 66
  end
  inherited AlteraPessoa: TPopupMenu
    Left = 492
    Top = 35
  end
  object MenuSeparar: TPopupMenu
    Left = 626
    Top = 30
    object SCPC1: TMenuItem
      Caption = 'SCPC'
      OnClick = SCPC1Click
    end
    object Separar1: TMenuItem
      Caption = 'Filtro [0]'
      OnClick = Separar1Click
    end
    object Juntar1: TMenuItem
      Caption = 'Filtro [1]'
      OnClick = Juntar1Click
    end
    object AlteraFisicaJuridica2: TMenuItem
      Caption = 'Altera Fisica Juridica'
      OnClick = AlteraFisicaJuridica2Click
    end
    object MarcarDesmarcar1: TMenuItem
      Caption = 'Marcar/Desmarcar'
      OnClick = MarcarDesmarcar1Click
    end
    object MarcarDesmarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarDesmarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
  object FSRel: TfrReport
    Dataset = FDSCaixa
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 448
    Top = 18
    ReportForm = {18000000}
  end
  object FDSCaixa: TfrDBDataSet
    DataSource = DMCONTA.DRel
    Left = 416
    Top = 18
  end
  object RVRel: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = RVRelPrint
    Left = 741
    Top = 162
  end
  object FSMalaDireta: TfrReport
    Dataset = FDSMalaDireta
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 625
    Top = 241
    ReportForm = {18000000}
  end
  object FDSMalaDireta: TfrDBDataSet
    DataSource = DMPESSOA.DSRel
    Left = 673
    Top = 241
  end
  object FSVendaCli: TfrReport
    Dataset = FDSVendaCli
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 633
    Top = 329
    ReportForm = {18000000}
  end
  object FDSVendaCli: TfrDBDataSet
    DataSource = DMMACS.DTMP
    Left = 673
    Top = 329
  end
end
