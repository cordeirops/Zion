inherited FCadNcm: TFCadNcm
  Left = 266
  Top = 125
  Caption = ''
  ClientHeight = 432
  ClientWidth = 711
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PConsulta: TPanel
    Left = 5
    Top = 11
    Height = 412
    object Shape1: TShape [0]
      Left = 4
      Top = 398
      Width = 12
      Height = 12
      Brush.Color = 5066239
    end
    object Shape3: TShape [1]
      Left = 216
      Top = 398
      Width = 12
      Height = 12
      Brush.Color = clMoneyGreen
    end
    object Label9: TLabel [2]
      Left = 19
      Top = 398
      Width = 61
      Height = 12
      Caption = 'NCM Inativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel [3]
      Left = 231
      Top = 398
      Width = 120
      Height = 12
      Caption = 'NCM n'#227'o pass'#237'vel de uso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited GroupBox1: TGroupBox
      TabOrder = 1
      inherited EdNome: TFlatEdit
        Left = 155
        Width = 409
        TabOrder = 1
        Text = 'Descri'#231#227'o'
      end
      inherited BtnSelecionar: TBitBtn
        Top = 18
        TabOrder = 2
      end
      object EdNcm: TFlatEdit
        Left = 6
        Top = 19
        Width = 147
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
        TabOrder = 0
        Text = 'NCM'
        OnEnter = EdNomeEnter
        OnExit = EdNomeExit
        OnKeyDown = EdNcmKeyDown
        OnKeyPress = EdNomeKeyPress
      end
    end
    inherited Painel: TPanel
      TabOrder = 0
      object mes: TBitBtn
        Left = 572
        Top = 2
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = 'Pressione este bot'#227'o para filtrar os registros'
        Caption = '&Atualizar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = mesClick
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
    end
    inherited DBGridCadastroPadrao: TDBGrid
      Height = 307
      OnDrawColumnCell = DBGridCadastroPadraoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NCM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEST'
          Title.Caption = 'Cest'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQTOTALTRIBUTANAC'
          Title.Caption = 'Trib. Nacional'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQTOTALTRIBUTAIMP'
          Title.Caption = 'Trib. Importados'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORAPROXTRIBUTACAO'
          Title.Caption = 'Vlr. Aprox. Tributa'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQTOTALTRIBUTAEST'
          Title.Caption = 'Aliq. Total'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATIVO'
          Title.Caption = 'A'
          Visible = True
        end>
    end
  end
  inherited PCadastro: TPanel [1]
    Left = 4
    Top = 16
    inherited Panel4: TPanel
      object Label2: TLabel
        Left = 12
        Top = 8
        Width = 37
        Height = 16
        Caption = 'NCM:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 12
        Top = 56
        Width = 76
        Height = 16
        Caption = 'Descri'#231'ao:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 23
        Top = 128
        Width = 54
        Height = 16
        Caption = 'Federal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 115
        Width = 183
        Height = 13
        Caption = 'Valor Total das Tributa'#231#245'es:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 100
        Top = 128
        Width = 80
        Height = 16
        Caption = 'Importados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 285
        Top = 127
        Width = 85
        Height = 16
        Caption = 'Valor Aprox.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 202
        Top = 128
        Width = 62
        Height = 16
        Caption = 'Estadual:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 228
        Top = 8
        Width = 41
        Height = 16
        Caption = 'CEST:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCODINT: TDBColorEdit
        Left = 12
        Top = 26
        Width = 205
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'NCM'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBDESC: TDBColorEdit
        Left = 12
        Top = 76
        Width = 557
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit1: TDBColorEdit
        Left = 12
        Top = 146
        Width = 75
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'ALIQTOTALTRIBUTANAC'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit2: TDBColorEdit
        Left = 102
        Top = 146
        Width = 75
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'ALIQTOTALTRIBUTAIMP'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit3: TDBColorEdit
        Left = 291
        Top = 145
        Width = 75
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'VALORAPROXTRIBUTACAO'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit4: TDBColorEdit
        Left = 196
        Top = 146
        Width = 75
        Height = 24
        Color = 15658717
        Ctl3D = True
        DataField = 'ALIQTOTALTRIBUTAEST'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        OnExit = DBColorEdit4Exit
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object DBColorEdit5: TDBColorEdit
        Left = 228
        Top = 26
        Width = 149
        Height = 24
        Hint = 'Informar o C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
        Color = 15658717
        Ctl3D = True
        DataField = 'CEST'
        DataSource = DMESTOQUE.DNcm
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        NotFoundText = 'N'#227'o Existe'
        InputText = 'Por favor entre na procura pelo crit'#233'rio'
        ButtonCaption = 'Ok'
      end
      object CBAtivo: TCheckBox
        Left = 8
        Top = 184
        Width = 97
        Height = 17
        Caption = 'Ativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  inherited PComunica: TPanel [2]
    Left = 133
    Top = 155
    object lbInformacao: TLabel
      Left = 5
      Top = 75
      Width = 4
      Height = 16
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object stg: TStringGrid
    Left = 848
    Top = 144
    Width = 105
    Height = 57
    TabOrder = 3
    Visible = False
  end
  object conectaFtp: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 662
    Top = 53
  end
end
