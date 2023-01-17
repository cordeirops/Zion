inherited FGeraSintegra: TFGeraSintegra
  Left = 350
  Top = 89
  Caption = 'Gerar Sintegra'
  ClientHeight = 584
  ClientWidth = 610
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PPasso01: TPanel [0]
    Left = 12
    Top = 473
    Width = 596
    Height = 106
    BevelOuter = bvNone
    TabOrder = 6
    Visible = False
    object Label22: TLabel
      Left = 3
      Top = 2
      Width = 64
      Height = 16
      Caption = 'Passo 1:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Memo2: TMemo
      Left = 72
      Top = 6
      Width = 503
      Height = 43
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        '01 - Informe o per'#237'odo para gerar o arquivo'
        '02 - Informe os registros necess'#225'rios para o arquivo'
        
          '       Selecione os textos em negrito e o sistema ir'#225' preencher ' +
          'os registros '
        'necess'#225'rios')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object PPasso02: TPanel [1]
    Left = 12
    Top = 473
    Width = 596
    Height = 106
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object Label12: TLabel
      Left = 7
      Top = 40
      Width = 64
      Height = 16
      Caption = 'Passo 2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 8
      Width = 105
      Height = 25
      Caption = '2 - Validar'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000D8E9ECD8E9EC
        D8E9ECD8E9ECDCEDF0DFEEEFDFEDEEDFEFF0DFF1F4D9EAEDD8E9ECD8E9ECD8E9
        ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECDDEDEFCDDA
        DD93A7B07B8E98808C92B3BBBADDEEF0DAEBEED8E9ECD8E9ECD8E9ECD8E9ECD8
        E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECDBEBEDC5DDE5659DB94595BC449EC643
        90B4496C80969C9DDEEFF1DAEBEED8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
        0000D8E9ECD8E9ECDDECEE99C1D444A8D34CB5DD46ADD645ADD943A5D0456E83
        979E9FDBECEFD9EAEDD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD9EAED
        D9EAEE6CADCD4AB0D94DA3CB80B1CB95BFD479B1CE4BA2CB456A7EB4BCBCE1F3
        F6D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECDAE9ECCDDADC64AACC46A9
        D275A3BBE5F1F2EAF4F3DBE8EAA9CFE04D92B75B6D78C5CFCFDFF0F4D8E9ECD8
        E9ECD8E9ECD8E9EC0000DBECEDBFD7E0627785549CBD4993B98A9298B9C4C599
        AFB9B4C3C6E3F0F1AFD2E2508CAD5E6E77C5D2D4DCEEF1D8E9ECD8E9ECD8E9EC
        0000DAEAEDCFE3E8719DB745A3CB4FA1C74B84A143769684A9BFD1E3E6DFEEEF
        D4E4E867ABCE4076997E8589DAEAECD9EAEDD8E9ECD8E9EC0000D8E9ECDDECEE
        C3DBE658AACF4BB3DB4EB4DF8BBED8D9EAEDE0EFF0CDE0E66CB0CF47AFD74EA6
        CF476D84A5ADADDFF0F3D8E9ECD8E9EC0000D8E9ECD8E9ECDFEDEF9FC3D5439A
        C55F8EA6D8E4E6E0F0F2C7DEE579A7C35AA0C45DA9CC4EB1D94993B9536571C0
        CDCEDBECF0D8E9EC0000D8E9ECD8E9ECDAEAEDD7E7EA84B2CD447490848A8CDC
        EAEBC6DFE9B7D3DFD9E8EB9DBDD048A5D057879E7F9CAFC3D3D6DBEBEED8E9EC
        0000D8E9ECD8E9ECD8E9ECDBEBEDD9EAEC82B9D53E728E7E8689C9D1CFE1EBE9
        D3E1E56AABCB47AAD45C7E91D3DFDFDDEEF1D8E9ECD8E9EC0000D8E9ECD8E9EC
        D8E9ECD8E9ECDDECEECDE1E75CA9CE3F7FA15873846D87956494B14CADD549AC
        D47195A8D5E3E3D9EAEDD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9
        ECDDECEEBCD8E25CADD240A5D144A5CF47AAD34BB4DC4295BC9AADB6DFEFF1D8
        E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECE0EEEEBC
        D7E168AECF47A7D045A6D04D9FC77FB3CDCFDFE3D9EAEDD8E9ECD8E9ECD8E9EC
        0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECDDECEED1E2E7A9C9D9
        A4C6D7B4CEDADAE9ECDBECEFD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC
        D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECDBEBEDE2EFEFE3F0F0E0EEEFD9EA
        EDD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000}
      Margin = 10
    end
    object Memo3: TMemo
      Left = 73
      Top = 40
      Width = 476
      Height = 65
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        
          'Valide o arquivo gerado pelo programa ValidaPR, ap'#243's validar o p' +
          'rograma ir'#225' apontar os '
        
          'resultados: Totais de registros com rejei'#231#227'o aponta quantos regi' +
          'stros foram gerados, se '
        'neste '
        
          'campo apresentar valores, ser'#225' necess'#225'rio abrir um relat'#243'rio de ' +
          'criticas para verificar as '
        
          'irregularidades a serem corrigidas. Se este campo apresentar zer' +
          'o significa que o registro foi '
        
          'aprovado, assim resumos de valida'#231#245'es podem ser gerados a fim de' +
          ' verificar os valores. ')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object PPasso03: TPanel [2]
    Left = 12
    Top = 473
    Width = 596
    Height = 106
    BevelOuter = bvNone
    TabOrder = 7
    Visible = False
    object Label21: TLabel
      Left = 7
      Top = 39
      Width = 64
      Height = 16
      Caption = 'Passo 3:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn3: TBitBtn
      Left = 7
      Top = 8
      Width = 105
      Height = 25
      Caption = '3 - Importar'
      TabOrder = 0
      OnClick = BitBtn3Click
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
      Margin = 10
    end
    object Memo4: TMemo
      Left = 73
      Top = 40
      Width = 476
      Height = 56
      BorderStyle = bsNone
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        
          'Importe o arquivo sintegra gerado, para conferir todas as notas ' +
          'que foram gerados no arquivo, '
        
          'conferindo notas inseridas e seus valores, afim de verificar a i' +
          'ntegridade dos dados gerados')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 471
      Top = 8
      Width = 76
      Height = 25
      Caption = '2 - Validar'
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000D8E9ECD8E9EC
        D8E9ECD8E9ECDCEDF0DFEEEFDFEDEEDFEFF0DFF1F4D9EAEDD8E9ECD8E9ECD8E9
        ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECDDEDEFCDDA
        DD93A7B07B8E98808C92B3BBBADDEEF0DAEBEED8E9ECD8E9ECD8E9ECD8E9ECD8
        E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECDBEBEDC5DDE5659DB94595BC449EC643
        90B4496C80969C9DDEEFF1DAEBEED8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
        0000D8E9ECD8E9ECDDECEE99C1D444A8D34CB5DD46ADD645ADD943A5D0456E83
        979E9FDBECEFD9EAEDD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD9EAED
        D9EAEE6CADCD4AB0D94DA3CB80B1CB95BFD479B1CE4BA2CB456A7EB4BCBCE1F3
        F6D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECDAE9ECCDDADC64AACC46A9
        D275A3BBE5F1F2EAF4F3DBE8EAA9CFE04D92B75B6D78C5CFCFDFF0F4D8E9ECD8
        E9ECD8E9ECD8E9EC0000DBECEDBFD7E0627785549CBD4993B98A9298B9C4C599
        AFB9B4C3C6E3F0F1AFD2E2508CAD5E6E77C5D2D4DCEEF1D8E9ECD8E9ECD8E9EC
        0000DAEAEDCFE3E8719DB745A3CB4FA1C74B84A143769684A9BFD1E3E6DFEEEF
        D4E4E867ABCE4076997E8589DAEAECD9EAEDD8E9ECD8E9EC0000D8E9ECDDECEE
        C3DBE658AACF4BB3DB4EB4DF8BBED8D9EAEDE0EFF0CDE0E66CB0CF47AFD74EA6
        CF476D84A5ADADDFF0F3D8E9ECD8E9EC0000D8E9ECD8E9ECDFEDEF9FC3D5439A
        C55F8EA6D8E4E6E0F0F2C7DEE579A7C35AA0C45DA9CC4EB1D94993B9536571C0
        CDCEDBECF0D8E9EC0000D8E9ECD8E9ECDAEAEDD7E7EA84B2CD447490848A8CDC
        EAEBC6DFE9B7D3DFD9E8EB9DBDD048A5D057879E7F9CAFC3D3D6DBEBEED8E9EC
        0000D8E9ECD8E9ECD8E9ECDBEBEDD9EAEC82B9D53E728E7E8689C9D1CFE1EBE9
        D3E1E56AABCB47AAD45C7E91D3DFDFDDEEF1D8E9ECD8E9EC0000D8E9ECD8E9EC
        D8E9ECD8E9ECDDECEECDE1E75CA9CE3F7FA15873846D87956494B14CADD549AC
        D47195A8D5E3E3D9EAEDD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9
        ECDDECEEBCD8E25CADD240A5D144A5CF47AAD34BB4DC4295BC9AADB6DFEFF1D8
        E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECE0EEEEBC
        D7E168AECF47A7D045A6D04D9FC77FB3CDCFDFE3D9EAEDD8E9ECD8E9ECD8E9EC
        0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECDDECEED1E2E7A9C9D9
        A4C6D7B4CEDADAE9ECDBECEFD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC
        D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECDBEBEDE2EFEFE3F0F0E0EEEFD9EA
        EDD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000}
    end
  end
  object Panel9: TPanel [3]
    Left = 8
    Top = 31
    Width = 600
    Height = 439
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BevelWidth = 4
    TabOrder = 3
    Visible = False
    object Label17: TLabel
      Left = 30
      Top = 28
      Width = 520
      Height = 52
      Caption = 'Gerando arquivo SIntegra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 30
      Top = 26
      Width = 518
      Height = 52
      Caption = 'Gerando arquivo Sintegra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -37
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 33
      Top = 9
      Width = 109
      Height = 29
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 392
      Top = 78
      Width = 145
      Height = 13
      Caption = 'Pressione Esc para Cancelar...'
    end
    object ProgressBar1: TProgressBar
      Left = 27
      Top = 97
      Width = 545
      Height = 16
      Step = 0
      TabOrder = 0
    end
    object RichEdit1a: TRichEdit
      Left = 27
      Top = 122
      Width = 545
      Height = 143
      ReadOnly = True
      TabOrder = 1
    end
    object btnVoltar: TButton
      Left = 497
      Top = 374
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 2
      OnClick = btnVoltarClick
    end
    object btnAbrir: TButton
      Left = 104
      Top = 374
      Width = 75
      Height = 25
      Hint = 'Abrir o arquivo sintegra gerado'
      Caption = 'Abrir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnAbrirClick
    end
    object btnSalvar: TButton
      Left = 29
      Top = 374
      Width = 75
      Height = 25
      Hint = 'Salva o resultado (log de erros e acertos)  em disco'
      Caption = 'Salvar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnSalvarClick
    end
    object RichEdit2a: TRichEdit
      Left = 27
      Top = 296
      Width = 545
      Height = 78
      ReadOnly = True
      TabOrder = 5
    end
    object RichEdit1: TMemo
      Left = 27
      Top = 122
      Width = 545
      Height = 143
      Lines.Strings = (
        'RichEdit1')
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object RichEdit2: TMemo
      Left = 27
      Top = 296
      Width = 546
      Height = 78
      Lines.Strings = (
        'RichEdit2')
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object Button1: TButton
      Left = 496
      Top = 265
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  object PPrincipal: TPanel [4]
    Left = 8
    Top = 8
    Width = 600
    Height = 464
    BevelOuter = bvNone
    Color = 16772332
    TabOrder = 2
    object Label13: TLabel
      Left = 640
      Top = 241
      Width = 105
      Height = 13
      Caption = 'Finalidade do Arquivo:'
      Transparent = True
    end
    object Label10: TLabel
      Left = 640
      Top = 289
      Width = 121
      Height = 13
      Caption = 'Natureza das Opera'#231#245'es:'
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 585
      Height = 175
      Caption = ' Dados do Estabelecimento '
      Color = 16772332
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 21
        Width = 65
        Height = 11
        Caption = 'Raz'#227'o Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 56
        Width = 49
        Height = 11
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 93
        Width = 35
        Height = 11
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 320
        Top = 93
        Width = 37
        Height = 11
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 464
        Top = 56
        Width = 23
        Height = 11
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 133
        Width = 47
        Height = 11
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 107
        Top = 133
        Width = 55
        Height = 11
        Caption = 'CGC/CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 214
        Top = 133
        Width = 94
        Height = 11
        Caption = 'Inscri'#231#227'o Estadual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 361
        Top = 56
        Width = 42
        Height = 11
        Caption = 'Numero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 334
        Top = 133
        Width = 42
        Height = 11
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtRazaoSocial: TDBColorEdit
        Left = 24
        Top = 37
        Width = 536
        Height = 17
        DataField = 'RAZAO_SOCIAL'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 35
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtEndereco: TDBColorEdit
        Left = 25
        Top = 72
        Width = 331
        Height = 17
        DataField = 'ENDERECO'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 34
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtBairro: TDBColorEdit
        Left = 24
        Top = 109
        Width = 289
        Height = 17
        DataField = 'BAIRRO'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtCidade: TDBColorEdit
        Left = 320
        Top = 109
        Width = 241
        Height = 17
        DataField = 'NOME'
        DataSource = DMGEOGRAFIA.DCidade
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtCEP: TDBColorEdit
        Left = 464
        Top = 72
        Width = 97
        Height = 17
        DataField = 'CEP'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtTelefone: TDBColorEdit
        Left = 25
        Top = 149
        Width = 78
        Height = 17
        DataField = 'FONE'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit1: TDBColorEdit
        Left = 108
        Top = 149
        Width = 101
        Height = 17
        DataField = 'CNPJ'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 215
        Top = 149
        Width = 114
        Height = 17
        DataField = 'INSC_EST'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object txtNumero: TDBColorEdit
        Left = 361
        Top = 72
        Width = 97
        Height = 17
        DataField = 'NUMERO'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 335
        Top = 149
        Width = 226
        Height = 17
        DataField = 'CONTATO'
        DataSource = DMMACS.DsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 184
      Width = 582
      Height = 62
      Caption = 'Per'#237'odo escolhido para o arquivo sintegra'
      Color = 16772332
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label24: TLabel
        Left = 8
        Top = 32
        Width = 20
        Height = 19
        Caption = '01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 48
        Top = 31
        Width = 409
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        KeyField = 'COD_PERIODOFISCAL'
        ListField = 'DESCRICAO'
        ListSource = DMMACS.DPeriodoFiscal
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 472
        Top = 11
        Width = 105
        Height = 22
        DataField = 'DTINICIAL'
        DataSource = DMMACS.DPeriodoFiscal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 472
        Top = 35
        Width = 105
        Height = 22
        DataField = 'DTFINAL'
        DataSource = DMMACS.DPeriodoFiscal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox7: TGroupBox
      Left = 4
      Top = 256
      Width = 585
      Height = 176
      Color = 16772332
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object Label23: TLabel
        Left = 0
        Top = 16
        Width = 585
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Informe quais registros voc'#234' deve gerar no arquivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object Label25: TLabel
        Left = 8
        Top = 13
        Width = 20
        Height = 19
        Caption = '02'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 64
        Top = 133
        Width = 449
        Height = 29
        Brush.Color = clMoneyGreen
      end
      object CBR53: TCheckBox
        Left = 178
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-53'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object CBR50: TCheckBox
        Left = 80
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-50'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object CBR51: TCheckBox
        Left = 128
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-51'
        Color = clMoneyGreen
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object CBR54: TCheckBox
        Left = 228
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-54'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
      object CBR60M: TCheckBox
        Left = 290
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-60'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object CBR70: TCheckBox
        Left = 352
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-70'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object CBR74: TCheckBox
        Left = 402
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-74'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object CBR75: TCheckBox
        Left = 452
        Top = 138
        Width = 45
        Height = 17
        Caption = 'R-75'
        Color = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object CbNotaFiscal: TCheckBox
        Left = 160
        Top = 55
        Width = 321
        Height = 17
        Caption = 'Minha empresa emite Nota Fiscal  ou NFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CbNotaFiscalClick
      end
      object CbCupomFiscal: TCheckBox
        Left = 160
        Top = 39
        Width = 321
        Height = 17
        Caption = 'Minha empresa emite Cupom Fiscal (ECF)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CbCupomFiscalClick
      end
      object CbInventarioEstoque: TCheckBox
        Left = 160
        Top = 86
        Width = 321
        Height = 17
        Caption = 'Devemos emitir o Invent'#225'rio de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = CbInventarioEstoqueClick
      end
      object CbServicos: TCheckBox
        Left = 160
        Top = 70
        Width = 257
        Height = 17
        Caption = 'Emitimos tamb'#233'm servi'#231'os na nota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object cmdSair: TButton
      Left = 396
      Top = 435
      Width = 91
      Height = 22
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cmdSairClick
    end
    object cmdGerar: TButton
      Left = 495
      Top = 435
      Width = 91
      Height = 22
      Caption = '&Gerar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = cmdGerarClick
    end
    object EdFinalidadeFiscal: TEdit
      Left = 640
      Top = 256
      Width = 177
      Height = 22
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '1- Normal'
    end
    object EdNaturezaOperacao: TEdit
      Left = 640
      Top = 304
      Width = 289
      Height = 20
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Text = '3- Totalidade das opera'#231#245'es do informante'
    end
  end
  inherited PComunica: TPanel
    Left = 74
    Top = 138
  end
  object ComboBox3: TComboBox
    Left = 632
    Top = 17
    Width = 289
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      '1- Normal'
      
        '2- Retifica'#231#227'o total de arquivo: substitui'#231#227'o total de informa'#231#245 +
        'es prestadas pelo contribuinte referentes a este per'#237'odo'
      
        '3- Retifica'#231#227'o aditiva de arquivo: acr'#233'scimo de informa'#231#227'o n'#227'o i' +
        'nclu'#237'da em arquivos j'#225' apresentados'
      
        '4- Desfazimento: arquivo de informa'#231#227'o referente a opera'#231#245'es/pre' +
        'sta'#231#245'es n'#227'o efetivadas . Neste caso, o arquivo dever'#225' conter, al' +
        #233'm dos registros tipo 10 e tipo 90, apenas os registros Referent' +
        'es as opera'#231#245'es/presta'#231#245'es n'#227'o efetivadas')
  end
  object ComboBox2: TComboBox
    Left = 632
    Top = 89
    Width = 289
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      
        '1- Interestaduais somente opera'#231#245'es sujeitas ao regime de Substi' +
        'tui'#231#227'o Tribut'#225'ria'
      '2- Interestaduais opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ria '
      '3- Totalidade das opera'#231#245'es do informante')
  end
  object SaveDialog1: TSaveDialog
    InitialDir = '%USERPROFILE%\Meus documentos'
    Title = 'Salvar'
    Left = 555
    Top = 34
  end
end
