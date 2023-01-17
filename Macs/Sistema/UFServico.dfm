inherited FfServico: TFfServico
  Left = 204
  Top = 73
  Caption = 'FfServico'
  ClientHeight = 513
  ClientWidth = 922
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PComunica: TPanel
    Top = 88
  end
  object Panel1: TPanel
    Left = 6
    Top = 7
    Width = 906
    Height = 498
    BevelOuter = bvNone
    Caption = 't'
    Color = 16772332
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Shape35: TShape
      Left = 8
      Top = 47
      Width = 369
      Height = 24
    end
    object Shape33: TShape
      Left = 743
      Top = 358
      Width = 156
      Height = 83
      Pen.Color = clMaroon
      Pen.Width = 2
    end
    object Shape31: TShape
      Left = 745
      Top = 360
      Width = 152
      Height = 40
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
      Caption = 'TOMADOR'
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
      Top = 126
      Width = 142
      Height = 18
    end
    object LCpfCnpj: TLabel
      Left = 13
      Top = 126
      Width = 134
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
      Top = 126
      Width = 211
      Height = 18
    end
    object LMunicipio: TLabel
      Left = 287
      Top = 126
      Width = 181
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
      Top = 126
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
      Top = 126
      Width = 110
      Height = 18
    end
    object LInscEstadual: TLabel
      Left = 151
      Top = 126
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
    object Shape5: TShape
      Left = 745
      Top = 35
      Width = 152
      Height = 37
    end
    object Label2: TLabel
      Left = 747
      Top = 34
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
      Top = 71
      Width = 152
      Height = 37
    end
    object Label3: TLabel
      Left = 746
      Top = 70
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
      Top = 107
      Width = 152
      Height = 37
    end
    object Label4: TLabel
      Left = 746
      Top = 106
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
    object Label6: TLabel
      Left = 8
      Top = 33
      Width = 149
      Height = 14
      AutoSize = False
      Caption = 'Tributa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 747
      Top = 361
      Width = 149
      Height = 14
      AutoSize = False
      Caption = 'Valor de Servi'#231'os:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape32: TShape
      Left = 745
      Top = 399
      Width = 152
      Height = 40
    end
    object Label27: TLabel
      Left = 747
      Top = 400
      Width = 149
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
    object Label30: TLabel
      Left = 384
      Top = 33
      Width = 149
      Height = 14
      AutoSize = False
      Caption = 'Reter ISS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LTributacao: TLabel
      Left = 12
      Top = 50
      Width = 365
      Height = 22
      AutoSize = False
      Caption = 'Tributacao'
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
      Top = 126
      Width = 110
      Height = 18
    end
    object LCodIbge: TLabel
      Left = 470
      Top = 126
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
    object Shape13: TShape
      Left = 8
      Top = 383
      Width = 125
      Height = 40
    end
    object Shape14: TShape
      Left = 132
      Top = 383
      Width = 115
      Height = 40
    end
    object EdVlrOutrasDesp: TShape
      Left = 246
      Top = 383
      Width = 113
      Height = 40
    end
    object Label11: TLabel
      Left = 10
      Top = 382
      Width = 117
      Height = 14
      AutoSize = False
      Caption = 'COFINS:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 133
      Top = 382
      Width = 108
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
    object Label7: TLabel
      Left = 250
      Top = 382
      Width = 103
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
    object PErro: TPanel
      Left = 8
      Top = 361
      Width = 729
      Height = 129
      BevelWidth = 2
      TabOrder = 8
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
      TabOrder = 0
      Text = '0'
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
      TabOrder = 4
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
      Top = 51
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
      TabOrder = 1
      Text = '18/07/1980'
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdDtsaidaEntrada: TColorMaskEdit
      Left = 768
      Top = 87
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
      TabOrder = 2
      Text = '18/07/1980'
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdHoraSaida: TColorMaskEdit
      Left = 784
      Top = 123
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
      TabOrder = 3
      Text = '12:00:00'
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdTotalServicos: TColorEditFloat
      Left = 749
      Top = 375
      Width = 144
      Height = 24
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
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
    object EdTotalNotaFiscal: TColorEditFloat
      Left = 749
      Top = 414
      Width = 144
      Height = 24
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object BitBtn2: TBitBtn
      Left = 599
      Top = 88
      Width = 126
      Height = 25
      Caption = 'F9 - Atualizar'
      TabOrder = 9
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
      Top = 56
      Width = 126
      Height = 25
      Caption = 'F5 - Salvar'
      TabOrder = 10
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
      TabOrder = 11
    end
    object BtnAlterarPeriodo: TBitBtn
      Left = 534
      Top = 6
      Width = 25
      Height = 19
      Hint = 'Clique aqui para trocar de per'#237'odo para lan'#231'ar a Nota Fiscal'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
    object PageControl1: TPageControl
      Left = 8
      Top = 144
      Width = 889
      Height = 209
      ActivePage = TabSheet10
      TabOrder = 7
      object TabSheet10: TTabSheet
        Caption = 'Servi'#231'os'
        ImageIndex = 1
        object DbGridServicos: TDBGrid
          Left = 2
          Top = 1
          Width = 877
          Height = 173
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
          OnDblClick = DbGridServicosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_SERVICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCRIMINACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASE'
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
    object CbRetIss: TComboBox
      Left = 384
      Top = 48
      Width = 193
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
    object EdCofins: TColorEditFloat
      Left = 32
      Top = 404
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdISS: TColorEditFloat
      Left = 144
      Top = 404
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
    object EdPis: TColorEditFloat
      Left = 256
      Top = 404
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Text = '0,00'
      ValueFormat = '##,##0.00'
      ValueInteger = 0
      NotFoundText = 'N'#227'o Existe'
      InputText = 'Por favor entre na procura pelo crit'#233'rio'
      ButtonCaption = 'Ok'
    end
  end
  object PFalha: TPanel
    Left = 6
    Top = 477
    Width = 897
    Height = 29
    BevelOuter = bvNone
    TabOrder = 3
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
      OnChange = EdErroChange
    end
  end
  object PServico: TPanel
    Left = 232
    Top = 160
    Width = 481
    Height = 249
    Caption = 'PServicos'
    Color = clCream
    TabOrder = 2
    Visible = False
    object FashionPanel2: TFashionPanel
      Left = 3
      Top = 3
      Width = 475
      Height = 238
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
      Title = 'Servi'#231'os'
      LineWidth = 0
      LineColor = clBlack
      Theme = ttBlue
      object SpeedButton2: TSpeedButton
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
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 24
        Width = 471
        Height = 209
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
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_SERVICO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
end
