object FConsultaPedVenda: TFConsultaPedVenda
  Left = 138
  Top = 114
  BorderStyle = bsNone
  Caption = 'FConsultaPedVenda'
  ClientHeight = 578
  ClientWidth = 769
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 7
    Top = 4
    Width = 752
    Height = 101
    Caption = 'Localizar - F2'
    Color = clWhite
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label51: TLabel
      Left = 113
      Top = 17
      Width = 87
      Height = 12
      Caption = 'N'#250'm. Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label52: TLabel
      Left = 220
      Top = 17
      Width = 85
      Height = 12
      Caption = 'Nome do Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label49: TLabel
      Left = 6
      Top = 57
      Width = 92
      Height = 12
      Caption = 'C'#243'd Interno Prod.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 17
      Width = 66
      Height = 12
      Caption = 'N'#250'm. Pedido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 115
      Top = 57
      Width = 90
      Height = 12
      Caption = 'Nome do Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdNome: TFlatEdit
      Left = 218
      Top = 31
      Width = 425
      Height = 25
      Hint = 
        'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
        ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
        ' liberar todos. <Ctrl+Espa'#231'o> para pesquisar parte do registro '
      ColorFlat = clWhite
      ParentColor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyDown = EdNomeKeyDown
    end
    object BtnSelecionar: TBitBtn
      Left = 544
      Top = 69
      Width = 108
      Height = 25
      Caption = 'Selecionar - F9'
      TabOrder = 3
      OnClick = BtnSelecionarClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
    object EdNumPed: TFlatEdit
      Left = 4
      Top = 31
      Width = 105
      Height = 25
      Hint = 
        'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
        ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
        ' liberar todos. '
      ColorFlat = clWhite
      ParentColor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = EdNumPedKeyDown
    end
    object EdNumDoc: TFlatEdit
      Left = 111
      Top = 31
      Width = 105
      Height = 25
      Hint = 
        'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
        ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
        ' liberar todos. '
      ColorFlat = clWhite
      ParentColor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = EdNumDocKeyDown
    end
    object EdtContrint: TFlatEdit
      Left = 4
      Top = 71
      Width = 105
      Height = 25
      Hint = 
        'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
        ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
        ' liberar todos. '
      ColorFlat = clWhite
      ParentColor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnKeyDown = EdtContrintKeyDown
    end
    object EditNomeProduto: TFlatEdit
      Left = 114
      Top = 71
      Width = 425
      Height = 25
      Hint = 
        'Digite aqui, o nome ou descri'#231#227'o do registro para ser localizado' +
        ' com maior facilidade. Press <ENTER> para consultar e <ESC> para' +
        ' liberar todos. <Ctrl+Espa'#231'o> para pesquisar parte do registro '
      ColorFlat = clWhite
      ParentColor = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = EditNomeProdutoKeyDown
    end
    object BtnCancela: TBitBtn
      Left = 656
      Top = 69
      Width = 92
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
      Kind = bkCancel
    end
  end
  object GBFiltragem: TGroupBox
    Left = 7
    Top = 112
    Width = 752
    Height = 41
    Caption = 'Filtragem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label87: TLabel
      Left = 566
      Top = 4
      Width = 119
      Height = 14
      Caption = 'Filtrar pela data'
      Transparent = True
    end
    object btnApagarFiltroData: TSpeedButton
      Left = 723
      Top = 15
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = 'Clique aqui para limpar o filtro por datas'
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000F4F4F4E5E5E5
        D0D0D0C1C1C1B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9
        B9B9B9B9B9B9B9B9B9B9C1C1C1D0D0D00000F2F2F2FCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCC3C3C38080807B7B7BB9B9B992ADE0225AC20442BA1E58C083
        A3DAFCFCFCC1C1C10000F1F1F1FCFCFCFCFCFCFCFCFCE4E4E4F3F3F3FAFAFA89
        8989BDBDBDB2B2B2405F932664CA2076E60478EA0063DD064CBE83A3DAB9B9B9
        0000F1F1F1FCFCFCFCFCFCB1B1B16D6D6D727272EEEEEE8F8F8FCBCBCBC7C7C7
        0E47B1629DF4177EFF0075F80075EE0267E11D58BFB9B9B90000F1F1F1FCFCFC
        D0D0D0BCBCBCDEDEDEA6A6A6868686838383C4C4C4C2C2C20341BCAECDFEFFFF
        FFFFFFFFFFFFFF177EEF0442BAB9B9B90000F1F1F1FCFCFCD3D3D3A4A4A4D5D5
        D5C5C5C5CBCBCBD1D1D1C9C9C9C7C7C71D55BC8DB5F64C92FF1076FF2086FF3F
        8AEB235AC0B9B9B90000F1F1F1FCFCFCFCFCFCD2D2D2C5C5C5C1C1C1C5C5C5C7
        C7C7AAAAAAA7A7A77490C23A74D18DB5F7B8D6FE71A8F52D6CCB91ACE0B9B9B9
        0000F1F1F1B2B2B2999999A4A4A4CFCFCFC6C6C6CCCCCCB2B2B2E1E1E1E0E0E0
        A5A5A57390C22159C00441BC0E47B0375690737373B9B9B90000F1F1F1BFBFBF
        E2E2E2D2D2D2C6C6C6CDCDCDB1B1B1E0E0E0FCFCFCFCFCFCE1E1E1A8A8A8C2C2
        C2B7B7B7C0C0C0D2D2D25F5F5FB9B9B90000F1F1F1C2C2C2E9E9E9D6D6D6C9C9
        C9CECECEA5A5A5DCDCDCFCFCFCFCFCFCE1E1E1ACACACC4C4C4BABABAC6C6C6DD
        DDDD696969B9B9B90000F1F1F1D1D1D1C9C9C9C2C2C2D8D8D8CDCDCDBCBCBC9D
        9D9DD8D8D8DADADAA5A5A5C3C3C3C2C2C2CDCDCD949494929292999999B9B9B9
        0000F1F1F1FCFCFCFCFCFCDFDFDFD4D4D4CCCCCCC9C9C9BABABA9C9C9CA1A1A1
        C2C2C2C6C6C6C1C1C1B7B7B7C0C0C0FCFCFCFCFCFCB9B9B90000F1F1F1FCFCFC
        E2E2E2C2C2C2DCDCDCD4D4D4D9D9D9DBDBDBD6D6D6D4D4D4D9D9D9D2D2D2CBCB
        CBC8C8C8797979B6B6B6FCFCFCB9B9B90000F1F1F1FCFCFCE5E5E5DCDCDCEDED
        EDDBDBDBC4C4C4BCBCBCD6D6D6D4D4D4AEAEAEAFAFAFCBCBCBE7E7E7B7B7B7C4
        C4C4FCFCFCB9B9B90000F2F2F2FCFCFCFCFCFCE0E0E0CCCCCCCFCFCFF5F5F5C7
        C7C7DEDEDEDDDDDDB7B7B7F3F3F3B4B4B4A8A8A8C5C5C5FCFCFCFCFCFCC1C1C1
        0000F4F4F4FCFCFCFCFCFCFCFCFCF4F4F4F8F8F8FCFCFCCBCBCBE5E5E5E4E4E4
        B3B3B3FAFAFAF8F8F8EFEFEFFCFCFCFCFCFCFCFCFCD0D0D00000F8F8F8FCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCE8E8E8D2D2D2D1D1D1E3E3E3FCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCE5E5E50000FBFBFBF8F8F8F4F4F4F2F2F2F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F2F2F2F4F4F40000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnApagarFiltroDataClick
    end
    object CbFiltroPedidosFechados: TCheckBox
      Left = 22
      Top = 19
      Width = 201
      Height = 14
      Cursor = crHandPoint
      Hint = 
        'Marque esta op'#231#227'o para mostrar os pedidos fechados na grade abai' +
        'xo'
      Caption = 'Mostrar Pedidos Fechados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = CbFiltroPedidosFechadosClick
    end
    object EdDtFiltro01: TMaskEdit
      Left = 567
      Top = 16
      Width = 76
      Height = 22
      Cursor = crHandPoint
      Hint = 
        'Informe um intervalo de datas para filtrar os pedidos na grade a' +
        'baixo'
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnKeyPress = EdDtFiltro01KeyPress
    end
    object edDtFiltro02: TMaskEdit
      Left = 646
      Top = 16
      Width = 76
      Height = 22
      Cursor = crHandPoint
      Hint = 
        'Informe um intervalo de datas para filtrar os pedidos na grade a' +
        'baixo'
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Text = '  /  /    '
      OnKeyPress = edDtFiltro02KeyPress
    end
  end
  object DBGridCadastroPadrao: TDBGrid
    Left = 7
    Top = 153
    Width = 755
    Height = 416
    Color = 15794175
    Ctl3D = False
    DataSource = DMSAIDA.DAlx
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
    OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
    OnDblClick = DBGridCadastroPadraoDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'FISCO'
        Title.Caption = 'F'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMORC'
        Title.Caption = 'N'#186' Or'#231'.'
        Visible = True
      end
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
        FieldName = 'COBRANCA'
        Title.Caption = 'Cobran'#231'a'
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
      end
      item
        Expanded = False
        FieldName = 'NOMECLI'
        Title.Caption = 'Cliente'
        Width = 439
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRINT'
        Title.Caption = 'C'#243'd. Interno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Produto'
        Width = 439
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_USUARIO'
        Title.Caption = 'Usuario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Title.Caption = 'Vendedor'
        Width = 155
        Visible = True
      end>
  end
end
