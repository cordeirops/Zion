inherited FCadNcm: TFCadNcm
  Caption = 'FCadNcm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited LDescTitulo: TLabel
    Width = 197
    Caption = 'Tabela de NCM de Produtos'
  end
  inherited PComunica: TPanel [5]
  end
  inherited PConsulta: TPanel
    inherited GroupBox1: TGroupBox
      inherited EdNome: TFlatEdit
        Left = 155
        Width = 409
        Text = 'Descri'#231#227'o'
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
        TabOrder = 2
        Text = 'NCM'
        OnEnter = EdNomeEnter
        OnExit = EdNomeExit
        OnKeyDown = EdNomeKeyDown
        OnKeyPress = EdNomeKeyPress
      end
    end
  end
  inherited PCadastro: TPanel [7]
    inherited Panel4: TPanel
      object Label2: TLabel
        Left = 12
        Top = 8
        Width = 32
        Height = 16
        Caption = 'NCM'
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
        Left = 12
        Top = 128
        Width = 119
        Height = 16
        Caption = 'Aliquota Nacional:'
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
        Left = 140
        Top = 128
        Width = 138
        Height = 16
        Caption = 'Aliquota Importados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
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
        Width = 117
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
        Left = 140
        Top = 146
        Width = 117
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
    end
  end
end
