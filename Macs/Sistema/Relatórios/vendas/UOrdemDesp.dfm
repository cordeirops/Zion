inherited FOrdemDesp: TFOrdemDesp
  Left = 28
  Top = 80
  Caption = 'FOrdemDesp'
  ClientHeight = 604
  ClientWidth = 958
  Color = clWhite
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeFundo: TShape
    Width = 958
    Height = 573
  end
  inherited SpTitulo01: TShape
    Width = 745
  end
  inherited SpTitulo02: TShape
    Width = 740
  end
  inherited LDescTitulo: TLabel
    Width = 236
    Caption = 'Ordem de Servi'#231'os Despachante'
  end
  object PConsulta: TPanel [5]
    Left = 7
    Top = 36
    Width = 946
    Height = 562
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object PExp: TPanel
      Left = 120
      Top = 225
      Width = 577
      Height = 56
      TabOrder = 5
      Visible = False
      object LBCONEXAO: TLabel
        Left = 32
        Top = 8
        Width = 212
        Height = 16
        Alignment = taCenter
        Caption = 'FAZENDO CONEX'#195'O COM O BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PBExport: TProgressBar
        Left = 30
        Top = 29
        Width = 516
        Height = 20
        TabOrder = 0
      end
    end
    object DBGridConsulta: TDBGrid
      Left = 4
      Top = 116
      Width = 941
      Height = 381
      Hint = 'Ap'#243's alterar o lay-out da grade,  pressione ctrl+s para salvar'
      TabStop = False
      Color = 15794175
      Ctl3D = False
      DataSource = DMServ.DWOrdemDesp
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGridConsultaCellClick
      OnDrawColumnCell = DBGridConsultaDrawColumnCell
      OnKeyDown = DBGridConsultaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'STATUS'
          Title.Caption = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA'
          Title.Caption = 'Placa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Ve'#237'culo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RENAVAM'
          Title.Caption = 'Renavam'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMAPAG'
          Title.Caption = 'Pagamento'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTABERT'
          Title.Caption = 'Abertura'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTPREV'
          Title.Caption = 'Previs'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTFECH'
          Title.Caption = 'Fechamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SACADO'
          Title.Caption = 'Sacado'
          Visible = True
        end>
    end
    object PBotoesConsulta: TPanel
      Left = 2
      Top = 6
      Width = 943
      Height = 31
      BevelInner = bvLowered
      BorderWidth = 1
      Color = clWhite
      TabOrder = 0
      object BtnNovo: TBitBtn
        Left = 3
        Top = 3
        Width = 134
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para obter novo cadastro'
        Caption = 'Novo - F4'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnNovoClick
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B8030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF6060606060606060
          6060606060606060606060606060606060606060606060606060606060606060
          6060FFFFFFFFFFFF0000FFFFFF60606060CFDF009FCF2090C020A0CF20A0CF20
          A0CF30AFCF30AFCF30BFDF40BFD040BFD040BFD06F9FBF606060FFFFFFFFFFFF
          0000FFFFFF409FBF60CFDF0F70A02F90BF2F90BF2F90BF2F90BF2F90BF2F90BF
          2F90BF2F90BF2F90BF2F90BF2F90BF4080A0606060FFFFFF0000FFFFFF409FBF
          60CFDF2F8FB0B0FFFFB0FFFFB0FFFFAFFFFF90EFF090EFF090EFF0AFFFFFAFFF
          FFAFFFFF40AFC0606060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CF70B0CFC0FF
          FFC0FFFFCFCFAFA0604FA0604FA0604F506F6F10A0D0B0FFFFB0FFFF4080A060
          6060FFFFFFFFFFFF0000FFFFFF409FBF4FB0CFBFE0EFD0FFFFCFCFAFAF40009F
          30009F3000A03F10BF5030706F6F40BFD0B0FFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF409FBF40AFC0BFE0EFE0F0E0AF4000AF4000904F00106000AF4000
          A03F008F502F30809FB0FFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B0
          30AFCFCFE0EFF0D090BF5000D06F006F70000F8000BF6F00A05F004F70007F70
          4F8FDFEF5F80A0606060FFFFFFFFFFFF0000FFFFFF3090B030AFCFD0E0EFE0AF
          60D07000508F00AF8F00E09000EF80001F70000060004F5F00A0E0FF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF3090B02F90BFD0E0EFF0EFB08F8F0020BF402F
          C050FFCF6FFF9000AF8F001F700030702FEFFFFF5F80A0606060FFFFFFFFFFFF
          0000FFFFFF308FB01F90BFD0E0EFFFFFEF20BF404FD070AFEFAFCFF0B0F0B04F
          D090004F7000AFCFAFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF308FB0
          0080B0D0E0EFFFFFFFBFEFC090D070CFF0B0D0E0904FC050EF8000CFA050FFFF
          FFFFFFFF5F80A0606060FFFFFFFFFFFF0000FFFFFF2F8FB00080B0D0E0EFFFFF
          FFFFFFFFF0F0CFD0E0908FDF806FCF6FF0D090FFFFFFFFFFFFFFFFFF5F80A060
          6060FFFFFFFFFFFF0000FFFFFF2F8FB0007FB0D0E0EFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FBF606060FFFFFFFFFFFF
          0000FFFFFF308FB000609F1F8FB01F90BF1F90BF1F90BF1F90BF1F90BF1F90BF
          1F90BF1F90BF1F90BF1F90BF6F9FBF606060FFFFFFFFFFFF0000FFFFFFFFFFFF
          5090C0B0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DFEFB0DF
          EFBFE0F06F9FBFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnApagar: TBitBtn
        Left = 136
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para apagar o registro selecionado a baixo'
        Caption = 'Apagar - F8'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnApagarClick
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
      object BtnConsultar: TBitBtn
        Left = 265
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para visualizar ou alterar os dados do regi' +
          'stro selecionado a baixo'
        Caption = 'Consultar - F6'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnConsultarClick
        Glyph.Data = {
          CA020000424DCA0200000000000036000000280000000E0000000F0000000100
          18000000000094020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4F6F704F5F5F2F2F
          2F303030FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF80CFE06FC0EF40A0C03F809F3F6F7F4F5F602F2F2F303030FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF9FE0FF7FE0FF7FE0FF70DFFF60
          D0F04FB0D0408FA0405F6FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF60C0EF90
          DFF080EFFF80EFFF80EFFF80EFFF8FEFFF8FEFFF4FA0BF2F2F2FFFFFFFFFFFFF
          0000FFFFFFFFFFFF6FCFF070CFEF9FFFFF90FFFF90EFF08FF0FF90FFFF8FF0FF
          90EFF040606FFFFFFFFFFFFF0000FFFFFFFFFFFF7FCFF05FCFF0B0EFF0B0FFFF
          EFE0C0C0DFCF9FFFFFAFDFD0D0EFE05F9FAF303030FFFFFF0000FFFFFFFFFFFF
          80DFF07FE0FF70DFFF70DFF080C0D0DFE0DFEFE0CFFFEFCFF0F0E0BFE0EF4F5F
          60FFFFFF0000FFFFFFFFFFFF9FEFF090FFFF90FFFF90E0DFC0AF80D0CFAFC0E0
          E0B0CFC08FBFC0BFE0F04F7F8FFFFFFF0000FFFFFFFFFFFFA0E0F09FFFFF9FF0
          EFE0B07FFFEFDFFFDFBFFFE0CFFFEFDFA07F4F4F4040FFFFFFFFFFFF0000FFFF
          FFFFFFFF5F9FAFAFE0F0A0E0F0608F9070604FEFBF90FFDFAFD0B08FF0CFA08F
          6F4FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF
          805FF0CFA03F2F1FFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF70604FE0B080202020FFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object BtnRelatorio: TBitBtn
        Left = 394
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para visualizar tela de relat'#243'rios'
        Caption = '&Relat'#243'rios'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BtnRelatorioClick
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
      object BtnCancelamentos: TBitBtn
        Left = 653
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Possibilita a troca de produtos dos pedido selecionado'
        Caption = 'Cancelamentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnCancelamentosClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BtnFechaPed: TBitBtn
        Left = 523
        Top = 3
        Width = 130
        Height = 25
        Cursor = crHandPoint
        Hint = 'Fecha a ordem de servi'#231'o  selecionada na tela abaixo'
        Caption = 'F&echar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BtnFechaPedClick
        Glyph.Data = {
          B6030000424DB603000000000000360000002800000012000000100000000100
          18000000000080030000C40E0000C40E00000000000000000000C0C0C000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000000000000000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00C0C0C00000C0C0C0C0C0C000FF0000FF0000FF
          0000FF0000FF0000000000000000000000000000FF0000FF0000FF0000FF0000
          FF00C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000000000FF0000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000FF00000000000000000000
          00000000FF0000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          BFBFBFBFBFBFBFBFBF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF
          00BFBFBFBFBFBFC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0BFBFBFBFBFBFBFBF
          BFC0C0C000FF0000000000000000000000000000FF00BFBFBFBFBFBFBFBFBFBF
          BFBFC0C0C0C0C0C00000C0C0C0C0C0C000FF0000FF0000FF0000FF0000FF0000
          FF0000000000000000FF0000FF0000FF0000FF0000FF0000FF00C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C0007F0000FF0000FF0000FF00000000000000
          00FF0000FF0000FF00007F00C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C08080807F7F7F7F7F00007F0000FF0000FF0000FF0000FF007F7F007F7F
          7F000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          80FF00007F00007F000000FF0000FF007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F
          00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0808080808080FF00007F00007F00007F00007F0000
          7F00007F00007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0808080808080FF00007F00007F00007F00007F00007F00007F00007F7F
          7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080
          807F0000FF00007F00007F00007F00007F00007F00007F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C08080808080807F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F8080807F7F7FC0C0C0C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0C0C0C08080807F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 63
      Width = 105
      Height = 38
      Alignment = alTopLeft
      Caption = 'FILTRO'
      Ctl3D = True
      ParentCtl3D = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 1
      object CBFILTRO: TcxComboBox
        Left = 0
        Top = 17
        Width = 105
        Height = 21
        Hint = 'FILTRAR ORDENS DE SERVI'#199'O'
        ParentFont = False
        ParentShowHint = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'TODAS'
          'ABERTAS'
          'FECHADAS'
          'TERMINADAS'
          'PARADAS'
          'EXECUTANDO')
        Properties.OnEditValueChanged = CBFILTROPropertiesEditValueChanged
        ShowHint = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = 'ABERTAS'
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 115
      Top = 63
      Width = 94
      Height = 38
      Alignment = alTopLeft
      Caption = 'ORDEM'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 2
      object CBORDEM: TcxComboBox
        Left = 0
        Top = 17
        Width = 94
        Height = 21
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '+ RECENTE'
          'NUMERO'
          'CLIENTE'
          'DATA'
          'PLACA')
        Properties.OnEditValueChanged = CBFILTROPropertiesEditValueChanged
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        TabOrder = 0
        Text = '+ RECENTE'
      end
    end
    object GBPLACA: TcxGroupBox
      Left = 212
      Top = 39
      Width = 733
      Height = 74
      Alignment = alTopLeft
      Caption = 'LOCALIZAR - F2'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      TabOrder = 3
      object EdPlaca: TFlatEdit
        Left = 242
        Top = 17
        Width = 95
        Height = 23
        Hint = 
          'Digite aqui, o n'#250'mero da placa do ve'#237'culo para ser localizado co' +
          'm maior facilidade. Press <ENTER> para consultar e <ESC> para li' +
          'berar todos. '
        ColorFocused = clLightYellow
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        Text = 'PLACA'
        OnEnter = EdPlacaEnter
        OnExit = EdPlacaExit
        OnKeyPress = EdPlacaKeyPress
      end
      object EDNum: TFlatEdit
        Left = 7
        Top = 17
        Width = 58
        Height = 23
        Hint = 
          'Digite aqui, o n'#250'mero da OS para ser localizada com maior facili' +
          'dade. Press <ENTER> para consultar e <ESC> para liberar todos. '
        ColorFocused = clLightYellow
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = 'N'#250'mero'
        OnEnter = EDNumEnter
        OnExit = EDNumExit
        OnKeyPress = EDNumKeyPress
      end
      object EDCliente: TFlatEdit
        Left = 338
        Top = 17
        Width = 391
        Height = 23
        Hint = 
          'Digite aqui, o nome do cliente para ser localizado com maior fac' +
          'ilidade. Press <ENTER> para consultar e <ESC> para liberar todos' +
          '. '
        ColorFocused = 11468799
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Text = 'CLIENTE'
        OnEnter = EDClienteEnter
        OnExit = EDClienteExit
        OnKeyPress = EDClienteKeyPress
      end
      object EdRenavam: TFlatEdit
        Left = 66
        Top = 17
        Width = 175
        Height = 23
        Hint = 
          'Digite aqui, o n'#250'mero Renavam do ve'#237'culo para ser localizado com' +
          ' maior facilidade. Press <ENTER> para consultar e <ESC> para lib' +
          'erar todos. '
        ColorFocused = clLightYellow
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = 'Renavam'
        OnEnter = EdRenavamEnter
        OnExit = EdRenavamExit
        OnKeyPress = EdRenavamKeyPress
      end
      object EdSacado: TFlatEdit
        Left = 6
        Top = 45
        Width = 391
        Height = 23
        Hint = 
          'Digite aqui, o nome do cliente para ser localizado com maior fac' +
          'ilidade. Press <ENTER> para consultar e <ESC> para liberar todos' +
          '. '
        ColorFocused = 12713982
        ColorBorder = clBlack
        ColorFlat = clWhite
        ParentColor = True
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Text = 'SACADO'
        OnEnter = EdSacadoEnter
        OnExit = EdSacadoExit
        OnKeyPress = EdSacadoKeyPress
      end
    end
    object DBGridResumoOS: TDBGrid
      Left = 4
      Top = 504
      Width = 337
      Height = 57
      Hint = 'Ap'#243's alterar o lay-out da grade,  pressione ctrl+s para salvar'
      TabStop = False
      Color = 15794175
      Ctl3D = False
      DataSource = DMServ.DSAlx
      FixedColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGridResumoOSDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DTLANC'
          Title.Caption = 'Dt Lan'#231'amento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENC'
          Title.Caption = 'Dt. Vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECH'
          Title.Caption = 'Baixado'
          Width = 50
          Visible = True
        end>
    end
  end
  object PCadastro: TPanel [6]
    Left = 7
    Top = 36
    Width = 947
    Height = 558
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    Visible = False
    object Panel4: TPanel
      Left = 2
      Top = 35
      Width = 943
      Height = 520
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 1
      object Label24: TLabel
        Left = 389
        Top = 134
        Width = 137
        Height = 19
        Caption = 'Contato no Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbDiaSemanaPrev: TLabel
        Left = 146
        Top = 237
        Width = 85
        Height = 15
        Caption = 'Dia da Semana'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label25: TLabel
        Left = 146
        Top = 190
        Width = 59
        Height = 19
        Caption = 'Previs'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbDiaSemanaAbert: TLabel
        Left = 13
        Top = 237
        Width = 85
        Height = 15
        Caption = 'Dia da Semana'
        Color = 16772332
        Font.Charset = ANSI_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LTextoBusca: TLabel
        Left = 13
        Top = 190
        Width = 68
        Height = 19
        Caption = 'Abertura:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 665
        Top = 6
        Width = 130
        Height = 16
        Caption = 'Adiantamento R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 389
        Top = 190
        Width = 88
        Height = 19
        Caption = 'Observa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 414
        Top = 261
        Width = 51
        Height = 16
        Caption = 'Quant.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 471
        Top = 262
        Width = 64
        Height = 16
        Caption = 'Vlr. Unit.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 554
        Top = 262
        Width = 43
        Height = 16
        Caption = 'Desc.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 630
        Top = 262
        Width = 40
        Height = 16
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Shape2: TShape
        Left = 168
        Top = 305
        Width = 508
        Height = 25
        Pen.Color = clSkyBlue
        Pen.Width = 2
      end
      object LServico: TLabel
        Left = 171
        Top = 310
        Width = 128
        Height = 16
        Caption = 'Selecione o Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4868685
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LQTDSERV: TLabel
        Left = 684
        Top = 488
        Width = 250
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd L: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 306
        Top = 261
        Width = 71
        Height = 16
        Caption = 'Vlr. Custo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 193
        Top = 262
        Width = 91
        Height = 16
        Caption = 'C'#243'd. Interno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 803
        Top = 32
        Width = 51
        Height = 19
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSaldo: TLabel
        Left = 859
        Top = 32
        Width = 35
        Height = 19
        BiDiMode = bdLeftToRight
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      inline FrmCliente: TFrmBusca
        Left = 8
        Top = 63
        Width = 371
        Height = 54
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 54
          Height = 19
          Caption = 'Cliente:'
          Font.Height = -16
          Font.Name = 'Tahoma'
        end
        inherited LUZOPEN: TShape
          Left = 342
          Top = 21
          Width = 28
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited EdDescricao: TFlatEdit
          Left = 59
          Top = 23
          Width = 284
          Height = 24
          Font.Height = -16
        end
        inherited BTNOPEN: TBitBtn
          Left = 344
          Top = 23
          Width = 24
          Height = 23
          OnClick = FrmClienteBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 436
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 23
          Width = 55
          Height = 24
          ColorFlat = 15400921
          Font.Height = -16
          OnKeyDown = FrmClienteEDCodigoKeyDown
        end
      end
      inline FBEquipPlaca: TFrmBusca
        Left = 387
        Top = 79
        Width = 494
        Height = 50
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 1
        TabStop = True
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 71
          Height = 19
          Caption = 'Renavam:'
          Font.Height = -16
          Font.Name = 'Tahoma'
        end
        inherited LUZOPEN: TShape
          Left = 457
          Top = 21
          Width = 28
          Height = 26
        end
        inherited LUZMINUS: TShape
          Left = 519
        end
        inherited EdDescricao: TFlatEdit
          Left = 167
          Top = 23
          Width = 290
          Height = 24
          TabStop = False
          ColorFlat = 16318450
          Font.Height = -16
        end
        inherited BTNOPEN: TBitBtn
          Left = 458
          Top = 23
          Width = 23
          Height = 23
          OnClick = FBEquipPlacaBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 518
          Enabled = False
          TabStop = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 23
          Width = 165
          Height = 24
          ColorFlat = 15400921
          CharCase = ecUpperCase
          Font.Height = -16
          OnExit = FBEquipPlacaEDCodigoExit
          OnKeyDown = FBEquipPlacaEDCodigoKeyDown
        end
      end
      object EdObsFinanceira: TEdit
        Left = 11
        Top = 113
        Width = 369
        Height = 18
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      inline FrmFormPag1: TFrmBusca
        Left = 2
        Top = 131
        Width = 381
        Height = 53
        Color = clWhite
        ParentColor = False
        TabOrder = 2
        inherited LTextoBusca: TLabel
          Left = 10
          Width = 157
          Height = 19
          Caption = 'Forma de pagamento:'
          Font.Height = -16
          Font.Name = 'Tahoma'
        end
        inherited LUZOPEN: TShape
          Left = 319
          Top = 22
          Width = 29
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 348
          Top = 22
          Width = 29
          Height = 27
        end
        inherited EdDescricao: TFlatEdit
          Left = 66
          Top = 23
          Width = 253
          Height = 24
          TabStop = False
          ColorFlat = clWhite
          Font.Height = -16
        end
        inherited BTNOPEN: TBitBtn
          Left = 320
          Top = 25
          Width = 28
          Height = 22
          OnClick = FrmFormPag1BTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 348
          Top = 25
          Width = 28
          Height = 22
          OnClick = FrmFormPag1BTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Left = 9
          Top = 23
          Width = 55
          Height = 24
          ColorFlat = 15269845
          Font.Height = -16
          OnExit = FrmFormPag1EDCodigoExit
          OnKeyDown = FrmFormPag1EDCodigoKeyDown
        end
      end
      object EdContatoCliente: TDBEdit
        Left = 388
        Top = 156
        Width = 357
        Height = 26
        Color = 15138815
        DataField = 'CONTATO'
        DataSource = DMServ.DOrd
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 168
        Top = 331
        Width = 769
        Height = 155
        Caption = 'Lista de servi'#231'o da ordem'
        Color = 15329769
        Ctl3D = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 17
        object DBGrid2: TDBGrid
          Left = 2
          Top = 14
          Width = 765
          Height = 139
          Color = 14221052
          Ctl3D = False
          DataSource = DMESTOQUE.DSSlaveServ
          FixedColor = 11039232
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PMServicos
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnKeyDown = DBGrid2KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Servi'#231'os'
              Width = 250
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'QTD'
              Title.Alignment = taRightJustify
              Title.Caption = 'Quant.'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNIT'
              Title.Alignment = taRightJustify
              Title.Caption = 'Unit'#225'rio (R$)'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Desc. (%)'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Total ($)'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Data'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Atendente'
              Width = 300
              Visible = True
            end>
        end
      end
      object RGSituacao: TRadioGroup
        Left = 12
        Top = 370
        Width = 123
        Height = 111
        Caption = 'Situa'#231#227'o da Ordem'
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Aberta'
          'Executando'
          'Parada'
          'Terminada')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object DBDTPREV: TColorMaskEdit
        Left = 144
        Top = 214
        Width = 119
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = DBDTPREVExit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDTABERT: TColorMaskEdit
        Left = 11
        Top = 214
        Width = 120
        Height = 24
        EditMask = '!99/99/0000;1;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
        Text = '  /  /    '
        OnExit = ColorMaskEdit1Exit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnProcServ: TBitBtn
        Left = 168
        Top = 280
        Width = 22
        Height = 20
        Hint = 'Pressione para localizar o Produto'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BtnProcServClick
        Glyph.Data = {
          B6000000424DB60000000000000036000000280000000A000000040000000100
          18000000000080000000C40E0000C40E00000000000000000000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD090602F
          90602FC0CFD090602F90602FC0CFD090602F90602FC0CFD00000C0CFD0C0CFD0
          C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD0C0CFD00000}
      end
      object EdCodInternoServ: TColorEditFloat
        Left = 191
        Top = 278
        Width = 102
        Height = 24
        Color = 15269845
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = '0'
        EditType = fltString
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDQtdServ: TColorEditFloat
        Left = 410
        Top = 278
        Width = 55
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        Text = '0,00'
        OnExit = EDQtdServExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EDVlrUnitServ: TColorEditFloat
        Left = 470
        Top = 278
        Width = 65
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        Text = '0,00'
        OnExit = EDQtdServExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdDescServ: TColorEditFloat
        Left = 540
        Top = 278
        Width = 56
        Height = 24
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
        Text = '0,00'
        OnChange = EdDescServChange
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdVlrtotalServ: TColorEditFloat
        Left = 600
        Top = 278
        Width = 75
        Height = 24
        Hint = 
          'Para alterar o desconto de acordo com o Total que voc'#234' alterou, ' +
          'informe o valor em total e pressione <ENTER>'
        Color = clWhite
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Text = '0,00'
        OnExit = EdVlrtotalServExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtnInsertServ: TBitBtn
        Left = 682
        Top = 278
        Width = 70
        Height = 25
        Hint = 
          'Pressione para inserir o produto selecionado e suas informa'#231#245'es ' +
          'na lista (ALT + I)'
        Caption = '&Inserir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = BtnInsertServClick
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777777777700077777707777770007777706077777000777706660777
          7000777066666077700077066666660770007000066600007000777706660777
          7000777706660777700077770666077770007777000007777000777777777777
          7000}
        Layout = blGlyphRight
        Spacing = 10
      end
      object BtnDeleteServ: TBitBtn
        Left = 682
        Top = 302
        Width = 70
        Height = 25
        Hint = 
          'Pressione para remover o produto selecionado na lista da mesma (' +
          'ALT + E)'
        Caption = '&Excluir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnClick = BtnDeleteServClick
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777777777700077770000077770007777066607777000777706660777
          7000777706660777700070000666000070007706666666077000777066666077
          7000777706660777700077777060777770007777770777777000777777777777
          7000}
        Layout = blGlyphRight
        Spacing = 10
      end
      object MObs: TMemo
        Left = 391
        Top = 209
        Width = 354
        Height = 45
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'LINHA 01'
          'LINHA 02 '
          'LINHA 03')
        ParentFont = False
        TabOrder = 6
      end
      object EdVlrCustoServ: TColorEditFloat
        Left = 297
        Top = 278
        Width = 79
        Height = 22
        Color = 14345214
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        Text = '0,00'
        OnExit = EDQtdServExit
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdAtendente: TEdit
        Left = 169
        Top = 489
        Width = 488
        Height = 22
        Color = 16772332
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      inline FrmVendedor: TFrmBusca
        Left = 8
        Top = 9
        Width = 371
        Height = 47
        AutoScroll = False
        Color = clWhite
        ParentColor = False
        TabOrder = 20
        inherited LTextoBusca: TLabel
          Left = 2
          Width = 115
          Height = 19
          Caption = 'Sacado/Devedor'
          Font.Height = -16
          Font.Name = 'Tahoma'
        end
        inherited LUZOPEN: TShape
          Left = 342
          Top = 21
          Width = 28
          Height = 27
        end
        inherited LUZMINUS: TShape
          Left = 410
        end
        inherited EdDescricao: TFlatEdit
          Left = 59
          Top = 23
          Width = 284
          Height = 24
          Font.Height = -16
        end
        inherited BTNOPEN: TBitBtn
          Left = 344
          Top = 24
          Width = 24
          Height = 22
          OnClick = FrmVendedorBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 436
          Enabled = False
        end
        inherited EDCodigo: TFlatEdit
          Top = 23
          Width = 55
          Height = 24
          ColorFlat = 15400921
          Font.Height = -16
          OnKeyDown = FrmVendedorEDCodigoKeyDown
        end
      end
      object BitBtn1: TBitBtn
        Left = 823
        Top = 309
        Width = 113
        Height = 25
        Caption = 'Faturar Desp.'
        TabOrder = 21
        OnClick = BitBtn1Click
        Glyph.Data = {
          9E020000424D9E0200000000000036000000280000000E0000000E0000000100
          1800000000006802000000000000000000000000000000000000FCFCFCFCFCFC
          FCFCFCDCEBDC8CBD8E398C3E24792824762839823E8CB68EDCE7DCFCFCFCFCFC
          FCFCFCFC0000FCFCFCFCFCFCB2D7B42F8D3441A05187CA9A9BD3AB9BD2AB83C7
          963C974B2F7A32B2CDB3FCFCFCFCFCFC0000FCFCFCB2D9B7248D296CBE83A8DB
          B587CC9865BC7C63BA7B86CB98A5D9B465B77C237026B2CEB3FCFCFC0000DDEE
          E031A14271C287A8DBB25FBC765BBA7258B86F58B56E57B56E5AB773A5D9B368
          B87E2F7E34DDE8DD00008DCF9C4BB063AADDB463C1785EBE7074C585241CED8A
          CD9955B66B57B56D5BB773A6DAB4409B4D8BB98D00003EB35C91D29F8DD49A63
          C37378C987241CED241CED241CED86CB9656B76C5AB97185CC9787C79A39883E
          000026B048A6DCAF6FCA7E72CA80241CED241CED241CED241CED241CED88CD96
          5AB97066BE7CA0D7AF217E2500002DB64FA7DDB171CC8065C772241CED241CED
          62C16F241CED241CED241CED8CD09968C17DA1D7AE21832500004AC46A95D7A1
          91D79B68C97563C66E60C46D60C36E60C26E241CED241CED241CED8BD1998BCE
          9D3A993E000098DDAA56BF6FAFE1B76CCC7967C87164C76F62C56D61C46D62C4
          70241CED6EC77DACDFB547A95D8CC5910000E1F4E548C4647ECE90AEE1B56CCC
          7969CA7567C87167C87367C8746AC978ACDFB475C48931A141DDEEDF0000FCFC
          FCBCE9C83CC25A7ECE90AFE1B792D89D76CE8376CE8392D89DAEE1B577C88B26
          9F3AB2DCBBFCFCFC0000FCFCFCFCFCFCBDEAC849C86758C27396D7A3A5DCAEA5
          DCAE95D6A14FB96934B154B3E0BEFCFCFCFCFCFC0000FCFCFCFCFCFCFCFCFCE1
          F4E59CE0AD54CA703ABE5936BC5748C36994D9A7DDF2E3FCFCFCFCFCFCFCFCFC
          0000}
      end
      object EdVlrAdiantamento: TColorEditFloat
        Left = 801
        Top = 6
        Width = 79
        Height = 22
        Color = 14345214
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 22
        Text = '0,00'
        ValueFormat = '#,##0.00'
        ValueInteger = 0
        FocusColor = clInactiveCaption
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object BtBaixaAdiantamento: TBitBtn
        Left = 888
        Top = 8
        Width = 22
        Height = 20
        Hint = 'Pressione para lan'#231'ar o adiantamento'
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnClick = BtBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
      object BtCancelaBaixaAdiantamento: TBitBtn
        Left = 912
        Top = 8
        Width = 22
        Height = 20
        Hint = 'Pressione para Cancelar o adiantamento'
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnClick = BtCancelaBaixaAdiantamentoClick
        Layout = blGlyphBottom
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 6
      Width = 943
      Height = 29
      BevelInner = bvLowered
      Color = clWhite
      TabOrder = 0
      object Label2: TLabel
        Left = 570
        Top = 8
        Width = 30
        Height = 17
        Caption = 'N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'BankGothic Md BT'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 731
        Top = 8
        Width = 76
        Height = 19
        Caption = 'Total R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape9: TShape
        Left = 197
        Top = 3
        Width = 1
        Height = 23
      end
      object Shape10: TShape
        Left = 195
        Top = 7
        Width = 1
        Height = 16
      end
      object Shape12: TShape
        Left = 199
        Top = 7
        Width = 1
        Height = 16
      end
      object BtnGravar: TBitBtn
        Left = 2
        Top = 2
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para gravar as altera'#231#245'es ou inclus'#245'es real' +
          'izadas'
        Caption = 'Gravar - F5'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnGravarClick
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000013000000120000000100
          18000000000038040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFF606060505050707070707070FFFFFFFFFFFF7070707070706F6F6F707070
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF808080A0A0
          A07F7F7F5F5F5F4040403F3030604F4F8F6F6F9070706F5F5F3F30302F2F2FFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA0AFAFD0D0D0FFFFF0E0F0D0
          FFF0E0EFC09FC0807FF0AFAFFFC0C0FFDFDFFFEFEFD0C0C04F3F3F2F2F2FFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFB0B0B0D0CFCFF0EFD020AF202FAF209F
          9F60FF9FA0FFA0A0FFAFAFFFBFBFFFEFEFFFFFFFD0C0C03F3030707070FFFFFF
          FFFFFF000000FFFFFFFFFFFFB0B0B0EFE0E0F0E0CF30C04000A0009F9F70FFB0
          BFFFA0A0FFB0BFFFBFD0FFF0F0FFFFFFFFFFFF7F6060303030FFFFFFFFFFFF00
          0000FFFFFFFFFFFFB0B0B0EFE0E0F0E0BF50E06F1FB02FCFAF9FFFCFCFFFCFCF
          E0C0D0C0B0AFF0E0E0FFF0F0FFF0F0C0A0A02F2F2FFFFFFFFFFFFF000000FFFF
          FFFFFFFFB0B0B0EFEFEFF0DFB05FE0B030A0CFC0A0BFFFCFCFFFDFDFE0D0DFBF
          A09FEFCFCFFFCFCFFFCFCFCFA0A03F3F3FFFFFFFFFFFFF000000FFFFFFFFFFFF
          B0B0B0F0DFB0F0D0AF60AFF03F90FFA0A0C0FFF0F0FFFFFFFFF0FFF0BFDFFFC0
          CFFF9F9FFFB0B0BF8080707070FFFFFFFFFFFF000000FFFFFFFFFFFFD0A06FF0
          AF50FFD0A0F0CF9FDFC0A0CFA09FEFEFEFFFFFFFFFF0F0FFCFD0FFB0B0FFA0A0
          FF9F9F806060FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFCFAF8FE0B08FFFC0
          70FFBF5FFFC06FFFB06FD0A080EFE0EFFFF0F0FFDFDFFFCFCFFFB0B0B07F7FFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFBFBFC0DFD0C0FFC070FFCF80
          FFC07FFFBF6FF0B050D09F5FE0B09FE0BFAFB090909F7F7FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFD0D0D0EFE0DFE0D0C0EFEFF0EFEFEFEF
          E0E0E0E0DFE0D0B0E0BF80E0B070706060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFDFCFCFDFC0BFB08070B08080BF8F8FC09F9FCFA0
          AFDFCFD0EFF0FFE0E0EF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFDFCFCFDFD0C0FFCF90FFC08FFFC09FF0BFA0EFB0A0E0B0A0EFC0C0
          FFEFEFFFEFEF5050504F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFDFCFCFF0CF90FFC08FFFCFA0FFCFAFFFCFB0FFD0BFFFD0C0CFAFAFEFDFDFFF
          FFFFC0C0C0BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFCFCF
          DFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCF
          CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      end
      object BtnCancelar: TBitBtn
        Left = 96
        Top = 2
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Hint = 
          'Pressione este bot'#227'o para cancelar esta opera'#231#227'o e retornar para' +
          ' o painel de consulta'
        Caption = 'Cancelar - F7'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnCancelarClick
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
      object EdValorTotal: TColorEditFloat
        Left = 820
        Top = 3
        Width = 121
        Height = 24
        Color = 14345214
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object EdNumero: TColorEditFloat
        Left = 597
        Top = 3
        Width = 121
        Height = 24
        Color = 16377798
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        EditType = fltString
        ValueFormat = '##,##0.00'
        ValueInteger = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
  end
  object PFinanceiro: TPanel [7]
    Left = 244
    Top = 141
    Width = 497
    Height = 281
    BevelWidth = 4
    Color = clBlack
    TabOrder = 4
    Visible = False
    object PBanco: TPanel
      Left = 127
      Top = 107
      Width = 266
      Height = 108
      BevelWidth = 3
      Color = 16772332
      TabOrder = 1
      Visible = False
      object Label115: TLabel
        Left = 8
        Top = 8
        Width = 95
        Height = 16
        Caption = 'Cta. Corrente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGCTA: TDBGrid
        Left = 5
        Top = 24
        Width = 252
        Height = 73
        Hint = 'Pressione ENTER para confirmar e abandonar este pa'#237'nel'
        Color = 16121836
        Ctl3D = False
        DataSource = DMBANCO.DWCtaCor
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMAGENCIA'
            Title.Caption = 'Ag'#234'ncia'
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
            Width = 214
            Visible = True
          end>
      end
    end
    object FPFinanceiro: TFashionPanel
      Left = 6
      Top = 6
      Width = 485
      Height = 269
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
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Title = 'Informa'#231#245'es para o financeiro'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttCustom
      object Label4: TLabel
        Left = 8
        Top = 84
        Width = 116
        Height = 20
        Caption = 'Pagamento em :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BtnMoedaOK: TBitBtn
        Left = 134
        Top = 223
        Width = 75
        Height = 25
        Caption = '&Ok'
        TabOrder = 4
        OnClick = BtnMoedaOKClick
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
      object BtnMoedaCancelar: TBitBtn
        Left = 254
        Top = 223
        Width = 97
        Height = 25
        Caption = 'C&ancelar'
        TabOrder = 5
        OnClick = BtnMoedaCancelarClick
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
      object CBPagamento: TComboBox
        Left = 9
        Top = 105
        Width = 176
        Height = 22
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'BankGothic Md BT'
        Font.Style = []
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'Carteira'
        Items.Strings = (
          'Carteira'
          'Cheque'
          'Cart'#227'o'
          'Multiplo')
      end
      inline FrmFormPag: TFrmBusca
        Left = 7
        Top = 39
        Width = 478
        Height = 43
        Color = 16772332
        ParentColor = False
        TabOrder = 0
        inherited LTextoBusca: TLabel
          Width = 145
          Caption = 'Forma de pagamento:'
        end
        inherited LUZOPEN: TShape
          Left = 429
        end
        inherited LUZMINUS: TShape
          Left = 453
        end
        inherited EdDescricao: TFlatEdit
          Width = 354
          ColorFlat = 16318450
        end
        inherited BTNOPEN: TBitBtn
          Left = 431
          Width = 18
        end
        inherited BTNMINUS: TBitBtn
          Left = 450
        end
        inherited EDCodigo: TFlatEdit
          ColorFlat = 15269845
        end
      end
      inline FrmContaServ: TFrmBusca
        Left = 6
        Top = 148
        Width = 472
        Height = 64
        Color = 16772332
        ParentColor = False
        TabOrder = 3
        inherited LTextoBusca: TLabel
          Width = 246
          Caption = 'Conta para Lan'#231'amento de Servi'#231'os:'
        end
        inherited LUZOPEN: TShape
          Left = 426
          Top = 39
        end
        inherited LUZMINUS: TShape
          Left = 450
          Top = 39
        end
        inherited EdDescricao: TFlatEdit
          Left = 2
          Top = 42
          Width = 423
          ColorFlat = clWhite
        end
        inherited BTNOPEN: TBitBtn
          Left = 425
          Top = 42
          OnClick = FrmContaServBTNOPENClick
        end
        inherited BTNMINUS: TBitBtn
          Left = 447
          Top = 42
          OnClick = FrmContaServBTNMINUSClick
        end
        inherited EDCodigo: TFlatEdit
          Top = 16
          Width = 151
          ColorFlat = 15329769
        end
      end
      object Panel7: TPanel
        Left = 190
        Top = 90
        Width = 123
        Height = 39
        BevelOuter = bvNone
        Color = 16772332
        TabOrder = 2
        object Label6: TLabel
          Left = 4
          Top = 0
          Width = 93
          Height = 16
          Caption = 'Dt Fechamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EdDtFech: TColorMaskEdit
          Left = 4
          Top = 15
          Width = 97
          Height = 22
          Color = 15597546
          Ctl3D = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          NotFoundText = 'N'#227'o Existe'
          InputText = 'Por favor entre na procura pelo crit'#233'rio'
          ButtonCaption = 'Ok'
        end
      end
      object CBGeraFinanceiro: TCheckBox
        Left = 354
        Top = 113
        Width = 123
        Height = 17
        Caption = 'N'#227'o gerar financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  inherited PComunica: TPanel
    Left = 234
    Top = 176
  end
  object FSRel: TfrReport
    Dataset = FSDSRel
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 440
    Top = 8
    ReportForm = {18000000}
  end
  object FSDSRel: TfrDBDataSet
    DataSet = DMESTOQUE.TSlaveServ
    Left = 408
    Top = 8
  end
  object PMServicos: TPopupMenu
    Left = 801
    Top = 367
    object CancelarFatura1: TMenuItem
      Caption = 'Cancelar Fatura'
      OnClick = CancelarFatura1Click
    end
  end
  object FSDSfinam: TfrDBDataSet
    DataSet = DMMACS.TMP
    Left = 479
    Top = 12
  end
  object PMRel: TPopupMenu
    TrackButton = tbLeftButton
    Left = 531
    Top = 19
    object CompAbertura1: TMenuItem
      Caption = 'Comp. Abertura'
      OnClick = CompAbertura1Click
    end
    object RelOSDespachante1: TMenuItem
      Caption = 'Rel. OS. Despachante'
      OnClick = RelOSDespachante1Click
    end
    object RelSintticoOS1: TMenuItem
      Caption = 'Rela'#231#227'o OS Despachante'
      OnClick = RelSintticoOS1Click
    end
    object CtasReceberporSacado1: TMenuItem
      Caption = 'Ctas Receber por Sacado'
      OnClick = CtasReceberporSacado1Click
    end
  end
end
